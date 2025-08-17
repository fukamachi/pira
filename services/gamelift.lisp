(uiop/package:define-package #:pira/gamelift (:use)
                             (:export #:accept-match #:acceptance-type #:alias
                              #:alias-arn #:alias-id #:alias-id-or-arn
                              #:alias-list #:amazon-resource-name
                              #:anywhere-configuration #:arn-string-model
                              #:attribute-value #:auto-scaling-group-arn
                              #:aws-credentials #:backfill-mode
                              #:balancing-strategy #:boolean-model #:build
                              #:build-arn #:build-id #:build-id-or-arn
                              #:build-list #:build-status
                              #:certificate-configuration #:certificate-type
                              #:claim-filter-option #:claim-game-server
                              #:comparison-operator-type #:compute
                              #:compute-arn #:compute-auth-token #:compute-list
                              #:compute-name #:compute-name-or-arn
                              #:compute-status #:compute-type
                              #:connection-port-range #:container-attribute
                              #:container-attributes
                              #:container-command-string-list
                              #:container-dependency
                              #:container-dependency-condition
                              #:container-dependency-list
                              #:container-environment
                              #:container-environment-list #:container-fleet
                              #:container-fleet-billing-type
                              #:container-fleet-list
                              #:container-fleet-location-attributes
                              #:container-fleet-location-attributes-list
                              #:container-fleet-location-status
                              #:container-fleet-remove-attribute
                              #:container-fleet-remove-attribute-list
                              #:container-fleet-status
                              #:container-group-definition
                              #:container-group-definition-arn
                              #:container-group-definition-list
                              #:container-group-definition-name
                              #:container-group-definition-name-or-arn
                              #:container-group-definition-status
                              #:container-group-type #:container-health-check
                              #:container-health-check-interval
                              #:container-health-check-retries
                              #:container-health-check-start-period
                              #:container-health-check-timeout
                              #:container-identifier
                              #:container-identifier-list
                              #:container-memory-limit #:container-mount-point
                              #:container-mount-point-access-level
                              #:container-mount-point-list
                              #:container-operating-system
                              #:container-path-string
                              #:container-port-configuration
                              #:container-port-range
                              #:container-port-range-list
                              #:container-total-memory-limit
                              #:container-total-vcpu-limit #:container-vcpu
                              #:create-alias #:create-build
                              #:create-container-fleet
                              #:create-container-group-definition
                              #:create-fleet #:create-fleet-locations
                              #:create-game-server-group #:create-game-session
                              #:create-game-session-queue #:create-location
                              #:create-matchmaking-configuration
                              #:create-matchmaking-rule-set
                              #:create-player-session #:create-player-sessions
                              #:create-script
                              #:create-vpc-peering-authorization
                              #:create-vpc-peering-connection
                              #:custom-event-data
                              #:custom-input-location-string-model
                              #:custom-location-name-or-arn-model
                              #:delete-alias #:delete-build
                              #:delete-container-fleet
                              #:delete-container-group-definition
                              #:delete-fleet #:delete-fleet-locations
                              #:delete-game-server-group
                              #:delete-game-session-queue #:delete-location
                              #:delete-matchmaking-configuration
                              #:delete-matchmaking-rule-set
                              #:delete-scaling-policy #:delete-script
                              #:delete-vpc-peering-authorization
                              #:delete-vpc-peering-connection
                              #:deployment-configuration #:deployment-details
                              #:deployment-id #:deployment-impairment-strategy
                              #:deployment-protection-strategy
                              #:deployment-status #:deregister-compute
                              #:deregister-game-server #:describe-alias
                              #:describe-build #:describe-compute
                              #:describe-container-fleet
                              #:describe-container-group-definition
                              #:describe-ec2instance-limits
                              #:describe-fleet-attributes
                              #:describe-fleet-capacity
                              #:describe-fleet-deployment
                              #:describe-fleet-events
                              #:describe-fleet-location-attributes
                              #:describe-fleet-location-capacity
                              #:describe-fleet-location-utilization
                              #:describe-fleet-port-settings
                              #:describe-fleet-utilization
                              #:describe-game-server
                              #:describe-game-server-group
                              #:describe-game-server-instances
                              #:describe-game-session-details
                              #:describe-game-session-placement
                              #:describe-game-session-queues
                              #:describe-game-sessions #:describe-instances
                              #:describe-matchmaking
                              #:describe-matchmaking-configurations
                              #:describe-matchmaking-rule-sets
                              #:describe-player-sessions
                              #:describe-runtime-configuration
                              #:describe-scaling-policies #:describe-script
                              #:describe-vpc-peering-authorizations
                              #:describe-vpc-peering-connections
                              #:desired-player-session
                              #:desired-player-session-list #:dns-name
                              #:dns-name-input #:double #:double-object
                              #:ec2instance-counts #:ec2instance-limit
                              #:ec2instance-limit-list #:ec2instance-type
                              #:event #:event-code #:event-count #:event-list
                              #:filter-configuration #:filter-instance-status
                              #:filter-instance-statuses #:fleet-action
                              #:fleet-action-list #:fleet-arn
                              #:fleet-attributes #:fleet-attributes-list
                              #:fleet-binary-arn #:fleet-capacity
                              #:fleet-capacity-list #:fleet-deployment
                              #:fleet-deployments #:fleet-id #:fleet-id-list
                              #:fleet-id-or-arn #:fleet-id-or-arn-list
                              #:fleet-status #:fleet-type #:fleet-utilization
                              #:fleet-utilization-list #:flex-match-mode
                              #:float #:free-text #:game-lift
                              #:game-lift-agent-endpoint-output
                              #:game-lift-service-sdk-endpoint-output
                              #:game-property #:game-property-key
                              #:game-property-list #:game-property-value
                              #:game-server #:game-server-claim-status
                              #:game-server-connection-info
                              #:game-server-container-definition
                              #:game-server-container-definition-input
                              #:game-server-container-group-counts
                              #:game-server-container-groups-per-instance
                              #:game-server-data #:game-server-group
                              #:game-server-group-action
                              #:game-server-group-actions
                              #:game-server-group-arn
                              #:game-server-group-auto-scaling-policy
                              #:game-server-group-delete-option
                              #:game-server-group-instance-type
                              #:game-server-group-name
                              #:game-server-group-name-or-arn
                              #:game-server-group-status #:game-server-groups
                              #:game-server-health-check #:game-server-id
                              #:game-server-instance #:game-server-instance-id
                              #:game-server-instance-ids
                              #:game-server-instance-status
                              #:game-server-instances
                              #:game-server-protection-policy
                              #:game-server-utilization-status #:game-servers
                              #:game-session
                              #:game-session-activation-timeout-seconds
                              #:game-session-connection-info
                              #:game-session-creation-limit-policy
                              #:game-session-data #:game-session-detail
                              #:game-session-detail-list #:game-session-list
                              #:game-session-placement
                              #:game-session-placement-state
                              #:game-session-queue #:game-session-queue-arn
                              #:game-session-queue-destination
                              #:game-session-queue-destination-list
                              #:game-session-queue-list
                              #:game-session-queue-name
                              #:game-session-queue-name-or-arn
                              #:game-session-queue-name-or-arn-list
                              #:game-session-status
                              #:game-session-status-reason #:get-compute-access
                              #:get-compute-auth-token
                              #:get-game-session-log-url #:get-instance-access
                              #:iam-role-arn #:id-string-model
                              #:image-uri-string #:instance #:instance-access
                              #:instance-credentials #:instance-definition
                              #:instance-definitions #:instance-id
                              #:instance-list #:instance-path-string
                              #:instance-role-credentials-provider
                              #:instance-status #:integer #:ip-address
                              #:ip-permission #:ip-permissions-list
                              #:ip-protocol #:ip-range
                              #:large-game-session-data #:latency-map
                              #:launch-parameters-string-model
                              #:launch-path-string-model #:launch-template-id
                              #:launch-template-name
                              #:launch-template-specification
                              #:launch-template-version #:list-aliases
                              #:list-builds #:list-compute
                              #:list-compute-input-status
                              #:list-container-fleets
                              #:list-container-group-definition-versions
                              #:list-container-group-definition-versions-limit
                              #:list-container-group-definitions
                              #:list-container-group-definitions-limit
                              #:list-fleet-deployments #:list-fleets
                              #:list-game-server-groups #:list-game-servers
                              #:list-locations #:list-locations-limit
                              #:list-scripts #:list-tags-for-resource
                              #:location-arn-model #:location-attributes
                              #:location-attributes-list
                              #:location-configuration
                              #:location-configuration-list #:location-filter
                              #:location-filter-list #:location-list
                              #:location-model #:location-model-list
                              #:location-order-override-list #:location-state
                              #:location-state-list #:location-string-model
                              #:location-update-status #:locational-deployment
                              #:locational-deployments #:log-configuration
                              #:log-destination #:log-group-arn-string-model
                              #:matched-player-session
                              #:matched-player-session-list #:matchmaker-data
                              #:matchmaking-acceptance-timeout-integer
                              #:matchmaking-configuration
                              #:matchmaking-configuration-arn
                              #:matchmaking-configuration-list
                              #:matchmaking-configuration-name
                              #:matchmaking-configuration-name-list
                              #:matchmaking-configuration-status
                              #:matchmaking-id-list
                              #:matchmaking-id-string-model
                              #:matchmaking-request-timeout-integer
                              #:matchmaking-rule-set #:matchmaking-rule-set-arn
                              #:matchmaking-rule-set-list
                              #:matchmaking-rule-set-name
                              #:matchmaking-rule-set-name-list
                              #:matchmaking-ticket #:matchmaking-ticket-list
                              #:max-concurrent-game-session-activations
                              #:maximum-game-server-container-groups-per-instance
                              #:metric-group #:metric-group-list #:metric-name
                              #:minimum-healthy-percentage
                              #:non-blank-and-length-constraint-string
                              #:non-empty-string #:non-negative-double
                              #:non-negative-limited-length-double
                              #:non-zero-and128max-ascii-string
                              #:non-zero-and255max-string
                              #:non-zero-and-max-string #:operating-system
                              #:ping-beacon #:placed-player-session
                              #:placed-player-session-list
                              #:placement-fallback-strategy #:player
                              #:player-attribute-map #:player-attribute-string
                              #:player-attribute-string-double-map
                              #:player-attribute-string-list #:player-data
                              #:player-data-map #:player-id #:player-id-list
                              #:player-ids-for-accept-match #:player-latency
                              #:player-latency-list #:player-latency-policy
                              #:player-latency-policy-list #:player-list
                              #:player-session #:player-session-creation-policy
                              #:player-session-id #:player-session-list
                              #:player-session-status #:policy-type
                              #:port-number #:positive-integer #:positive-long
                              #:priority-configuration
                              #:priority-configuration-override #:priority-type
                              #:priority-type-list #:protection-policy
                              #:put-scaling-policy #:queue-arns-list
                              #:queue-custom-event-data
                              #:queue-sns-arn-string-model #:register-compute
                              #:register-game-server
                              #:request-upload-credentials #:resolve-alias
                              #:resource-creation-limit-policy
                              #:resume-game-server-group #:routing-strategy
                              #:routing-strategy-type #:rule-set-body
                              #:rule-set-limit #:runtime-configuration
                              #:s3location #:scaling-adjustment-type
                              #:scaling-policy #:scaling-policy-list
                              #:scaling-status-type #:script #:script-arn
                              #:script-id #:script-id-or-arn #:script-list
                              #:search-game-sessions #:server-process
                              #:server-process-list #:server-sdk-version
                              #:session-target #:sha256 #:sns-arn-string-model
                              #:sort-order #:start-fleet-actions
                              #:start-game-session-placement
                              #:start-match-backfill #:start-matchmaking
                              #:stop-fleet-actions
                              #:stop-game-session-placement #:stop-matchmaking
                              #:string-list #:string-model
                              #:support-container-definition
                              #:support-container-definition-input
                              #:support-container-definition-input-list
                              #:support-container-definition-list
                              #:suspend-game-server-group #:tag #:tag-key
                              #:tag-key-list #:tag-list #:tag-resource
                              #:tag-value #:target-configuration
                              #:target-tracking-configuration
                              #:terminate-game-session #:termination-mode
                              #:timestamp #:udpendpoint #:untag-resource
                              #:update-alias #:update-build
                              #:update-container-fleet
                              #:update-container-group-definition
                              #:update-fleet-attributes #:update-fleet-capacity
                              #:update-fleet-port-settings #:update-game-server
                              #:update-game-server-group #:update-game-session
                              #:update-game-session-queue
                              #:update-matchmaking-configuration
                              #:update-runtime-configuration #:update-script
                              #:validate-matchmaking-rule-set
                              #:vpc-peering-authorization
                              #:vpc-peering-authorization-list
                              #:vpc-peering-connection
                              #:vpc-peering-connection-list
                              #:vpc-peering-connection-status #:vpc-subnet
                              #:vpc-subnets #:weighted-capacity #:whole-number
                              #:zip-blob))
(common-lisp:in-package #:pira/gamelift)

(smithy/sdk/service:define-service game-lift :shape-name "GameLift" :version
                                   "2015-10-01" :title "Amazon GameLift"
                                   :operations
                                   '(accept-match claim-game-server
                                     create-alias create-build
                                     create-container-fleet
                                     create-container-group-definition
                                     create-fleet create-fleet-locations
                                     create-game-server-group
                                     create-game-session
                                     create-game-session-queue create-location
                                     create-matchmaking-configuration
                                     create-matchmaking-rule-set
                                     create-player-session
                                     create-player-sessions create-script
                                     create-vpc-peering-authorization
                                     create-vpc-peering-connection delete-alias
                                     delete-build delete-container-fleet
                                     delete-container-group-definition
                                     delete-fleet delete-fleet-locations
                                     delete-game-server-group
                                     delete-game-session-queue delete-location
                                     delete-matchmaking-configuration
                                     delete-matchmaking-rule-set
                                     delete-scaling-policy delete-script
                                     delete-vpc-peering-authorization
                                     delete-vpc-peering-connection
                                     deregister-compute deregister-game-server
                                     describe-alias describe-build
                                     describe-compute describe-container-fleet
                                     describe-container-group-definition
                                     describe-ec2instance-limits
                                     describe-fleet-attributes
                                     describe-fleet-capacity
                                     describe-fleet-deployment
                                     describe-fleet-events
                                     describe-fleet-location-attributes
                                     describe-fleet-location-capacity
                                     describe-fleet-location-utilization
                                     describe-fleet-port-settings
                                     describe-fleet-utilization
                                     describe-game-server
                                     describe-game-server-group
                                     describe-game-server-instances
                                     describe-game-session-details
                                     describe-game-session-placement
                                     describe-game-session-queues
                                     describe-game-sessions describe-instances
                                     describe-matchmaking
                                     describe-matchmaking-configurations
                                     describe-matchmaking-rule-sets
                                     describe-player-sessions
                                     describe-runtime-configuration
                                     describe-scaling-policies describe-script
                                     describe-vpc-peering-authorizations
                                     describe-vpc-peering-connections
                                     get-compute-access get-compute-auth-token
                                     get-game-session-log-url
                                     get-instance-access list-aliases
                                     list-builds list-compute
                                     list-container-fleets
                                     list-container-group-definitions
                                     list-container-group-definition-versions
                                     list-fleet-deployments list-fleets
                                     list-game-server-groups list-game-servers
                                     list-locations list-scripts
                                     list-tags-for-resource put-scaling-policy
                                     register-compute register-game-server
                                     request-upload-credentials resolve-alias
                                     resume-game-server-group
                                     search-game-sessions start-fleet-actions
                                     start-game-session-placement
                                     start-match-backfill start-matchmaking
                                     stop-fleet-actions
                                     stop-game-session-placement
                                     stop-matchmaking suspend-game-server-group
                                     tag-resource terminate-game-session
                                     untag-resource update-alias update-build
                                     update-container-fleet
                                     update-container-group-definition
                                     update-fleet-attributes
                                     update-fleet-capacity
                                     update-fleet-port-settings
                                     update-game-server
                                     update-game-server-group
                                     update-game-session
                                     update-game-session-queue
                                     update-matchmaking-configuration
                                     update-runtime-configuration update-script
                                     validate-matchmaking-rule-set)
                                   :xml-namespace
                                   '(:uri "http://gamelift.amazonaws.com/doc/"
                                     :prefix common-lisp:nil)
                                   :traits
                                   '(("aws.api#service" ("sdkId" . "GameLift")
                                      ("arnNamespace" . "gamelift")
                                      ("cloudFormationName" . "GameLift")
                                      ("cloudTrailEventSource"
                                       . "gamelift.amazonaws.com")
                                      ("endpointPrefix" . "gamelift"))
                                     ("aws.auth#sigv4" ("name" . "gamelift"))
                                     ("aws.protocols#awsJson1_1")))

(smithy/sdk/shapes:define-input accept-match-input common-lisp:nil
                                ((ticket-id :target-type
                                  matchmaking-id-string-model :required
                                  common-lisp:t :member-name "TicketId")
                                 (player-ids :target-type
                                  player-ids-for-accept-match :required
                                  common-lisp:t :member-name "PlayerIds")
                                 (acceptance-type :target-type acceptance-type
                                  :required common-lisp:t :member-name
                                  "AcceptanceType"))
                                (:shape-name "AcceptMatchInput"))

(smithy/sdk/shapes:define-output accept-match-output common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "AcceptMatchOutput"))

(smithy/sdk/shapes:define-enum acceptance-type
    common-lisp:nil
  (:accept "ACCEPT")
  (:reject "REJECT"))

(smithy/sdk/shapes:define-structure alias common-lisp:nil
                                    ((alias-id :target-type alias-id
                                      :member-name "AliasId")
                                     (name :target-type
                                      non-blank-and-length-constraint-string
                                      :member-name "Name")
                                     (alias-arn :target-type alias-arn
                                      :member-name "AliasArn")
                                     (description :target-type free-text
                                      :member-name "Description")
                                     (routing-strategy :target-type
                                      routing-strategy :member-name
                                      "RoutingStrategy")
                                     (creation-time :target-type timestamp
                                      :member-name "CreationTime")
                                     (last-updated-time :target-type timestamp
                                      :member-name "LastUpdatedTime"))
                                    (:shape-name "Alias"))

(smithy/sdk/shapes:define-type alias-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type alias-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type alias-id-or-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list alias-list :member alias)

(smithy/sdk/shapes:define-type amazon-resource-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure anywhere-configuration common-lisp:nil
                                    ((cost :target-type
                                      non-negative-limited-length-double
                                      :required common-lisp:t :member-name
                                      "Cost"))
                                    (:shape-name "AnywhereConfiguration"))

(smithy/sdk/shapes:define-type arn-string-model smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure attribute-value common-lisp:nil
                                    ((s :target-type player-attribute-string
                                      :member-name "S")
                                     (n :target-type double-object :member-name
                                      "N")
                                     (sl :target-type
                                      player-attribute-string-list :member-name
                                      "SL")
                                     (sdm :target-type
                                      player-attribute-string-double-map
                                      :member-name "SDM"))
                                    (:shape-name "AttributeValue"))

(smithy/sdk/shapes:define-type auto-scaling-group-arn
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure aws-credentials common-lisp:nil
                                    ((access-key-id :target-type
                                      non-empty-string :member-name
                                      "AccessKeyId")
                                     (secret-access-key :target-type
                                      non-empty-string :member-name
                                      "SecretAccessKey")
                                     (session-token :target-type
                                      non-empty-string :member-name
                                      "SessionToken"))
                                    (:shape-name "AwsCredentials"))

(smithy/sdk/shapes:define-enum backfill-mode
    common-lisp:nil
  (:automatic "AUTOMATIC")
  (:manual "MANUAL"))

(smithy/sdk/shapes:define-enum balancing-strategy
    common-lisp:nil
  (:spot-only "SPOT_ONLY")
  (:spot-preferred "SPOT_PREFERRED")
  (:on-demand-only "ON_DEMAND_ONLY"))

(smithy/sdk/shapes:define-type boolean-model smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-structure build common-lisp:nil
                                    ((build-id :target-type build-id
                                      :member-name "BuildId")
                                     (build-arn :target-type build-arn
                                      :member-name "BuildArn")
                                     (name :target-type free-text :member-name
                                      "Name")
                                     (version :target-type free-text
                                      :member-name "Version")
                                     (status :target-type build-status
                                      :member-name "Status")
                                     (size-on-disk :target-type positive-long
                                      :member-name "SizeOnDisk")
                                     (operating-system :target-type
                                      operating-system :member-name
                                      "OperatingSystem")
                                     (creation-time :target-type timestamp
                                      :member-name "CreationTime")
                                     (server-sdk-version :target-type
                                      server-sdk-version :member-name
                                      "ServerSdkVersion"))
                                    (:shape-name "Build"))

(smithy/sdk/shapes:define-type build-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type build-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type build-id-or-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list build-list :member build)

(smithy/sdk/shapes:define-enum build-status
    common-lisp:nil
  (:initialized "INITIALIZED")
  (:ready "READY")
  (:failed "FAILED"))

(smithy/sdk/shapes:define-structure certificate-configuration common-lisp:nil
                                    ((certificate-type :target-type
                                      certificate-type :required common-lisp:t
                                      :member-name "CertificateType"))
                                    (:shape-name "CertificateConfiguration"))

(smithy/sdk/shapes:define-enum certificate-type
    common-lisp:nil
  (:disabled "DISABLED")
  (:generated "GENERATED"))

(smithy/sdk/shapes:define-structure claim-filter-option common-lisp:nil
                                    ((instance-statuses :target-type
                                      filter-instance-statuses :member-name
                                      "InstanceStatuses"))
                                    (:shape-name "ClaimFilterOption"))

(smithy/sdk/shapes:define-input claim-game-server-input common-lisp:nil
                                ((game-server-group-name :target-type
                                  game-server-group-name-or-arn :required
                                  common-lisp:t :member-name
                                  "GameServerGroupName")
                                 (game-server-id :target-type game-server-id
                                  :member-name "GameServerId")
                                 (game-server-data :target-type
                                  game-server-data :member-name
                                  "GameServerData")
                                 (filter-option :target-type
                                  claim-filter-option :member-name
                                  "FilterOption"))
                                (:shape-name "ClaimGameServerInput"))

(smithy/sdk/shapes:define-output claim-game-server-output common-lisp:nil
                                 ((game-server :target-type game-server
                                   :member-name "GameServer"))
                                 (:shape-name "ClaimGameServerOutput"))

(smithy/sdk/shapes:define-enum comparison-operator-type
    common-lisp:nil
  (:greater-than-or-equal-to-threshold "GreaterThanOrEqualToThreshold")
  (:greater-than-threshold "GreaterThanThreshold")
  (:less-than-threshold "LessThanThreshold")
  (:less-than-or-equal-to-threshold "LessThanOrEqualToThreshold"))

(smithy/sdk/shapes:define-structure compute common-lisp:nil
                                    ((fleet-id :target-type fleet-id
                                      :member-name "FleetId")
                                     (fleet-arn :target-type fleet-arn
                                      :member-name "FleetArn")
                                     (compute-name :target-type compute-name
                                      :member-name "ComputeName")
                                     (compute-arn :target-type compute-arn
                                      :member-name "ComputeArn")
                                     (ip-address :target-type ip-address
                                      :member-name "IpAddress")
                                     (dns-name :target-type dns-name
                                      :member-name "DnsName")
                                     (compute-status :target-type
                                      compute-status :member-name
                                      "ComputeStatus")
                                     (location :target-type
                                      location-string-model :member-name
                                      "Location")
                                     (creation-time :target-type timestamp
                                      :member-name "CreationTime")
                                     (operating-system :target-type
                                      operating-system :member-name
                                      "OperatingSystem")
                                     (type :target-type ec2instance-type
                                      :member-name "Type")
                                     (game-lift-service-sdk-endpoint
                                      :target-type
                                      game-lift-service-sdk-endpoint-output
                                      :member-name
                                      "GameLiftServiceSdkEndpoint")
                                     (game-lift-agent-endpoint :target-type
                                      game-lift-agent-endpoint-output
                                      :member-name "GameLiftAgentEndpoint")
                                     (instance-id :target-type instance-id
                                      :member-name "InstanceId")
                                     (container-attributes :target-type
                                      container-attributes :member-name
                                      "ContainerAttributes")
                                     (game-server-container-group-definition-arn
                                      :target-type
                                      container-group-definition-name-or-arn
                                      :member-name
                                      "GameServerContainerGroupDefinitionArn"))
                                    (:shape-name "Compute"))

(smithy/sdk/shapes:define-type compute-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type compute-auth-token
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list compute-list :member compute)

(smithy/sdk/shapes:define-type compute-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type compute-name-or-arn
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum compute-status
    common-lisp:nil
  (:pending "PENDING")
  (:active "ACTIVE")
  (:terminating "TERMINATING")
  (:impaired "IMPAIRED"))

(smithy/sdk/shapes:define-enum compute-type
    common-lisp:nil
  (:ec2 "EC2")
  (:anywhere "ANYWHERE"))

(smithy/sdk/shapes:define-error conflict-exception common-lisp:nil
                                ((message :target-type non-empty-string
                                  :member-name "Message"))
                                (:shape-name "ConflictException")
                                (:error-code 400))

(smithy/sdk/shapes:define-structure connection-port-range common-lisp:nil
                                    ((from-port :target-type port-number
                                      :required common-lisp:t :member-name
                                      "FromPort")
                                     (to-port :target-type port-number
                                      :required common-lisp:t :member-name
                                      "ToPort"))
                                    (:shape-name "ConnectionPortRange"))

(smithy/sdk/shapes:define-structure container-attribute common-lisp:nil
                                    ((container-name :target-type
                                      non-zero-and128max-ascii-string
                                      :member-name "ContainerName")
                                     (container-runtime-id :target-type
                                      non-empty-string :member-name
                                      "ContainerRuntimeId"))
                                    (:shape-name "ContainerAttribute"))

(smithy/sdk/shapes:define-list container-attributes :member container-attribute)

(smithy/sdk/shapes:define-list container-command-string-list :member
                               non-zero-and255max-string)

(smithy/sdk/shapes:define-structure container-dependency common-lisp:nil
                                    ((container-name :target-type
                                      non-zero-and128max-ascii-string :required
                                      common-lisp:t :member-name
                                      "ContainerName")
                                     (condition :target-type
                                      container-dependency-condition :required
                                      common-lisp:t :member-name "Condition"))
                                    (:shape-name "ContainerDependency"))

(smithy/sdk/shapes:define-enum container-dependency-condition
    common-lisp:nil
  (:start "START")
  (:complete "COMPLETE")
  (:success "SUCCESS")
  (:healthy "HEALTHY"))

(smithy/sdk/shapes:define-list container-dependency-list :member
                               container-dependency)

(smithy/sdk/shapes:define-structure container-environment common-lisp:nil
                                    ((name :target-type
                                      non-zero-and255max-string :required
                                      common-lisp:t :member-name "Name")
                                     (value :target-type
                                      non-zero-and255max-string :required
                                      common-lisp:t :member-name "Value"))
                                    (:shape-name "ContainerEnvironment"))

(smithy/sdk/shapes:define-list container-environment-list :member
                               container-environment)

(smithy/sdk/shapes:define-structure container-fleet common-lisp:nil
                                    ((fleet-id :target-type fleet-id
                                      :member-name "FleetId")
                                     (fleet-arn :target-type fleet-arn
                                      :member-name "FleetArn")
                                     (fleet-role-arn :target-type iam-role-arn
                                      :member-name "FleetRoleArn")
                                     (game-server-container-group-definition-name
                                      :target-type
                                      container-group-definition-name
                                      :member-name
                                      "GameServerContainerGroupDefinitionName")
                                     (game-server-container-group-definition-arn
                                      :target-type
                                      container-group-definition-arn
                                      :member-name
                                      "GameServerContainerGroupDefinitionArn")
                                     (per-instance-container-group-definition-name
                                      :target-type
                                      container-group-definition-name
                                      :member-name
                                      "PerInstanceContainerGroupDefinitionName")
                                     (per-instance-container-group-definition-arn
                                      :target-type
                                      container-group-definition-arn
                                      :member-name
                                      "PerInstanceContainerGroupDefinitionArn")
                                     (instance-connection-port-range
                                      :target-type connection-port-range
                                      :member-name
                                      "InstanceConnectionPortRange")
                                     (instance-inbound-permissions :target-type
                                      ip-permissions-list :member-name
                                      "InstanceInboundPermissions")
                                     (game-server-container-groups-per-instance
                                      :target-type
                                      game-server-container-groups-per-instance
                                      :member-name
                                      "GameServerContainerGroupsPerInstance")
                                     (maximum-game-server-container-groups-per-instance
                                      :target-type
                                      maximum-game-server-container-groups-per-instance
                                      :member-name
                                      "MaximumGameServerContainerGroupsPerInstance")
                                     (instance-type :target-type
                                      non-zero-and-max-string :member-name
                                      "InstanceType")
                                     (billing-type :target-type
                                      container-fleet-billing-type :member-name
                                      "BillingType")
                                     (description :target-type
                                      non-zero-and-max-string :member-name
                                      "Description")
                                     (creation-time :target-type timestamp
                                      :member-name "CreationTime")
                                     (metric-groups :target-type
                                      metric-group-list :member-name
                                      "MetricGroups")
                                     (new-game-session-protection-policy
                                      :target-type protection-policy
                                      :member-name
                                      "NewGameSessionProtectionPolicy")
                                     (game-session-creation-limit-policy
                                      :target-type
                                      game-session-creation-limit-policy
                                      :member-name
                                      "GameSessionCreationLimitPolicy")
                                     (status :target-type
                                      container-fleet-status :member-name
                                      "Status")
                                     (deployment-details :target-type
                                      deployment-details :member-name
                                      "DeploymentDetails")
                                     (log-configuration :target-type
                                      log-configuration :member-name
                                      "LogConfiguration")
                                     (location-attributes :target-type
                                      container-fleet-location-attributes-list
                                      :member-name "LocationAttributes"))
                                    (:shape-name "ContainerFleet"))

(smithy/sdk/shapes:define-enum container-fleet-billing-type
    common-lisp:nil
  (:on-demand "ON_DEMAND")
  (:spot "SPOT"))

(smithy/sdk/shapes:define-list container-fleet-list :member container-fleet)

(smithy/sdk/shapes:define-structure container-fleet-location-attributes
                                    common-lisp:nil
                                    ((location :target-type
                                      location-string-model :member-name
                                      "Location")
                                     (status :target-type
                                      container-fleet-location-status
                                      :member-name "Status"))
                                    (:shape-name
                                     "ContainerFleetLocationAttributes"))

(smithy/sdk/shapes:define-list container-fleet-location-attributes-list :member
                               container-fleet-location-attributes)

(smithy/sdk/shapes:define-enum container-fleet-location-status
    common-lisp:nil
  (:pending "PENDING")
  (:creating "CREATING")
  (:created "CREATED")
  (:activating "ACTIVATING")
  (:active "ACTIVE")
  (:updating "UPDATING")
  (:deleting "DELETING"))

(smithy/sdk/shapes:define-enum container-fleet-remove-attribute
    common-lisp:nil
  (:per-instance-container-group-definition
   "PER_INSTANCE_CONTAINER_GROUP_DEFINITION"))

(smithy/sdk/shapes:define-list container-fleet-remove-attribute-list :member
                               container-fleet-remove-attribute)

(smithy/sdk/shapes:define-enum container-fleet-status
    common-lisp:nil
  (:pending "PENDING")
  (:creating "CREATING")
  (:created "CREATED")
  (:activating "ACTIVATING")
  (:active "ACTIVE")
  (:updating "UPDATING")
  (:deleting "DELETING"))

(smithy/sdk/shapes:define-structure container-group-definition common-lisp:nil
                                    ((container-group-definition-arn
                                      :target-type
                                      container-group-definition-arn
                                      :member-name
                                      "ContainerGroupDefinitionArn")
                                     (creation-time :target-type timestamp
                                      :member-name "CreationTime")
                                     (operating-system :target-type
                                      container-operating-system :member-name
                                      "OperatingSystem")
                                     (name :target-type
                                      container-group-definition-name :required
                                      common-lisp:t :member-name "Name")
                                     (container-group-type :target-type
                                      container-group-type :member-name
                                      "ContainerGroupType")
                                     (total-memory-limit-mebibytes :target-type
                                      container-total-memory-limit :member-name
                                      "TotalMemoryLimitMebibytes")
                                     (total-vcpu-limit :target-type
                                      container-total-vcpu-limit :member-name
                                      "TotalVcpuLimit")
                                     (game-server-container-definition
                                      :target-type
                                      game-server-container-definition
                                      :member-name
                                      "GameServerContainerDefinition")
                                     (support-container-definitions
                                      :target-type
                                      support-container-definition-list
                                      :member-name
                                      "SupportContainerDefinitions")
                                     (version-number :target-type
                                      positive-integer :member-name
                                      "VersionNumber")
                                     (version-description :target-type
                                      non-zero-and-max-string :member-name
                                      "VersionDescription")
                                     (status :target-type
                                      container-group-definition-status
                                      :member-name "Status")
                                     (status-reason :target-type
                                      non-zero-and-max-string :member-name
                                      "StatusReason"))
                                    (:shape-name "ContainerGroupDefinition"))

(smithy/sdk/shapes:define-type container-group-definition-arn
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list container-group-definition-list :member
                               container-group-definition)

(smithy/sdk/shapes:define-type container-group-definition-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type container-group-definition-name-or-arn
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum container-group-definition-status
    common-lisp:nil
  (:ready "READY")
  (:copying "COPYING")
  (:failed "FAILED"))

(smithy/sdk/shapes:define-enum container-group-type
    common-lisp:nil
  (:game-server "GAME_SERVER")
  (:per-instance "PER_INSTANCE"))

(smithy/sdk/shapes:define-structure container-health-check common-lisp:nil
                                    ((command :target-type
                                      container-command-string-list :required
                                      common-lisp:t :member-name "Command")
                                     (interval :target-type
                                      container-health-check-interval
                                      :member-name "Interval")
                                     (retries :target-type
                                      container-health-check-retries
                                      :member-name "Retries")
                                     (start-period :target-type
                                      container-health-check-start-period
                                      :member-name "StartPeriod")
                                     (timeout :target-type
                                      container-health-check-timeout
                                      :member-name "Timeout"))
                                    (:shape-name "ContainerHealthCheck"))

(smithy/sdk/shapes:define-type container-health-check-interval
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type container-health-check-retries
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type container-health-check-start-period
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type container-health-check-timeout
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-structure container-identifier common-lisp:nil
                                    ((container-name :target-type
                                      non-zero-and128max-ascii-string
                                      :member-name "ContainerName")
                                     (container-runtime-id :target-type
                                      non-empty-string :member-name
                                      "ContainerRuntimeId"))
                                    (:shape-name "ContainerIdentifier"))

(smithy/sdk/shapes:define-list container-identifier-list :member
                               container-identifier)

(smithy/sdk/shapes:define-type container-memory-limit
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-structure container-mount-point common-lisp:nil
                                    ((instance-path :target-type
                                      instance-path-string :required
                                      common-lisp:t :member-name
                                      "InstancePath")
                                     (container-path :target-type
                                      container-path-string :member-name
                                      "ContainerPath")
                                     (access-level :target-type
                                      container-mount-point-access-level
                                      :member-name "AccessLevel"))
                                    (:shape-name "ContainerMountPoint"))

(smithy/sdk/shapes:define-enum container-mount-point-access-level
    common-lisp:nil
  (:read-only "READ_ONLY")
  (:read-and-write "READ_AND_WRITE"))

(smithy/sdk/shapes:define-list container-mount-point-list :member
                               container-mount-point)

(smithy/sdk/shapes:define-enum container-operating-system
    common-lisp:nil
  (:amazon-linux-2023 "AMAZON_LINUX_2023"))

(smithy/sdk/shapes:define-type container-path-string
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure container-port-configuration
                                    common-lisp:nil
                                    ((container-port-ranges :target-type
                                      container-port-range-list :required
                                      common-lisp:t :member-name
                                      "ContainerPortRanges"))
                                    (:shape-name "ContainerPortConfiguration"))

(smithy/sdk/shapes:define-structure container-port-range common-lisp:nil
                                    ((from-port :target-type port-number
                                      :required common-lisp:t :member-name
                                      "FromPort")
                                     (to-port :target-type port-number
                                      :required common-lisp:t :member-name
                                      "ToPort")
                                     (protocol :target-type ip-protocol
                                      :required common-lisp:t :member-name
                                      "Protocol"))
                                    (:shape-name "ContainerPortRange"))

(smithy/sdk/shapes:define-list container-port-range-list :member
                               container-port-range)

(smithy/sdk/shapes:define-type container-total-memory-limit
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type container-total-vcpu-limit
                               smithy/sdk/smithy-types:double)

(smithy/sdk/shapes:define-type container-vcpu smithy/sdk/smithy-types:double)

(smithy/sdk/shapes:define-input create-alias-input common-lisp:nil
                                ((name :target-type
                                  non-blank-and-length-constraint-string
                                  :required common-lisp:t :member-name "Name")
                                 (description :target-type
                                  non-zero-and-max-string :member-name
                                  "Description")
                                 (routing-strategy :target-type
                                  routing-strategy :required common-lisp:t
                                  :member-name "RoutingStrategy")
                                 (tags :target-type tag-list :member-name
                                  "Tags"))
                                (:shape-name "CreateAliasInput"))

(smithy/sdk/shapes:define-output create-alias-output common-lisp:nil
                                 ((alias :target-type alias :member-name
                                   "Alias"))
                                 (:shape-name "CreateAliasOutput"))

(smithy/sdk/shapes:define-input create-build-input common-lisp:nil
                                ((name :target-type non-zero-and-max-string
                                  :member-name "Name")
                                 (version :target-type non-zero-and-max-string
                                  :member-name "Version")
                                 (storage-location :target-type s3location
                                  :member-name "StorageLocation")
                                 (operating-system :target-type
                                  operating-system :member-name
                                  "OperatingSystem")
                                 (tags :target-type tag-list :member-name
                                  "Tags")
                                 (server-sdk-version :target-type
                                  server-sdk-version :member-name
                                  "ServerSdkVersion"))
                                (:shape-name "CreateBuildInput"))

(smithy/sdk/shapes:define-output create-build-output common-lisp:nil
                                 ((build :target-type build :member-name
                                   "Build")
                                  (upload-credentials :target-type
                                   aws-credentials :member-name
                                   "UploadCredentials")
                                  (storage-location :target-type s3location
                                   :member-name "StorageLocation"))
                                 (:shape-name "CreateBuildOutput"))

(smithy/sdk/shapes:define-input create-container-fleet-input common-lisp:nil
                                ((fleet-role-arn :target-type iam-role-arn
                                  :required common-lisp:t :member-name
                                  "FleetRoleArn")
                                 (description :target-type
                                  non-zero-and-max-string :member-name
                                  "Description")
                                 (game-server-container-group-definition-name
                                  :target-type
                                  container-group-definition-name-or-arn
                                  :member-name
                                  "GameServerContainerGroupDefinitionName")
                                 (per-instance-container-group-definition-name
                                  :target-type
                                  container-group-definition-name-or-arn
                                  :member-name
                                  "PerInstanceContainerGroupDefinitionName")
                                 (instance-connection-port-range :target-type
                                  connection-port-range :member-name
                                  "InstanceConnectionPortRange")
                                 (instance-inbound-permissions :target-type
                                  ip-permissions-list :member-name
                                  "InstanceInboundPermissions")
                                 (game-server-container-groups-per-instance
                                  :target-type
                                  game-server-container-groups-per-instance
                                  :member-name
                                  "GameServerContainerGroupsPerInstance")
                                 (instance-type :target-type
                                  non-zero-and-max-string :member-name
                                  "InstanceType")
                                 (billing-type :target-type
                                  container-fleet-billing-type :member-name
                                  "BillingType")
                                 (locations :target-type
                                  location-configuration-list :member-name
                                  "Locations")
                                 (metric-groups :target-type metric-group-list
                                  :member-name "MetricGroups")
                                 (new-game-session-protection-policy
                                  :target-type protection-policy :member-name
                                  "NewGameSessionProtectionPolicy")
                                 (game-session-creation-limit-policy
                                  :target-type
                                  game-session-creation-limit-policy
                                  :member-name
                                  "GameSessionCreationLimitPolicy")
                                 (log-configuration :target-type
                                  log-configuration :member-name
                                  "LogConfiguration")
                                 (tags :target-type tag-list :member-name
                                  "Tags"))
                                (:shape-name "CreateContainerFleetInput"))

(smithy/sdk/shapes:define-output create-container-fleet-output common-lisp:nil
                                 ((container-fleet :target-type container-fleet
                                   :member-name "ContainerFleet"))
                                 (:shape-name "CreateContainerFleetOutput"))

(smithy/sdk/shapes:define-input create-container-group-definition-input
                                common-lisp:nil
                                ((name :target-type
                                  container-group-definition-name :required
                                  common-lisp:t :member-name "Name")
                                 (container-group-type :target-type
                                  container-group-type :member-name
                                  "ContainerGroupType")
                                 (total-memory-limit-mebibytes :target-type
                                  container-total-memory-limit :required
                                  common-lisp:t :member-name
                                  "TotalMemoryLimitMebibytes")
                                 (total-vcpu-limit :target-type
                                  container-total-vcpu-limit :required
                                  common-lisp:t :member-name "TotalVcpuLimit")
                                 (game-server-container-definition :target-type
                                  game-server-container-definition-input
                                  :member-name "GameServerContainerDefinition")
                                 (support-container-definitions :target-type
                                  support-container-definition-input-list
                                  :member-name "SupportContainerDefinitions")
                                 (operating-system :target-type
                                  container-operating-system :required
                                  common-lisp:t :member-name "OperatingSystem")
                                 (version-description :target-type
                                  non-zero-and-max-string :member-name
                                  "VersionDescription")
                                 (tags :target-type tag-list :member-name
                                  "Tags"))
                                (:shape-name
                                 "CreateContainerGroupDefinitionInput"))

(smithy/sdk/shapes:define-output create-container-group-definition-output
                                 common-lisp:nil
                                 ((container-group-definition :target-type
                                   container-group-definition :member-name
                                   "ContainerGroupDefinition"))
                                 (:shape-name
                                  "CreateContainerGroupDefinitionOutput"))

(smithy/sdk/shapes:define-input create-fleet-input common-lisp:nil
                                ((name :target-type non-zero-and-max-string
                                  :required common-lisp:t :member-name "Name")
                                 (description :target-type
                                  non-zero-and-max-string :member-name
                                  "Description")
                                 (build-id :target-type build-id-or-arn
                                  :member-name "BuildId")
                                 (script-id :target-type script-id-or-arn
                                  :member-name "ScriptId")
                                 (server-launch-path :target-type
                                  launch-path-string-model :member-name
                                  "ServerLaunchPath")
                                 (server-launch-parameters :target-type
                                  launch-parameters-string-model :member-name
                                  "ServerLaunchParameters")
                                 (log-paths :target-type string-list
                                  :member-name "LogPaths")
                                 (ec2instance-type :target-type
                                  ec2instance-type :member-name
                                  "EC2InstanceType")
                                 (ec2inbound-permissions :target-type
                                  ip-permissions-list :member-name
                                  "EC2InboundPermissions")
                                 (new-game-session-protection-policy
                                  :target-type protection-policy :member-name
                                  "NewGameSessionProtectionPolicy")
                                 (runtime-configuration :target-type
                                  runtime-configuration :member-name
                                  "RuntimeConfiguration")
                                 (resource-creation-limit-policy :target-type
                                  resource-creation-limit-policy :member-name
                                  "ResourceCreationLimitPolicy")
                                 (metric-groups :target-type metric-group-list
                                  :member-name "MetricGroups")
                                 (peer-vpc-aws-account-id :target-type
                                  non-zero-and-max-string :member-name
                                  "PeerVpcAwsAccountId")
                                 (peer-vpc-id :target-type
                                  non-zero-and-max-string :member-name
                                  "PeerVpcId")
                                 (fleet-type :target-type fleet-type
                                  :member-name "FleetType")
                                 (instance-role-arn :target-type
                                  non-empty-string :member-name
                                  "InstanceRoleArn")
                                 (certificate-configuration :target-type
                                  certificate-configuration :member-name
                                  "CertificateConfiguration")
                                 (locations :target-type
                                  location-configuration-list :member-name
                                  "Locations")
                                 (tags :target-type tag-list :member-name
                                  "Tags")
                                 (compute-type :target-type compute-type
                                  :member-name "ComputeType")
                                 (anywhere-configuration :target-type
                                  anywhere-configuration :member-name
                                  "AnywhereConfiguration")
                                 (instance-role-credentials-provider
                                  :target-type
                                  instance-role-credentials-provider
                                  :member-name
                                  "InstanceRoleCredentialsProvider"))
                                (:shape-name "CreateFleetInput"))

(smithy/sdk/shapes:define-input create-fleet-locations-input common-lisp:nil
                                ((fleet-id :target-type fleet-id-or-arn
                                  :required common-lisp:t :member-name
                                  "FleetId")
                                 (locations :target-type
                                  location-configuration-list :required
                                  common-lisp:t :member-name "Locations"))
                                (:shape-name "CreateFleetLocationsInput"))

(smithy/sdk/shapes:define-output create-fleet-locations-output common-lisp:nil
                                 ((fleet-id :target-type fleet-id-or-arn
                                   :member-name "FleetId")
                                  (fleet-arn :target-type fleet-arn
                                   :member-name "FleetArn")
                                  (location-states :target-type
                                   location-state-list :member-name
                                   "LocationStates"))
                                 (:shape-name "CreateFleetLocationsOutput"))

(smithy/sdk/shapes:define-output create-fleet-output common-lisp:nil
                                 ((fleet-attributes :target-type
                                   fleet-attributes :member-name
                                   "FleetAttributes")
                                  (location-states :target-type
                                   location-state-list :member-name
                                   "LocationStates"))
                                 (:shape-name "CreateFleetOutput"))

(smithy/sdk/shapes:define-input create-game-server-group-input common-lisp:nil
                                ((game-server-group-name :target-type
                                  game-server-group-name :required
                                  common-lisp:t :member-name
                                  "GameServerGroupName")
                                 (role-arn :target-type iam-role-arn :required
                                  common-lisp:t :member-name "RoleArn")
                                 (min-size :target-type whole-number :required
                                  common-lisp:t :member-name "MinSize")
                                 (max-size :target-type positive-integer
                                  :required common-lisp:t :member-name
                                  "MaxSize")
                                 (launch-template :target-type
                                  launch-template-specification :required
                                  common-lisp:t :member-name "LaunchTemplate")
                                 (instance-definitions :target-type
                                  instance-definitions :required common-lisp:t
                                  :member-name "InstanceDefinitions")
                                 (auto-scaling-policy :target-type
                                  game-server-group-auto-scaling-policy
                                  :member-name "AutoScalingPolicy")
                                 (balancing-strategy :target-type
                                  balancing-strategy :member-name
                                  "BalancingStrategy")
                                 (game-server-protection-policy :target-type
                                  game-server-protection-policy :member-name
                                  "GameServerProtectionPolicy")
                                 (vpc-subnets :target-type vpc-subnets
                                  :member-name "VpcSubnets")
                                 (tags :target-type tag-list :member-name
                                  "Tags"))
                                (:shape-name "CreateGameServerGroupInput"))

(smithy/sdk/shapes:define-output create-game-server-group-output
                                 common-lisp:nil
                                 ((game-server-group :target-type
                                   game-server-group :member-name
                                   "GameServerGroup"))
                                 (:shape-name "CreateGameServerGroupOutput"))

(smithy/sdk/shapes:define-input create-game-session-input common-lisp:nil
                                ((fleet-id :target-type fleet-id-or-arn
                                  :member-name "FleetId")
                                 (alias-id :target-type alias-id-or-arn
                                  :member-name "AliasId")
                                 (maximum-player-session-count :target-type
                                  whole-number :required common-lisp:t
                                  :member-name "MaximumPlayerSessionCount")
                                 (name :target-type non-zero-and-max-string
                                  :member-name "Name")
                                 (game-properties :target-type
                                  game-property-list :member-name
                                  "GameProperties")
                                 (creator-id :target-type
                                  non-zero-and-max-string :member-name
                                  "CreatorId")
                                 (game-session-id :target-type id-string-model
                                  :member-name "GameSessionId")
                                 (idempotency-token :target-type
                                  id-string-model :member-name
                                  "IdempotencyToken")
                                 (game-session-data :target-type
                                  large-game-session-data :member-name
                                  "GameSessionData")
                                 (location :target-type location-string-model
                                  :member-name "Location"))
                                (:shape-name "CreateGameSessionInput"))

(smithy/sdk/shapes:define-output create-game-session-output common-lisp:nil
                                 ((game-session :target-type game-session
                                   :member-name "GameSession"))
                                 (:shape-name "CreateGameSessionOutput"))

(smithy/sdk/shapes:define-input create-game-session-queue-input common-lisp:nil
                                ((name :target-type game-session-queue-name
                                  :required common-lisp:t :member-name "Name")
                                 (timeout-in-seconds :target-type whole-number
                                  :member-name "TimeoutInSeconds")
                                 (player-latency-policies :target-type
                                  player-latency-policy-list :member-name
                                  "PlayerLatencyPolicies")
                                 (destinations :target-type
                                  game-session-queue-destination-list
                                  :member-name "Destinations")
                                 (filter-configuration :target-type
                                  filter-configuration :member-name
                                  "FilterConfiguration")
                                 (priority-configuration :target-type
                                  priority-configuration :member-name
                                  "PriorityConfiguration")
                                 (custom-event-data :target-type
                                  queue-custom-event-data :member-name
                                  "CustomEventData")
                                 (notification-target :target-type
                                  queue-sns-arn-string-model :member-name
                                  "NotificationTarget")
                                 (tags :target-type tag-list :member-name
                                  "Tags"))
                                (:shape-name "CreateGameSessionQueueInput"))

(smithy/sdk/shapes:define-output create-game-session-queue-output
                                 common-lisp:nil
                                 ((game-session-queue :target-type
                                   game-session-queue :member-name
                                   "GameSessionQueue"))
                                 (:shape-name "CreateGameSessionQueueOutput"))

(smithy/sdk/shapes:define-input create-location-input common-lisp:nil
                                ((location-name :target-type
                                  custom-input-location-string-model :required
                                  common-lisp:t :member-name "LocationName")
                                 (tags :target-type tag-list :member-name
                                  "Tags"))
                                (:shape-name "CreateLocationInput"))

(smithy/sdk/shapes:define-output create-location-output common-lisp:nil
                                 ((location :target-type location-model
                                   :member-name "Location"))
                                 (:shape-name "CreateLocationOutput"))

(smithy/sdk/shapes:define-input create-matchmaking-configuration-input
                                common-lisp:nil
                                ((name :target-type matchmaking-id-string-model
                                  :required common-lisp:t :member-name "Name")
                                 (description :target-type
                                  non-zero-and-max-string :member-name
                                  "Description")
                                 (game-session-queue-arns :target-type
                                  queue-arns-list :member-name
                                  "GameSessionQueueArns")
                                 (request-timeout-seconds :target-type
                                  matchmaking-request-timeout-integer :required
                                  common-lisp:t :member-name
                                  "RequestTimeoutSeconds")
                                 (acceptance-timeout-seconds :target-type
                                  matchmaking-acceptance-timeout-integer
                                  :member-name "AcceptanceTimeoutSeconds")
                                 (acceptance-required :target-type
                                  boolean-model :required common-lisp:t
                                  :member-name "AcceptanceRequired")
                                 (rule-set-name :target-type
                                  matchmaking-rule-set-name :required
                                  common-lisp:t :member-name "RuleSetName")
                                 (notification-target :target-type
                                  sns-arn-string-model :member-name
                                  "NotificationTarget")
                                 (additional-player-count :target-type
                                  whole-number :member-name
                                  "AdditionalPlayerCount")
                                 (custom-event-data :target-type
                                  custom-event-data :member-name
                                  "CustomEventData")
                                 (game-properties :target-type
                                  game-property-list :member-name
                                  "GameProperties")
                                 (game-session-data :target-type
                                  game-session-data :member-name
                                  "GameSessionData")
                                 (backfill-mode :target-type backfill-mode
                                  :member-name "BackfillMode")
                                 (flex-match-mode :target-type flex-match-mode
                                  :member-name "FlexMatchMode")
                                 (tags :target-type tag-list :member-name
                                  "Tags"))
                                (:shape-name
                                 "CreateMatchmakingConfigurationInput"))

(smithy/sdk/shapes:define-output create-matchmaking-configuration-output
                                 common-lisp:nil
                                 ((configuration :target-type
                                   matchmaking-configuration :member-name
                                   "Configuration"))
                                 (:shape-name
                                  "CreateMatchmakingConfigurationOutput"))

(smithy/sdk/shapes:define-input create-matchmaking-rule-set-input
                                common-lisp:nil
                                ((name :target-type matchmaking-id-string-model
                                  :required common-lisp:t :member-name "Name")
                                 (rule-set-body :target-type rule-set-body
                                  :required common-lisp:t :member-name
                                  "RuleSetBody")
                                 (tags :target-type tag-list :member-name
                                  "Tags"))
                                (:shape-name "CreateMatchmakingRuleSetInput"))

(smithy/sdk/shapes:define-output create-matchmaking-rule-set-output
                                 common-lisp:nil
                                 ((rule-set :target-type matchmaking-rule-set
                                   :required common-lisp:t :member-name
                                   "RuleSet"))
                                 (:shape-name "CreateMatchmakingRuleSetOutput"))

(smithy/sdk/shapes:define-input create-player-session-input common-lisp:nil
                                ((game-session-id :target-type arn-string-model
                                  :required common-lisp:t :member-name
                                  "GameSessionId")
                                 (player-id :target-type player-id :required
                                  common-lisp:t :member-name "PlayerId")
                                 (player-data :target-type player-data
                                  :member-name "PlayerData"))
                                (:shape-name "CreatePlayerSessionInput"))

(smithy/sdk/shapes:define-output create-player-session-output common-lisp:nil
                                 ((player-session :target-type player-session
                                   :member-name "PlayerSession"))
                                 (:shape-name "CreatePlayerSessionOutput"))

(smithy/sdk/shapes:define-input create-player-sessions-input common-lisp:nil
                                ((game-session-id :target-type arn-string-model
                                  :required common-lisp:t :member-name
                                  "GameSessionId")
                                 (player-ids :target-type player-id-list
                                  :required common-lisp:t :member-name
                                  "PlayerIds")
                                 (player-data-map :target-type player-data-map
                                  :member-name "PlayerDataMap"))
                                (:shape-name "CreatePlayerSessionsInput"))

(smithy/sdk/shapes:define-output create-player-sessions-output common-lisp:nil
                                 ((player-sessions :target-type
                                   player-session-list :member-name
                                   "PlayerSessions"))
                                 (:shape-name "CreatePlayerSessionsOutput"))

(smithy/sdk/shapes:define-input create-script-input common-lisp:nil
                                ((name :target-type non-zero-and-max-string
                                  :member-name "Name")
                                 (version :target-type non-zero-and-max-string
                                  :member-name "Version")
                                 (storage-location :target-type s3location
                                  :member-name "StorageLocation")
                                 (zip-file :target-type zip-blob :member-name
                                  "ZipFile")
                                 (tags :target-type tag-list :member-name
                                  "Tags"))
                                (:shape-name "CreateScriptInput"))

(smithy/sdk/shapes:define-output create-script-output common-lisp:nil
                                 ((script :target-type script :member-name
                                   "Script"))
                                 (:shape-name "CreateScriptOutput"))

(smithy/sdk/shapes:define-input create-vpc-peering-authorization-input
                                common-lisp:nil
                                ((game-lift-aws-account-id :target-type
                                  non-zero-and-max-string :required
                                  common-lisp:t :member-name
                                  "GameLiftAwsAccountId")
                                 (peer-vpc-id :target-type
                                  non-zero-and-max-string :required
                                  common-lisp:t :member-name "PeerVpcId"))
                                (:shape-name
                                 "CreateVpcPeeringAuthorizationInput"))

(smithy/sdk/shapes:define-output create-vpc-peering-authorization-output
                                 common-lisp:nil
                                 ((vpc-peering-authorization :target-type
                                   vpc-peering-authorization :member-name
                                   "VpcPeeringAuthorization"))
                                 (:shape-name
                                  "CreateVpcPeeringAuthorizationOutput"))

(smithy/sdk/shapes:define-input create-vpc-peering-connection-input
                                common-lisp:nil
                                ((fleet-id :target-type fleet-id :required
                                  common-lisp:t :member-name "FleetId")
                                 (peer-vpc-aws-account-id :target-type
                                  non-zero-and-max-string :required
                                  common-lisp:t :member-name
                                  "PeerVpcAwsAccountId")
                                 (peer-vpc-id :target-type
                                  non-zero-and-max-string :required
                                  common-lisp:t :member-name "PeerVpcId"))
                                (:shape-name "CreateVpcPeeringConnectionInput"))

(smithy/sdk/shapes:define-output create-vpc-peering-connection-output
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name
                                  "CreateVpcPeeringConnectionOutput"))

(smithy/sdk/shapes:define-type custom-event-data smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type custom-input-location-string-model
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type custom-location-name-or-arn-model
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input delete-alias-input common-lisp:nil
                                ((alias-id :target-type alias-id-or-arn
                                  :required common-lisp:t :member-name
                                  "AliasId"))
                                (:shape-name "DeleteAliasInput"))

(smithy/sdk/shapes:define-input delete-build-input common-lisp:nil
                                ((build-id :target-type build-id-or-arn
                                  :required common-lisp:t :member-name
                                  "BuildId"))
                                (:shape-name "DeleteBuildInput"))

(smithy/sdk/shapes:define-input delete-container-fleet-input common-lisp:nil
                                ((fleet-id :target-type fleet-id-or-arn
                                  :required common-lisp:t :member-name
                                  "FleetId"))
                                (:shape-name "DeleteContainerFleetInput"))

(smithy/sdk/shapes:define-output delete-container-fleet-output common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "DeleteContainerFleetOutput"))

(smithy/sdk/shapes:define-input delete-container-group-definition-input
                                common-lisp:nil
                                ((name :target-type
                                  container-group-definition-name-or-arn
                                  :required common-lisp:t :member-name "Name")
                                 (version-number :target-type positive-integer
                                  :member-name "VersionNumber")
                                 (version-count-to-retain :target-type
                                  whole-number :member-name
                                  "VersionCountToRetain"))
                                (:shape-name
                                 "DeleteContainerGroupDefinitionInput"))

(smithy/sdk/shapes:define-output delete-container-group-definition-output
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name
                                  "DeleteContainerGroupDefinitionOutput"))

(smithy/sdk/shapes:define-input delete-fleet-input common-lisp:nil
                                ((fleet-id :target-type fleet-id-or-arn
                                  :required common-lisp:t :member-name
                                  "FleetId"))
                                (:shape-name "DeleteFleetInput"))

(smithy/sdk/shapes:define-input delete-fleet-locations-input common-lisp:nil
                                ((fleet-id :target-type fleet-id-or-arn
                                  :required common-lisp:t :member-name
                                  "FleetId")
                                 (locations :target-type location-list
                                  :required common-lisp:t :member-name
                                  "Locations"))
                                (:shape-name "DeleteFleetLocationsInput"))

(smithy/sdk/shapes:define-output delete-fleet-locations-output common-lisp:nil
                                 ((fleet-id :target-type fleet-id-or-arn
                                   :member-name "FleetId")
                                  (fleet-arn :target-type fleet-arn
                                   :member-name "FleetArn")
                                  (location-states :target-type
                                   location-state-list :member-name
                                   "LocationStates"))
                                 (:shape-name "DeleteFleetLocationsOutput"))

(smithy/sdk/shapes:define-input delete-game-server-group-input common-lisp:nil
                                ((game-server-group-name :target-type
                                  game-server-group-name-or-arn :required
                                  common-lisp:t :member-name
                                  "GameServerGroupName")
                                 (delete-option :target-type
                                  game-server-group-delete-option :member-name
                                  "DeleteOption"))
                                (:shape-name "DeleteGameServerGroupInput"))

(smithy/sdk/shapes:define-output delete-game-server-group-output
                                 common-lisp:nil
                                 ((game-server-group :target-type
                                   game-server-group :member-name
                                   "GameServerGroup"))
                                 (:shape-name "DeleteGameServerGroupOutput"))

(smithy/sdk/shapes:define-input delete-game-session-queue-input common-lisp:nil
                                ((name :target-type
                                  game-session-queue-name-or-arn :required
                                  common-lisp:t :member-name "Name"))
                                (:shape-name "DeleteGameSessionQueueInput"))

(smithy/sdk/shapes:define-output delete-game-session-queue-output
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name "DeleteGameSessionQueueOutput"))

(smithy/sdk/shapes:define-input delete-location-input common-lisp:nil
                                ((location-name :target-type
                                  custom-location-name-or-arn-model :required
                                  common-lisp:t :member-name "LocationName"))
                                (:shape-name "DeleteLocationInput"))

(smithy/sdk/shapes:define-output delete-location-output common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "DeleteLocationOutput"))

(smithy/sdk/shapes:define-input delete-matchmaking-configuration-input
                                common-lisp:nil
                                ((name :target-type
                                  matchmaking-configuration-name :required
                                  common-lisp:t :member-name "Name"))
                                (:shape-name
                                 "DeleteMatchmakingConfigurationInput"))

(smithy/sdk/shapes:define-output delete-matchmaking-configuration-output
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name
                                  "DeleteMatchmakingConfigurationOutput"))

(smithy/sdk/shapes:define-input delete-matchmaking-rule-set-input
                                common-lisp:nil
                                ((name :target-type matchmaking-rule-set-name
                                  :required common-lisp:t :member-name "Name"))
                                (:shape-name "DeleteMatchmakingRuleSetInput"))

(smithy/sdk/shapes:define-output delete-matchmaking-rule-set-output
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name "DeleteMatchmakingRuleSetOutput"))

(smithy/sdk/shapes:define-input delete-scaling-policy-input common-lisp:nil
                                ((name :target-type non-zero-and-max-string
                                  :required common-lisp:t :member-name "Name")
                                 (fleet-id :target-type fleet-id-or-arn
                                  :required common-lisp:t :member-name
                                  "FleetId"))
                                (:shape-name "DeleteScalingPolicyInput"))

(smithy/sdk/shapes:define-input delete-script-input common-lisp:nil
                                ((script-id :target-type script-id-or-arn
                                  :required common-lisp:t :member-name
                                  "ScriptId"))
                                (:shape-name "DeleteScriptInput"))

(smithy/sdk/shapes:define-input delete-vpc-peering-authorization-input
                                common-lisp:nil
                                ((game-lift-aws-account-id :target-type
                                  non-zero-and-max-string :required
                                  common-lisp:t :member-name
                                  "GameLiftAwsAccountId")
                                 (peer-vpc-id :target-type
                                  non-zero-and-max-string :required
                                  common-lisp:t :member-name "PeerVpcId"))
                                (:shape-name
                                 "DeleteVpcPeeringAuthorizationInput"))

(smithy/sdk/shapes:define-output delete-vpc-peering-authorization-output
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name
                                  "DeleteVpcPeeringAuthorizationOutput"))

(smithy/sdk/shapes:define-input delete-vpc-peering-connection-input
                                common-lisp:nil
                                ((fleet-id :target-type fleet-id :required
                                  common-lisp:t :member-name "FleetId")
                                 (vpc-peering-connection-id :target-type
                                  non-zero-and-max-string :required
                                  common-lisp:t :member-name
                                  "VpcPeeringConnectionId"))
                                (:shape-name "DeleteVpcPeeringConnectionInput"))

(smithy/sdk/shapes:define-output delete-vpc-peering-connection-output
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name
                                  "DeleteVpcPeeringConnectionOutput"))

(smithy/sdk/shapes:define-structure deployment-configuration common-lisp:nil
                                    ((protection-strategy :target-type
                                      deployment-protection-strategy
                                      :member-name "ProtectionStrategy")
                                     (minimum-healthy-percentage :target-type
                                      minimum-healthy-percentage :member-name
                                      "MinimumHealthyPercentage")
                                     (impairment-strategy :target-type
                                      deployment-impairment-strategy
                                      :member-name "ImpairmentStrategy"))
                                    (:shape-name "DeploymentConfiguration"))

(smithy/sdk/shapes:define-structure deployment-details common-lisp:nil
                                    ((latest-deployment-id :target-type
                                      deployment-id :member-name
                                      "LatestDeploymentId"))
                                    (:shape-name "DeploymentDetails"))

(smithy/sdk/shapes:define-type deployment-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum deployment-impairment-strategy
    common-lisp:nil
  (:maintain "MAINTAIN")
  (:rollback "ROLLBACK"))

(smithy/sdk/shapes:define-enum deployment-protection-strategy
    common-lisp:nil
  (:with-protection "WITH_PROTECTION")
  (:ignore-protection "IGNORE_PROTECTION"))

(smithy/sdk/shapes:define-enum deployment-status
    common-lisp:nil
  (:in-progress "IN_PROGRESS")
  (:impaired "IMPAIRED")
  (:complete "COMPLETE")
  (:rollback-in-progress "ROLLBACK_IN_PROGRESS")
  (:rollback-complete "ROLLBACK_COMPLETE")
  (:cancelled "CANCELLED")
  (:pending "PENDING"))

(smithy/sdk/shapes:define-input deregister-compute-input common-lisp:nil
                                ((fleet-id :target-type fleet-id-or-arn
                                  :required common-lisp:t :member-name
                                  "FleetId")
                                 (compute-name :target-type compute-name-or-arn
                                  :required common-lisp:t :member-name
                                  "ComputeName"))
                                (:shape-name "DeregisterComputeInput"))

(smithy/sdk/shapes:define-output deregister-compute-output common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "DeregisterComputeOutput"))

(smithy/sdk/shapes:define-input deregister-game-server-input common-lisp:nil
                                ((game-server-group-name :target-type
                                  game-server-group-name-or-arn :required
                                  common-lisp:t :member-name
                                  "GameServerGroupName")
                                 (game-server-id :target-type game-server-id
                                  :required common-lisp:t :member-name
                                  "GameServerId"))
                                (:shape-name "DeregisterGameServerInput"))

(smithy/sdk/shapes:define-input describe-alias-input common-lisp:nil
                                ((alias-id :target-type alias-id-or-arn
                                  :required common-lisp:t :member-name
                                  "AliasId"))
                                (:shape-name "DescribeAliasInput"))

(smithy/sdk/shapes:define-output describe-alias-output common-lisp:nil
                                 ((alias :target-type alias :member-name
                                   "Alias"))
                                 (:shape-name "DescribeAliasOutput"))

(smithy/sdk/shapes:define-input describe-build-input common-lisp:nil
                                ((build-id :target-type build-id-or-arn
                                  :required common-lisp:t :member-name
                                  "BuildId"))
                                (:shape-name "DescribeBuildInput"))

(smithy/sdk/shapes:define-output describe-build-output common-lisp:nil
                                 ((build :target-type build :member-name
                                   "Build"))
                                 (:shape-name "DescribeBuildOutput"))

(smithy/sdk/shapes:define-input describe-compute-input common-lisp:nil
                                ((fleet-id :target-type fleet-id-or-arn
                                  :required common-lisp:t :member-name
                                  "FleetId")
                                 (compute-name :target-type compute-name-or-arn
                                  :required common-lisp:t :member-name
                                  "ComputeName"))
                                (:shape-name "DescribeComputeInput"))

(smithy/sdk/shapes:define-output describe-compute-output common-lisp:nil
                                 ((compute :target-type compute :member-name
                                   "Compute"))
                                 (:shape-name "DescribeComputeOutput"))

(smithy/sdk/shapes:define-input describe-container-fleet-input common-lisp:nil
                                ((fleet-id :target-type fleet-id-or-arn
                                  :required common-lisp:t :member-name
                                  "FleetId"))
                                (:shape-name "DescribeContainerFleetInput"))

(smithy/sdk/shapes:define-output describe-container-fleet-output
                                 common-lisp:nil
                                 ((container-fleet :target-type container-fleet
                                   :member-name "ContainerFleet"))
                                 (:shape-name "DescribeContainerFleetOutput"))

(smithy/sdk/shapes:define-input describe-container-group-definition-input
                                common-lisp:nil
                                ((name :target-type
                                  container-group-definition-name-or-arn
                                  :required common-lisp:t :member-name "Name")
                                 (version-number :target-type positive-integer
                                  :member-name "VersionNumber"))
                                (:shape-name
                                 "DescribeContainerGroupDefinitionInput"))

(smithy/sdk/shapes:define-output describe-container-group-definition-output
                                 common-lisp:nil
                                 ((container-group-definition :target-type
                                   container-group-definition :member-name
                                   "ContainerGroupDefinition"))
                                 (:shape-name
                                  "DescribeContainerGroupDefinitionOutput"))

(smithy/sdk/shapes:define-input describe-ec2instance-limits-input
                                common-lisp:nil
                                ((ec2instance-type :target-type
                                  ec2instance-type :member-name
                                  "EC2InstanceType")
                                 (location :target-type location-string-model
                                  :member-name "Location"))
                                (:shape-name "DescribeEC2InstanceLimitsInput"))

(smithy/sdk/shapes:define-output describe-ec2instance-limits-output
                                 common-lisp:nil
                                 ((ec2instance-limits :target-type
                                   ec2instance-limit-list :member-name
                                   "EC2InstanceLimits"))
                                 (:shape-name
                                  "DescribeEC2InstanceLimitsOutput"))

(smithy/sdk/shapes:define-input describe-fleet-attributes-input common-lisp:nil
                                ((fleet-ids :target-type fleet-id-or-arn-list
                                  :member-name "FleetIds")
                                 (limit :target-type positive-integer
                                  :member-name "Limit")
                                 (next-token :target-type
                                  non-zero-and-max-string :member-name
                                  "NextToken"))
                                (:shape-name "DescribeFleetAttributesInput"))

(smithy/sdk/shapes:define-output describe-fleet-attributes-output
                                 common-lisp:nil
                                 ((fleet-attributes :target-type
                                   fleet-attributes-list :member-name
                                   "FleetAttributes")
                                  (next-token :target-type
                                   non-zero-and-max-string :member-name
                                   "NextToken"))
                                 (:shape-name "DescribeFleetAttributesOutput"))

(smithy/sdk/shapes:define-input describe-fleet-capacity-input common-lisp:nil
                                ((fleet-ids :target-type fleet-id-or-arn-list
                                  :member-name "FleetIds")
                                 (limit :target-type positive-integer
                                  :member-name "Limit")
                                 (next-token :target-type
                                  non-zero-and-max-string :member-name
                                  "NextToken"))
                                (:shape-name "DescribeFleetCapacityInput"))

(smithy/sdk/shapes:define-output describe-fleet-capacity-output common-lisp:nil
                                 ((fleet-capacity :target-type
                                   fleet-capacity-list :member-name
                                   "FleetCapacity")
                                  (next-token :target-type
                                   non-zero-and-max-string :member-name
                                   "NextToken"))
                                 (:shape-name "DescribeFleetCapacityOutput"))

(smithy/sdk/shapes:define-input describe-fleet-deployment-input common-lisp:nil
                                ((fleet-id :target-type fleet-id-or-arn
                                  :required common-lisp:t :member-name
                                  "FleetId")
                                 (deployment-id :target-type deployment-id
                                  :member-name "DeploymentId"))
                                (:shape-name "DescribeFleetDeploymentInput"))

(smithy/sdk/shapes:define-output describe-fleet-deployment-output
                                 common-lisp:nil
                                 ((fleet-deployment :target-type
                                   fleet-deployment :member-name
                                   "FleetDeployment")
                                  (locational-deployments :target-type
                                   locational-deployments :member-name
                                   "LocationalDeployments"))
                                 (:shape-name "DescribeFleetDeploymentOutput"))

(smithy/sdk/shapes:define-input describe-fleet-events-input common-lisp:nil
                                ((fleet-id :target-type fleet-id-or-arn
                                  :required common-lisp:t :member-name
                                  "FleetId")
                                 (start-time :target-type timestamp
                                  :member-name "StartTime")
                                 (end-time :target-type timestamp :member-name
                                  "EndTime")
                                 (limit :target-type positive-integer
                                  :member-name "Limit")
                                 (next-token :target-type
                                  non-zero-and-max-string :member-name
                                  "NextToken"))
                                (:shape-name "DescribeFleetEventsInput"))

(smithy/sdk/shapes:define-output describe-fleet-events-output common-lisp:nil
                                 ((events :target-type event-list :member-name
                                   "Events")
                                  (next-token :target-type
                                   non-zero-and-max-string :member-name
                                   "NextToken"))
                                 (:shape-name "DescribeFleetEventsOutput"))

(smithy/sdk/shapes:define-input describe-fleet-location-attributes-input
                                common-lisp:nil
                                ((fleet-id :target-type fleet-id-or-arn
                                  :required common-lisp:t :member-name
                                  "FleetId")
                                 (locations :target-type location-list
                                  :member-name "Locations")
                                 (limit :target-type positive-integer
                                  :member-name "Limit")
                                 (next-token :target-type
                                  non-zero-and-max-string :member-name
                                  "NextToken"))
                                (:shape-name
                                 "DescribeFleetLocationAttributesInput"))

(smithy/sdk/shapes:define-output describe-fleet-location-attributes-output
                                 common-lisp:nil
                                 ((fleet-id :target-type fleet-id-or-arn
                                   :member-name "FleetId")
                                  (fleet-arn :target-type fleet-arn
                                   :member-name "FleetArn")
                                  (location-attributes :target-type
                                   location-attributes-list :member-name
                                   "LocationAttributes")
                                  (next-token :target-type
                                   non-zero-and-max-string :member-name
                                   "NextToken"))
                                 (:shape-name
                                  "DescribeFleetLocationAttributesOutput"))

(smithy/sdk/shapes:define-input describe-fleet-location-capacity-input
                                common-lisp:nil
                                ((fleet-id :target-type fleet-id-or-arn
                                  :required common-lisp:t :member-name
                                  "FleetId")
                                 (location :target-type location-string-model
                                  :required common-lisp:t :member-name
                                  "Location"))
                                (:shape-name
                                 "DescribeFleetLocationCapacityInput"))

(smithy/sdk/shapes:define-output describe-fleet-location-capacity-output
                                 common-lisp:nil
                                 ((fleet-capacity :target-type fleet-capacity
                                   :member-name "FleetCapacity"))
                                 (:shape-name
                                  "DescribeFleetLocationCapacityOutput"))

(smithy/sdk/shapes:define-input describe-fleet-location-utilization-input
                                common-lisp:nil
                                ((fleet-id :target-type fleet-id-or-arn
                                  :required common-lisp:t :member-name
                                  "FleetId")
                                 (location :target-type location-string-model
                                  :required common-lisp:t :member-name
                                  "Location"))
                                (:shape-name
                                 "DescribeFleetLocationUtilizationInput"))

(smithy/sdk/shapes:define-output describe-fleet-location-utilization-output
                                 common-lisp:nil
                                 ((fleet-utilization :target-type
                                   fleet-utilization :member-name
                                   "FleetUtilization"))
                                 (:shape-name
                                  "DescribeFleetLocationUtilizationOutput"))

(smithy/sdk/shapes:define-input describe-fleet-port-settings-input
                                common-lisp:nil
                                ((fleet-id :target-type fleet-id-or-arn
                                  :required common-lisp:t :member-name
                                  "FleetId")
                                 (location :target-type location-string-model
                                  :member-name "Location"))
                                (:shape-name "DescribeFleetPortSettingsInput"))

(smithy/sdk/shapes:define-output describe-fleet-port-settings-output
                                 common-lisp:nil
                                 ((fleet-id :target-type fleet-id :member-name
                                   "FleetId")
                                  (fleet-arn :target-type fleet-arn
                                   :member-name "FleetArn")
                                  (inbound-permissions :target-type
                                   ip-permissions-list :member-name
                                   "InboundPermissions")
                                  (update-status :target-type
                                   location-update-status :member-name
                                   "UpdateStatus")
                                  (location :target-type location-string-model
                                   :member-name "Location"))
                                 (:shape-name
                                  "DescribeFleetPortSettingsOutput"))

(smithy/sdk/shapes:define-input describe-fleet-utilization-input
                                common-lisp:nil
                                ((fleet-ids :target-type fleet-id-or-arn-list
                                  :member-name "FleetIds")
                                 (limit :target-type positive-integer
                                  :member-name "Limit")
                                 (next-token :target-type
                                  non-zero-and-max-string :member-name
                                  "NextToken"))
                                (:shape-name "DescribeFleetUtilizationInput"))

(smithy/sdk/shapes:define-output describe-fleet-utilization-output
                                 common-lisp:nil
                                 ((fleet-utilization :target-type
                                   fleet-utilization-list :member-name
                                   "FleetUtilization")
                                  (next-token :target-type
                                   non-zero-and-max-string :member-name
                                   "NextToken"))
                                 (:shape-name "DescribeFleetUtilizationOutput"))

(smithy/sdk/shapes:define-input describe-game-server-group-input
                                common-lisp:nil
                                ((game-server-group-name :target-type
                                  game-server-group-name-or-arn :required
                                  common-lisp:t :member-name
                                  "GameServerGroupName"))
                                (:shape-name "DescribeGameServerGroupInput"))

(smithy/sdk/shapes:define-output describe-game-server-group-output
                                 common-lisp:nil
                                 ((game-server-group :target-type
                                   game-server-group :member-name
                                   "GameServerGroup"))
                                 (:shape-name "DescribeGameServerGroupOutput"))

(smithy/sdk/shapes:define-input describe-game-server-input common-lisp:nil
                                ((game-server-group-name :target-type
                                  game-server-group-name-or-arn :required
                                  common-lisp:t :member-name
                                  "GameServerGroupName")
                                 (game-server-id :target-type game-server-id
                                  :required common-lisp:t :member-name
                                  "GameServerId"))
                                (:shape-name "DescribeGameServerInput"))

(smithy/sdk/shapes:define-input describe-game-server-instances-input
                                common-lisp:nil
                                ((game-server-group-name :target-type
                                  game-server-group-name-or-arn :required
                                  common-lisp:t :member-name
                                  "GameServerGroupName")
                                 (instance-ids :target-type
                                  game-server-instance-ids :member-name
                                  "InstanceIds")
                                 (limit :target-type positive-integer
                                  :member-name "Limit")
                                 (next-token :target-type
                                  non-zero-and-max-string :member-name
                                  "NextToken"))
                                (:shape-name
                                 "DescribeGameServerInstancesInput"))

(smithy/sdk/shapes:define-output describe-game-server-instances-output
                                 common-lisp:nil
                                 ((game-server-instances :target-type
                                   game-server-instances :member-name
                                   "GameServerInstances")
                                  (next-token :target-type
                                   non-zero-and-max-string :member-name
                                   "NextToken"))
                                 (:shape-name
                                  "DescribeGameServerInstancesOutput"))

(smithy/sdk/shapes:define-output describe-game-server-output common-lisp:nil
                                 ((game-server :target-type game-server
                                   :member-name "GameServer"))
                                 (:shape-name "DescribeGameServerOutput"))

(smithy/sdk/shapes:define-input describe-game-session-details-input
                                common-lisp:nil
                                ((fleet-id :target-type fleet-id-or-arn
                                  :member-name "FleetId")
                                 (game-session-id :target-type arn-string-model
                                  :member-name "GameSessionId")
                                 (alias-id :target-type alias-id-or-arn
                                  :member-name "AliasId")
                                 (location :target-type location-string-model
                                  :member-name "Location")
                                 (status-filter :target-type
                                  non-zero-and-max-string :member-name
                                  "StatusFilter")
                                 (limit :target-type positive-integer
                                  :member-name "Limit")
                                 (next-token :target-type
                                  non-zero-and-max-string :member-name
                                  "NextToken"))
                                (:shape-name "DescribeGameSessionDetailsInput"))

(smithy/sdk/shapes:define-output describe-game-session-details-output
                                 common-lisp:nil
                                 ((game-session-details :target-type
                                   game-session-detail-list :member-name
                                   "GameSessionDetails")
                                  (next-token :target-type
                                   non-zero-and-max-string :member-name
                                   "NextToken"))
                                 (:shape-name
                                  "DescribeGameSessionDetailsOutput"))

(smithy/sdk/shapes:define-input describe-game-session-placement-input
                                common-lisp:nil
                                ((placement-id :target-type id-string-model
                                  :required common-lisp:t :member-name
                                  "PlacementId"))
                                (:shape-name
                                 "DescribeGameSessionPlacementInput"))

(smithy/sdk/shapes:define-output describe-game-session-placement-output
                                 common-lisp:nil
                                 ((game-session-placement :target-type
                                   game-session-placement :member-name
                                   "GameSessionPlacement"))
                                 (:shape-name
                                  "DescribeGameSessionPlacementOutput"))

(smithy/sdk/shapes:define-input describe-game-session-queues-input
                                common-lisp:nil
                                ((names :target-type
                                  game-session-queue-name-or-arn-list
                                  :member-name "Names")
                                 (limit :target-type positive-integer
                                  :member-name "Limit")
                                 (next-token :target-type
                                  non-zero-and-max-string :member-name
                                  "NextToken"))
                                (:shape-name "DescribeGameSessionQueuesInput"))

(smithy/sdk/shapes:define-output describe-game-session-queues-output
                                 common-lisp:nil
                                 ((game-session-queues :target-type
                                   game-session-queue-list :member-name
                                   "GameSessionQueues")
                                  (next-token :target-type
                                   non-zero-and-max-string :member-name
                                   "NextToken"))
                                 (:shape-name
                                  "DescribeGameSessionQueuesOutput"))

(smithy/sdk/shapes:define-input describe-game-sessions-input common-lisp:nil
                                ((fleet-id :target-type fleet-id-or-arn
                                  :member-name "FleetId")
                                 (game-session-id :target-type arn-string-model
                                  :member-name "GameSessionId")
                                 (alias-id :target-type alias-id-or-arn
                                  :member-name "AliasId")
                                 (location :target-type location-string-model
                                  :member-name "Location")
                                 (status-filter :target-type
                                  non-zero-and-max-string :member-name
                                  "StatusFilter")
                                 (limit :target-type positive-integer
                                  :member-name "Limit")
                                 (next-token :target-type
                                  non-zero-and-max-string :member-name
                                  "NextToken"))
                                (:shape-name "DescribeGameSessionsInput"))

(smithy/sdk/shapes:define-output describe-game-sessions-output common-lisp:nil
                                 ((game-sessions :target-type game-session-list
                                   :member-name "GameSessions")
                                  (next-token :target-type
                                   non-zero-and-max-string :member-name
                                   "NextToken"))
                                 (:shape-name "DescribeGameSessionsOutput"))

(smithy/sdk/shapes:define-input describe-instances-input common-lisp:nil
                                ((fleet-id :target-type fleet-id-or-arn
                                  :required common-lisp:t :member-name
                                  "FleetId")
                                 (instance-id :target-type instance-id
                                  :member-name "InstanceId")
                                 (limit :target-type positive-integer
                                  :member-name "Limit")
                                 (next-token :target-type
                                  non-zero-and-max-string :member-name
                                  "NextToken")
                                 (location :target-type location-string-model
                                  :member-name "Location"))
                                (:shape-name "DescribeInstancesInput"))

(smithy/sdk/shapes:define-output describe-instances-output common-lisp:nil
                                 ((instances :target-type instance-list
                                   :member-name "Instances")
                                  (next-token :target-type
                                   non-zero-and-max-string :member-name
                                   "NextToken"))
                                 (:shape-name "DescribeInstancesOutput"))

(smithy/sdk/shapes:define-input describe-matchmaking-configurations-input
                                common-lisp:nil
                                ((names :target-type
                                  matchmaking-configuration-name-list
                                  :member-name "Names")
                                 (rule-set-name :target-type
                                  matchmaking-rule-set-name :member-name
                                  "RuleSetName")
                                 (limit :target-type positive-integer
                                  :member-name "Limit")
                                 (next-token :target-type
                                  non-zero-and-max-string :member-name
                                  "NextToken"))
                                (:shape-name
                                 "DescribeMatchmakingConfigurationsInput"))

(smithy/sdk/shapes:define-output describe-matchmaking-configurations-output
                                 common-lisp:nil
                                 ((configurations :target-type
                                   matchmaking-configuration-list :member-name
                                   "Configurations")
                                  (next-token :target-type
                                   non-zero-and-max-string :member-name
                                   "NextToken"))
                                 (:shape-name
                                  "DescribeMatchmakingConfigurationsOutput"))

(smithy/sdk/shapes:define-input describe-matchmaking-input common-lisp:nil
                                ((ticket-ids :target-type matchmaking-id-list
                                  :required common-lisp:t :member-name
                                  "TicketIds"))
                                (:shape-name "DescribeMatchmakingInput"))

(smithy/sdk/shapes:define-output describe-matchmaking-output common-lisp:nil
                                 ((ticket-list :target-type
                                   matchmaking-ticket-list :member-name
                                   "TicketList"))
                                 (:shape-name "DescribeMatchmakingOutput"))

(smithy/sdk/shapes:define-input describe-matchmaking-rule-sets-input
                                common-lisp:nil
                                ((names :target-type
                                  matchmaking-rule-set-name-list :member-name
                                  "Names")
                                 (limit :target-type rule-set-limit
                                  :member-name "Limit")
                                 (next-token :target-type
                                  non-zero-and-max-string :member-name
                                  "NextToken"))
                                (:shape-name
                                 "DescribeMatchmakingRuleSetsInput"))

(smithy/sdk/shapes:define-output describe-matchmaking-rule-sets-output
                                 common-lisp:nil
                                 ((rule-sets :target-type
                                   matchmaking-rule-set-list :required
                                   common-lisp:t :member-name "RuleSets")
                                  (next-token :target-type
                                   non-zero-and-max-string :member-name
                                   "NextToken"))
                                 (:shape-name
                                  "DescribeMatchmakingRuleSetsOutput"))

(smithy/sdk/shapes:define-input describe-player-sessions-input common-lisp:nil
                                ((game-session-id :target-type arn-string-model
                                  :member-name "GameSessionId")
                                 (player-id :target-type player-id :member-name
                                  "PlayerId")
                                 (player-session-id :target-type
                                  player-session-id :member-name
                                  "PlayerSessionId")
                                 (player-session-status-filter :target-type
                                  non-zero-and-max-string :member-name
                                  "PlayerSessionStatusFilter")
                                 (limit :target-type positive-integer
                                  :member-name "Limit")
                                 (next-token :target-type
                                  non-zero-and-max-string :member-name
                                  "NextToken"))
                                (:shape-name "DescribePlayerSessionsInput"))

(smithy/sdk/shapes:define-output describe-player-sessions-output
                                 common-lisp:nil
                                 ((player-sessions :target-type
                                   player-session-list :member-name
                                   "PlayerSessions")
                                  (next-token :target-type
                                   non-zero-and-max-string :member-name
                                   "NextToken"))
                                 (:shape-name "DescribePlayerSessionsOutput"))

(smithy/sdk/shapes:define-input describe-runtime-configuration-input
                                common-lisp:nil
                                ((fleet-id :target-type fleet-id-or-arn
                                  :required common-lisp:t :member-name
                                  "FleetId"))
                                (:shape-name
                                 "DescribeRuntimeConfigurationInput"))

(smithy/sdk/shapes:define-output describe-runtime-configuration-output
                                 common-lisp:nil
                                 ((runtime-configuration :target-type
                                   runtime-configuration :member-name
                                   "RuntimeConfiguration"))
                                 (:shape-name
                                  "DescribeRuntimeConfigurationOutput"))

(smithy/sdk/shapes:define-input describe-scaling-policies-input common-lisp:nil
                                ((fleet-id :target-type fleet-id-or-arn
                                  :required common-lisp:t :member-name
                                  "FleetId")
                                 (status-filter :target-type
                                  scaling-status-type :member-name
                                  "StatusFilter")
                                 (limit :target-type positive-integer
                                  :member-name "Limit")
                                 (next-token :target-type
                                  non-zero-and-max-string :member-name
                                  "NextToken")
                                 (location :target-type location-string-model
                                  :member-name "Location"))
                                (:shape-name "DescribeScalingPoliciesInput"))

(smithy/sdk/shapes:define-output describe-scaling-policies-output
                                 common-lisp:nil
                                 ((scaling-policies :target-type
                                   scaling-policy-list :member-name
                                   "ScalingPolicies")
                                  (next-token :target-type
                                   non-zero-and-max-string :member-name
                                   "NextToken"))
                                 (:shape-name "DescribeScalingPoliciesOutput"))

(smithy/sdk/shapes:define-input describe-script-input common-lisp:nil
                                ((script-id :target-type script-id-or-arn
                                  :required common-lisp:t :member-name
                                  "ScriptId"))
                                (:shape-name "DescribeScriptInput"))

(smithy/sdk/shapes:define-output describe-script-output common-lisp:nil
                                 ((script :target-type script :member-name
                                   "Script"))
                                 (:shape-name "DescribeScriptOutput"))

(smithy/sdk/shapes:define-input describe-vpc-peering-authorizations-input
                                common-lisp:nil common-lisp:nil
                                (:shape-name
                                 "DescribeVpcPeeringAuthorizationsInput"))

(smithy/sdk/shapes:define-output describe-vpc-peering-authorizations-output
                                 common-lisp:nil
                                 ((vpc-peering-authorizations :target-type
                                   vpc-peering-authorization-list :member-name
                                   "VpcPeeringAuthorizations"))
                                 (:shape-name
                                  "DescribeVpcPeeringAuthorizationsOutput"))

(smithy/sdk/shapes:define-input describe-vpc-peering-connections-input
                                common-lisp:nil
                                ((fleet-id :target-type fleet-id :member-name
                                  "FleetId"))
                                (:shape-name
                                 "DescribeVpcPeeringConnectionsInput"))

(smithy/sdk/shapes:define-output describe-vpc-peering-connections-output
                                 common-lisp:nil
                                 ((vpc-peering-connections :target-type
                                   vpc-peering-connection-list :member-name
                                   "VpcPeeringConnections"))
                                 (:shape-name
                                  "DescribeVpcPeeringConnectionsOutput"))

(smithy/sdk/shapes:define-structure desired-player-session common-lisp:nil
                                    ((player-id :target-type player-id
                                      :member-name "PlayerId")
                                     (player-data :target-type player-data
                                      :member-name "PlayerData"))
                                    (:shape-name "DesiredPlayerSession"))

(smithy/sdk/shapes:define-list desired-player-session-list :member
                               desired-player-session)

(smithy/sdk/shapes:define-type dns-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type dns-name-input smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type double smithy/sdk/smithy-types:double)

(smithy/sdk/shapes:define-type double-object smithy/sdk/smithy-types:double)

(smithy/sdk/shapes:define-structure ec2instance-counts common-lisp:nil
                                    ((desired :target-type whole-number
                                      :member-name "DESIRED")
                                     (minimum :target-type whole-number
                                      :member-name "MINIMUM")
                                     (maximum :target-type whole-number
                                      :member-name "MAXIMUM")
                                     (pending :target-type whole-number
                                      :member-name "PENDING")
                                     (active :target-type whole-number
                                      :member-name "ACTIVE")
                                     (idle :target-type whole-number
                                      :member-name "IDLE")
                                     (terminating :target-type whole-number
                                      :member-name "TERMINATING"))
                                    (:shape-name "EC2InstanceCounts"))

(smithy/sdk/shapes:define-structure ec2instance-limit common-lisp:nil
                                    ((ec2instance-type :target-type
                                      ec2instance-type :member-name
                                      "EC2InstanceType")
                                     (current-instances :target-type
                                      whole-number :member-name
                                      "CurrentInstances")
                                     (instance-limit :target-type whole-number
                                      :member-name "InstanceLimit")
                                     (location :target-type
                                      location-string-model :member-name
                                      "Location"))
                                    (:shape-name "EC2InstanceLimit"))

(smithy/sdk/shapes:define-list ec2instance-limit-list :member ec2instance-limit)

(smithy/sdk/shapes:define-enum ec2instance-type
    common-lisp:nil
  (:t2-micro "t2.micro")
  (:t2-small "t2.small")
  (:t2-medium "t2.medium")
  (:t2-large "t2.large")
  (:c3-large "c3.large")
  (:c3-xlarge "c3.xlarge")
  (:c3-2xlarge "c3.2xlarge")
  (:c3-4xlarge "c3.4xlarge")
  (:c3-8xlarge "c3.8xlarge")
  (:c4-large "c4.large")
  (:c4-xlarge "c4.xlarge")
  (:c4-2xlarge "c4.2xlarge")
  (:c4-4xlarge "c4.4xlarge")
  (:c4-8xlarge "c4.8xlarge")
  (:c5-large "c5.large")
  (:c5-xlarge "c5.xlarge")
  (:c5-2xlarge "c5.2xlarge")
  (:c5-4xlarge "c5.4xlarge")
  (:c5-9xlarge "c5.9xlarge")
  (:c5-12xlarge "c5.12xlarge")
  (:c5-18xlarge "c5.18xlarge")
  (:c5-24xlarge "c5.24xlarge")
  (:c5a-large "c5a.large")
  (:c5a-xlarge "c5a.xlarge")
  (:c5a-2xlarge "c5a.2xlarge")
  (:c5a-4xlarge "c5a.4xlarge")
  (:c5a-8xlarge "c5a.8xlarge")
  (:c5a-12xlarge "c5a.12xlarge")
  (:c5a-16xlarge "c5a.16xlarge")
  (:c5a-24xlarge "c5a.24xlarge")
  (:r3-large "r3.large")
  (:r3-xlarge "r3.xlarge")
  (:r3-2xlarge "r3.2xlarge")
  (:r3-4xlarge "r3.4xlarge")
  (:r3-8xlarge "r3.8xlarge")
  (:r4-large "r4.large")
  (:r4-xlarge "r4.xlarge")
  (:r4-2xlarge "r4.2xlarge")
  (:r4-4xlarge "r4.4xlarge")
  (:r4-8xlarge "r4.8xlarge")
  (:r4-16xlarge "r4.16xlarge")
  (:r5-large "r5.large")
  (:r5-xlarge "r5.xlarge")
  (:r5-2xlarge "r5.2xlarge")
  (:r5-4xlarge "r5.4xlarge")
  (:r5-8xlarge "r5.8xlarge")
  (:r5-12xlarge "r5.12xlarge")
  (:r5-16xlarge "r5.16xlarge")
  (:r5-24xlarge "r5.24xlarge")
  (:r5a-large "r5a.large")
  (:r5a-xlarge "r5a.xlarge")
  (:r5a-2xlarge "r5a.2xlarge")
  (:r5a-4xlarge "r5a.4xlarge")
  (:r5a-8xlarge "r5a.8xlarge")
  (:r5a-12xlarge "r5a.12xlarge")
  (:r5a-16xlarge "r5a.16xlarge")
  (:r5a-24xlarge "r5a.24xlarge")
  (:m3-medium "m3.medium")
  (:m3-large "m3.large")
  (:m3-xlarge "m3.xlarge")
  (:m3-2xlarge "m3.2xlarge")
  (:m4-large "m4.large")
  (:m4-xlarge "m4.xlarge")
  (:m4-2xlarge "m4.2xlarge")
  (:m4-4xlarge "m4.4xlarge")
  (:m4-10xlarge "m4.10xlarge")
  (:m5-large "m5.large")
  (:m5-xlarge "m5.xlarge")
  (:m5-2xlarge "m5.2xlarge")
  (:m5-4xlarge "m5.4xlarge")
  (:m5-8xlarge "m5.8xlarge")
  (:m5-12xlarge "m5.12xlarge")
  (:m5-16xlarge "m5.16xlarge")
  (:m5-24xlarge "m5.24xlarge")
  (:m5a-large "m5a.large")
  (:m5a-xlarge "m5a.xlarge")
  (:m5a-2xlarge "m5a.2xlarge")
  (:m5a-4xlarge "m5a.4xlarge")
  (:m5a-8xlarge "m5a.8xlarge")
  (:m5a-12xlarge "m5a.12xlarge")
  (:m5a-16xlarge "m5a.16xlarge")
  (:m5a-24xlarge "m5a.24xlarge")
  (:c5d-large "c5d.large")
  (:c5d-xlarge "c5d.xlarge")
  (:c5d-2xlarge "c5d.2xlarge")
  (:c5d-4xlarge "c5d.4xlarge")
  (:c5d-9xlarge "c5d.9xlarge")
  (:c5d-12xlarge "c5d.12xlarge")
  (:c5d-18xlarge "c5d.18xlarge")
  (:c5d-24xlarge "c5d.24xlarge")
  (:c6a-large "c6a.large")
  (:c6a-xlarge "c6a.xlarge")
  (:c6a-2xlarge "c6a.2xlarge")
  (:c6a-4xlarge "c6a.4xlarge")
  (:c6a-8xlarge "c6a.8xlarge")
  (:c6a-12xlarge "c6a.12xlarge")
  (:c6a-16xlarge "c6a.16xlarge")
  (:c6a-24xlarge "c6a.24xlarge")
  (:c6i-large "c6i.large")
  (:c6i-xlarge "c6i.xlarge")
  (:c6i-2xlarge "c6i.2xlarge")
  (:c6i-4xlarge "c6i.4xlarge")
  (:c6i-8xlarge "c6i.8xlarge")
  (:c6i-12xlarge "c6i.12xlarge")
  (:c6i-16xlarge "c6i.16xlarge")
  (:c6i-24xlarge "c6i.24xlarge")
  (:r5d-large "r5d.large")
  (:r5d-xlarge "r5d.xlarge")
  (:r5d-2xlarge "r5d.2xlarge")
  (:r5d-4xlarge "r5d.4xlarge")
  (:r5d-8xlarge "r5d.8xlarge")
  (:r5d-12xlarge "r5d.12xlarge")
  (:r5d-16xlarge "r5d.16xlarge")
  (:r5d-24xlarge "r5d.24xlarge")
  (:m6g-medium "m6g.medium")
  (:m6g-large "m6g.large")
  (:m6g-xlarge "m6g.xlarge")
  (:m6g-2xlarge "m6g.2xlarge")
  (:m6g-4xlarge "m6g.4xlarge")
  (:m6g-8xlarge "m6g.8xlarge")
  (:m6g-12xlarge "m6g.12xlarge")
  (:m6g-16xlarge "m6g.16xlarge")
  (:c6g-medium "c6g.medium")
  (:c6g-large "c6g.large")
  (:c6g-xlarge "c6g.xlarge")
  (:c6g-2xlarge "c6g.2xlarge")
  (:c6g-4xlarge "c6g.4xlarge")
  (:c6g-8xlarge "c6g.8xlarge")
  (:c6g-12xlarge "c6g.12xlarge")
  (:c6g-16xlarge "c6g.16xlarge")
  (:r6g-medium "r6g.medium")
  (:r6g-large "r6g.large")
  (:r6g-xlarge "r6g.xlarge")
  (:r6g-2xlarge "r6g.2xlarge")
  (:r6g-4xlarge "r6g.4xlarge")
  (:r6g-8xlarge "r6g.8xlarge")
  (:r6g-12xlarge "r6g.12xlarge")
  (:r6g-16xlarge "r6g.16xlarge")
  (:c6gn-medium "c6gn.medium")
  (:c6gn-large "c6gn.large")
  (:c6gn-xlarge "c6gn.xlarge")
  (:c6gn-2xlarge "c6gn.2xlarge")
  (:c6gn-4xlarge "c6gn.4xlarge")
  (:c6gn-8xlarge "c6gn.8xlarge")
  (:c6gn-12xlarge "c6gn.12xlarge")
  (:c6gn-16xlarge "c6gn.16xlarge")
  (:c7g-medium "c7g.medium")
  (:c7g-large "c7g.large")
  (:c7g-xlarge "c7g.xlarge")
  (:c7g-2xlarge "c7g.2xlarge")
  (:c7g-4xlarge "c7g.4xlarge")
  (:c7g-8xlarge "c7g.8xlarge")
  (:c7g-12xlarge "c7g.12xlarge")
  (:c7g-16xlarge "c7g.16xlarge")
  (:r7g-medium "r7g.medium")
  (:r7g-large "r7g.large")
  (:r7g-xlarge "r7g.xlarge")
  (:r7g-2xlarge "r7g.2xlarge")
  (:r7g-4xlarge "r7g.4xlarge")
  (:r7g-8xlarge "r7g.8xlarge")
  (:r7g-12xlarge "r7g.12xlarge")
  (:r7g-16xlarge "r7g.16xlarge")
  (:m7g-medium "m7g.medium")
  (:m7g-large "m7g.large")
  (:m7g-xlarge "m7g.xlarge")
  (:m7g-2xlarge "m7g.2xlarge")
  (:m7g-4xlarge "m7g.4xlarge")
  (:m7g-8xlarge "m7g.8xlarge")
  (:m7g-12xlarge "m7g.12xlarge")
  (:m7g-16xlarge "m7g.16xlarge")
  (:g5g-xlarge "g5g.xlarge")
  (:g5g-2xlarge "g5g.2xlarge")
  (:g5g-4xlarge "g5g.4xlarge")
  (:g5g-8xlarge "g5g.8xlarge")
  (:g5g-16xlarge "g5g.16xlarge")
  (:r6i-large "r6i.large")
  (:r6i-xlarge "r6i.xlarge")
  (:r6i-2xlarge "r6i.2xlarge")
  (:r6i-4xlarge "r6i.4xlarge")
  (:r6i-8xlarge "r6i.8xlarge")
  (:r6i-12xlarge "r6i.12xlarge")
  (:r6i-16xlarge "r6i.16xlarge")
  (:c6gd-medium "c6gd.medium")
  (:c6gd-large "c6gd.large")
  (:c6gd-xlarge "c6gd.xlarge")
  (:c6gd-2xlarge "c6gd.2xlarge")
  (:c6gd-4xlarge "c6gd.4xlarge")
  (:c6gd-8xlarge "c6gd.8xlarge")
  (:c6gd-12xlarge "c6gd.12xlarge")
  (:c6gd-16xlarge "c6gd.16xlarge")
  (:c6in-large "c6in.large")
  (:c6in-xlarge "c6in.xlarge")
  (:c6in-2xlarge "c6in.2xlarge")
  (:c6in-4xlarge "c6in.4xlarge")
  (:c6in-8xlarge "c6in.8xlarge")
  (:c6in-12xlarge "c6in.12xlarge")
  (:c6in-16xlarge "c6in.16xlarge")
  (:c7a-medium "c7a.medium")
  (:c7a-large "c7a.large")
  (:c7a-xlarge "c7a.xlarge")
  (:c7a-2xlarge "c7a.2xlarge")
  (:c7a-4xlarge "c7a.4xlarge")
  (:c7a-8xlarge "c7a.8xlarge")
  (:c7a-12xlarge "c7a.12xlarge")
  (:c7a-16xlarge "c7a.16xlarge")
  (:c7gd-medium "c7gd.medium")
  (:c7gd-large "c7gd.large")
  (:c7gd-xlarge "c7gd.xlarge")
  (:c7gd-2xlarge "c7gd.2xlarge")
  (:c7gd-4xlarge "c7gd.4xlarge")
  (:c7gd-8xlarge "c7gd.8xlarge")
  (:c7gd-12xlarge "c7gd.12xlarge")
  (:c7gd-16xlarge "c7gd.16xlarge")
  (:c7gn-medium "c7gn.medium")
  (:c7gn-large "c7gn.large")
  (:c7gn-xlarge "c7gn.xlarge")
  (:c7gn-2xlarge "c7gn.2xlarge")
  (:c7gn-4xlarge "c7gn.4xlarge")
  (:c7gn-8xlarge "c7gn.8xlarge")
  (:c7gn-12xlarge "c7gn.12xlarge")
  (:c7gn-16xlarge "c7gn.16xlarge")
  (:c7i-large "c7i.large")
  (:c7i-xlarge "c7i.xlarge")
  (:c7i-2xlarge "c7i.2xlarge")
  (:c7i-4xlarge "c7i.4xlarge")
  (:c7i-8xlarge "c7i.8xlarge")
  (:c7i-12xlarge "c7i.12xlarge")
  (:c7i-16xlarge "c7i.16xlarge")
  (:m6a-large "m6a.large")
  (:m6a-xlarge "m6a.xlarge")
  (:m6a-2xlarge "m6a.2xlarge")
  (:m6a-4xlarge "m6a.4xlarge")
  (:m6a-8xlarge "m6a.8xlarge")
  (:m6a-12xlarge "m6a.12xlarge")
  (:m6a-16xlarge "m6a.16xlarge")
  (:m6gd-medium "m6gd.medium")
  (:m6gd-large "m6gd.large")
  (:m6gd-xlarge "m6gd.xlarge")
  (:m6gd-2xlarge "m6gd.2xlarge")
  (:m6gd-4xlarge "m6gd.4xlarge")
  (:m6gd-8xlarge "m6gd.8xlarge")
  (:m6gd-12xlarge "m6gd.12xlarge")
  (:m6gd-16xlarge "m6gd.16xlarge")
  (:m6i-large "m6i.large")
  (:m6i-xlarge "m6i.xlarge")
  (:m6i-2xlarge "m6i.2xlarge")
  (:m6i-4xlarge "m6i.4xlarge")
  (:m6i-8xlarge "m6i.8xlarge")
  (:m6i-12xlarge "m6i.12xlarge")
  (:m6i-16xlarge "m6i.16xlarge")
  (:m7a-medium "m7a.medium")
  (:m7a-large "m7a.large")
  (:m7a-xlarge "m7a.xlarge")
  (:m7a-2xlarge "m7a.2xlarge")
  (:m7a-4xlarge "m7a.4xlarge")
  (:m7a-8xlarge "m7a.8xlarge")
  (:m7a-12xlarge "m7a.12xlarge")
  (:m7a-16xlarge "m7a.16xlarge")
  (:m7gd-medium "m7gd.medium")
  (:m7gd-large "m7gd.large")
  (:m7gd-xlarge "m7gd.xlarge")
  (:m7gd-2xlarge "m7gd.2xlarge")
  (:m7gd-4xlarge "m7gd.4xlarge")
  (:m7gd-8xlarge "m7gd.8xlarge")
  (:m7gd-12xlarge "m7gd.12xlarge")
  (:m7gd-16xlarge "m7gd.16xlarge")
  (:m7i-large "m7i.large")
  (:m7i-xlarge "m7i.xlarge")
  (:m7i-2xlarge "m7i.2xlarge")
  (:m7i-4xlarge "m7i.4xlarge")
  (:m7i-8xlarge "m7i.8xlarge")
  (:m7i-12xlarge "m7i.12xlarge")
  (:m7i-16xlarge "m7i.16xlarge")
  (:r6gd-medium "r6gd.medium")
  (:r6gd-large "r6gd.large")
  (:r6gd-xlarge "r6gd.xlarge")
  (:r6gd-2xlarge "r6gd.2xlarge")
  (:r6gd-4xlarge "r6gd.4xlarge")
  (:r6gd-8xlarge "r6gd.8xlarge")
  (:r6gd-12xlarge "r6gd.12xlarge")
  (:r6gd-16xlarge "r6gd.16xlarge")
  (:r7a-medium "r7a.medium")
  (:r7a-large "r7a.large")
  (:r7a-xlarge "r7a.xlarge")
  (:r7a-2xlarge "r7a.2xlarge")
  (:r7a-4xlarge "r7a.4xlarge")
  (:r7a-8xlarge "r7a.8xlarge")
  (:r7a-12xlarge "r7a.12xlarge")
  (:r7a-16xlarge "r7a.16xlarge")
  (:r7gd-medium "r7gd.medium")
  (:r7gd-large "r7gd.large")
  (:r7gd-xlarge "r7gd.xlarge")
  (:r7gd-2xlarge "r7gd.2xlarge")
  (:r7gd-4xlarge "r7gd.4xlarge")
  (:r7gd-8xlarge "r7gd.8xlarge")
  (:r7gd-12xlarge "r7gd.12xlarge")
  (:r7gd-16xlarge "r7gd.16xlarge")
  (:r7i-large "r7i.large")
  (:r7i-xlarge "r7i.xlarge")
  (:r7i-2xlarge "r7i.2xlarge")
  (:r7i-4xlarge "r7i.4xlarge")
  (:r7i-8xlarge "r7i.8xlarge")
  (:r7i-12xlarge "r7i.12xlarge")
  (:r7i-16xlarge "r7i.16xlarge")
  (:r7i-24xlarge "r7i.24xlarge")
  (:r7i-48xlarge "r7i.48xlarge")
  (:c5ad-large "c5ad.large")
  (:c5ad-xlarge "c5ad.xlarge")
  (:c5ad-2xlarge "c5ad.2xlarge")
  (:c5ad-4xlarge "c5ad.4xlarge")
  (:c5ad-8xlarge "c5ad.8xlarge")
  (:c5ad-12xlarge "c5ad.12xlarge")
  (:c5ad-16xlarge "c5ad.16xlarge")
  (:c5ad-24xlarge "c5ad.24xlarge")
  (:c5n-large "c5n.large")
  (:c5n-xlarge "c5n.xlarge")
  (:c5n-2xlarge "c5n.2xlarge")
  (:c5n-4xlarge "c5n.4xlarge")
  (:c5n-9xlarge "c5n.9xlarge")
  (:c5n-18xlarge "c5n.18xlarge")
  (:r5ad-large "r5ad.large")
  (:r5ad-xlarge "r5ad.xlarge")
  (:r5ad-2xlarge "r5ad.2xlarge")
  (:r5ad-4xlarge "r5ad.4xlarge")
  (:r5ad-8xlarge "r5ad.8xlarge")
  (:r5ad-12xlarge "r5ad.12xlarge")
  (:r5ad-16xlarge "r5ad.16xlarge")
  (:r5ad-24xlarge "r5ad.24xlarge")
  (:c6id-large "c6id.large")
  (:c6id-xlarge "c6id.xlarge")
  (:c6id-2xlarge "c6id.2xlarge")
  (:c6id-4xlarge "c6id.4xlarge")
  (:c6id-8xlarge "c6id.8xlarge")
  (:c6id-12xlarge "c6id.12xlarge")
  (:c6id-16xlarge "c6id.16xlarge")
  (:c6id-24xlarge "c6id.24xlarge")
  (:c6id-32xlarge "c6id.32xlarge")
  (:c8g-medium "c8g.medium")
  (:c8g-large "c8g.large")
  (:c8g-xlarge "c8g.xlarge")
  (:c8g-2xlarge "c8g.2xlarge")
  (:c8g-4xlarge "c8g.4xlarge")
  (:c8g-8xlarge "c8g.8xlarge")
  (:c8g-12xlarge "c8g.12xlarge")
  (:c8g-16xlarge "c8g.16xlarge")
  (:c8g-24xlarge "c8g.24xlarge")
  (:c8g-48xlarge "c8g.48xlarge")
  (:m5ad-large "m5ad.large")
  (:m5ad-xlarge "m5ad.xlarge")
  (:m5ad-2xlarge "m5ad.2xlarge")
  (:m5ad-4xlarge "m5ad.4xlarge")
  (:m5ad-8xlarge "m5ad.8xlarge")
  (:m5ad-12xlarge "m5ad.12xlarge")
  (:m5ad-16xlarge "m5ad.16xlarge")
  (:m5ad-24xlarge "m5ad.24xlarge")
  (:m5d-large "m5d.large")
  (:m5d-xlarge "m5d.xlarge")
  (:m5d-2xlarge "m5d.2xlarge")
  (:m5d-4xlarge "m5d.4xlarge")
  (:m5d-8xlarge "m5d.8xlarge")
  (:m5d-12xlarge "m5d.12xlarge")
  (:m5d-16xlarge "m5d.16xlarge")
  (:m5d-24xlarge "m5d.24xlarge")
  (:m5dn-large "m5dn.large")
  (:m5dn-xlarge "m5dn.xlarge")
  (:m5dn-2xlarge "m5dn.2xlarge")
  (:m5dn-4xlarge "m5dn.4xlarge")
  (:m5dn-8xlarge "m5dn.8xlarge")
  (:m5dn-12xlarge "m5dn.12xlarge")
  (:m5dn-16xlarge "m5dn.16xlarge")
  (:m5dn-24xlarge "m5dn.24xlarge")
  (:m5n-large "m5n.large")
  (:m5n-xlarge "m5n.xlarge")
  (:m5n-2xlarge "m5n.2xlarge")
  (:m5n-4xlarge "m5n.4xlarge")
  (:m5n-8xlarge "m5n.8xlarge")
  (:m5n-12xlarge "m5n.12xlarge")
  (:m5n-16xlarge "m5n.16xlarge")
  (:m5n-24xlarge "m5n.24xlarge")
  (:m6id-large "m6id.large")
  (:m6id-xlarge "m6id.xlarge")
  (:m6id-2xlarge "m6id.2xlarge")
  (:m6id-4xlarge "m6id.4xlarge")
  (:m6id-8xlarge "m6id.8xlarge")
  (:m6id-12xlarge "m6id.12xlarge")
  (:m6id-16xlarge "m6id.16xlarge")
  (:m6id-24xlarge "m6id.24xlarge")
  (:m6id-32xlarge "m6id.32xlarge")
  (:m6idn-large "m6idn.large")
  (:m6idn-xlarge "m6idn.xlarge")
  (:m6idn-2xlarge "m6idn.2xlarge")
  (:m6idn-4xlarge "m6idn.4xlarge")
  (:m6idn-8xlarge "m6idn.8xlarge")
  (:m6idn-12xlarge "m6idn.12xlarge")
  (:m6idn-16xlarge "m6idn.16xlarge")
  (:m6idn-24xlarge "m6idn.24xlarge")
  (:m6idn-32xlarge "m6idn.32xlarge")
  (:m6in-large "m6in.large")
  (:m6in-xlarge "m6in.xlarge")
  (:m6in-2xlarge "m6in.2xlarge")
  (:m6in-4xlarge "m6in.4xlarge")
  (:m6in-8xlarge "m6in.8xlarge")
  (:m6in-12xlarge "m6in.12xlarge")
  (:m6in-16xlarge "m6in.16xlarge")
  (:m6in-24xlarge "m6in.24xlarge")
  (:m6in-32xlarge "m6in.32xlarge")
  (:m8g-medium "m8g.medium")
  (:m8g-large "m8g.large")
  (:m8g-xlarge "m8g.xlarge")
  (:m8g-2xlarge "m8g.2xlarge")
  (:m8g-4xlarge "m8g.4xlarge")
  (:m8g-8xlarge "m8g.8xlarge")
  (:m8g-12xlarge "m8g.12xlarge")
  (:m8g-16xlarge "m8g.16xlarge")
  (:m8g-24xlarge "m8g.24xlarge")
  (:m8g-48xlarge "m8g.48xlarge")
  (:r5dn-large "r5dn.large")
  (:r5dn-xlarge "r5dn.xlarge")
  (:r5dn-2xlarge "r5dn.2xlarge")
  (:r5dn-4xlarge "r5dn.4xlarge")
  (:r5dn-8xlarge "r5dn.8xlarge")
  (:r5dn-12xlarge "r5dn.12xlarge")
  (:r5dn-16xlarge "r5dn.16xlarge")
  (:r5dn-24xlarge "r5dn.24xlarge")
  (:r5n-large "r5n.large")
  (:r5n-xlarge "r5n.xlarge")
  (:r5n-2xlarge "r5n.2xlarge")
  (:r5n-4xlarge "r5n.4xlarge")
  (:r5n-8xlarge "r5n.8xlarge")
  (:r5n-12xlarge "r5n.12xlarge")
  (:r5n-16xlarge "r5n.16xlarge")
  (:r5n-24xlarge "r5n.24xlarge")
  (:r6a-large "r6a.large")
  (:r6a-xlarge "r6a.xlarge")
  (:r6a-2xlarge "r6a.2xlarge")
  (:r6a-4xlarge "r6a.4xlarge")
  (:r6a-8xlarge "r6a.8xlarge")
  (:r6a-12xlarge "r6a.12xlarge")
  (:r6a-16xlarge "r6a.16xlarge")
  (:r6a-24xlarge "r6a.24xlarge")
  (:r6a-32xlarge "r6a.32xlarge")
  (:r6a-48xlarge "r6a.48xlarge")
  (:r6id-large "r6id.large")
  (:r6id-xlarge "r6id.xlarge")
  (:r6id-2xlarge "r6id.2xlarge")
  (:r6id-4xlarge "r6id.4xlarge")
  (:r6id-8xlarge "r6id.8xlarge")
  (:r6id-12xlarge "r6id.12xlarge")
  (:r6id-16xlarge "r6id.16xlarge")
  (:r6id-24xlarge "r6id.24xlarge")
  (:r6id-32xlarge "r6id.32xlarge")
  (:r6idn-large "r6idn.large")
  (:r6idn-xlarge "r6idn.xlarge")
  (:r6idn-2xlarge "r6idn.2xlarge")
  (:r6idn-4xlarge "r6idn.4xlarge")
  (:r6idn-8xlarge "r6idn.8xlarge")
  (:r6idn-12xlarge "r6idn.12xlarge")
  (:r6idn-16xlarge "r6idn.16xlarge")
  (:r6idn-24xlarge "r6idn.24xlarge")
  (:r6idn-32xlarge "r6idn.32xlarge")
  (:r6in-large "r6in.large")
  (:r6in-xlarge "r6in.xlarge")
  (:r6in-2xlarge "r6in.2xlarge")
  (:r6in-4xlarge "r6in.4xlarge")
  (:r6in-8xlarge "r6in.8xlarge")
  (:r6in-12xlarge "r6in.12xlarge")
  (:r6in-16xlarge "r6in.16xlarge")
  (:r6in-24xlarge "r6in.24xlarge")
  (:r6in-32xlarge "r6in.32xlarge")
  (:r8g-medium "r8g.medium")
  (:r8g-large "r8g.large")
  (:r8g-xlarge "r8g.xlarge")
  (:r8g-2xlarge "r8g.2xlarge")
  (:r8g-4xlarge "r8g.4xlarge")
  (:r8g-8xlarge "r8g.8xlarge")
  (:r8g-12xlarge "r8g.12xlarge")
  (:r8g-16xlarge "r8g.16xlarge")
  (:r8g-24xlarge "r8g.24xlarge")
  (:r8g-48xlarge "r8g.48xlarge")
  (:m4-16xlarge "m4.16xlarge")
  (:c6a-32xlarge "c6a.32xlarge")
  (:c6a-48xlarge "c6a.48xlarge")
  (:c6i-32xlarge "c6i.32xlarge")
  (:r6i-24xlarge "r6i.24xlarge")
  (:r6i-32xlarge "r6i.32xlarge")
  (:c6in-24xlarge "c6in.24xlarge")
  (:c6in-32xlarge "c6in.32xlarge")
  (:c7a-24xlarge "c7a.24xlarge")
  (:c7a-32xlarge "c7a.32xlarge")
  (:c7a-48xlarge "c7a.48xlarge")
  (:c7i-24xlarge "c7i.24xlarge")
  (:c7i-48xlarge "c7i.48xlarge")
  (:m6a-24xlarge "m6a.24xlarge")
  (:m6a-32xlarge "m6a.32xlarge")
  (:m6a-48xlarge "m6a.48xlarge")
  (:m6i-24xlarge "m6i.24xlarge")
  (:m6i-32xlarge "m6i.32xlarge")
  (:m7a-24xlarge "m7a.24xlarge")
  (:m7a-32xlarge "m7a.32xlarge")
  (:m7a-48xlarge "m7a.48xlarge")
  (:m7i-24xlarge "m7i.24xlarge")
  (:m7i-48xlarge "m7i.48xlarge")
  (:r7a-24xlarge "r7a.24xlarge")
  (:r7a-32xlarge "r7a.32xlarge")
  (:r7a-48xlarge "r7a.48xlarge"))

(smithy/sdk/shapes:define-structure event common-lisp:nil
                                    ((event-id :target-type
                                      non-zero-and-max-string :member-name
                                      "EventId")
                                     (resource-id :target-type
                                      non-zero-and-max-string :member-name
                                      "ResourceId")
                                     (event-code :target-type event-code
                                      :member-name "EventCode")
                                     (message :target-type non-empty-string
                                      :member-name "Message")
                                     (event-time :target-type timestamp
                                      :member-name "EventTime")
                                     (pre-signed-log-url :target-type
                                      non-zero-and-max-string :member-name
                                      "PreSignedLogUrl")
                                     (count :target-type event-count
                                      :member-name "Count"))
                                    (:shape-name "Event"))

(smithy/sdk/shapes:define-enum event-code
    common-lisp:nil
  (:generic-event "GENERIC_EVENT")
  (:fleet-created "FLEET_CREATED")
  (:fleet-deleted "FLEET_DELETED")
  (:fleet-scaling-event "FLEET_SCALING_EVENT")
  (:fleet-state-downloading "FLEET_STATE_DOWNLOADING")
  (:fleet-state-validating "FLEET_STATE_VALIDATING")
  (:fleet-state-building "FLEET_STATE_BUILDING")
  (:fleet-state-activating "FLEET_STATE_ACTIVATING")
  (:fleet-state-active "FLEET_STATE_ACTIVE")
  (:fleet-state-error "FLEET_STATE_ERROR")
  (:fleet-state-pending "FLEET_STATE_PENDING")
  (:fleet-state-creating "FLEET_STATE_CREATING")
  (:fleet-state-created "FLEET_STATE_CREATED")
  (:fleet-state-updating "FLEET_STATE_UPDATING")
  (:fleet-initialization-failed "FLEET_INITIALIZATION_FAILED")
  (:fleet-binary-download-failed "FLEET_BINARY_DOWNLOAD_FAILED")
  (:fleet-validation-launch-path-not-found
   "FLEET_VALIDATION_LAUNCH_PATH_NOT_FOUND")
  (:fleet-validation-executable-runtime-failure
   "FLEET_VALIDATION_EXECUTABLE_RUNTIME_FAILURE")
  (:fleet-validation-timed-out "FLEET_VALIDATION_TIMED_OUT")
  (:fleet-activation-failed "FLEET_ACTIVATION_FAILED")
  (:fleet-activation-failed-no-instances "FLEET_ACTIVATION_FAILED_NO_INSTANCES")
  (:fleet-new-game-session-protection-policy-updated
   "FLEET_NEW_GAME_SESSION_PROTECTION_POLICY_UPDATED")
  (:server-process-invalid-path "SERVER_PROCESS_INVALID_PATH")
  (:server-process-sdk-initialization-timeout
   "SERVER_PROCESS_SDK_INITIALIZATION_TIMEOUT")
  (:server-process-process-ready-timeout "SERVER_PROCESS_PROCESS_READY_TIMEOUT")
  (:server-process-crashed "SERVER_PROCESS_CRASHED")
  (:server-process-terminated-unhealthy "SERVER_PROCESS_TERMINATED_UNHEALTHY")
  (:server-process-force-terminated "SERVER_PROCESS_FORCE_TERMINATED")
  (:server-process-process-exit-timeout "SERVER_PROCESS_PROCESS_EXIT_TIMEOUT")
  (:server-process-sdk-initialization-failed
   "SERVER_PROCESS_SDK_INITIALIZATION_FAILED")
  (:server-process-misconfigured-container-port
   "SERVER_PROCESS_MISCONFIGURED_CONTAINER_PORT")
  (:game-session-activation-timeout "GAME_SESSION_ACTIVATION_TIMEOUT")
  (:fleet-creation-extracting-build "FLEET_CREATION_EXTRACTING_BUILD")
  (:fleet-creation-running-installer "FLEET_CREATION_RUNNING_INSTALLER")
  (:fleet-creation-validating-runtime-config
   "FLEET_CREATION_VALIDATING_RUNTIME_CONFIG")
  (:fleet-vpc-peering-succeeded "FLEET_VPC_PEERING_SUCCEEDED")
  (:fleet-vpc-peering-failed "FLEET_VPC_PEERING_FAILED")
  (:fleet-vpc-peering-deleted "FLEET_VPC_PEERING_DELETED")
  (:instance-interrupted "INSTANCE_INTERRUPTED")
  (:instance-recycled "INSTANCE_RECYCLED")
  (:instance-replaced-unhealthy "INSTANCE_REPLACED_UNHEALTHY")
  (:fleet-creation-completed-installer "FLEET_CREATION_COMPLETED_INSTALLER")
  (:fleet-creation-failed-installer "FLEET_CREATION_FAILED_INSTALLER")
  (:compute-log-upload-failed "COMPUTE_LOG_UPLOAD_FAILED")
  (:game-server-container-group-crashed "GAME_SERVER_CONTAINER_GROUP_CRASHED")
  (:per-instance-container-group-crashed "PER_INSTANCE_CONTAINER_GROUP_CRASHED")
  (:game-server-container-group-replaced-unhealthy
   "GAME_SERVER_CONTAINER_GROUP_REPLACED_UNHEALTHY")
  (:location-state-pending "LOCATION_STATE_PENDING")
  (:location-state-creating "LOCATION_STATE_CREATING")
  (:location-state-created "LOCATION_STATE_CREATED")
  (:location-state-activating "LOCATION_STATE_ACTIVATING")
  (:location-state-active "LOCATION_STATE_ACTIVE")
  (:location-state-updating "LOCATION_STATE_UPDATING")
  (:location-state-error "LOCATION_STATE_ERROR")
  (:location-state-deleting "LOCATION_STATE_DELETING")
  (:location-state-deleted "LOCATION_STATE_DELETED"))

(smithy/sdk/shapes:define-type event-count smithy/sdk/smithy-types:long)

(smithy/sdk/shapes:define-list event-list :member event)

(smithy/sdk/shapes:define-structure filter-configuration common-lisp:nil
                                    ((allowed-locations :target-type
                                      location-list :member-name
                                      "AllowedLocations"))
                                    (:shape-name "FilterConfiguration"))

(smithy/sdk/shapes:define-enum filter-instance-status
    common-lisp:nil
  (:active "ACTIVE")
  (:draining "DRAINING"))

(smithy/sdk/shapes:define-list filter-instance-statuses :member
                               filter-instance-status)

(smithy/sdk/shapes:define-enum fleet-action
    common-lisp:nil
  (:auto-scaling "AUTO_SCALING"))

(smithy/sdk/shapes:define-list fleet-action-list :member fleet-action)

(smithy/sdk/shapes:define-type fleet-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure fleet-attributes common-lisp:nil
                                    ((fleet-id :target-type fleet-id
                                      :member-name "FleetId")
                                     (fleet-arn :target-type fleet-arn
                                      :member-name "FleetArn")
                                     (fleet-type :target-type fleet-type
                                      :member-name "FleetType")
                                     (instance-type :target-type
                                      ec2instance-type :member-name
                                      "InstanceType")
                                     (description :target-type
                                      non-zero-and-max-string :member-name
                                      "Description")
                                     (name :target-type non-zero-and-max-string
                                      :member-name "Name")
                                     (creation-time :target-type timestamp
                                      :member-name "CreationTime")
                                     (termination-time :target-type timestamp
                                      :member-name "TerminationTime")
                                     (status :target-type fleet-status
                                      :member-name "Status")
                                     (build-id :target-type build-id
                                      :member-name "BuildId")
                                     (build-arn :target-type build-arn
                                      :member-name "BuildArn")
                                     (script-id :target-type script-id
                                      :member-name "ScriptId")
                                     (script-arn :target-type script-arn
                                      :member-name "ScriptArn")
                                     (server-launch-path :target-type
                                      launch-path-string-model :member-name
                                      "ServerLaunchPath")
                                     (server-launch-parameters :target-type
                                      launch-parameters-string-model
                                      :member-name "ServerLaunchParameters")
                                     (log-paths :target-type string-list
                                      :member-name "LogPaths")
                                     (new-game-session-protection-policy
                                      :target-type protection-policy
                                      :member-name
                                      "NewGameSessionProtectionPolicy")
                                     (operating-system :target-type
                                      operating-system :member-name
                                      "OperatingSystem")
                                     (resource-creation-limit-policy
                                      :target-type
                                      resource-creation-limit-policy
                                      :member-name
                                      "ResourceCreationLimitPolicy")
                                     (metric-groups :target-type
                                      metric-group-list :member-name
                                      "MetricGroups")
                                     (stopped-actions :target-type
                                      fleet-action-list :member-name
                                      "StoppedActions")
                                     (instance-role-arn :target-type
                                      non-empty-string :member-name
                                      "InstanceRoleArn")
                                     (certificate-configuration :target-type
                                      certificate-configuration :member-name
                                      "CertificateConfiguration")
                                     (compute-type :target-type compute-type
                                      :member-name "ComputeType")
                                     (anywhere-configuration :target-type
                                      anywhere-configuration :member-name
                                      "AnywhereConfiguration")
                                     (instance-role-credentials-provider
                                      :target-type
                                      instance-role-credentials-provider
                                      :member-name
                                      "InstanceRoleCredentialsProvider"))
                                    (:shape-name "FleetAttributes"))

(smithy/sdk/shapes:define-list fleet-attributes-list :member fleet-attributes)

(smithy/sdk/shapes:define-type fleet-binary-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure fleet-capacity common-lisp:nil
                                    ((fleet-id :target-type fleet-id
                                      :member-name "FleetId")
                                     (fleet-arn :target-type fleet-arn
                                      :member-name "FleetArn")
                                     (instance-type :target-type
                                      ec2instance-type :member-name
                                      "InstanceType")
                                     (instance-counts :target-type
                                      ec2instance-counts :member-name
                                      "InstanceCounts")
                                     (location :target-type
                                      location-string-model :member-name
                                      "Location")
                                     (game-server-container-group-counts
                                      :target-type
                                      game-server-container-group-counts
                                      :member-name
                                      "GameServerContainerGroupCounts"))
                                    (:shape-name "FleetCapacity"))

(smithy/sdk/shapes:define-error fleet-capacity-exceeded-exception
                                common-lisp:nil
                                ((message :target-type non-empty-string
                                  :member-name "Message"))
                                (:shape-name "FleetCapacityExceededException")
                                (:error-code 400))

(smithy/sdk/shapes:define-list fleet-capacity-list :member fleet-capacity)

(smithy/sdk/shapes:define-structure fleet-deployment common-lisp:nil
                                    ((deployment-id :target-type deployment-id
                                      :member-name "DeploymentId")
                                     (fleet-id :target-type fleet-id
                                      :member-name "FleetId")
                                     (game-server-binary-arn :target-type
                                      fleet-binary-arn :member-name
                                      "GameServerBinaryArn")
                                     (rollback-game-server-binary-arn
                                      :target-type fleet-binary-arn
                                      :member-name
                                      "RollbackGameServerBinaryArn")
                                     (per-instance-binary-arn :target-type
                                      fleet-binary-arn :member-name
                                      "PerInstanceBinaryArn")
                                     (rollback-per-instance-binary-arn
                                      :target-type fleet-binary-arn
                                      :member-name
                                      "RollbackPerInstanceBinaryArn")
                                     (deployment-status :target-type
                                      deployment-status :member-name
                                      "DeploymentStatus")
                                     (deployment-configuration :target-type
                                      deployment-configuration :member-name
                                      "DeploymentConfiguration")
                                     (creation-time :target-type timestamp
                                      :member-name "CreationTime"))
                                    (:shape-name "FleetDeployment"))

(smithy/sdk/shapes:define-list fleet-deployments :member fleet-deployment)

(smithy/sdk/shapes:define-type fleet-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list fleet-id-list :member fleet-id)

(smithy/sdk/shapes:define-type fleet-id-or-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list fleet-id-or-arn-list :member fleet-id-or-arn)

(smithy/sdk/shapes:define-enum fleet-status
    common-lisp:nil
  (:new "NEW")
  (:downloading "DOWNLOADING")
  (:validating "VALIDATING")
  (:building "BUILDING")
  (:activating "ACTIVATING")
  (:active "ACTIVE")
  (:deleting "DELETING")
  (:error "ERROR")
  (:terminated "TERMINATED")
  (:not-found "NOT_FOUND"))

(smithy/sdk/shapes:define-enum fleet-type
    common-lisp:nil
  (:on-demand "ON_DEMAND")
  (:spot "SPOT"))

(smithy/sdk/shapes:define-structure fleet-utilization common-lisp:nil
                                    ((fleet-id :target-type fleet-id
                                      :member-name "FleetId")
                                     (fleet-arn :target-type fleet-arn
                                      :member-name "FleetArn")
                                     (active-server-process-count :target-type
                                      whole-number :member-name
                                      "ActiveServerProcessCount")
                                     (active-game-session-count :target-type
                                      whole-number :member-name
                                      "ActiveGameSessionCount")
                                     (current-player-session-count :target-type
                                      whole-number :member-name
                                      "CurrentPlayerSessionCount")
                                     (maximum-player-session-count :target-type
                                      whole-number :member-name
                                      "MaximumPlayerSessionCount")
                                     (location :target-type
                                      location-string-model :member-name
                                      "Location"))
                                    (:shape-name "FleetUtilization"))

(smithy/sdk/shapes:define-list fleet-utilization-list :member fleet-utilization)

(smithy/sdk/shapes:define-enum flex-match-mode
    common-lisp:nil
  (:standalone "STANDALONE")
  (:with-queue "WITH_QUEUE"))

(smithy/sdk/shapes:define-type float smithy/sdk/smithy-types:float)

(smithy/sdk/shapes:define-type free-text smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type game-lift-agent-endpoint-output
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type game-lift-service-sdk-endpoint-output
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure game-property common-lisp:nil
                                    ((key :target-type game-property-key
                                      :required common-lisp:t :member-name
                                      "Key")
                                     (value :target-type game-property-value
                                      :required common-lisp:t :member-name
                                      "Value"))
                                    (:shape-name "GameProperty"))

(smithy/sdk/shapes:define-type game-property-key smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list game-property-list :member game-property)

(smithy/sdk/shapes:define-type game-property-value
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure game-server common-lisp:nil
                                    ((game-server-group-name :target-type
                                      game-server-group-name :member-name
                                      "GameServerGroupName")
                                     (game-server-group-arn :target-type
                                      game-server-group-arn :member-name
                                      "GameServerGroupArn")
                                     (game-server-id :target-type
                                      game-server-id :member-name
                                      "GameServerId")
                                     (instance-id :target-type
                                      game-server-instance-id :member-name
                                      "InstanceId")
                                     (connection-info :target-type
                                      game-server-connection-info :member-name
                                      "ConnectionInfo")
                                     (game-server-data :target-type
                                      game-server-data :member-name
                                      "GameServerData")
                                     (claim-status :target-type
                                      game-server-claim-status :member-name
                                      "ClaimStatus")
                                     (utilization-status :target-type
                                      game-server-utilization-status
                                      :member-name "UtilizationStatus")
                                     (registration-time :target-type timestamp
                                      :member-name "RegistrationTime")
                                     (last-claim-time :target-type timestamp
                                      :member-name "LastClaimTime")
                                     (last-health-check-time :target-type
                                      timestamp :member-name
                                      "LastHealthCheckTime"))
                                    (:shape-name "GameServer"))

(smithy/sdk/shapes:define-enum game-server-claim-status
    common-lisp:nil
  (:claimed "CLAIMED"))

(smithy/sdk/shapes:define-type game-server-connection-info
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure game-server-container-definition
                                    common-lisp:nil
                                    ((container-name :target-type
                                      non-zero-and128max-ascii-string
                                      :member-name "ContainerName")
                                     (depends-on :target-type
                                      container-dependency-list :member-name
                                      "DependsOn")
                                     (mount-points :target-type
                                      container-mount-point-list :member-name
                                      "MountPoints")
                                     (environment-override :target-type
                                      container-environment-list :member-name
                                      "EnvironmentOverride")
                                     (image-uri :target-type image-uri-string
                                      :member-name "ImageUri")
                                     (port-configuration :target-type
                                      container-port-configuration :member-name
                                      "PortConfiguration")
                                     (resolved-image-digest :target-type sha256
                                      :member-name "ResolvedImageDigest")
                                     (server-sdk-version :target-type
                                      server-sdk-version :member-name
                                      "ServerSdkVersion"))
                                    (:shape-name
                                     "GameServerContainerDefinition"))

(smithy/sdk/shapes:define-structure game-server-container-definition-input
                                    common-lisp:nil
                                    ((container-name :target-type
                                      non-zero-and128max-ascii-string :required
                                      common-lisp:t :member-name
                                      "ContainerName")
                                     (depends-on :target-type
                                      container-dependency-list :member-name
                                      "DependsOn")
                                     (mount-points :target-type
                                      container-mount-point-list :member-name
                                      "MountPoints")
                                     (environment-override :target-type
                                      container-environment-list :member-name
                                      "EnvironmentOverride")
                                     (image-uri :target-type image-uri-string
                                      :required common-lisp:t :member-name
                                      "ImageUri")
                                     (port-configuration :target-type
                                      container-port-configuration :required
                                      common-lisp:t :member-name
                                      "PortConfiguration")
                                     (server-sdk-version :target-type
                                      server-sdk-version :required
                                      common-lisp:t :member-name
                                      "ServerSdkVersion"))
                                    (:shape-name
                                     "GameServerContainerDefinitionInput"))

(smithy/sdk/shapes:define-structure game-server-container-group-counts
                                    common-lisp:nil
                                    ((pending :target-type whole-number
                                      :member-name "PENDING")
                                     (active :target-type whole-number
                                      :member-name "ACTIVE")
                                     (idle :target-type whole-number
                                      :member-name "IDLE")
                                     (terminating :target-type whole-number
                                      :member-name "TERMINATING"))
                                    (:shape-name
                                     "GameServerContainerGroupCounts"))

(smithy/sdk/shapes:define-type game-server-container-groups-per-instance
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type game-server-data smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure game-server-group common-lisp:nil
                                    ((game-server-group-name :target-type
                                      game-server-group-name :member-name
                                      "GameServerGroupName")
                                     (game-server-group-arn :target-type
                                      game-server-group-arn :member-name
                                      "GameServerGroupArn")
                                     (role-arn :target-type iam-role-arn
                                      :member-name "RoleArn")
                                     (instance-definitions :target-type
                                      instance-definitions :member-name
                                      "InstanceDefinitions")
                                     (balancing-strategy :target-type
                                      balancing-strategy :member-name
                                      "BalancingStrategy")
                                     (game-server-protection-policy
                                      :target-type
                                      game-server-protection-policy
                                      :member-name
                                      "GameServerProtectionPolicy")
                                     (auto-scaling-group-arn :target-type
                                      auto-scaling-group-arn :member-name
                                      "AutoScalingGroupArn")
                                     (status :target-type
                                      game-server-group-status :member-name
                                      "Status")
                                     (status-reason :target-type
                                      non-zero-and-max-string :member-name
                                      "StatusReason")
                                     (suspended-actions :target-type
                                      game-server-group-actions :member-name
                                      "SuspendedActions")
                                     (creation-time :target-type timestamp
                                      :member-name "CreationTime")
                                     (last-updated-time :target-type timestamp
                                      :member-name "LastUpdatedTime"))
                                    (:shape-name "GameServerGroup"))

(smithy/sdk/shapes:define-enum game-server-group-action
    common-lisp:nil
  (:replace-instance-types "REPLACE_INSTANCE_TYPES"))

(smithy/sdk/shapes:define-list game-server-group-actions :member
                               game-server-group-action)

(smithy/sdk/shapes:define-type game-server-group-arn
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure game-server-group-auto-scaling-policy
                                    common-lisp:nil
                                    ((estimated-instance-warmup :target-type
                                      positive-integer :member-name
                                      "EstimatedInstanceWarmup")
                                     (target-tracking-configuration
                                      :target-type
                                      target-tracking-configuration :required
                                      common-lisp:t :member-name
                                      "TargetTrackingConfiguration"))
                                    (:shape-name
                                     "GameServerGroupAutoScalingPolicy"))

(smithy/sdk/shapes:define-enum game-server-group-delete-option
    common-lisp:nil
  (:safe-delete "SAFE_DELETE")
  (:force-delete "FORCE_DELETE")
  (:retain "RETAIN"))

(smithy/sdk/shapes:define-enum game-server-group-instance-type
    common-lisp:nil
  (:c4-large "c4.large")
  (:c4-xlarge "c4.xlarge")
  (:c4-2xlarge "c4.2xlarge")
  (:c4-4xlarge "c4.4xlarge")
  (:c4-8xlarge "c4.8xlarge")
  (:c5-large "c5.large")
  (:c5-xlarge "c5.xlarge")
  (:c5-2xlarge "c5.2xlarge")
  (:c5-4xlarge "c5.4xlarge")
  (:c5-9xlarge "c5.9xlarge")
  (:c5-12xlarge "c5.12xlarge")
  (:c5-18xlarge "c5.18xlarge")
  (:c5-24xlarge "c5.24xlarge")
  (:c5a-large "c5a.large")
  (:c5a-xlarge "c5a.xlarge")
  (:c5a-2xlarge "c5a.2xlarge")
  (:c5a-4xlarge "c5a.4xlarge")
  (:c5a-8xlarge "c5a.8xlarge")
  (:c5a-12xlarge "c5a.12xlarge")
  (:c5a-16xlarge "c5a.16xlarge")
  (:c5a-24xlarge "c5a.24xlarge")
  (:c6g-medium "c6g.medium")
  (:c6g-large "c6g.large")
  (:c6g-xlarge "c6g.xlarge")
  (:c6g-2xlarge "c6g.2xlarge")
  (:c6g-4xlarge "c6g.4xlarge")
  (:c6g-8xlarge "c6g.8xlarge")
  (:c6g-12xlarge "c6g.12xlarge")
  (:c6g-16xlarge "c6g.16xlarge")
  (:r4-large "r4.large")
  (:r4-xlarge "r4.xlarge")
  (:r4-2xlarge "r4.2xlarge")
  (:r4-4xlarge "r4.4xlarge")
  (:r4-8xlarge "r4.8xlarge")
  (:r4-16xlarge "r4.16xlarge")
  (:r5-large "r5.large")
  (:r5-xlarge "r5.xlarge")
  (:r5-2xlarge "r5.2xlarge")
  (:r5-4xlarge "r5.4xlarge")
  (:r5-8xlarge "r5.8xlarge")
  (:r5-12xlarge "r5.12xlarge")
  (:r5-16xlarge "r5.16xlarge")
  (:r5-24xlarge "r5.24xlarge")
  (:r5a-large "r5a.large")
  (:r5a-xlarge "r5a.xlarge")
  (:r5a-2xlarge "r5a.2xlarge")
  (:r5a-4xlarge "r5a.4xlarge")
  (:r5a-8xlarge "r5a.8xlarge")
  (:r5a-12xlarge "r5a.12xlarge")
  (:r5a-16xlarge "r5a.16xlarge")
  (:r5a-24xlarge "r5a.24xlarge")
  (:r6g-medium "r6g.medium")
  (:r6g-large "r6g.large")
  (:r6g-xlarge "r6g.xlarge")
  (:r6g-2xlarge "r6g.2xlarge")
  (:r6g-4xlarge "r6g.4xlarge")
  (:r6g-8xlarge "r6g.8xlarge")
  (:r6g-12xlarge "r6g.12xlarge")
  (:r6g-16xlarge "r6g.16xlarge")
  (:m4-large "m4.large")
  (:m4-xlarge "m4.xlarge")
  (:m4-2xlarge "m4.2xlarge")
  (:m4-4xlarge "m4.4xlarge")
  (:m4-10xlarge "m4.10xlarge")
  (:m5-large "m5.large")
  (:m5-xlarge "m5.xlarge")
  (:m5-2xlarge "m5.2xlarge")
  (:m5-4xlarge "m5.4xlarge")
  (:m5-8xlarge "m5.8xlarge")
  (:m5-12xlarge "m5.12xlarge")
  (:m5-16xlarge "m5.16xlarge")
  (:m5-24xlarge "m5.24xlarge")
  (:m5a-large "m5a.large")
  (:m5a-xlarge "m5a.xlarge")
  (:m5a-2xlarge "m5a.2xlarge")
  (:m5a-4xlarge "m5a.4xlarge")
  (:m5a-8xlarge "m5a.8xlarge")
  (:m5a-12xlarge "m5a.12xlarge")
  (:m5a-16xlarge "m5a.16xlarge")
  (:m5a-24xlarge "m5a.24xlarge")
  (:m6g-medium "m6g.medium")
  (:m6g-large "m6g.large")
  (:m6g-xlarge "m6g.xlarge")
  (:m6g-2xlarge "m6g.2xlarge")
  (:m6g-4xlarge "m6g.4xlarge")
  (:m6g-8xlarge "m6g.8xlarge")
  (:m6g-12xlarge "m6g.12xlarge")
  (:m6g-16xlarge "m6g.16xlarge"))

(smithy/sdk/shapes:define-type game-server-group-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type game-server-group-name-or-arn
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum game-server-group-status
    common-lisp:nil
  (:new "NEW")
  (:activating "ACTIVATING")
  (:active "ACTIVE")
  (:delete-scheduled "DELETE_SCHEDULED")
  (:deleting "DELETING")
  (:deleted "DELETED")
  (:error "ERROR"))

(smithy/sdk/shapes:define-list game-server-groups :member game-server-group)

(smithy/sdk/shapes:define-enum game-server-health-check
    common-lisp:nil
  (:healthy "HEALTHY"))

(smithy/sdk/shapes:define-type game-server-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure game-server-instance common-lisp:nil
                                    ((game-server-group-name :target-type
                                      game-server-group-name :member-name
                                      "GameServerGroupName")
                                     (game-server-group-arn :target-type
                                      game-server-group-arn :member-name
                                      "GameServerGroupArn")
                                     (instance-id :target-type
                                      game-server-instance-id :member-name
                                      "InstanceId")
                                     (instance-status :target-type
                                      game-server-instance-status :member-name
                                      "InstanceStatus"))
                                    (:shape-name "GameServerInstance"))

(smithy/sdk/shapes:define-type game-server-instance-id
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list game-server-instance-ids :member
                               game-server-instance-id)

(smithy/sdk/shapes:define-enum game-server-instance-status
    common-lisp:nil
  (:active "ACTIVE")
  (:draining "DRAINING")
  (:spot-terminating "SPOT_TERMINATING"))

(smithy/sdk/shapes:define-list game-server-instances :member
                               game-server-instance)

(smithy/sdk/shapes:define-enum game-server-protection-policy
    common-lisp:nil
  (:no-protection "NO_PROTECTION")
  (:full-protection "FULL_PROTECTION"))

(smithy/sdk/shapes:define-enum game-server-utilization-status
    common-lisp:nil
  (:available "AVAILABLE")
  (:utilized "UTILIZED"))

(smithy/sdk/shapes:define-list game-servers :member game-server)

(smithy/sdk/shapes:define-structure game-session common-lisp:nil
                                    ((game-session-id :target-type
                                      non-zero-and-max-string :member-name
                                      "GameSessionId")
                                     (name :target-type non-zero-and-max-string
                                      :member-name "Name")
                                     (fleet-id :target-type fleet-id
                                      :member-name "FleetId")
                                     (fleet-arn :target-type fleet-arn
                                      :member-name "FleetArn")
                                     (creation-time :target-type timestamp
                                      :member-name "CreationTime")
                                     (termination-time :target-type timestamp
                                      :member-name "TerminationTime")
                                     (current-player-session-count :target-type
                                      whole-number :member-name
                                      "CurrentPlayerSessionCount")
                                     (maximum-player-session-count :target-type
                                      whole-number :member-name
                                      "MaximumPlayerSessionCount")
                                     (status :target-type game-session-status
                                      :member-name "Status")
                                     (status-reason :target-type
                                      game-session-status-reason :member-name
                                      "StatusReason")
                                     (game-properties :target-type
                                      game-property-list :member-name
                                      "GameProperties")
                                     (ip-address :target-type ip-address
                                      :member-name "IpAddress")
                                     (dns-name :target-type dns-name
                                      :member-name "DnsName")
                                     (port :target-type port-number
                                      :member-name "Port")
                                     (player-session-creation-policy
                                      :target-type
                                      player-session-creation-policy
                                      :member-name
                                      "PlayerSessionCreationPolicy")
                                     (creator-id :target-type
                                      non-zero-and-max-string :member-name
                                      "CreatorId")
                                     (game-session-data :target-type
                                      large-game-session-data :member-name
                                      "GameSessionData")
                                     (matchmaker-data :target-type
                                      matchmaker-data :member-name
                                      "MatchmakerData")
                                     (location :target-type
                                      location-string-model :member-name
                                      "Location"))
                                    (:shape-name "GameSession"))

(smithy/sdk/shapes:define-type game-session-activation-timeout-seconds
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-structure game-session-connection-info
                                    common-lisp:nil
                                    ((game-session-arn :target-type
                                      arn-string-model :member-name
                                      "GameSessionArn")
                                     (ip-address :target-type ip-address
                                      :member-name "IpAddress")
                                     (dns-name :target-type dns-name
                                      :member-name "DnsName")
                                     (port :target-type positive-integer
                                      :member-name "Port")
                                     (matched-player-sessions :target-type
                                      matched-player-session-list :member-name
                                      "MatchedPlayerSessions"))
                                    (:shape-name "GameSessionConnectionInfo"))

(smithy/sdk/shapes:define-structure game-session-creation-limit-policy
                                    common-lisp:nil
                                    ((new-game-sessions-per-creator
                                      :target-type whole-number :member-name
                                      "NewGameSessionsPerCreator")
                                     (policy-period-in-minutes :target-type
                                      whole-number :member-name
                                      "PolicyPeriodInMinutes"))
                                    (:shape-name
                                     "GameSessionCreationLimitPolicy"))

(smithy/sdk/shapes:define-type game-session-data smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure game-session-detail common-lisp:nil
                                    ((game-session :target-type game-session
                                      :member-name "GameSession")
                                     (protection-policy :target-type
                                      protection-policy :member-name
                                      "ProtectionPolicy"))
                                    (:shape-name "GameSessionDetail"))

(smithy/sdk/shapes:define-list game-session-detail-list :member
                               game-session-detail)

(smithy/sdk/shapes:define-error game-session-full-exception common-lisp:nil
                                ((message :target-type non-empty-string
                                  :member-name "Message"))
                                (:shape-name "GameSessionFullException")
                                (:error-code 400))

(smithy/sdk/shapes:define-list game-session-list :member game-session)

(smithy/sdk/shapes:define-structure game-session-placement common-lisp:nil
                                    ((placement-id :target-type id-string-model
                                      :member-name "PlacementId")
                                     (game-session-queue-name :target-type
                                      game-session-queue-name :member-name
                                      "GameSessionQueueName")
                                     (status :target-type
                                      game-session-placement-state :member-name
                                      "Status")
                                     (game-properties :target-type
                                      game-property-list :member-name
                                      "GameProperties")
                                     (maximum-player-session-count :target-type
                                      whole-number :member-name
                                      "MaximumPlayerSessionCount")
                                     (game-session-name :target-type
                                      non-zero-and-max-string :member-name
                                      "GameSessionName")
                                     (game-session-id :target-type
                                      non-zero-and-max-string :member-name
                                      "GameSessionId")
                                     (game-session-arn :target-type
                                      non-zero-and-max-string :member-name
                                      "GameSessionArn")
                                     (game-session-region :target-type
                                      non-zero-and-max-string :member-name
                                      "GameSessionRegion")
                                     (player-latencies :target-type
                                      player-latency-list :member-name
                                      "PlayerLatencies")
                                     (start-time :target-type timestamp
                                      :member-name "StartTime")
                                     (end-time :target-type timestamp
                                      :member-name "EndTime")
                                     (ip-address :target-type ip-address
                                      :member-name "IpAddress")
                                     (dns-name :target-type dns-name
                                      :member-name "DnsName")
                                     (port :target-type port-number
                                      :member-name "Port")
                                     (placed-player-sessions :target-type
                                      placed-player-session-list :member-name
                                      "PlacedPlayerSessions")
                                     (game-session-data :target-type
                                      large-game-session-data :member-name
                                      "GameSessionData")
                                     (matchmaker-data :target-type
                                      matchmaker-data :member-name
                                      "MatchmakerData")
                                     (priority-configuration-override
                                      :target-type
                                      priority-configuration-override
                                      :member-name
                                      "PriorityConfigurationOverride"))
                                    (:shape-name "GameSessionPlacement"))

(smithy/sdk/shapes:define-enum game-session-placement-state
    common-lisp:nil
  (:pending "PENDING")
  (:fulfilled "FULFILLED")
  (:cancelled "CANCELLED")
  (:timed-out "TIMED_OUT")
  (:failed "FAILED"))

(smithy/sdk/shapes:define-structure game-session-queue common-lisp:nil
                                    ((name :target-type game-session-queue-name
                                      :member-name "Name")
                                     (game-session-queue-arn :target-type
                                      game-session-queue-arn :member-name
                                      "GameSessionQueueArn")
                                     (timeout-in-seconds :target-type
                                      whole-number :member-name
                                      "TimeoutInSeconds")
                                     (player-latency-policies :target-type
                                      player-latency-policy-list :member-name
                                      "PlayerLatencyPolicies")
                                     (destinations :target-type
                                      game-session-queue-destination-list
                                      :member-name "Destinations")
                                     (filter-configuration :target-type
                                      filter-configuration :member-name
                                      "FilterConfiguration")
                                     (priority-configuration :target-type
                                      priority-configuration :member-name
                                      "PriorityConfiguration")
                                     (custom-event-data :target-type
                                      queue-custom-event-data :member-name
                                      "CustomEventData")
                                     (notification-target :target-type
                                      queue-sns-arn-string-model :member-name
                                      "NotificationTarget"))
                                    (:shape-name "GameSessionQueue"))

(smithy/sdk/shapes:define-type game-session-queue-arn
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure game-session-queue-destination
                                    common-lisp:nil
                                    ((destination-arn :target-type
                                      arn-string-model :member-name
                                      "DestinationArn"))
                                    (:shape-name "GameSessionQueueDestination"))

(smithy/sdk/shapes:define-list game-session-queue-destination-list :member
                               game-session-queue-destination)

(smithy/sdk/shapes:define-list game-session-queue-list :member
                               game-session-queue)

(smithy/sdk/shapes:define-type game-session-queue-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type game-session-queue-name-or-arn
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list game-session-queue-name-or-arn-list :member
                               game-session-queue-name-or-arn)

(smithy/sdk/shapes:define-enum game-session-status
    common-lisp:nil
  (:active "ACTIVE")
  (:activating "ACTIVATING")
  (:terminated "TERMINATED")
  (:terminating "TERMINATING")
  (:error "ERROR"))

(smithy/sdk/shapes:define-enum game-session-status-reason
    common-lisp:nil
  (:interrupted "INTERRUPTED")
  (:triggered-on-process-terminate "TRIGGERED_ON_PROCESS_TERMINATE")
  (:force-terminated "FORCE_TERMINATED"))

(smithy/sdk/shapes:define-input get-compute-access-input common-lisp:nil
                                ((fleet-id :target-type fleet-id-or-arn
                                  :required common-lisp:t :member-name
                                  "FleetId")
                                 (compute-name :target-type compute-name-or-arn
                                  :required common-lisp:t :member-name
                                  "ComputeName"))
                                (:shape-name "GetComputeAccessInput"))

(smithy/sdk/shapes:define-output get-compute-access-output common-lisp:nil
                                 ((fleet-id :target-type fleet-id-or-arn
                                   :member-name "FleetId")
                                  (fleet-arn :target-type fleet-arn
                                   :member-name "FleetArn")
                                  (compute-name :target-type
                                   compute-name-or-arn :member-name
                                   "ComputeName")
                                  (compute-arn :target-type compute-arn
                                   :member-name "ComputeArn")
                                  (credentials :target-type aws-credentials
                                   :member-name "Credentials")
                                  (target :target-type session-target
                                   :member-name "Target")
                                  (container-identifiers :target-type
                                   container-identifier-list :member-name
                                   "ContainerIdentifiers"))
                                 (:shape-name "GetComputeAccessOutput"))

(smithy/sdk/shapes:define-input get-compute-auth-token-input common-lisp:nil
                                ((fleet-id :target-type fleet-id-or-arn
                                  :required common-lisp:t :member-name
                                  "FleetId")
                                 (compute-name :target-type compute-name-or-arn
                                  :required common-lisp:t :member-name
                                  "ComputeName"))
                                (:shape-name "GetComputeAuthTokenInput"))

(smithy/sdk/shapes:define-output get-compute-auth-token-output common-lisp:nil
                                 ((fleet-id :target-type fleet-id-or-arn
                                   :member-name "FleetId")
                                  (fleet-arn :target-type fleet-arn
                                   :member-name "FleetArn")
                                  (compute-name :target-type
                                   compute-name-or-arn :member-name
                                   "ComputeName")
                                  (compute-arn :target-type compute-arn
                                   :member-name "ComputeArn")
                                  (auth-token :target-type compute-auth-token
                                   :member-name "AuthToken")
                                  (expiration-timestamp :target-type timestamp
                                   :member-name "ExpirationTimestamp"))
                                 (:shape-name "GetComputeAuthTokenOutput"))

(smithy/sdk/shapes:define-input get-game-session-log-url-input common-lisp:nil
                                ((game-session-id :target-type arn-string-model
                                  :required common-lisp:t :member-name
                                  "GameSessionId"))
                                (:shape-name "GetGameSessionLogUrlInput"))

(smithy/sdk/shapes:define-output get-game-session-log-url-output
                                 common-lisp:nil
                                 ((pre-signed-url :target-type
                                   non-zero-and-max-string :member-name
                                   "PreSignedUrl"))
                                 (:shape-name "GetGameSessionLogUrlOutput"))

(smithy/sdk/shapes:define-input get-instance-access-input common-lisp:nil
                                ((fleet-id :target-type fleet-id-or-arn
                                  :required common-lisp:t :member-name
                                  "FleetId")
                                 (instance-id :target-type instance-id
                                  :required common-lisp:t :member-name
                                  "InstanceId"))
                                (:shape-name "GetInstanceAccessInput"))

(smithy/sdk/shapes:define-output get-instance-access-output common-lisp:nil
                                 ((instance-access :target-type instance-access
                                   :member-name "InstanceAccess"))
                                 (:shape-name "GetInstanceAccessOutput"))

(smithy/sdk/shapes:define-type iam-role-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type id-string-model smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error idempotent-parameter-mismatch-exception
                                common-lisp:nil
                                ((message :target-type non-empty-string
                                  :member-name "Message"))
                                (:shape-name
                                 "IdempotentParameterMismatchException")
                                (:error-code 400))

(smithy/sdk/shapes:define-type image-uri-string smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure instance common-lisp:nil
                                    ((fleet-id :target-type fleet-id
                                      :member-name "FleetId")
                                     (fleet-arn :target-type fleet-arn
                                      :member-name "FleetArn")
                                     (instance-id :target-type instance-id
                                      :member-name "InstanceId")
                                     (ip-address :target-type ip-address
                                      :member-name "IpAddress")
                                     (dns-name :target-type dns-name
                                      :member-name "DnsName")
                                     (operating-system :target-type
                                      operating-system :member-name
                                      "OperatingSystem")
                                     (type :target-type ec2instance-type
                                      :member-name "Type")
                                     (status :target-type instance-status
                                      :member-name "Status")
                                     (creation-time :target-type timestamp
                                      :member-name "CreationTime")
                                     (location :target-type
                                      location-string-model :member-name
                                      "Location"))
                                    (:shape-name "Instance"))

(smithy/sdk/shapes:define-structure instance-access common-lisp:nil
                                    ((fleet-id :target-type fleet-id
                                      :member-name "FleetId")
                                     (instance-id :target-type instance-id
                                      :member-name "InstanceId")
                                     (ip-address :target-type ip-address
                                      :member-name "IpAddress")
                                     (operating-system :target-type
                                      operating-system :member-name
                                      "OperatingSystem")
                                     (credentials :target-type
                                      instance-credentials :member-name
                                      "Credentials"))
                                    (:shape-name "InstanceAccess"))

(smithy/sdk/shapes:define-structure instance-credentials common-lisp:nil
                                    ((user-name :target-type non-empty-string
                                      :member-name "UserName")
                                     (secret :target-type non-empty-string
                                      :member-name "Secret"))
                                    (:shape-name "InstanceCredentials"))

(smithy/sdk/shapes:define-structure instance-definition common-lisp:nil
                                    ((instance-type :target-type
                                      game-server-group-instance-type :required
                                      common-lisp:t :member-name
                                      "InstanceType")
                                     (weighted-capacity :target-type
                                      weighted-capacity :member-name
                                      "WeightedCapacity"))
                                    (:shape-name "InstanceDefinition"))

(smithy/sdk/shapes:define-list instance-definitions :member instance-definition)

(smithy/sdk/shapes:define-type instance-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list instance-list :member instance)

(smithy/sdk/shapes:define-type instance-path-string
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum instance-role-credentials-provider
    common-lisp:nil
  (:shared-credential-file "SHARED_CREDENTIAL_FILE"))

(smithy/sdk/shapes:define-enum instance-status
    common-lisp:nil
  (:pending "PENDING")
  (:active "ACTIVE")
  (:terminating "TERMINATING"))

(smithy/sdk/shapes:define-type integer smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-error internal-service-exception common-lisp:nil
                                ((message :target-type non-empty-string
                                  :member-name "Message"))
                                (:shape-name "InternalServiceException")
                                (:error-code 500))

(smithy/sdk/shapes:define-error invalid-fleet-status-exception common-lisp:nil
                                ((message :target-type non-empty-string
                                  :member-name "Message"))
                                (:shape-name "InvalidFleetStatusException")
                                (:error-code 400))

(smithy/sdk/shapes:define-error invalid-game-session-status-exception
                                common-lisp:nil
                                ((message :target-type non-empty-string
                                  :member-name "Message"))
                                (:shape-name
                                 "InvalidGameSessionStatusException")
                                (:error-code 400))

(smithy/sdk/shapes:define-error invalid-request-exception common-lisp:nil
                                ((message :target-type non-empty-string
                                  :member-name "Message"))
                                (:shape-name "InvalidRequestException")
                                (:error-code 400))

(smithy/sdk/shapes:define-type ip-address smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure ip-permission common-lisp:nil
                                    ((from-port :target-type port-number
                                      :required common-lisp:t :member-name
                                      "FromPort")
                                     (to-port :target-type port-number
                                      :required common-lisp:t :member-name
                                      "ToPort")
                                     (ip-range :target-type ip-range :required
                                      common-lisp:t :member-name "IpRange")
                                     (protocol :target-type ip-protocol
                                      :required common-lisp:t :member-name
                                      "Protocol"))
                                    (:shape-name "IpPermission"))

(smithy/sdk/shapes:define-list ip-permissions-list :member ip-permission)

(smithy/sdk/shapes:define-enum ip-protocol
    common-lisp:nil
  (:tcp "TCP")
  (:udp "UDP"))

(smithy/sdk/shapes:define-type ip-range smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type large-game-session-data
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-map latency-map :key non-empty-string :value
                              positive-integer)

(smithy/sdk/shapes:define-type launch-parameters-string-model
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type launch-path-string-model
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type launch-template-id
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type launch-template-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure launch-template-specification
                                    common-lisp:nil
                                    ((launch-template-id :target-type
                                      launch-template-id :member-name
                                      "LaunchTemplateId")
                                     (launch-template-name :target-type
                                      launch-template-name :member-name
                                      "LaunchTemplateName")
                                     (version :target-type
                                      launch-template-version :member-name
                                      "Version"))
                                    (:shape-name "LaunchTemplateSpecification"))

(smithy/sdk/shapes:define-type launch-template-version
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error limit-exceeded-exception common-lisp:nil
                                ((message :target-type non-empty-string
                                  :member-name "Message"))
                                (:shape-name "LimitExceededException")
                                (:error-code 400))

(smithy/sdk/shapes:define-input list-aliases-input common-lisp:nil
                                ((routing-strategy-type :target-type
                                  routing-strategy-type :member-name
                                  "RoutingStrategyType")
                                 (name :target-type non-empty-string
                                  :member-name "Name")
                                 (limit :target-type positive-integer
                                  :member-name "Limit")
                                 (next-token :target-type non-empty-string
                                  :member-name "NextToken"))
                                (:shape-name "ListAliasesInput"))

(smithy/sdk/shapes:define-output list-aliases-output common-lisp:nil
                                 ((aliases :target-type alias-list :member-name
                                   "Aliases")
                                  (next-token :target-type non-empty-string
                                   :member-name "NextToken"))
                                 (:shape-name "ListAliasesOutput"))

(smithy/sdk/shapes:define-input list-builds-input common-lisp:nil
                                ((status :target-type build-status :member-name
                                  "Status")
                                 (limit :target-type positive-integer
                                  :member-name "Limit")
                                 (next-token :target-type non-empty-string
                                  :member-name "NextToken"))
                                (:shape-name "ListBuildsInput"))

(smithy/sdk/shapes:define-output list-builds-output common-lisp:nil
                                 ((builds :target-type build-list :member-name
                                   "Builds")
                                  (next-token :target-type non-empty-string
                                   :member-name "NextToken"))
                                 (:shape-name "ListBuildsOutput"))

(smithy/sdk/shapes:define-input list-compute-input common-lisp:nil
                                ((fleet-id :target-type fleet-id-or-arn
                                  :required common-lisp:t :member-name
                                  "FleetId")
                                 (location :target-type location-string-model
                                  :member-name "Location")
                                 (container-group-definition-name :target-type
                                  container-group-definition-name-or-arn
                                  :member-name "ContainerGroupDefinitionName")
                                 (compute-status :target-type
                                  list-compute-input-status :member-name
                                  "ComputeStatus")
                                 (limit :target-type positive-integer
                                  :member-name "Limit")
                                 (next-token :target-type
                                  non-zero-and-max-string :member-name
                                  "NextToken"))
                                (:shape-name "ListComputeInput"))

(smithy/sdk/shapes:define-enum list-compute-input-status
    common-lisp:nil
  (:active "ACTIVE")
  (:impaired "IMPAIRED"))

(smithy/sdk/shapes:define-output list-compute-output common-lisp:nil
                                 ((compute-list :target-type compute-list
                                   :member-name "ComputeList")
                                  (next-token :target-type
                                   non-zero-and-max-string :member-name
                                   "NextToken"))
                                 (:shape-name "ListComputeOutput"))

(smithy/sdk/shapes:define-input list-container-fleets-input common-lisp:nil
                                ((container-group-definition-name :target-type
                                  container-group-definition-name-or-arn
                                  :member-name "ContainerGroupDefinitionName")
                                 (limit :target-type positive-integer
                                  :member-name "Limit")
                                 (next-token :target-type
                                  non-zero-and-max-string :member-name
                                  "NextToken"))
                                (:shape-name "ListContainerFleetsInput"))

(smithy/sdk/shapes:define-output list-container-fleets-output common-lisp:nil
                                 ((container-fleets :target-type
                                   container-fleet-list :member-name
                                   "ContainerFleets")
                                  (next-token :target-type
                                   non-zero-and-max-string :member-name
                                   "NextToken"))
                                 (:shape-name "ListContainerFleetsOutput"))

(smithy/sdk/shapes:define-input list-container-group-definition-versions-input
                                common-lisp:nil
                                ((name :target-type
                                  container-group-definition-name-or-arn
                                  :required common-lisp:t :member-name "Name")
                                 (limit :target-type
                                  list-container-group-definition-versions-limit
                                  :member-name "Limit")
                                 (next-token :target-type
                                  non-zero-and-max-string :member-name
                                  "NextToken"))
                                (:shape-name
                                 "ListContainerGroupDefinitionVersionsInput"))

(smithy/sdk/shapes:define-type list-container-group-definition-versions-limit
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-output
 list-container-group-definition-versions-output common-lisp:nil
 ((container-group-definitions :target-type container-group-definition-list
   :member-name "ContainerGroupDefinitions")
  (next-token :target-type non-zero-and-max-string :member-name "NextToken"))
 (:shape-name "ListContainerGroupDefinitionVersionsOutput"))

(smithy/sdk/shapes:define-input list-container-group-definitions-input
                                common-lisp:nil
                                ((container-group-type :target-type
                                  container-group-type :member-name
                                  "ContainerGroupType")
                                 (limit :target-type
                                  list-container-group-definitions-limit
                                  :member-name "Limit")
                                 (next-token :target-type
                                  non-zero-and-max-string :member-name
                                  "NextToken"))
                                (:shape-name
                                 "ListContainerGroupDefinitionsInput"))

(smithy/sdk/shapes:define-type list-container-group-definitions-limit
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-output list-container-group-definitions-output
                                 common-lisp:nil
                                 ((container-group-definitions :target-type
                                   container-group-definition-list :member-name
                                   "ContainerGroupDefinitions")
                                  (next-token :target-type
                                   non-zero-and-max-string :member-name
                                   "NextToken"))
                                 (:shape-name
                                  "ListContainerGroupDefinitionsOutput"))

(smithy/sdk/shapes:define-input list-fleet-deployments-input common-lisp:nil
                                ((fleet-id :target-type fleet-id-or-arn
                                  :member-name "FleetId")
                                 (limit :target-type positive-integer
                                  :member-name "Limit")
                                 (next-token :target-type
                                  non-zero-and-max-string :member-name
                                  "NextToken"))
                                (:shape-name "ListFleetDeploymentsInput"))

(smithy/sdk/shapes:define-output list-fleet-deployments-output common-lisp:nil
                                 ((fleet-deployments :target-type
                                   fleet-deployments :member-name
                                   "FleetDeployments")
                                  (next-token :target-type
                                   non-zero-and-max-string :member-name
                                   "NextToken"))
                                 (:shape-name "ListFleetDeploymentsOutput"))

(smithy/sdk/shapes:define-input list-fleets-input common-lisp:nil
                                ((build-id :target-type build-id-or-arn
                                  :member-name "BuildId")
                                 (script-id :target-type script-id-or-arn
                                  :member-name "ScriptId")
                                 (limit :target-type positive-integer
                                  :member-name "Limit")
                                 (next-token :target-type
                                  non-zero-and-max-string :member-name
                                  "NextToken"))
                                (:shape-name "ListFleetsInput"))

(smithy/sdk/shapes:define-output list-fleets-output common-lisp:nil
                                 ((fleet-ids :target-type fleet-id-list
                                   :member-name "FleetIds")
                                  (next-token :target-type
                                   non-zero-and-max-string :member-name
                                   "NextToken"))
                                 (:shape-name "ListFleetsOutput"))

(smithy/sdk/shapes:define-input list-game-server-groups-input common-lisp:nil
                                ((limit :target-type positive-integer
                                  :member-name "Limit")
                                 (next-token :target-type
                                  non-zero-and-max-string :member-name
                                  "NextToken"))
                                (:shape-name "ListGameServerGroupsInput"))

(smithy/sdk/shapes:define-output list-game-server-groups-output common-lisp:nil
                                 ((game-server-groups :target-type
                                   game-server-groups :member-name
                                   "GameServerGroups")
                                  (next-token :target-type
                                   non-zero-and-max-string :member-name
                                   "NextToken"))
                                 (:shape-name "ListGameServerGroupsOutput"))

(smithy/sdk/shapes:define-input list-game-servers-input common-lisp:nil
                                ((game-server-group-name :target-type
                                  game-server-group-name-or-arn :required
                                  common-lisp:t :member-name
                                  "GameServerGroupName")
                                 (sort-order :target-type sort-order
                                  :member-name "SortOrder")
                                 (limit :target-type positive-integer
                                  :member-name "Limit")
                                 (next-token :target-type
                                  non-zero-and-max-string :member-name
                                  "NextToken"))
                                (:shape-name "ListGameServersInput"))

(smithy/sdk/shapes:define-output list-game-servers-output common-lisp:nil
                                 ((game-servers :target-type game-servers
                                   :member-name "GameServers")
                                  (next-token :target-type
                                   non-zero-and-max-string :member-name
                                   "NextToken"))
                                 (:shape-name "ListGameServersOutput"))

(smithy/sdk/shapes:define-input list-locations-input common-lisp:nil
                                ((filters :target-type location-filter-list
                                  :member-name "Filters")
                                 (limit :target-type list-locations-limit
                                  :member-name "Limit")
                                 (next-token :target-type
                                  non-zero-and-max-string :member-name
                                  "NextToken"))
                                (:shape-name "ListLocationsInput"))

(smithy/sdk/shapes:define-type list-locations-limit
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-output list-locations-output common-lisp:nil
                                 ((locations :target-type location-model-list
                                   :member-name "Locations")
                                  (next-token :target-type
                                   non-zero-and-max-string :member-name
                                   "NextToken"))
                                 (:shape-name "ListLocationsOutput"))

(smithy/sdk/shapes:define-input list-scripts-input common-lisp:nil
                                ((limit :target-type positive-integer
                                  :member-name "Limit")
                                 (next-token :target-type non-empty-string
                                  :member-name "NextToken"))
                                (:shape-name "ListScriptsInput"))

(smithy/sdk/shapes:define-output list-scripts-output common-lisp:nil
                                 ((scripts :target-type script-list
                                   :member-name "Scripts")
                                  (next-token :target-type non-empty-string
                                   :member-name "NextToken"))
                                 (:shape-name "ListScriptsOutput"))

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

(smithy/sdk/shapes:define-type location-arn-model
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure location-attributes common-lisp:nil
                                    ((location-state :target-type
                                      location-state :member-name
                                      "LocationState")
                                     (stopped-actions :target-type
                                      fleet-action-list :member-name
                                      "StoppedActions")
                                     (update-status :target-type
                                      location-update-status :member-name
                                      "UpdateStatus"))
                                    (:shape-name "LocationAttributes"))

(smithy/sdk/shapes:define-list location-attributes-list :member
                               location-attributes)

(smithy/sdk/shapes:define-structure location-configuration common-lisp:nil
                                    ((location :target-type
                                      location-string-model :required
                                      common-lisp:t :member-name "Location"))
                                    (:shape-name "LocationConfiguration"))

(smithy/sdk/shapes:define-list location-configuration-list :member
                               location-configuration)

(smithy/sdk/shapes:define-enum location-filter
    common-lisp:nil
  (:aws "AWS")
  (:custom "CUSTOM"))

(smithy/sdk/shapes:define-list location-filter-list :member location-filter)

(smithy/sdk/shapes:define-list location-list :member location-string-model)

(smithy/sdk/shapes:define-structure location-model common-lisp:nil
                                    ((location-name :target-type
                                      location-string-model :member-name
                                      "LocationName")
                                     (location-arn :target-type
                                      location-arn-model :member-name
                                      "LocationArn")
                                     (ping-beacon :target-type ping-beacon
                                      :member-name "PingBeacon"))
                                    (:shape-name "LocationModel"))

(smithy/sdk/shapes:define-list location-model-list :member location-model)

(smithy/sdk/shapes:define-list location-order-override-list :member
                               location-string-model)

(smithy/sdk/shapes:define-structure location-state common-lisp:nil
                                    ((location :target-type
                                      location-string-model :member-name
                                      "Location")
                                     (status :target-type fleet-status
                                      :member-name "Status"))
                                    (:shape-name "LocationState"))

(smithy/sdk/shapes:define-list location-state-list :member location-state)

(smithy/sdk/shapes:define-type location-string-model
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum location-update-status
    common-lisp:nil
  (:pending-update "PENDING_UPDATE"))

(smithy/sdk/shapes:define-structure locational-deployment common-lisp:nil
                                    ((deployment-status :target-type
                                      deployment-status :member-name
                                      "DeploymentStatus"))
                                    (:shape-name "LocationalDeployment"))

(smithy/sdk/shapes:define-map locational-deployments :key
                              non-zero-and128max-ascii-string :value
                              locational-deployment)

(smithy/sdk/shapes:define-structure log-configuration common-lisp:nil
                                    ((log-destination :target-type
                                      log-destination :member-name
                                      "LogDestination")
                                     (s3bucket-name :target-type
                                      non-empty-string :member-name
                                      "S3BucketName")
                                     (log-group-arn :target-type
                                      log-group-arn-string-model :member-name
                                      "LogGroupArn"))
                                    (:shape-name "LogConfiguration"))

(smithy/sdk/shapes:define-enum log-destination
    common-lisp:nil
  (:none "NONE")
  (:cloudwatch "CLOUDWATCH")
  (:s3 "S3"))

(smithy/sdk/shapes:define-type log-group-arn-string-model
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure matched-player-session common-lisp:nil
                                    ((player-id :target-type player-id
                                      :member-name "PlayerId")
                                     (player-session-id :target-type
                                      player-session-id :member-name
                                      "PlayerSessionId"))
                                    (:shape-name "MatchedPlayerSession"))

(smithy/sdk/shapes:define-list matched-player-session-list :member
                               matched-player-session)

(smithy/sdk/shapes:define-type matchmaker-data smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type matchmaking-acceptance-timeout-integer
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-structure matchmaking-configuration common-lisp:nil
                                    ((name :target-type
                                      matchmaking-id-string-model :member-name
                                      "Name")
                                     (configuration-arn :target-type
                                      matchmaking-configuration-arn
                                      :member-name "ConfigurationArn")
                                     (description :target-type
                                      non-zero-and-max-string :member-name
                                      "Description")
                                     (game-session-queue-arns :target-type
                                      queue-arns-list :member-name
                                      "GameSessionQueueArns")
                                     (request-timeout-seconds :target-type
                                      matchmaking-request-timeout-integer
                                      :member-name "RequestTimeoutSeconds")
                                     (acceptance-timeout-seconds :target-type
                                      matchmaking-acceptance-timeout-integer
                                      :member-name "AcceptanceTimeoutSeconds")
                                     (acceptance-required :target-type
                                      boolean-model :member-name
                                      "AcceptanceRequired")
                                     (rule-set-name :target-type
                                      matchmaking-id-string-model :member-name
                                      "RuleSetName")
                                     (rule-set-arn :target-type
                                      matchmaking-rule-set-arn :member-name
                                      "RuleSetArn")
                                     (notification-target :target-type
                                      sns-arn-string-model :member-name
                                      "NotificationTarget")
                                     (additional-player-count :target-type
                                      whole-number :member-name
                                      "AdditionalPlayerCount")
                                     (custom-event-data :target-type
                                      custom-event-data :member-name
                                      "CustomEventData")
                                     (creation-time :target-type timestamp
                                      :member-name "CreationTime")
                                     (game-properties :target-type
                                      game-property-list :member-name
                                      "GameProperties")
                                     (game-session-data :target-type
                                      game-session-data :member-name
                                      "GameSessionData")
                                     (backfill-mode :target-type backfill-mode
                                      :member-name "BackfillMode")
                                     (flex-match-mode :target-type
                                      flex-match-mode :member-name
                                      "FlexMatchMode"))
                                    (:shape-name "MatchmakingConfiguration"))

(smithy/sdk/shapes:define-type matchmaking-configuration-arn
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list matchmaking-configuration-list :member
                               matchmaking-configuration)

(smithy/sdk/shapes:define-type matchmaking-configuration-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list matchmaking-configuration-name-list :member
                               matchmaking-configuration-name)

(smithy/sdk/shapes:define-enum matchmaking-configuration-status
    common-lisp:nil
  (:cancelled "CANCELLED")
  (:completed "COMPLETED")
  (:failed "FAILED")
  (:placing "PLACING")
  (:queued "QUEUED")
  (:requires-acceptance "REQUIRES_ACCEPTANCE")
  (:searching "SEARCHING")
  (:timed-out "TIMED_OUT"))

(smithy/sdk/shapes:define-list matchmaking-id-list :member
                               matchmaking-id-string-model)

(smithy/sdk/shapes:define-type matchmaking-id-string-model
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type matchmaking-request-timeout-integer
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-structure matchmaking-rule-set common-lisp:nil
                                    ((rule-set-name :target-type
                                      matchmaking-id-string-model :member-name
                                      "RuleSetName")
                                     (rule-set-arn :target-type
                                      matchmaking-rule-set-arn :member-name
                                      "RuleSetArn")
                                     (rule-set-body :target-type rule-set-body
                                      :required common-lisp:t :member-name
                                      "RuleSetBody")
                                     (creation-time :target-type timestamp
                                      :member-name "CreationTime"))
                                    (:shape-name "MatchmakingRuleSet"))

(smithy/sdk/shapes:define-type matchmaking-rule-set-arn
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list matchmaking-rule-set-list :member
                               matchmaking-rule-set)

(smithy/sdk/shapes:define-type matchmaking-rule-set-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list matchmaking-rule-set-name-list :member
                               matchmaking-rule-set-name)

(smithy/sdk/shapes:define-structure matchmaking-ticket common-lisp:nil
                                    ((ticket-id :target-type
                                      matchmaking-id-string-model :member-name
                                      "TicketId")
                                     (configuration-name :target-type
                                      matchmaking-id-string-model :member-name
                                      "ConfigurationName")
                                     (configuration-arn :target-type
                                      matchmaking-configuration-arn
                                      :member-name "ConfigurationArn")
                                     (status :target-type
                                      matchmaking-configuration-status
                                      :member-name "Status")
                                     (status-reason :target-type string-model
                                      :member-name "StatusReason")
                                     (status-message :target-type string-model
                                      :member-name "StatusMessage")
                                     (start-time :target-type timestamp
                                      :member-name "StartTime")
                                     (end-time :target-type timestamp
                                      :member-name "EndTime")
                                     (players :target-type player-list
                                      :member-name "Players")
                                     (game-session-connection-info :target-type
                                      game-session-connection-info :member-name
                                      "GameSessionConnectionInfo")
                                     (estimated-wait-time :target-type
                                      whole-number :member-name
                                      "EstimatedWaitTime"))
                                    (:shape-name "MatchmakingTicket"))

(smithy/sdk/shapes:define-list matchmaking-ticket-list :member
                               matchmaking-ticket)

(smithy/sdk/shapes:define-type max-concurrent-game-session-activations
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type
 maximum-game-server-container-groups-per-instance
 smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type metric-group smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list metric-group-list :member metric-group)

(smithy/sdk/shapes:define-enum metric-name
    common-lisp:nil
  (:activating-game-sessions "ActivatingGameSessions")
  (:active-game-sessions "ActiveGameSessions")
  (:active-instances "ActiveInstances")
  (:available-game-sessions "AvailableGameSessions")
  (:available-player-sessions "AvailablePlayerSessions")
  (:current-player-sessions "CurrentPlayerSessions")
  (:idle-instances "IdleInstances")
  (:percent-available-game-sessions "PercentAvailableGameSessions")
  (:percent-idle-instances "PercentIdleInstances")
  (:queue-depth "QueueDepth")
  (:wait-time "WaitTime")
  (:concurrent-activatable-game-sessions "ConcurrentActivatableGameSessions"))

(smithy/sdk/shapes:define-type minimum-healthy-percentage
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type non-blank-and-length-constraint-string
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type non-empty-string smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type non-negative-double
                               smithy/sdk/smithy-types:double)

(smithy/sdk/shapes:define-type non-negative-limited-length-double
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type non-zero-and128max-ascii-string
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type non-zero-and255max-string
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type non-zero-and-max-string
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error not-found-exception common-lisp:nil
                                ((message :target-type non-empty-string
                                  :member-name "Message"))
                                (:shape-name "NotFoundException")
                                (:error-code 400))

(smithy/sdk/shapes:define-error not-ready-exception common-lisp:nil
                                ((message :target-type non-empty-string
                                  :member-name "Message"))
                                (:shape-name "NotReadyException")
                                (:error-code 400))

(smithy/sdk/shapes:define-enum operating-system
    common-lisp:nil
  (:windows-2012 "WINDOWS_2012")
  (:amazon-linux "AMAZON_LINUX")
  (:amazon-linux-2 "AMAZON_LINUX_2")
  (:windows-2016 "WINDOWS_2016")
  (:amazon-linux-2023 "AMAZON_LINUX_2023"))

(smithy/sdk/shapes:define-error out-of-capacity-exception common-lisp:nil
                                ((message :target-type non-empty-string
                                  :member-name "Message"))
                                (:shape-name "OutOfCapacityException")
                                (:error-code 400))

(smithy/sdk/shapes:define-structure ping-beacon common-lisp:nil
                                    ((udpendpoint :target-type udpendpoint
                                      :member-name "UDPEndpoint"))
                                    (:shape-name "PingBeacon"))

(smithy/sdk/shapes:define-structure placed-player-session common-lisp:nil
                                    ((player-id :target-type player-id
                                      :member-name "PlayerId")
                                     (player-session-id :target-type
                                      player-session-id :member-name
                                      "PlayerSessionId"))
                                    (:shape-name "PlacedPlayerSession"))

(smithy/sdk/shapes:define-list placed-player-session-list :member
                               placed-player-session)

(smithy/sdk/shapes:define-enum placement-fallback-strategy
    common-lisp:nil
  (:default-after-single-pass "DEFAULT_AFTER_SINGLE_PASS")
  (:none "NONE"))

(smithy/sdk/shapes:define-structure player common-lisp:nil
                                    ((player-id :target-type player-id
                                      :member-name "PlayerId")
                                     (player-attributes :target-type
                                      player-attribute-map :member-name
                                      "PlayerAttributes")
                                     (team :target-type non-zero-and-max-string
                                      :member-name "Team")
                                     (latency-in-ms :target-type latency-map
                                      :member-name "LatencyInMs"))
                                    (:shape-name "Player"))

(smithy/sdk/shapes:define-map player-attribute-map :key non-zero-and-max-string
                              :value attribute-value)

(smithy/sdk/shapes:define-type player-attribute-string
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-map player-attribute-string-double-map :key
                              player-attribute-string :value double-object)

(smithy/sdk/shapes:define-list player-attribute-string-list :member
                               player-attribute-string)

(smithy/sdk/shapes:define-type player-data smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-map player-data-map :key non-zero-and-max-string
                              :value player-data)

(smithy/sdk/shapes:define-type player-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list player-id-list :member player-id)

(smithy/sdk/shapes:define-list player-ids-for-accept-match :member player-id)

(smithy/sdk/shapes:define-structure player-latency common-lisp:nil
                                    ((player-id :target-type player-id
                                      :member-name "PlayerId")
                                     (region-identifier :target-type
                                      non-zero-and-max-string :member-name
                                      "RegionIdentifier")
                                     (latency-in-milliseconds :target-type
                                      float :member-name
                                      "LatencyInMilliseconds"))
                                    (:shape-name "PlayerLatency"))

(smithy/sdk/shapes:define-list player-latency-list :member player-latency)

(smithy/sdk/shapes:define-structure player-latency-policy common-lisp:nil
                                    ((maximum-individual-player-latency-milliseconds
                                      :target-type whole-number :member-name
                                      "MaximumIndividualPlayerLatencyMilliseconds")
                                     (policy-duration-seconds :target-type
                                      whole-number :member-name
                                      "PolicyDurationSeconds"))
                                    (:shape-name "PlayerLatencyPolicy"))

(smithy/sdk/shapes:define-list player-latency-policy-list :member
                               player-latency-policy)

(smithy/sdk/shapes:define-list player-list :member player)

(smithy/sdk/shapes:define-structure player-session common-lisp:nil
                                    ((player-session-id :target-type
                                      player-session-id :member-name
                                      "PlayerSessionId")
                                     (player-id :target-type player-id
                                      :member-name "PlayerId")
                                     (game-session-id :target-type
                                      non-zero-and-max-string :member-name
                                      "GameSessionId")
                                     (fleet-id :target-type fleet-id
                                      :member-name "FleetId")
                                     (fleet-arn :target-type fleet-arn
                                      :member-name "FleetArn")
                                     (creation-time :target-type timestamp
                                      :member-name "CreationTime")
                                     (termination-time :target-type timestamp
                                      :member-name "TerminationTime")
                                     (status :target-type player-session-status
                                      :member-name "Status")
                                     (ip-address :target-type ip-address
                                      :member-name "IpAddress")
                                     (dns-name :target-type dns-name
                                      :member-name "DnsName")
                                     (port :target-type port-number
                                      :member-name "Port")
                                     (player-data :target-type player-data
                                      :member-name "PlayerData"))
                                    (:shape-name "PlayerSession"))

(smithy/sdk/shapes:define-enum player-session-creation-policy
    common-lisp:nil
  (:accept-all "ACCEPT_ALL")
  (:deny-all "DENY_ALL"))

(smithy/sdk/shapes:define-type player-session-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list player-session-list :member player-session)

(smithy/sdk/shapes:define-enum player-session-status
    common-lisp:nil
  (:reserved "RESERVED")
  (:active "ACTIVE")
  (:completed "COMPLETED")
  (:timedout "TIMEDOUT"))

(smithy/sdk/shapes:define-enum policy-type
    common-lisp:nil
  (:rule-based "RuleBased")
  (:target-based "TargetBased"))

(smithy/sdk/shapes:define-type port-number smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type positive-integer smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type positive-long smithy/sdk/smithy-types:long)

(smithy/sdk/shapes:define-structure priority-configuration common-lisp:nil
                                    ((priority-order :target-type
                                      priority-type-list :member-name
                                      "PriorityOrder")
                                     (location-order :target-type location-list
                                      :member-name "LocationOrder"))
                                    (:shape-name "PriorityConfiguration"))

(smithy/sdk/shapes:define-structure priority-configuration-override
                                    common-lisp:nil
                                    ((placement-fallback-strategy :target-type
                                      placement-fallback-strategy :member-name
                                      "PlacementFallbackStrategy")
                                     (location-order :target-type
                                      location-order-override-list :required
                                      common-lisp:t :member-name
                                      "LocationOrder"))
                                    (:shape-name
                                     "PriorityConfigurationOverride"))

(smithy/sdk/shapes:define-enum priority-type
    common-lisp:nil
  (:latency "LATENCY")
  (:cost "COST")
  (:destination "DESTINATION")
  (:location "LOCATION"))

(smithy/sdk/shapes:define-list priority-type-list :member priority-type)

(smithy/sdk/shapes:define-enum protection-policy
    common-lisp:nil
  (:no-protection "NoProtection")
  (:full-protection "FullProtection"))

(smithy/sdk/shapes:define-input put-scaling-policy-input common-lisp:nil
                                ((name :target-type non-zero-and-max-string
                                  :required common-lisp:t :member-name "Name")
                                 (fleet-id :target-type fleet-id-or-arn
                                  :required common-lisp:t :member-name
                                  "FleetId")
                                 (scaling-adjustment :target-type integer
                                  :member-name "ScalingAdjustment")
                                 (scaling-adjustment-type :target-type
                                  scaling-adjustment-type :member-name
                                  "ScalingAdjustmentType")
                                 (threshold :target-type double :member-name
                                  "Threshold")
                                 (comparison-operator :target-type
                                  comparison-operator-type :member-name
                                  "ComparisonOperator")
                                 (evaluation-periods :target-type
                                  positive-integer :member-name
                                  "EvaluationPeriods")
                                 (metric-name :target-type metric-name
                                  :required common-lisp:t :member-name
                                  "MetricName")
                                 (policy-type :target-type policy-type
                                  :member-name "PolicyType")
                                 (target-configuration :target-type
                                  target-configuration :member-name
                                  "TargetConfiguration"))
                                (:shape-name "PutScalingPolicyInput"))

(smithy/sdk/shapes:define-output put-scaling-policy-output common-lisp:nil
                                 ((name :target-type non-zero-and-max-string
                                   :member-name "Name"))
                                 (:shape-name "PutScalingPolicyOutput"))

(smithy/sdk/shapes:define-list queue-arns-list :member arn-string-model)

(smithy/sdk/shapes:define-type queue-custom-event-data
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type queue-sns-arn-string-model
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input register-compute-input common-lisp:nil
                                ((fleet-id :target-type fleet-id-or-arn
                                  :required common-lisp:t :member-name
                                  "FleetId")
                                 (compute-name :target-type compute-name
                                  :required common-lisp:t :member-name
                                  "ComputeName")
                                 (certificate-path :target-type
                                  non-zero-and-max-string :member-name
                                  "CertificatePath")
                                 (dns-name :target-type dns-name-input
                                  :member-name "DnsName")
                                 (ip-address :target-type ip-address
                                  :member-name "IpAddress")
                                 (location :target-type location-string-model
                                  :member-name "Location"))
                                (:shape-name "RegisterComputeInput"))

(smithy/sdk/shapes:define-output register-compute-output common-lisp:nil
                                 ((compute :target-type compute :member-name
                                   "Compute"))
                                 (:shape-name "RegisterComputeOutput"))

(smithy/sdk/shapes:define-input register-game-server-input common-lisp:nil
                                ((game-server-group-name :target-type
                                  game-server-group-name-or-arn :required
                                  common-lisp:t :member-name
                                  "GameServerGroupName")
                                 (game-server-id :target-type game-server-id
                                  :required common-lisp:t :member-name
                                  "GameServerId")
                                 (instance-id :target-type
                                  game-server-instance-id :required
                                  common-lisp:t :member-name "InstanceId")
                                 (connection-info :target-type
                                  game-server-connection-info :member-name
                                  "ConnectionInfo")
                                 (game-server-data :target-type
                                  game-server-data :member-name
                                  "GameServerData"))
                                (:shape-name "RegisterGameServerInput"))

(smithy/sdk/shapes:define-output register-game-server-output common-lisp:nil
                                 ((game-server :target-type game-server
                                   :member-name "GameServer"))
                                 (:shape-name "RegisterGameServerOutput"))

(smithy/sdk/shapes:define-input request-upload-credentials-input
                                common-lisp:nil
                                ((build-id :target-type build-id-or-arn
                                  :required common-lisp:t :member-name
                                  "BuildId"))
                                (:shape-name "RequestUploadCredentialsInput"))

(smithy/sdk/shapes:define-output request-upload-credentials-output
                                 common-lisp:nil
                                 ((upload-credentials :target-type
                                   aws-credentials :member-name
                                   "UploadCredentials")
                                  (storage-location :target-type s3location
                                   :member-name "StorageLocation"))
                                 (:shape-name "RequestUploadCredentialsOutput"))

(smithy/sdk/shapes:define-input resolve-alias-input common-lisp:nil
                                ((alias-id :target-type alias-id-or-arn
                                  :required common-lisp:t :member-name
                                  "AliasId"))
                                (:shape-name "ResolveAliasInput"))

(smithy/sdk/shapes:define-output resolve-alias-output common-lisp:nil
                                 ((fleet-id :target-type fleet-id :member-name
                                   "FleetId")
                                  (fleet-arn :target-type fleet-arn
                                   :member-name "FleetArn"))
                                 (:shape-name "ResolveAliasOutput"))

(smithy/sdk/shapes:define-structure resource-creation-limit-policy
                                    common-lisp:nil
                                    ((new-game-sessions-per-creator
                                      :target-type whole-number :member-name
                                      "NewGameSessionsPerCreator")
                                     (policy-period-in-minutes :target-type
                                      whole-number :member-name
                                      "PolicyPeriodInMinutes"))
                                    (:shape-name "ResourceCreationLimitPolicy"))

(smithy/sdk/shapes:define-input resume-game-server-group-input common-lisp:nil
                                ((game-server-group-name :target-type
                                  game-server-group-name-or-arn :required
                                  common-lisp:t :member-name
                                  "GameServerGroupName")
                                 (resume-actions :target-type
                                  game-server-group-actions :required
                                  common-lisp:t :member-name "ResumeActions"))
                                (:shape-name "ResumeGameServerGroupInput"))

(smithy/sdk/shapes:define-output resume-game-server-group-output
                                 common-lisp:nil
                                 ((game-server-group :target-type
                                   game-server-group :member-name
                                   "GameServerGroup"))
                                 (:shape-name "ResumeGameServerGroupOutput"))

(smithy/sdk/shapes:define-structure routing-strategy common-lisp:nil
                                    ((type :target-type routing-strategy-type
                                      :member-name "Type")
                                     (fleet-id :target-type fleet-id
                                      :member-name "FleetId")
                                     (message :target-type free-text
                                      :member-name "Message"))
                                    (:shape-name "RoutingStrategy"))

(smithy/sdk/shapes:define-enum routing-strategy-type
    common-lisp:nil
  (:simple "SIMPLE")
  (:terminal "TERMINAL"))

(smithy/sdk/shapes:define-type rule-set-body smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type rule-set-limit smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-structure runtime-configuration common-lisp:nil
                                    ((server-processes :target-type
                                      server-process-list :member-name
                                      "ServerProcesses")
                                     (max-concurrent-game-session-activations
                                      :target-type
                                      max-concurrent-game-session-activations
                                      :member-name
                                      "MaxConcurrentGameSessionActivations")
                                     (game-session-activation-timeout-seconds
                                      :target-type
                                      game-session-activation-timeout-seconds
                                      :member-name
                                      "GameSessionActivationTimeoutSeconds"))
                                    (:shape-name "RuntimeConfiguration"))

(smithy/sdk/shapes:define-structure s3location common-lisp:nil
                                    ((bucket :target-type non-empty-string
                                      :member-name "Bucket")
                                     (key :target-type non-empty-string
                                      :member-name "Key")
                                     (role-arn :target-type non-empty-string
                                      :member-name "RoleArn")
                                     (object-version :target-type
                                      non-empty-string :member-name
                                      "ObjectVersion"))
                                    (:shape-name "S3Location"))

(smithy/sdk/shapes:define-enum scaling-adjustment-type
    common-lisp:nil
  (:change-in-capacity "ChangeInCapacity")
  (:exact-capacity "ExactCapacity")
  (:percent-change-in-capacity "PercentChangeInCapacity"))

(smithy/sdk/shapes:define-structure scaling-policy common-lisp:nil
                                    ((fleet-id :target-type fleet-id
                                      :member-name "FleetId")
                                     (fleet-arn :target-type fleet-arn
                                      :member-name "FleetArn")
                                     (name :target-type non-zero-and-max-string
                                      :member-name "Name")
                                     (status :target-type scaling-status-type
                                      :member-name "Status")
                                     (scaling-adjustment :target-type integer
                                      :member-name "ScalingAdjustment")
                                     (scaling-adjustment-type :target-type
                                      scaling-adjustment-type :member-name
                                      "ScalingAdjustmentType")
                                     (comparison-operator :target-type
                                      comparison-operator-type :member-name
                                      "ComparisonOperator")
                                     (threshold :target-type double
                                      :member-name "Threshold")
                                     (evaluation-periods :target-type
                                      positive-integer :member-name
                                      "EvaluationPeriods")
                                     (metric-name :target-type metric-name
                                      :member-name "MetricName")
                                     (policy-type :target-type policy-type
                                      :member-name "PolicyType")
                                     (target-configuration :target-type
                                      target-configuration :member-name
                                      "TargetConfiguration")
                                     (update-status :target-type
                                      location-update-status :member-name
                                      "UpdateStatus")
                                     (location :target-type
                                      location-string-model :member-name
                                      "Location"))
                                    (:shape-name "ScalingPolicy"))

(smithy/sdk/shapes:define-list scaling-policy-list :member scaling-policy)

(smithy/sdk/shapes:define-enum scaling-status-type
    common-lisp:nil
  (:active "ACTIVE")
  (:update-requested "UPDATE_REQUESTED")
  (:updating "UPDATING")
  (:delete-requested "DELETE_REQUESTED")
  (:deleting "DELETING")
  (:deleted "DELETED")
  (:error "ERROR"))

(smithy/sdk/shapes:define-structure script common-lisp:nil
                                    ((script-id :target-type script-id
                                      :member-name "ScriptId")
                                     (script-arn :target-type script-arn
                                      :member-name "ScriptArn")
                                     (name :target-type non-zero-and-max-string
                                      :member-name "Name")
                                     (version :target-type
                                      non-zero-and-max-string :member-name
                                      "Version")
                                     (size-on-disk :target-type positive-long
                                      :member-name "SizeOnDisk")
                                     (creation-time :target-type timestamp
                                      :member-name "CreationTime")
                                     (storage-location :target-type s3location
                                      :member-name "StorageLocation"))
                                    (:shape-name "Script"))

(smithy/sdk/shapes:define-type script-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type script-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type script-id-or-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list script-list :member script)

(smithy/sdk/shapes:define-input search-game-sessions-input common-lisp:nil
                                ((fleet-id :target-type fleet-id-or-arn
                                  :member-name "FleetId")
                                 (alias-id :target-type alias-id-or-arn
                                  :member-name "AliasId")
                                 (location :target-type location-string-model
                                  :member-name "Location")
                                 (filter-expression :target-type
                                  non-zero-and-max-string :member-name
                                  "FilterExpression")
                                 (sort-expression :target-type
                                  non-zero-and-max-string :member-name
                                  "SortExpression")
                                 (limit :target-type positive-integer
                                  :member-name "Limit")
                                 (next-token :target-type
                                  non-zero-and-max-string :member-name
                                  "NextToken"))
                                (:shape-name "SearchGameSessionsInput"))

(smithy/sdk/shapes:define-output search-game-sessions-output common-lisp:nil
                                 ((game-sessions :target-type game-session-list
                                   :member-name "GameSessions")
                                  (next-token :target-type
                                   non-zero-and-max-string :member-name
                                   "NextToken"))
                                 (:shape-name "SearchGameSessionsOutput"))

(smithy/sdk/shapes:define-structure server-process common-lisp:nil
                                    ((launch-path :target-type
                                      launch-path-string-model :required
                                      common-lisp:t :member-name "LaunchPath")
                                     (parameters :target-type
                                      launch-parameters-string-model
                                      :member-name "Parameters")
                                     (concurrent-executions :target-type
                                      positive-integer :required common-lisp:t
                                      :member-name "ConcurrentExecutions"))
                                    (:shape-name "ServerProcess"))

(smithy/sdk/shapes:define-list server-process-list :member server-process)

(smithy/sdk/shapes:define-type server-sdk-version
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type session-target smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type sha256 smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type sns-arn-string-model
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum sort-order
    common-lisp:nil
  (:ascending "ASCENDING")
  (:descending "DESCENDING"))

(smithy/sdk/shapes:define-input start-fleet-actions-input common-lisp:nil
                                ((fleet-id :target-type fleet-id-or-arn
                                  :required common-lisp:t :member-name
                                  "FleetId")
                                 (actions :target-type fleet-action-list
                                  :required common-lisp:t :member-name
                                  "Actions")
                                 (location :target-type location-string-model
                                  :member-name "Location"))
                                (:shape-name "StartFleetActionsInput"))

(smithy/sdk/shapes:define-output start-fleet-actions-output common-lisp:nil
                                 ((fleet-id :target-type fleet-id :member-name
                                   "FleetId")
                                  (fleet-arn :target-type fleet-arn
                                   :member-name "FleetArn"))
                                 (:shape-name "StartFleetActionsOutput"))

(smithy/sdk/shapes:define-input start-game-session-placement-input
                                common-lisp:nil
                                ((placement-id :target-type id-string-model
                                  :required common-lisp:t :member-name
                                  "PlacementId")
                                 (game-session-queue-name :target-type
                                  game-session-queue-name-or-arn :required
                                  common-lisp:t :member-name
                                  "GameSessionQueueName")
                                 (game-properties :target-type
                                  game-property-list :member-name
                                  "GameProperties")
                                 (maximum-player-session-count :target-type
                                  whole-number :required common-lisp:t
                                  :member-name "MaximumPlayerSessionCount")
                                 (game-session-name :target-type
                                  non-zero-and-max-string :member-name
                                  "GameSessionName")
                                 (player-latencies :target-type
                                  player-latency-list :member-name
                                  "PlayerLatencies")
                                 (desired-player-sessions :target-type
                                  desired-player-session-list :member-name
                                  "DesiredPlayerSessions")
                                 (game-session-data :target-type
                                  large-game-session-data :member-name
                                  "GameSessionData")
                                 (priority-configuration-override :target-type
                                  priority-configuration-override :member-name
                                  "PriorityConfigurationOverride"))
                                (:shape-name "StartGameSessionPlacementInput"))

(smithy/sdk/shapes:define-output start-game-session-placement-output
                                 common-lisp:nil
                                 ((game-session-placement :target-type
                                   game-session-placement :member-name
                                   "GameSessionPlacement"))
                                 (:shape-name
                                  "StartGameSessionPlacementOutput"))

(smithy/sdk/shapes:define-input start-match-backfill-input common-lisp:nil
                                ((ticket-id :target-type
                                  matchmaking-id-string-model :member-name
                                  "TicketId")
                                 (configuration-name :target-type
                                  matchmaking-configuration-name :required
                                  common-lisp:t :member-name
                                  "ConfigurationName")
                                 (game-session-arn :target-type
                                  arn-string-model :member-name
                                  "GameSessionArn")
                                 (players :target-type player-list :required
                                  common-lisp:t :member-name "Players"))
                                (:shape-name "StartMatchBackfillInput"))

(smithy/sdk/shapes:define-output start-match-backfill-output common-lisp:nil
                                 ((matchmaking-ticket :target-type
                                   matchmaking-ticket :member-name
                                   "MatchmakingTicket"))
                                 (:shape-name "StartMatchBackfillOutput"))

(smithy/sdk/shapes:define-input start-matchmaking-input common-lisp:nil
                                ((ticket-id :target-type
                                  matchmaking-id-string-model :member-name
                                  "TicketId")
                                 (configuration-name :target-type
                                  matchmaking-configuration-name :required
                                  common-lisp:t :member-name
                                  "ConfigurationName")
                                 (players :target-type player-list :required
                                  common-lisp:t :member-name "Players"))
                                (:shape-name "StartMatchmakingInput"))

(smithy/sdk/shapes:define-output start-matchmaking-output common-lisp:nil
                                 ((matchmaking-ticket :target-type
                                   matchmaking-ticket :member-name
                                   "MatchmakingTicket"))
                                 (:shape-name "StartMatchmakingOutput"))

(smithy/sdk/shapes:define-input stop-fleet-actions-input common-lisp:nil
                                ((fleet-id :target-type fleet-id-or-arn
                                  :required common-lisp:t :member-name
                                  "FleetId")
                                 (actions :target-type fleet-action-list
                                  :required common-lisp:t :member-name
                                  "Actions")
                                 (location :target-type location-string-model
                                  :member-name "Location"))
                                (:shape-name "StopFleetActionsInput"))

(smithy/sdk/shapes:define-output stop-fleet-actions-output common-lisp:nil
                                 ((fleet-id :target-type fleet-id :member-name
                                   "FleetId")
                                  (fleet-arn :target-type fleet-arn
                                   :member-name "FleetArn"))
                                 (:shape-name "StopFleetActionsOutput"))

(smithy/sdk/shapes:define-input stop-game-session-placement-input
                                common-lisp:nil
                                ((placement-id :target-type id-string-model
                                  :required common-lisp:t :member-name
                                  "PlacementId"))
                                (:shape-name "StopGameSessionPlacementInput"))

(smithy/sdk/shapes:define-output stop-game-session-placement-output
                                 common-lisp:nil
                                 ((game-session-placement :target-type
                                   game-session-placement :member-name
                                   "GameSessionPlacement"))
                                 (:shape-name "StopGameSessionPlacementOutput"))

(smithy/sdk/shapes:define-input stop-matchmaking-input common-lisp:nil
                                ((ticket-id :target-type
                                  matchmaking-id-string-model :required
                                  common-lisp:t :member-name "TicketId"))
                                (:shape-name "StopMatchmakingInput"))

(smithy/sdk/shapes:define-output stop-matchmaking-output common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "StopMatchmakingOutput"))

(smithy/sdk/shapes:define-list string-list :member non-zero-and-max-string)

(smithy/sdk/shapes:define-type string-model smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure support-container-definition
                                    common-lisp:nil
                                    ((container-name :target-type
                                      non-zero-and128max-ascii-string
                                      :member-name "ContainerName")
                                     (depends-on :target-type
                                      container-dependency-list :member-name
                                      "DependsOn")
                                     (mount-points :target-type
                                      container-mount-point-list :member-name
                                      "MountPoints")
                                     (environment-override :target-type
                                      container-environment-list :member-name
                                      "EnvironmentOverride")
                                     (essential :target-type boolean-model
                                      :member-name "Essential")
                                     (health-check :target-type
                                      container-health-check :member-name
                                      "HealthCheck")
                                     (image-uri :target-type image-uri-string
                                      :member-name "ImageUri")
                                     (memory-hard-limit-mebibytes :target-type
                                      container-memory-limit :member-name
                                      "MemoryHardLimitMebibytes")
                                     (port-configuration :target-type
                                      container-port-configuration :member-name
                                      "PortConfiguration")
                                     (resolved-image-digest :target-type sha256
                                      :member-name "ResolvedImageDigest")
                                     (vcpu :target-type container-vcpu
                                      :member-name "Vcpu"))
                                    (:shape-name "SupportContainerDefinition"))

(smithy/sdk/shapes:define-structure support-container-definition-input
                                    common-lisp:nil
                                    ((container-name :target-type
                                      non-zero-and128max-ascii-string :required
                                      common-lisp:t :member-name
                                      "ContainerName")
                                     (depends-on :target-type
                                      container-dependency-list :member-name
                                      "DependsOn")
                                     (mount-points :target-type
                                      container-mount-point-list :member-name
                                      "MountPoints")
                                     (environment-override :target-type
                                      container-environment-list :member-name
                                      "EnvironmentOverride")
                                     (essential :target-type boolean-model
                                      :member-name "Essential")
                                     (health-check :target-type
                                      container-health-check :member-name
                                      "HealthCheck")
                                     (image-uri :target-type image-uri-string
                                      :required common-lisp:t :member-name
                                      "ImageUri")
                                     (memory-hard-limit-mebibytes :target-type
                                      container-memory-limit :member-name
                                      "MemoryHardLimitMebibytes")
                                     (port-configuration :target-type
                                      container-port-configuration :member-name
                                      "PortConfiguration")
                                     (vcpu :target-type container-vcpu
                                      :member-name "Vcpu"))
                                    (:shape-name
                                     "SupportContainerDefinitionInput"))

(smithy/sdk/shapes:define-list support-container-definition-input-list :member
                               support-container-definition-input)

(smithy/sdk/shapes:define-list support-container-definition-list :member
                               support-container-definition)

(smithy/sdk/shapes:define-input suspend-game-server-group-input common-lisp:nil
                                ((game-server-group-name :target-type
                                  game-server-group-name-or-arn :required
                                  common-lisp:t :member-name
                                  "GameServerGroupName")
                                 (suspend-actions :target-type
                                  game-server-group-actions :required
                                  common-lisp:t :member-name "SuspendActions"))
                                (:shape-name "SuspendGameServerGroupInput"))

(smithy/sdk/shapes:define-output suspend-game-server-group-output
                                 common-lisp:nil
                                 ((game-server-group :target-type
                                   game-server-group :member-name
                                   "GameServerGroup"))
                                 (:shape-name "SuspendGameServerGroupOutput"))

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

(smithy/sdk/shapes:define-error tagging-failed-exception common-lisp:nil
                                ((message :target-type non-empty-string
                                  :member-name "Message"))
                                (:shape-name "TaggingFailedException")
                                (:error-code 400))

(smithy/sdk/shapes:define-structure target-configuration common-lisp:nil
                                    ((target-value :target-type double
                                      :required common-lisp:t :member-name
                                      "TargetValue"))
                                    (:shape-name "TargetConfiguration"))

(smithy/sdk/shapes:define-structure target-tracking-configuration
                                    common-lisp:nil
                                    ((target-value :target-type
                                      non-negative-double :required
                                      common-lisp:t :member-name
                                      "TargetValue"))
                                    (:shape-name "TargetTrackingConfiguration"))

(smithy/sdk/shapes:define-error terminal-routing-strategy-exception
                                common-lisp:nil
                                ((message :target-type non-empty-string
                                  :member-name "Message"))
                                (:shape-name
                                 "TerminalRoutingStrategyException")
                                (:error-code 400))

(smithy/sdk/shapes:define-input terminate-game-session-input common-lisp:nil
                                ((game-session-id :target-type arn-string-model
                                  :required common-lisp:t :member-name
                                  "GameSessionId")
                                 (termination-mode :target-type
                                  termination-mode :required common-lisp:t
                                  :member-name "TerminationMode"))
                                (:shape-name "TerminateGameSessionInput"))

(smithy/sdk/shapes:define-output terminate-game-session-output common-lisp:nil
                                 ((game-session :target-type game-session
                                   :member-name "GameSession"))
                                 (:shape-name "TerminateGameSessionOutput"))

(smithy/sdk/shapes:define-enum termination-mode
    common-lisp:nil
  (:trigger-on-process-terminate "TRIGGER_ON_PROCESS_TERMINATE")
  (:force-terminate "FORCE_TERMINATE"))

(smithy/sdk/shapes:define-type timestamp smithy/sdk/smithy-types:timestamp)

(smithy/sdk/shapes:define-structure udpendpoint common-lisp:nil
                                    ((domain :target-type
                                      non-zero-and-max-string :member-name
                                      "Domain")
                                     (port :target-type positive-integer
                                      :member-name "Port"))
                                    (:shape-name "UDPEndpoint"))

(smithy/sdk/shapes:define-error unauthorized-exception common-lisp:nil
                                ((message :target-type non-empty-string
                                  :member-name "Message"))
                                (:shape-name "UnauthorizedException")
                                (:error-code 400))

(smithy/sdk/shapes:define-error unsupported-region-exception common-lisp:nil
                                ((message :target-type non-empty-string
                                  :member-name "Message"))
                                (:shape-name "UnsupportedRegionException")
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

(smithy/sdk/shapes:define-input update-alias-input common-lisp:nil
                                ((alias-id :target-type alias-id-or-arn
                                  :required common-lisp:t :member-name
                                  "AliasId")
                                 (name :target-type
                                  non-blank-and-length-constraint-string
                                  :member-name "Name")
                                 (description :target-type
                                  non-zero-and-max-string :member-name
                                  "Description")
                                 (routing-strategy :target-type
                                  routing-strategy :member-name
                                  "RoutingStrategy"))
                                (:shape-name "UpdateAliasInput"))

(smithy/sdk/shapes:define-output update-alias-output common-lisp:nil
                                 ((alias :target-type alias :member-name
                                   "Alias"))
                                 (:shape-name "UpdateAliasOutput"))

(smithy/sdk/shapes:define-input update-build-input common-lisp:nil
                                ((build-id :target-type build-id-or-arn
                                  :required common-lisp:t :member-name
                                  "BuildId")
                                 (name :target-type non-zero-and-max-string
                                  :member-name "Name")
                                 (version :target-type non-zero-and-max-string
                                  :member-name "Version"))
                                (:shape-name "UpdateBuildInput"))

(smithy/sdk/shapes:define-output update-build-output common-lisp:nil
                                 ((build :target-type build :member-name
                                   "Build"))
                                 (:shape-name "UpdateBuildOutput"))

(smithy/sdk/shapes:define-input update-container-fleet-input common-lisp:nil
                                ((fleet-id :target-type fleet-id-or-arn
                                  :required common-lisp:t :member-name
                                  "FleetId")
                                 (game-server-container-group-definition-name
                                  :target-type
                                  container-group-definition-name-or-arn
                                  :member-name
                                  "GameServerContainerGroupDefinitionName")
                                 (per-instance-container-group-definition-name
                                  :target-type
                                  container-group-definition-name-or-arn
                                  :member-name
                                  "PerInstanceContainerGroupDefinitionName")
                                 (game-server-container-groups-per-instance
                                  :target-type
                                  game-server-container-groups-per-instance
                                  :member-name
                                  "GameServerContainerGroupsPerInstance")
                                 (instance-connection-port-range :target-type
                                  connection-port-range :member-name
                                  "InstanceConnectionPortRange")
                                 (instance-inbound-permission-authorizations
                                  :target-type ip-permissions-list :member-name
                                  "InstanceInboundPermissionAuthorizations")
                                 (instance-inbound-permission-revocations
                                  :target-type ip-permissions-list :member-name
                                  "InstanceInboundPermissionRevocations")
                                 (deployment-configuration :target-type
                                  deployment-configuration :member-name
                                  "DeploymentConfiguration")
                                 (description :target-type
                                  non-zero-and-max-string :member-name
                                  "Description")
                                 (metric-groups :target-type metric-group-list
                                  :member-name "MetricGroups")
                                 (new-game-session-protection-policy
                                  :target-type protection-policy :member-name
                                  "NewGameSessionProtectionPolicy")
                                 (game-session-creation-limit-policy
                                  :target-type
                                  game-session-creation-limit-policy
                                  :member-name
                                  "GameSessionCreationLimitPolicy")
                                 (log-configuration :target-type
                                  log-configuration :member-name
                                  "LogConfiguration")
                                 (remove-attributes :target-type
                                  container-fleet-remove-attribute-list
                                  :member-name "RemoveAttributes"))
                                (:shape-name "UpdateContainerFleetInput"))

(smithy/sdk/shapes:define-output update-container-fleet-output common-lisp:nil
                                 ((container-fleet :target-type container-fleet
                                   :member-name "ContainerFleet"))
                                 (:shape-name "UpdateContainerFleetOutput"))

(smithy/sdk/shapes:define-input update-container-group-definition-input
                                common-lisp:nil
                                ((name :target-type
                                  container-group-definition-name-or-arn
                                  :required common-lisp:t :member-name "Name")
                                 (game-server-container-definition :target-type
                                  game-server-container-definition-input
                                  :member-name "GameServerContainerDefinition")
                                 (support-container-definitions :target-type
                                  support-container-definition-input-list
                                  :member-name "SupportContainerDefinitions")
                                 (total-memory-limit-mebibytes :target-type
                                  container-total-memory-limit :member-name
                                  "TotalMemoryLimitMebibytes")
                                 (total-vcpu-limit :target-type
                                  container-total-vcpu-limit :member-name
                                  "TotalVcpuLimit")
                                 (version-description :target-type
                                  non-zero-and-max-string :member-name
                                  "VersionDescription")
                                 (source-version-number :target-type
                                  positive-integer :member-name
                                  "SourceVersionNumber")
                                 (operating-system :target-type
                                  container-operating-system :member-name
                                  "OperatingSystem"))
                                (:shape-name
                                 "UpdateContainerGroupDefinitionInput"))

(smithy/sdk/shapes:define-output update-container-group-definition-output
                                 common-lisp:nil
                                 ((container-group-definition :target-type
                                   container-group-definition :member-name
                                   "ContainerGroupDefinition"))
                                 (:shape-name
                                  "UpdateContainerGroupDefinitionOutput"))

(smithy/sdk/shapes:define-input update-fleet-attributes-input common-lisp:nil
                                ((fleet-id :target-type fleet-id-or-arn
                                  :required common-lisp:t :member-name
                                  "FleetId")
                                 (name :target-type non-zero-and-max-string
                                  :member-name "Name")
                                 (description :target-type
                                  non-zero-and-max-string :member-name
                                  "Description")
                                 (new-game-session-protection-policy
                                  :target-type protection-policy :member-name
                                  "NewGameSessionProtectionPolicy")
                                 (resource-creation-limit-policy :target-type
                                  resource-creation-limit-policy :member-name
                                  "ResourceCreationLimitPolicy")
                                 (metric-groups :target-type metric-group-list
                                  :member-name "MetricGroups")
                                 (anywhere-configuration :target-type
                                  anywhere-configuration :member-name
                                  "AnywhereConfiguration"))
                                (:shape-name "UpdateFleetAttributesInput"))

(smithy/sdk/shapes:define-output update-fleet-attributes-output common-lisp:nil
                                 ((fleet-id :target-type fleet-id :member-name
                                   "FleetId")
                                  (fleet-arn :target-type fleet-arn
                                   :member-name "FleetArn"))
                                 (:shape-name "UpdateFleetAttributesOutput"))

(smithy/sdk/shapes:define-input update-fleet-capacity-input common-lisp:nil
                                ((fleet-id :target-type fleet-id-or-arn
                                  :required common-lisp:t :member-name
                                  "FleetId")
                                 (desired-instances :target-type whole-number
                                  :member-name "DesiredInstances")
                                 (min-size :target-type whole-number
                                  :member-name "MinSize")
                                 (max-size :target-type whole-number
                                  :member-name "MaxSize")
                                 (location :target-type location-string-model
                                  :member-name "Location"))
                                (:shape-name "UpdateFleetCapacityInput"))

(smithy/sdk/shapes:define-output update-fleet-capacity-output common-lisp:nil
                                 ((fleet-id :target-type fleet-id :member-name
                                   "FleetId")
                                  (fleet-arn :target-type fleet-arn
                                   :member-name "FleetArn")
                                  (location :target-type location-string-model
                                   :member-name "Location"))
                                 (:shape-name "UpdateFleetCapacityOutput"))

(smithy/sdk/shapes:define-input update-fleet-port-settings-input
                                common-lisp:nil
                                ((fleet-id :target-type fleet-id-or-arn
                                  :required common-lisp:t :member-name
                                  "FleetId")
                                 (inbound-permission-authorizations
                                  :target-type ip-permissions-list :member-name
                                  "InboundPermissionAuthorizations")
                                 (inbound-permission-revocations :target-type
                                  ip-permissions-list :member-name
                                  "InboundPermissionRevocations"))
                                (:shape-name "UpdateFleetPortSettingsInput"))

(smithy/sdk/shapes:define-output update-fleet-port-settings-output
                                 common-lisp:nil
                                 ((fleet-id :target-type fleet-id :member-name
                                   "FleetId")
                                  (fleet-arn :target-type fleet-arn
                                   :member-name "FleetArn"))
                                 (:shape-name "UpdateFleetPortSettingsOutput"))

(smithy/sdk/shapes:define-input update-game-server-group-input common-lisp:nil
                                ((game-server-group-name :target-type
                                  game-server-group-name-or-arn :required
                                  common-lisp:t :member-name
                                  "GameServerGroupName")
                                 (role-arn :target-type iam-role-arn
                                  :member-name "RoleArn")
                                 (instance-definitions :target-type
                                  instance-definitions :member-name
                                  "InstanceDefinitions")
                                 (game-server-protection-policy :target-type
                                  game-server-protection-policy :member-name
                                  "GameServerProtectionPolicy")
                                 (balancing-strategy :target-type
                                  balancing-strategy :member-name
                                  "BalancingStrategy"))
                                (:shape-name "UpdateGameServerGroupInput"))

(smithy/sdk/shapes:define-output update-game-server-group-output
                                 common-lisp:nil
                                 ((game-server-group :target-type
                                   game-server-group :member-name
                                   "GameServerGroup"))
                                 (:shape-name "UpdateGameServerGroupOutput"))

(smithy/sdk/shapes:define-input update-game-server-input common-lisp:nil
                                ((game-server-group-name :target-type
                                  game-server-group-name-or-arn :required
                                  common-lisp:t :member-name
                                  "GameServerGroupName")
                                 (game-server-id :target-type game-server-id
                                  :required common-lisp:t :member-name
                                  "GameServerId")
                                 (game-server-data :target-type
                                  game-server-data :member-name
                                  "GameServerData")
                                 (utilization-status :target-type
                                  game-server-utilization-status :member-name
                                  "UtilizationStatus")
                                 (health-check :target-type
                                  game-server-health-check :member-name
                                  "HealthCheck"))
                                (:shape-name "UpdateGameServerInput"))

(smithy/sdk/shapes:define-output update-game-server-output common-lisp:nil
                                 ((game-server :target-type game-server
                                   :member-name "GameServer"))
                                 (:shape-name "UpdateGameServerOutput"))

(smithy/sdk/shapes:define-input update-game-session-input common-lisp:nil
                                ((game-session-id :target-type arn-string-model
                                  :required common-lisp:t :member-name
                                  "GameSessionId")
                                 (maximum-player-session-count :target-type
                                  whole-number :member-name
                                  "MaximumPlayerSessionCount")
                                 (name :target-type non-zero-and-max-string
                                  :member-name "Name")
                                 (player-session-creation-policy :target-type
                                  player-session-creation-policy :member-name
                                  "PlayerSessionCreationPolicy")
                                 (protection-policy :target-type
                                  protection-policy :member-name
                                  "ProtectionPolicy")
                                 (game-properties :target-type
                                  game-property-list :member-name
                                  "GameProperties"))
                                (:shape-name "UpdateGameSessionInput"))

(smithy/sdk/shapes:define-output update-game-session-output common-lisp:nil
                                 ((game-session :target-type game-session
                                   :member-name "GameSession"))
                                 (:shape-name "UpdateGameSessionOutput"))

(smithy/sdk/shapes:define-input update-game-session-queue-input common-lisp:nil
                                ((name :target-type
                                  game-session-queue-name-or-arn :required
                                  common-lisp:t :member-name "Name")
                                 (timeout-in-seconds :target-type whole-number
                                  :member-name "TimeoutInSeconds")
                                 (player-latency-policies :target-type
                                  player-latency-policy-list :member-name
                                  "PlayerLatencyPolicies")
                                 (destinations :target-type
                                  game-session-queue-destination-list
                                  :member-name "Destinations")
                                 (filter-configuration :target-type
                                  filter-configuration :member-name
                                  "FilterConfiguration")
                                 (priority-configuration :target-type
                                  priority-configuration :member-name
                                  "PriorityConfiguration")
                                 (custom-event-data :target-type
                                  queue-custom-event-data :member-name
                                  "CustomEventData")
                                 (notification-target :target-type
                                  queue-sns-arn-string-model :member-name
                                  "NotificationTarget"))
                                (:shape-name "UpdateGameSessionQueueInput"))

(smithy/sdk/shapes:define-output update-game-session-queue-output
                                 common-lisp:nil
                                 ((game-session-queue :target-type
                                   game-session-queue :member-name
                                   "GameSessionQueue"))
                                 (:shape-name "UpdateGameSessionQueueOutput"))

(smithy/sdk/shapes:define-input update-matchmaking-configuration-input
                                common-lisp:nil
                                ((name :target-type
                                  matchmaking-configuration-name :required
                                  common-lisp:t :member-name "Name")
                                 (description :target-type
                                  non-zero-and-max-string :member-name
                                  "Description")
                                 (game-session-queue-arns :target-type
                                  queue-arns-list :member-name
                                  "GameSessionQueueArns")
                                 (request-timeout-seconds :target-type
                                  matchmaking-request-timeout-integer
                                  :member-name "RequestTimeoutSeconds")
                                 (acceptance-timeout-seconds :target-type
                                  matchmaking-acceptance-timeout-integer
                                  :member-name "AcceptanceTimeoutSeconds")
                                 (acceptance-required :target-type
                                  boolean-model :member-name
                                  "AcceptanceRequired")
                                 (rule-set-name :target-type
                                  matchmaking-rule-set-name :member-name
                                  "RuleSetName")
                                 (notification-target :target-type
                                  sns-arn-string-model :member-name
                                  "NotificationTarget")
                                 (additional-player-count :target-type
                                  whole-number :member-name
                                  "AdditionalPlayerCount")
                                 (custom-event-data :target-type
                                  custom-event-data :member-name
                                  "CustomEventData")
                                 (game-properties :target-type
                                  game-property-list :member-name
                                  "GameProperties")
                                 (game-session-data :target-type
                                  game-session-data :member-name
                                  "GameSessionData")
                                 (backfill-mode :target-type backfill-mode
                                  :member-name "BackfillMode")
                                 (flex-match-mode :target-type flex-match-mode
                                  :member-name "FlexMatchMode"))
                                (:shape-name
                                 "UpdateMatchmakingConfigurationInput"))

(smithy/sdk/shapes:define-output update-matchmaking-configuration-output
                                 common-lisp:nil
                                 ((configuration :target-type
                                   matchmaking-configuration :member-name
                                   "Configuration"))
                                 (:shape-name
                                  "UpdateMatchmakingConfigurationOutput"))

(smithy/sdk/shapes:define-input update-runtime-configuration-input
                                common-lisp:nil
                                ((fleet-id :target-type fleet-id-or-arn
                                  :required common-lisp:t :member-name
                                  "FleetId")
                                 (runtime-configuration :target-type
                                  runtime-configuration :required common-lisp:t
                                  :member-name "RuntimeConfiguration"))
                                (:shape-name "UpdateRuntimeConfigurationInput"))

(smithy/sdk/shapes:define-output update-runtime-configuration-output
                                 common-lisp:nil
                                 ((runtime-configuration :target-type
                                   runtime-configuration :member-name
                                   "RuntimeConfiguration"))
                                 (:shape-name
                                  "UpdateRuntimeConfigurationOutput"))

(smithy/sdk/shapes:define-input update-script-input common-lisp:nil
                                ((script-id :target-type script-id-or-arn
                                  :required common-lisp:t :member-name
                                  "ScriptId")
                                 (name :target-type non-zero-and-max-string
                                  :member-name "Name")
                                 (version :target-type non-zero-and-max-string
                                  :member-name "Version")
                                 (storage-location :target-type s3location
                                  :member-name "StorageLocation")
                                 (zip-file :target-type zip-blob :member-name
                                  "ZipFile"))
                                (:shape-name "UpdateScriptInput"))

(smithy/sdk/shapes:define-output update-script-output common-lisp:nil
                                 ((script :target-type script :member-name
                                   "Script"))
                                 (:shape-name "UpdateScriptOutput"))

(smithy/sdk/shapes:define-input validate-matchmaking-rule-set-input
                                common-lisp:nil
                                ((rule-set-body :target-type rule-set-body
                                  :required common-lisp:t :member-name
                                  "RuleSetBody"))
                                (:shape-name "ValidateMatchmakingRuleSetInput"))

(smithy/sdk/shapes:define-output validate-matchmaking-rule-set-output
                                 common-lisp:nil
                                 ((valid :target-type boolean-model
                                   :member-name "Valid"))
                                 (:shape-name
                                  "ValidateMatchmakingRuleSetOutput"))

(smithy/sdk/shapes:define-structure vpc-peering-authorization common-lisp:nil
                                    ((game-lift-aws-account-id :target-type
                                      non-zero-and-max-string :member-name
                                      "GameLiftAwsAccountId")
                                     (peer-vpc-aws-account-id :target-type
                                      non-zero-and-max-string :member-name
                                      "PeerVpcAwsAccountId")
                                     (peer-vpc-id :target-type
                                      non-zero-and-max-string :member-name
                                      "PeerVpcId")
                                     (creation-time :target-type timestamp
                                      :member-name "CreationTime")
                                     (expiration-time :target-type timestamp
                                      :member-name "ExpirationTime"))
                                    (:shape-name "VpcPeeringAuthorization"))

(smithy/sdk/shapes:define-list vpc-peering-authorization-list :member
                               vpc-peering-authorization)

(smithy/sdk/shapes:define-structure vpc-peering-connection common-lisp:nil
                                    ((fleet-id :target-type fleet-id
                                      :member-name "FleetId")
                                     (fleet-arn :target-type fleet-arn
                                      :member-name "FleetArn")
                                     (ip-v4cidr-block :target-type
                                      non-zero-and-max-string :member-name
                                      "IpV4CidrBlock")
                                     (vpc-peering-connection-id :target-type
                                      non-zero-and-max-string :member-name
                                      "VpcPeeringConnectionId")
                                     (status :target-type
                                      vpc-peering-connection-status
                                      :member-name "Status")
                                     (peer-vpc-id :target-type
                                      non-zero-and-max-string :member-name
                                      "PeerVpcId")
                                     (game-lift-vpc-id :target-type
                                      non-zero-and-max-string :member-name
                                      "GameLiftVpcId"))
                                    (:shape-name "VpcPeeringConnection"))

(smithy/sdk/shapes:define-list vpc-peering-connection-list :member
                               vpc-peering-connection)

(smithy/sdk/shapes:define-structure vpc-peering-connection-status
                                    common-lisp:nil
                                    ((code :target-type non-zero-and-max-string
                                      :member-name "Code")
                                     (message :target-type
                                      non-zero-and-max-string :member-name
                                      "Message"))
                                    (:shape-name "VpcPeeringConnectionStatus"))

(smithy/sdk/shapes:define-type vpc-subnet smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list vpc-subnets :member vpc-subnet)

(smithy/sdk/shapes:define-type weighted-capacity smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type whole-number smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type zip-blob smithy/sdk/smithy-types:blob)

(smithy/sdk/operation:define-operation accept-match :shape-name "AcceptMatch"
                                       :input accept-match-input :output
                                       accept-match-output :errors
                                       (internal-service-exception
                                        invalid-request-exception
                                        not-found-exception
                                        unsupported-region-exception))

(smithy/sdk/operation:define-operation claim-game-server :shape-name
                                       "ClaimGameServer" :input
                                       claim-game-server-input :output
                                       claim-game-server-output :errors
                                       (conflict-exception
                                        internal-service-exception
                                        invalid-request-exception
                                        not-found-exception
                                        out-of-capacity-exception
                                        unauthorized-exception))

(smithy/sdk/operation:define-operation create-alias :shape-name "CreateAlias"
                                       :input create-alias-input :output
                                       create-alias-output :errors
                                       (conflict-exception
                                        internal-service-exception
                                        invalid-request-exception
                                        limit-exceeded-exception
                                        tagging-failed-exception
                                        unauthorized-exception))

(smithy/sdk/operation:define-operation create-build :shape-name "CreateBuild"
                                       :input create-build-input :output
                                       create-build-output :errors
                                       (conflict-exception
                                        internal-service-exception
                                        invalid-request-exception
                                        tagging-failed-exception
                                        unauthorized-exception))

(smithy/sdk/operation:define-operation create-container-fleet :shape-name
                                       "CreateContainerFleet" :input
                                       create-container-fleet-input :output
                                       create-container-fleet-output :errors
                                       (conflict-exception
                                        internal-service-exception
                                        invalid-request-exception
                                        limit-exceeded-exception
                                        tagging-failed-exception
                                        unauthorized-exception
                                        unsupported-region-exception))

(smithy/sdk/operation:define-operation create-container-group-definition
                                       :shape-name
                                       "CreateContainerGroupDefinition" :input
                                       create-container-group-definition-input
                                       :output
                                       create-container-group-definition-output
                                       :errors
                                       (conflict-exception
                                        internal-service-exception
                                        invalid-request-exception
                                        limit-exceeded-exception
                                        tagging-failed-exception
                                        unauthorized-exception
                                        unsupported-region-exception))

(smithy/sdk/operation:define-operation create-fleet :shape-name "CreateFleet"
                                       :input create-fleet-input :output
                                       create-fleet-output :errors
                                       (conflict-exception
                                        internal-service-exception
                                        invalid-request-exception
                                        limit-exceeded-exception
                                        not-found-exception not-ready-exception
                                        tagging-failed-exception
                                        unauthorized-exception
                                        unsupported-region-exception))

(smithy/sdk/operation:define-operation create-fleet-locations :shape-name
                                       "CreateFleetLocations" :input
                                       create-fleet-locations-input :output
                                       create-fleet-locations-output :errors
                                       (conflict-exception
                                        internal-service-exception
                                        invalid-fleet-status-exception
                                        invalid-request-exception
                                        limit-exceeded-exception
                                        not-found-exception not-ready-exception
                                        unauthorized-exception
                                        unsupported-region-exception))

(smithy/sdk/operation:define-operation create-game-server-group :shape-name
                                       "CreateGameServerGroup" :input
                                       create-game-server-group-input :output
                                       create-game-server-group-output :errors
                                       (conflict-exception
                                        internal-service-exception
                                        invalid-request-exception
                                        limit-exceeded-exception
                                        unauthorized-exception))

(smithy/sdk/operation:define-operation create-game-session :shape-name
                                       "CreateGameSession" :input
                                       create-game-session-input :output
                                       create-game-session-output :errors
                                       (conflict-exception
                                        fleet-capacity-exceeded-exception
                                        idempotent-parameter-mismatch-exception
                                        internal-service-exception
                                        invalid-fleet-status-exception
                                        invalid-request-exception
                                        limit-exceeded-exception
                                        not-found-exception
                                        terminal-routing-strategy-exception
                                        unauthorized-exception
                                        unsupported-region-exception))

(smithy/sdk/operation:define-operation create-game-session-queue :shape-name
                                       "CreateGameSessionQueue" :input
                                       create-game-session-queue-input :output
                                       create-game-session-queue-output :errors
                                       (internal-service-exception
                                        invalid-request-exception
                                        limit-exceeded-exception
                                        not-found-exception
                                        tagging-failed-exception
                                        unauthorized-exception))

(smithy/sdk/operation:define-operation create-location :shape-name
                                       "CreateLocation" :input
                                       create-location-input :output
                                       create-location-output :errors
                                       (conflict-exception
                                        internal-service-exception
                                        invalid-request-exception
                                        limit-exceeded-exception
                                        tagging-failed-exception
                                        unauthorized-exception))

(smithy/sdk/operation:define-operation create-matchmaking-configuration
                                       :shape-name
                                       "CreateMatchmakingConfiguration" :input
                                       create-matchmaking-configuration-input
                                       :output
                                       create-matchmaking-configuration-output
                                       :errors
                                       (internal-service-exception
                                        invalid-request-exception
                                        limit-exceeded-exception
                                        not-found-exception
                                        tagging-failed-exception
                                        unsupported-region-exception))

(smithy/sdk/operation:define-operation create-matchmaking-rule-set :shape-name
                                       "CreateMatchmakingRuleSet" :input
                                       create-matchmaking-rule-set-input
                                       :output
                                       create-matchmaking-rule-set-output
                                       :errors
                                       (internal-service-exception
                                        invalid-request-exception
                                        limit-exceeded-exception
                                        tagging-failed-exception
                                        unsupported-region-exception))

(smithy/sdk/operation:define-operation create-player-session :shape-name
                                       "CreatePlayerSession" :input
                                       create-player-session-input :output
                                       create-player-session-output :errors
                                       (game-session-full-exception
                                        internal-service-exception
                                        invalid-game-session-status-exception
                                        invalid-request-exception
                                        not-found-exception
                                        terminal-routing-strategy-exception
                                        unauthorized-exception))

(smithy/sdk/operation:define-operation create-player-sessions :shape-name
                                       "CreatePlayerSessions" :input
                                       create-player-sessions-input :output
                                       create-player-sessions-output :errors
                                       (game-session-full-exception
                                        internal-service-exception
                                        invalid-game-session-status-exception
                                        invalid-request-exception
                                        not-found-exception
                                        terminal-routing-strategy-exception
                                        unauthorized-exception))

(smithy/sdk/operation:define-operation create-script :shape-name "CreateScript"
                                       :input create-script-input :output
                                       create-script-output :errors
                                       (conflict-exception
                                        internal-service-exception
                                        invalid-request-exception
                                        tagging-failed-exception
                                        unauthorized-exception))

(smithy/sdk/operation:define-operation create-vpc-peering-authorization
                                       :shape-name
                                       "CreateVpcPeeringAuthorization" :input
                                       create-vpc-peering-authorization-input
                                       :output
                                       create-vpc-peering-authorization-output
                                       :errors
                                       (internal-service-exception
                                        invalid-request-exception
                                        not-found-exception
                                        unauthorized-exception))

(smithy/sdk/operation:define-operation create-vpc-peering-connection
                                       :shape-name "CreateVpcPeeringConnection"
                                       :input
                                       create-vpc-peering-connection-input
                                       :output
                                       create-vpc-peering-connection-output
                                       :errors
                                       (internal-service-exception
                                        invalid-request-exception
                                        not-found-exception
                                        unauthorized-exception))

(smithy/sdk/operation:define-operation delete-alias :shape-name "DeleteAlias"
                                       :input delete-alias-input :output
                                       common-lisp:null :errors
                                       (internal-service-exception
                                        invalid-request-exception
                                        not-found-exception
                                        tagging-failed-exception
                                        unauthorized-exception))

(smithy/sdk/operation:define-operation delete-build :shape-name "DeleteBuild"
                                       :input delete-build-input :output
                                       common-lisp:null :errors
                                       (internal-service-exception
                                        invalid-request-exception
                                        not-found-exception
                                        tagging-failed-exception
                                        unauthorized-exception))

(smithy/sdk/operation:define-operation delete-container-fleet :shape-name
                                       "DeleteContainerFleet" :input
                                       delete-container-fleet-input :output
                                       delete-container-fleet-output :errors
                                       (internal-service-exception
                                        invalid-request-exception
                                        not-found-exception
                                        tagging-failed-exception
                                        unauthorized-exception
                                        unsupported-region-exception))

(smithy/sdk/operation:define-operation delete-container-group-definition
                                       :shape-name
                                       "DeleteContainerGroupDefinition" :input
                                       delete-container-group-definition-input
                                       :output
                                       delete-container-group-definition-output
                                       :errors
                                       (internal-service-exception
                                        invalid-request-exception
                                        not-found-exception
                                        tagging-failed-exception
                                        unauthorized-exception
                                        unsupported-region-exception))

(smithy/sdk/operation:define-operation delete-fleet :shape-name "DeleteFleet"
                                       :input delete-fleet-input :output
                                       common-lisp:null :errors
                                       (internal-service-exception
                                        invalid-fleet-status-exception
                                        invalid-request-exception
                                        not-found-exception
                                        tagging-failed-exception
                                        unauthorized-exception))

(smithy/sdk/operation:define-operation delete-fleet-locations :shape-name
                                       "DeleteFleetLocations" :input
                                       delete-fleet-locations-input :output
                                       delete-fleet-locations-output :errors
                                       (internal-service-exception
                                        invalid-request-exception
                                        not-found-exception
                                        unauthorized-exception
                                        unsupported-region-exception))

(smithy/sdk/operation:define-operation delete-game-server-group :shape-name
                                       "DeleteGameServerGroup" :input
                                       delete-game-server-group-input :output
                                       delete-game-server-group-output :errors
                                       (internal-service-exception
                                        invalid-request-exception
                                        not-found-exception
                                        unauthorized-exception))

(smithy/sdk/operation:define-operation delete-game-session-queue :shape-name
                                       "DeleteGameSessionQueue" :input
                                       delete-game-session-queue-input :output
                                       delete-game-session-queue-output :errors
                                       (internal-service-exception
                                        invalid-request-exception
                                        not-found-exception
                                        tagging-failed-exception
                                        unauthorized-exception))

(smithy/sdk/operation:define-operation delete-location :shape-name
                                       "DeleteLocation" :input
                                       delete-location-input :output
                                       delete-location-output :errors
                                       (internal-service-exception
                                        invalid-request-exception
                                        not-found-exception
                                        unauthorized-exception))

(smithy/sdk/operation:define-operation delete-matchmaking-configuration
                                       :shape-name
                                       "DeleteMatchmakingConfiguration" :input
                                       delete-matchmaking-configuration-input
                                       :output
                                       delete-matchmaking-configuration-output
                                       :errors
                                       (internal-service-exception
                                        invalid-request-exception
                                        not-found-exception
                                        tagging-failed-exception
                                        unsupported-region-exception))

(smithy/sdk/operation:define-operation delete-matchmaking-rule-set :shape-name
                                       "DeleteMatchmakingRuleSet" :input
                                       delete-matchmaking-rule-set-input
                                       :output
                                       delete-matchmaking-rule-set-output
                                       :errors
                                       (internal-service-exception
                                        invalid-request-exception
                                        not-found-exception
                                        tagging-failed-exception
                                        unsupported-region-exception))

(smithy/sdk/operation:define-operation delete-scaling-policy :shape-name
                                       "DeleteScalingPolicy" :input
                                       delete-scaling-policy-input :output
                                       common-lisp:null :errors
                                       (internal-service-exception
                                        invalid-request-exception
                                        not-found-exception
                                        unauthorized-exception
                                        unsupported-region-exception))

(smithy/sdk/operation:define-operation delete-script :shape-name "DeleteScript"
                                       :input delete-script-input :output
                                       common-lisp:null :errors
                                       (internal-service-exception
                                        invalid-request-exception
                                        not-found-exception
                                        tagging-failed-exception
                                        unauthorized-exception))

(smithy/sdk/operation:define-operation delete-vpc-peering-authorization
                                       :shape-name
                                       "DeleteVpcPeeringAuthorization" :input
                                       delete-vpc-peering-authorization-input
                                       :output
                                       delete-vpc-peering-authorization-output
                                       :errors
                                       (internal-service-exception
                                        invalid-request-exception
                                        not-found-exception
                                        unauthorized-exception))

(smithy/sdk/operation:define-operation delete-vpc-peering-connection
                                       :shape-name "DeleteVpcPeeringConnection"
                                       :input
                                       delete-vpc-peering-connection-input
                                       :output
                                       delete-vpc-peering-connection-output
                                       :errors
                                       (internal-service-exception
                                        invalid-request-exception
                                        not-found-exception
                                        unauthorized-exception))

(smithy/sdk/operation:define-operation deregister-compute :shape-name
                                       "DeregisterCompute" :input
                                       deregister-compute-input :output
                                       deregister-compute-output :errors
                                       (internal-service-exception
                                        invalid-request-exception
                                        not-found-exception
                                        unauthorized-exception))

(smithy/sdk/operation:define-operation deregister-game-server :shape-name
                                       "DeregisterGameServer" :input
                                       deregister-game-server-input :output
                                       common-lisp:null :errors
                                       (internal-service-exception
                                        invalid-request-exception
                                        not-found-exception
                                        unauthorized-exception))

(smithy/sdk/operation:define-operation describe-alias :shape-name
                                       "DescribeAlias" :input
                                       describe-alias-input :output
                                       describe-alias-output :errors
                                       (internal-service-exception
                                        invalid-request-exception
                                        not-found-exception
                                        unauthorized-exception))

(smithy/sdk/operation:define-operation describe-build :shape-name
                                       "DescribeBuild" :input
                                       describe-build-input :output
                                       describe-build-output :errors
                                       (internal-service-exception
                                        invalid-request-exception
                                        not-found-exception
                                        unauthorized-exception))

(smithy/sdk/operation:define-operation describe-compute :shape-name
                                       "DescribeCompute" :input
                                       describe-compute-input :output
                                       describe-compute-output :errors
                                       (internal-service-exception
                                        invalid-request-exception
                                        not-found-exception
                                        unauthorized-exception
                                        unsupported-region-exception))

(smithy/sdk/operation:define-operation describe-container-fleet :shape-name
                                       "DescribeContainerFleet" :input
                                       describe-container-fleet-input :output
                                       describe-container-fleet-output :errors
                                       (internal-service-exception
                                        invalid-request-exception
                                        not-found-exception
                                        unauthorized-exception
                                        unsupported-region-exception))

(smithy/sdk/operation:define-operation describe-container-group-definition
                                       :shape-name
                                       "DescribeContainerGroupDefinition"
                                       :input
                                       describe-container-group-definition-input
                                       :output
                                       describe-container-group-definition-output
                                       :errors
                                       (internal-service-exception
                                        invalid-request-exception
                                        not-found-exception
                                        unauthorized-exception
                                        unsupported-region-exception))

(smithy/sdk/operation:define-operation describe-ec2instance-limits :shape-name
                                       "DescribeEC2InstanceLimits" :input
                                       describe-ec2instance-limits-input
                                       :output
                                       describe-ec2instance-limits-output
                                       :errors
                                       (internal-service-exception
                                        invalid-request-exception
                                        unauthorized-exception
                                        unsupported-region-exception))

(smithy/sdk/operation:define-operation describe-fleet-attributes :shape-name
                                       "DescribeFleetAttributes" :input
                                       describe-fleet-attributes-input :output
                                       describe-fleet-attributes-output :errors
                                       (internal-service-exception
                                        invalid-request-exception
                                        not-found-exception
                                        unauthorized-exception))

(smithy/sdk/operation:define-operation describe-fleet-capacity :shape-name
                                       "DescribeFleetCapacity" :input
                                       describe-fleet-capacity-input :output
                                       describe-fleet-capacity-output :errors
                                       (internal-service-exception
                                        invalid-request-exception
                                        not-found-exception
                                        unauthorized-exception
                                        unsupported-region-exception))

(smithy/sdk/operation:define-operation describe-fleet-deployment :shape-name
                                       "DescribeFleetDeployment" :input
                                       describe-fleet-deployment-input :output
                                       describe-fleet-deployment-output :errors
                                       (internal-service-exception
                                        invalid-request-exception
                                        not-found-exception
                                        unauthorized-exception
                                        unsupported-region-exception))

(smithy/sdk/operation:define-operation describe-fleet-events :shape-name
                                       "DescribeFleetEvents" :input
                                       describe-fleet-events-input :output
                                       describe-fleet-events-output :errors
                                       (internal-service-exception
                                        invalid-request-exception
                                        not-found-exception
                                        unauthorized-exception
                                        unsupported-region-exception))

(smithy/sdk/operation:define-operation describe-fleet-location-attributes
                                       :shape-name
                                       "DescribeFleetLocationAttributes" :input
                                       describe-fleet-location-attributes-input
                                       :output
                                       describe-fleet-location-attributes-output
                                       :errors
                                       (internal-service-exception
                                        invalid-request-exception
                                        not-found-exception
                                        unauthorized-exception
                                        unsupported-region-exception))

(smithy/sdk/operation:define-operation describe-fleet-location-capacity
                                       :shape-name
                                       "DescribeFleetLocationCapacity" :input
                                       describe-fleet-location-capacity-input
                                       :output
                                       describe-fleet-location-capacity-output
                                       :errors
                                       (internal-service-exception
                                        invalid-request-exception
                                        not-found-exception
                                        unauthorized-exception
                                        unsupported-region-exception))

(smithy/sdk/operation:define-operation describe-fleet-location-utilization
                                       :shape-name
                                       "DescribeFleetLocationUtilization"
                                       :input
                                       describe-fleet-location-utilization-input
                                       :output
                                       describe-fleet-location-utilization-output
                                       :errors
                                       (internal-service-exception
                                        invalid-request-exception
                                        not-found-exception
                                        unauthorized-exception
                                        unsupported-region-exception))

(smithy/sdk/operation:define-operation describe-fleet-port-settings :shape-name
                                       "DescribeFleetPortSettings" :input
                                       describe-fleet-port-settings-input
                                       :output
                                       describe-fleet-port-settings-output
                                       :errors
                                       (internal-service-exception
                                        invalid-request-exception
                                        not-found-exception
                                        unauthorized-exception
                                        unsupported-region-exception))

(smithy/sdk/operation:define-operation describe-fleet-utilization :shape-name
                                       "DescribeFleetUtilization" :input
                                       describe-fleet-utilization-input :output
                                       describe-fleet-utilization-output
                                       :errors
                                       (internal-service-exception
                                        invalid-request-exception
                                        not-found-exception
                                        unauthorized-exception))

(smithy/sdk/operation:define-operation describe-game-server :shape-name
                                       "DescribeGameServer" :input
                                       describe-game-server-input :output
                                       describe-game-server-output :errors
                                       (internal-service-exception
                                        invalid-request-exception
                                        not-found-exception
                                        unauthorized-exception))

(smithy/sdk/operation:define-operation describe-game-server-group :shape-name
                                       "DescribeGameServerGroup" :input
                                       describe-game-server-group-input :output
                                       describe-game-server-group-output
                                       :errors
                                       (internal-service-exception
                                        invalid-request-exception
                                        not-found-exception
                                        unauthorized-exception))

(smithy/sdk/operation:define-operation describe-game-server-instances
                                       :shape-name
                                       "DescribeGameServerInstances" :input
                                       describe-game-server-instances-input
                                       :output
                                       describe-game-server-instances-output
                                       :errors
                                       (internal-service-exception
                                        invalid-request-exception
                                        not-found-exception
                                        unauthorized-exception))

(smithy/sdk/operation:define-operation describe-game-session-details
                                       :shape-name "DescribeGameSessionDetails"
                                       :input
                                       describe-game-session-details-input
                                       :output
                                       describe-game-session-details-output
                                       :errors
                                       (internal-service-exception
                                        invalid-request-exception
                                        not-found-exception
                                        terminal-routing-strategy-exception
                                        unauthorized-exception
                                        unsupported-region-exception))

(smithy/sdk/operation:define-operation describe-game-session-placement
                                       :shape-name
                                       "DescribeGameSessionPlacement" :input
                                       describe-game-session-placement-input
                                       :output
                                       describe-game-session-placement-output
                                       :errors
                                       (internal-service-exception
                                        invalid-request-exception
                                        not-found-exception
                                        unauthorized-exception))

(smithy/sdk/operation:define-operation describe-game-session-queues :shape-name
                                       "DescribeGameSessionQueues" :input
                                       describe-game-session-queues-input
                                       :output
                                       describe-game-session-queues-output
                                       :errors
                                       (internal-service-exception
                                        invalid-request-exception
                                        not-found-exception
                                        unauthorized-exception))

(smithy/sdk/operation:define-operation describe-game-sessions :shape-name
                                       "DescribeGameSessions" :input
                                       describe-game-sessions-input :output
                                       describe-game-sessions-output :errors
                                       (internal-service-exception
                                        invalid-request-exception
                                        not-found-exception
                                        terminal-routing-strategy-exception
                                        unauthorized-exception
                                        unsupported-region-exception))

(smithy/sdk/operation:define-operation describe-instances :shape-name
                                       "DescribeInstances" :input
                                       describe-instances-input :output
                                       describe-instances-output :errors
                                       (internal-service-exception
                                        invalid-request-exception
                                        not-found-exception
                                        unauthorized-exception
                                        unsupported-region-exception))

(smithy/sdk/operation:define-operation describe-matchmaking :shape-name
                                       "DescribeMatchmaking" :input
                                       describe-matchmaking-input :output
                                       describe-matchmaking-output :errors
                                       (internal-service-exception
                                        invalid-request-exception
                                        unsupported-region-exception))

(smithy/sdk/operation:define-operation describe-matchmaking-configurations
                                       :shape-name
                                       "DescribeMatchmakingConfigurations"
                                       :input
                                       describe-matchmaking-configurations-input
                                       :output
                                       describe-matchmaking-configurations-output
                                       :errors
                                       (internal-service-exception
                                        invalid-request-exception
                                        unsupported-region-exception))

(smithy/sdk/operation:define-operation describe-matchmaking-rule-sets
                                       :shape-name
                                       "DescribeMatchmakingRuleSets" :input
                                       describe-matchmaking-rule-sets-input
                                       :output
                                       describe-matchmaking-rule-sets-output
                                       :errors
                                       (internal-service-exception
                                        invalid-request-exception
                                        not-found-exception
                                        unsupported-region-exception))

(smithy/sdk/operation:define-operation describe-player-sessions :shape-name
                                       "DescribePlayerSessions" :input
                                       describe-player-sessions-input :output
                                       describe-player-sessions-output :errors
                                       (internal-service-exception
                                        invalid-request-exception
                                        not-found-exception
                                        unauthorized-exception))

(smithy/sdk/operation:define-operation describe-runtime-configuration
                                       :shape-name
                                       "DescribeRuntimeConfiguration" :input
                                       describe-runtime-configuration-input
                                       :output
                                       describe-runtime-configuration-output
                                       :errors
                                       (internal-service-exception
                                        invalid-request-exception
                                        not-found-exception
                                        unauthorized-exception))

(smithy/sdk/operation:define-operation describe-scaling-policies :shape-name
                                       "DescribeScalingPolicies" :input
                                       describe-scaling-policies-input :output
                                       describe-scaling-policies-output :errors
                                       (internal-service-exception
                                        invalid-request-exception
                                        not-found-exception
                                        unauthorized-exception
                                        unsupported-region-exception))

(smithy/sdk/operation:define-operation describe-script :shape-name
                                       "DescribeScript" :input
                                       describe-script-input :output
                                       describe-script-output :errors
                                       (internal-service-exception
                                        invalid-request-exception
                                        not-found-exception
                                        unauthorized-exception))

(smithy/sdk/operation:define-operation describe-vpc-peering-authorizations
                                       :shape-name
                                       "DescribeVpcPeeringAuthorizations"
                                       :input
                                       describe-vpc-peering-authorizations-input
                                       :output
                                       describe-vpc-peering-authorizations-output
                                       :errors
                                       (internal-service-exception
                                        invalid-request-exception
                                        unauthorized-exception))

(smithy/sdk/operation:define-operation describe-vpc-peering-connections
                                       :shape-name
                                       "DescribeVpcPeeringConnections" :input
                                       describe-vpc-peering-connections-input
                                       :output
                                       describe-vpc-peering-connections-output
                                       :errors
                                       (internal-service-exception
                                        invalid-request-exception
                                        not-found-exception
                                        unauthorized-exception))

(smithy/sdk/operation:define-operation get-compute-access :shape-name
                                       "GetComputeAccess" :input
                                       get-compute-access-input :output
                                       get-compute-access-output :errors
                                       (internal-service-exception
                                        invalid-request-exception
                                        not-found-exception
                                        unauthorized-exception
                                        unsupported-region-exception))

(smithy/sdk/operation:define-operation get-compute-auth-token :shape-name
                                       "GetComputeAuthToken" :input
                                       get-compute-auth-token-input :output
                                       get-compute-auth-token-output :errors
                                       (internal-service-exception
                                        invalid-request-exception
                                        not-found-exception
                                        unauthorized-exception
                                        unsupported-region-exception))

(smithy/sdk/operation:define-operation get-game-session-log-url :shape-name
                                       "GetGameSessionLogUrl" :input
                                       get-game-session-log-url-input :output
                                       get-game-session-log-url-output :errors
                                       (internal-service-exception
                                        invalid-request-exception
                                        not-found-exception
                                        unauthorized-exception))

(smithy/sdk/operation:define-operation get-instance-access :shape-name
                                       "GetInstanceAccess" :input
                                       get-instance-access-input :output
                                       get-instance-access-output :errors
                                       (internal-service-exception
                                        invalid-request-exception
                                        not-found-exception
                                        unauthorized-exception))

(smithy/sdk/operation:define-operation list-aliases :shape-name "ListAliases"
                                       :input list-aliases-input :output
                                       list-aliases-output :errors
                                       (internal-service-exception
                                        invalid-request-exception
                                        unauthorized-exception))

(smithy/sdk/operation:define-operation list-builds :shape-name "ListBuilds"
                                       :input list-builds-input :output
                                       list-builds-output :errors
                                       (internal-service-exception
                                        invalid-request-exception
                                        unauthorized-exception))

(smithy/sdk/operation:define-operation list-compute :shape-name "ListCompute"
                                       :input list-compute-input :output
                                       list-compute-output :errors
                                       (internal-service-exception
                                        invalid-request-exception
                                        unauthorized-exception
                                        unsupported-region-exception))

(smithy/sdk/operation:define-operation list-container-fleets :shape-name
                                       "ListContainerFleets" :input
                                       list-container-fleets-input :output
                                       list-container-fleets-output :errors
                                       (internal-service-exception
                                        invalid-request-exception
                                        unauthorized-exception
                                        unsupported-region-exception))

(smithy/sdk/operation:define-operation list-container-group-definition-versions
                                       :shape-name
                                       "ListContainerGroupDefinitionVersions"
                                       :input
                                       list-container-group-definition-versions-input
                                       :output
                                       list-container-group-definition-versions-output
                                       :errors
                                       (internal-service-exception
                                        invalid-request-exception
                                        not-found-exception
                                        unauthorized-exception
                                        unsupported-region-exception))

(smithy/sdk/operation:define-operation list-container-group-definitions
                                       :shape-name
                                       "ListContainerGroupDefinitions" :input
                                       list-container-group-definitions-input
                                       :output
                                       list-container-group-definitions-output
                                       :errors
                                       (internal-service-exception
                                        invalid-request-exception
                                        unauthorized-exception
                                        unsupported-region-exception))

(smithy/sdk/operation:define-operation list-fleet-deployments :shape-name
                                       "ListFleetDeployments" :input
                                       list-fleet-deployments-input :output
                                       list-fleet-deployments-output :errors
                                       (internal-service-exception
                                        invalid-request-exception
                                        not-found-exception
                                        unauthorized-exception
                                        unsupported-region-exception))

(smithy/sdk/operation:define-operation list-fleets :shape-name "ListFleets"
                                       :input list-fleets-input :output
                                       list-fleets-output :errors
                                       (internal-service-exception
                                        invalid-request-exception
                                        not-found-exception
                                        unauthorized-exception))

(smithy/sdk/operation:define-operation list-game-server-groups :shape-name
                                       "ListGameServerGroups" :input
                                       list-game-server-groups-input :output
                                       list-game-server-groups-output :errors
                                       (internal-service-exception
                                        invalid-request-exception
                                        unauthorized-exception))

(smithy/sdk/operation:define-operation list-game-servers :shape-name
                                       "ListGameServers" :input
                                       list-game-servers-input :output
                                       list-game-servers-output :errors
                                       (internal-service-exception
                                        invalid-request-exception
                                        unauthorized-exception))

(smithy/sdk/operation:define-operation list-locations :shape-name
                                       "ListLocations" :input
                                       list-locations-input :output
                                       list-locations-output :errors
                                       (internal-service-exception
                                        invalid-request-exception
                                        unauthorized-exception))

(smithy/sdk/operation:define-operation list-scripts :shape-name "ListScripts"
                                       :input list-scripts-input :output
                                       list-scripts-output :errors
                                       (internal-service-exception
                                        invalid-request-exception
                                        unauthorized-exception))

(smithy/sdk/operation:define-operation list-tags-for-resource :shape-name
                                       "ListTagsForResource" :input
                                       list-tags-for-resource-request :output
                                       list-tags-for-resource-response :errors
                                       (internal-service-exception
                                        invalid-request-exception
                                        not-found-exception
                                        tagging-failed-exception
                                        unsupported-region-exception))

(smithy/sdk/operation:define-operation put-scaling-policy :shape-name
                                       "PutScalingPolicy" :input
                                       put-scaling-policy-input :output
                                       put-scaling-policy-output :errors
                                       (internal-service-exception
                                        invalid-request-exception
                                        not-found-exception
                                        unauthorized-exception
                                        unsupported-region-exception))

(smithy/sdk/operation:define-operation register-compute :shape-name
                                       "RegisterCompute" :input
                                       register-compute-input :output
                                       register-compute-output :errors
                                       (conflict-exception
                                        internal-service-exception
                                        invalid-request-exception
                                        limit-exceeded-exception
                                        not-ready-exception
                                        unauthorized-exception))

(smithy/sdk/operation:define-operation register-game-server :shape-name
                                       "RegisterGameServer" :input
                                       register-game-server-input :output
                                       register-game-server-output :errors
                                       (conflict-exception
                                        internal-service-exception
                                        invalid-request-exception
                                        limit-exceeded-exception
                                        unauthorized-exception))

(smithy/sdk/operation:define-operation request-upload-credentials :shape-name
                                       "RequestUploadCredentials" :input
                                       request-upload-credentials-input :output
                                       request-upload-credentials-output
                                       :errors
                                       (internal-service-exception
                                        invalid-request-exception
                                        not-found-exception
                                        unauthorized-exception))

(smithy/sdk/operation:define-operation resolve-alias :shape-name "ResolveAlias"
                                       :input resolve-alias-input :output
                                       resolve-alias-output :errors
                                       (internal-service-exception
                                        invalid-request-exception
                                        not-found-exception
                                        terminal-routing-strategy-exception
                                        unauthorized-exception))

(smithy/sdk/operation:define-operation resume-game-server-group :shape-name
                                       "ResumeGameServerGroup" :input
                                       resume-game-server-group-input :output
                                       resume-game-server-group-output :errors
                                       (internal-service-exception
                                        invalid-request-exception
                                        not-found-exception
                                        unauthorized-exception))

(smithy/sdk/operation:define-operation search-game-sessions :shape-name
                                       "SearchGameSessions" :input
                                       search-game-sessions-input :output
                                       search-game-sessions-output :errors
                                       (internal-service-exception
                                        invalid-request-exception
                                        not-found-exception
                                        terminal-routing-strategy-exception
                                        unauthorized-exception
                                        unsupported-region-exception))

(smithy/sdk/operation:define-operation start-fleet-actions :shape-name
                                       "StartFleetActions" :input
                                       start-fleet-actions-input :output
                                       start-fleet-actions-output :errors
                                       (internal-service-exception
                                        invalid-request-exception
                                        not-found-exception
                                        unauthorized-exception
                                        unsupported-region-exception))

(smithy/sdk/operation:define-operation start-game-session-placement :shape-name
                                       "StartGameSessionPlacement" :input
                                       start-game-session-placement-input
                                       :output
                                       start-game-session-placement-output
                                       :errors
                                       (internal-service-exception
                                        invalid-request-exception
                                        not-found-exception
                                        unauthorized-exception
                                        unsupported-region-exception))

(smithy/sdk/operation:define-operation start-match-backfill :shape-name
                                       "StartMatchBackfill" :input
                                       start-match-backfill-input :output
                                       start-match-backfill-output :errors
                                       (internal-service-exception
                                        invalid-request-exception
                                        not-found-exception
                                        unsupported-region-exception))

(smithy/sdk/operation:define-operation start-matchmaking :shape-name
                                       "StartMatchmaking" :input
                                       start-matchmaking-input :output
                                       start-matchmaking-output :errors
                                       (internal-service-exception
                                        invalid-request-exception
                                        not-found-exception
                                        unsupported-region-exception))

(smithy/sdk/operation:define-operation stop-fleet-actions :shape-name
                                       "StopFleetActions" :input
                                       stop-fleet-actions-input :output
                                       stop-fleet-actions-output :errors
                                       (internal-service-exception
                                        invalid-request-exception
                                        not-found-exception
                                        unauthorized-exception
                                        unsupported-region-exception))

(smithy/sdk/operation:define-operation stop-game-session-placement :shape-name
                                       "StopGameSessionPlacement" :input
                                       stop-game-session-placement-input
                                       :output
                                       stop-game-session-placement-output
                                       :errors
                                       (internal-service-exception
                                        invalid-request-exception
                                        not-found-exception
                                        unauthorized-exception))

(smithy/sdk/operation:define-operation stop-matchmaking :shape-name
                                       "StopMatchmaking" :input
                                       stop-matchmaking-input :output
                                       stop-matchmaking-output :errors
                                       (internal-service-exception
                                        invalid-request-exception
                                        not-found-exception
                                        unsupported-region-exception))

(smithy/sdk/operation:define-operation suspend-game-server-group :shape-name
                                       "SuspendGameServerGroup" :input
                                       suspend-game-server-group-input :output
                                       suspend-game-server-group-output :errors
                                       (internal-service-exception
                                        invalid-request-exception
                                        not-found-exception
                                        unauthorized-exception))

(smithy/sdk/operation:define-operation tag-resource :shape-name "TagResource"
                                       :input tag-resource-request :output
                                       tag-resource-response :errors
                                       (internal-service-exception
                                        invalid-request-exception
                                        not-found-exception
                                        tagging-failed-exception
                                        unsupported-region-exception))

(smithy/sdk/operation:define-operation terminate-game-session :shape-name
                                       "TerminateGameSession" :input
                                       terminate-game-session-input :output
                                       terminate-game-session-output :errors
                                       (internal-service-exception
                                        invalid-game-session-status-exception
                                        invalid-request-exception
                                        not-found-exception not-ready-exception
                                        unauthorized-exception))

(smithy/sdk/operation:define-operation untag-resource :shape-name
                                       "UntagResource" :input
                                       untag-resource-request :output
                                       untag-resource-response :errors
                                       (internal-service-exception
                                        invalid-request-exception
                                        not-found-exception
                                        tagging-failed-exception
                                        unsupported-region-exception))

(smithy/sdk/operation:define-operation update-alias :shape-name "UpdateAlias"
                                       :input update-alias-input :output
                                       update-alias-output :errors
                                       (internal-service-exception
                                        invalid-request-exception
                                        not-found-exception
                                        unauthorized-exception))

(smithy/sdk/operation:define-operation update-build :shape-name "UpdateBuild"
                                       :input update-build-input :output
                                       update-build-output :errors
                                       (internal-service-exception
                                        invalid-request-exception
                                        not-found-exception
                                        unauthorized-exception))

(smithy/sdk/operation:define-operation update-container-fleet :shape-name
                                       "UpdateContainerFleet" :input
                                       update-container-fleet-input :output
                                       update-container-fleet-output :errors
                                       (internal-service-exception
                                        invalid-request-exception
                                        limit-exceeded-exception
                                        not-found-exception not-ready-exception
                                        unauthorized-exception
                                        unsupported-region-exception))

(smithy/sdk/operation:define-operation update-container-group-definition
                                       :shape-name
                                       "UpdateContainerGroupDefinition" :input
                                       update-container-group-definition-input
                                       :output
                                       update-container-group-definition-output
                                       :errors
                                       (internal-service-exception
                                        invalid-request-exception
                                        limit-exceeded-exception
                                        not-found-exception
                                        unauthorized-exception
                                        unsupported-region-exception))

(smithy/sdk/operation:define-operation update-fleet-attributes :shape-name
                                       "UpdateFleetAttributes" :input
                                       update-fleet-attributes-input :output
                                       update-fleet-attributes-output :errors
                                       (conflict-exception
                                        internal-service-exception
                                        invalid-fleet-status-exception
                                        invalid-request-exception
                                        limit-exceeded-exception
                                        not-found-exception
                                        unauthorized-exception))

(smithy/sdk/operation:define-operation update-fleet-capacity :shape-name
                                       "UpdateFleetCapacity" :input
                                       update-fleet-capacity-input :output
                                       update-fleet-capacity-output :errors
                                       (conflict-exception
                                        internal-service-exception
                                        invalid-fleet-status-exception
                                        invalid-request-exception
                                        limit-exceeded-exception
                                        not-found-exception
                                        unauthorized-exception
                                        unsupported-region-exception))

(smithy/sdk/operation:define-operation update-fleet-port-settings :shape-name
                                       "UpdateFleetPortSettings" :input
                                       update-fleet-port-settings-input :output
                                       update-fleet-port-settings-output
                                       :errors
                                       (conflict-exception
                                        internal-service-exception
                                        invalid-fleet-status-exception
                                        invalid-request-exception
                                        limit-exceeded-exception
                                        not-found-exception
                                        unauthorized-exception))

(smithy/sdk/operation:define-operation update-game-server :shape-name
                                       "UpdateGameServer" :input
                                       update-game-server-input :output
                                       update-game-server-output :errors
                                       (internal-service-exception
                                        invalid-request-exception
                                        not-found-exception
                                        unauthorized-exception))

(smithy/sdk/operation:define-operation update-game-server-group :shape-name
                                       "UpdateGameServerGroup" :input
                                       update-game-server-group-input :output
                                       update-game-server-group-output :errors
                                       (internal-service-exception
                                        invalid-request-exception
                                        not-found-exception
                                        unauthorized-exception))

(smithy/sdk/operation:define-operation update-game-session :shape-name
                                       "UpdateGameSession" :input
                                       update-game-session-input :output
                                       update-game-session-output :errors
                                       (conflict-exception
                                        internal-service-exception
                                        invalid-game-session-status-exception
                                        invalid-request-exception
                                        not-found-exception
                                        unauthorized-exception))

(smithy/sdk/operation:define-operation update-game-session-queue :shape-name
                                       "UpdateGameSessionQueue" :input
                                       update-game-session-queue-input :output
                                       update-game-session-queue-output :errors
                                       (internal-service-exception
                                        invalid-request-exception
                                        not-found-exception
                                        unauthorized-exception))

(smithy/sdk/operation:define-operation update-matchmaking-configuration
                                       :shape-name
                                       "UpdateMatchmakingConfiguration" :input
                                       update-matchmaking-configuration-input
                                       :output
                                       update-matchmaking-configuration-output
                                       :errors
                                       (internal-service-exception
                                        invalid-request-exception
                                        not-found-exception
                                        unsupported-region-exception))

(smithy/sdk/operation:define-operation update-runtime-configuration :shape-name
                                       "UpdateRuntimeConfiguration" :input
                                       update-runtime-configuration-input
                                       :output
                                       update-runtime-configuration-output
                                       :errors
                                       (internal-service-exception
                                        invalid-fleet-status-exception
                                        invalid-request-exception
                                        limit-exceeded-exception
                                        not-found-exception
                                        unauthorized-exception))

(smithy/sdk/operation:define-operation update-script :shape-name "UpdateScript"
                                       :input update-script-input :output
                                       update-script-output :errors
                                       (internal-service-exception
                                        invalid-request-exception
                                        not-found-exception
                                        unauthorized-exception))

(smithy/sdk/operation:define-operation validate-matchmaking-rule-set
                                       :shape-name "ValidateMatchmakingRuleSet"
                                       :input
                                       validate-matchmaking-rule-set-input
                                       :output
                                       validate-matchmaking-rule-set-output
                                       :errors
                                       (internal-service-exception
                                        invalid-request-exception
                                        unsupported-region-exception))
