(uiop/package:define-package #:pira/auto-scaling (:use)
                             (:export #:accelerator-count-request
                              #:accelerator-manufacturer
                              #:accelerator-manufacturers #:accelerator-name
                              #:accelerator-names
                              #:accelerator-total-memory-mi-brequest
                              #:accelerator-type #:accelerator-types
                              #:active-instance-refresh-not-found-fault
                              #:activities #:activities-type #:activity
                              #:activity-ids #:activity-type #:adjustment-type
                              #:adjustment-types #:alarm #:alarm-list
                              #:alarm-specification #:alarms
                              #:allowed-instance-type #:allowed-instance-types
                              #:already-exists-fault
                              #:any-printable-ascii-string-max-len4000
                              #:ascii-string-max-len255
                              #:associate-public-ip-address #:attach-instances
                              #:attach-instances-query
                              #:attach-load-balancer-target-groups
                              #:attach-load-balancer-target-groups-result-type
                              #:attach-load-balancer-target-groups-type
                              #:attach-load-balancers
                              #:attach-load-balancers-result-type
                              #:attach-load-balancers-type
                              #:attach-traffic-sources
                              #:attach-traffic-sources-result-type
                              #:attach-traffic-sources-type #:auto-rollback
                              #:auto-scaling-group
                              #:auto-scaling-group-desired-capacity
                              #:auto-scaling-group-max-size
                              #:auto-scaling-group-min-size
                              #:auto-scaling-group-names
                              #:auto-scaling-group-names-type
                              #:auto-scaling-group-predicted-capacity
                              #:auto-scaling-group-state #:auto-scaling-groups
                              #:auto-scaling-groups-type
                              #:auto-scaling-instance-details
                              #:auto-scaling-instances
                              #:auto-scaling-instances-type
                              #:auto-scaling-notification-types
                              #:auto-scaling-2011-01-01
                              #:availability-zone-distribution
                              #:availability-zone-impairment-policy
                              #:availability-zones #:bake-time #:bare-metal
                              #:baseline-ebs-bandwidth-mbps-request
                              #:baseline-performance-factors-request
                              #:batch-delete-scheduled-action
                              #:batch-delete-scheduled-action-answer
                              #:batch-delete-scheduled-action-type
                              #:batch-put-scheduled-update-group-action
                              #:batch-put-scheduled-update-group-action-answer
                              #:batch-put-scheduled-update-group-action-type
                              #:block-device-ebs-delete-on-termination
                              #:block-device-ebs-encrypted
                              #:block-device-ebs-iops
                              #:block-device-ebs-throughput
                              #:block-device-ebs-volume-size
                              #:block-device-ebs-volume-type
                              #:block-device-mapping #:block-device-mappings
                              #:burstable-performance #:cancel-instance-refresh
                              #:cancel-instance-refresh-answer
                              #:cancel-instance-refresh-type
                              #:capacity-distribution-strategy
                              #:capacity-forecast #:capacity-rebalance-enabled
                              #:capacity-reservation-ids
                              #:capacity-reservation-preference
                              #:capacity-reservation-resource-group-arns
                              #:capacity-reservation-specification
                              #:capacity-reservation-target #:checkpoint-delay
                              #:checkpoint-percentages
                              #:classic-link-vpcsecurity-groups
                              #:complete-lifecycle-action
                              #:complete-lifecycle-action-answer
                              #:complete-lifecycle-action-type #:context
                              #:cooldown #:cpu-manufacturer #:cpu-manufacturers
                              #:cpu-performance-factor-request
                              #:create-auto-scaling-group
                              #:create-auto-scaling-group-type
                              #:create-launch-configuration
                              #:create-launch-configuration-type
                              #:create-or-update-tags
                              #:create-or-update-tags-type
                              #:customized-metric-specification
                              #:default-instance-warmup
                              #:delete-auto-scaling-group
                              #:delete-auto-scaling-group-type
                              #:delete-launch-configuration
                              #:delete-lifecycle-hook
                              #:delete-lifecycle-hook-answer
                              #:delete-lifecycle-hook-type
                              #:delete-notification-configuration
                              #:delete-notification-configuration-type
                              #:delete-policy #:delete-policy-type
                              #:delete-scheduled-action
                              #:delete-scheduled-action-type #:delete-tags
                              #:delete-tags-type #:delete-warm-pool
                              #:delete-warm-pool-answer #:delete-warm-pool-type
                              #:describe-account-limits
                              #:describe-account-limits-answer
                              #:describe-adjustment-types
                              #:describe-adjustment-types-answer
                              #:describe-auto-scaling-groups
                              #:describe-auto-scaling-instances
                              #:describe-auto-scaling-instances-type
                              #:describe-auto-scaling-notification-types
                              #:describe-auto-scaling-notification-types-answer
                              #:describe-instance-refreshes
                              #:describe-instance-refreshes-answer
                              #:describe-instance-refreshes-type
                              #:describe-launch-configurations
                              #:describe-lifecycle-hook-types
                              #:describe-lifecycle-hook-types-answer
                              #:describe-lifecycle-hooks
                              #:describe-lifecycle-hooks-answer
                              #:describe-lifecycle-hooks-type
                              #:describe-load-balancer-target-groups
                              #:describe-load-balancer-target-groups-request
                              #:describe-load-balancer-target-groups-response
                              #:describe-load-balancers
                              #:describe-load-balancers-request
                              #:describe-load-balancers-response
                              #:describe-metric-collection-types
                              #:describe-metric-collection-types-answer
                              #:describe-notification-configurations
                              #:describe-notification-configurations-answer
                              #:describe-notification-configurations-type
                              #:describe-policies #:describe-policies-type
                              #:describe-scaling-activities
                              #:describe-scaling-activities-type
                              #:describe-scaling-process-types
                              #:describe-scheduled-actions
                              #:describe-scheduled-actions-type #:describe-tags
                              #:describe-tags-type
                              #:describe-termination-policy-types
                              #:describe-termination-policy-types-answer
                              #:describe-traffic-sources
                              #:describe-traffic-sources-request
                              #:describe-traffic-sources-response
                              #:describe-warm-pool #:describe-warm-pool-answer
                              #:describe-warm-pool-type #:desired-configuration
                              #:detach-instances #:detach-instances-answer
                              #:detach-instances-query
                              #:detach-load-balancer-target-groups
                              #:detach-load-balancer-target-groups-result-type
                              #:detach-load-balancer-target-groups-type
                              #:detach-load-balancers
                              #:detach-load-balancers-result-type
                              #:detach-load-balancers-type
                              #:detach-traffic-sources
                              #:detach-traffic-sources-result-type
                              #:detach-traffic-sources-type
                              #:disable-metrics-collection
                              #:disable-metrics-collection-query
                              #:disable-scale-in #:ebs #:ebs-optimized
                              #:enable-metrics-collection
                              #:enable-metrics-collection-query
                              #:enabled-metric #:enabled-metrics
                              #:enter-standby #:enter-standby-answer
                              #:enter-standby-query #:estimated-instance-warmup
                              #:excluded-instance #:excluded-instance-types
                              #:execute-policy #:execute-policy-type
                              #:exit-standby #:exit-standby-answer
                              #:exit-standby-query
                              #:failed-scheduled-update-group-action-request
                              #:failed-scheduled-update-group-action-requests
                              #:filter #:filters #:force-delete
                              #:get-predictive-scaling-forecast
                              #:get-predictive-scaling-forecast-answer
                              #:get-predictive-scaling-forecast-type
                              #:global-timeout #:health-check-grace-period
                              #:heartbeat-timeout #:honor-cooldown
                              #:impaired-zone-health-check-behavior
                              #:include-deleted-groups #:include-instances
                              #:instance #:instance-generation
                              #:instance-generations #:instance-ids
                              #:instance-maintenance-policy
                              #:instance-metadata-endpoint-state
                              #:instance-metadata-http-put-response-hop-limit
                              #:instance-metadata-http-tokens-state
                              #:instance-metadata-options #:instance-monitoring
                              #:instance-protected #:instance-refresh
                              #:instance-refresh-ids
                              #:instance-refresh-in-progress-fault
                              #:instance-refresh-live-pool-progress
                              #:instance-refresh-progress-details
                              #:instance-refresh-status
                              #:instance-refresh-warm-pool-progress
                              #:instance-refreshes #:instance-requirements
                              #:instance-reuse-policy #:instances
                              #:instances-distribution #:instances-to-update
                              #:int-percent #:int-percent100to200
                              #:int-percent100to200resettable
                              #:int-percent-resettable #:invalid-next-token
                              #:irreversible-instance-refresh-fault
                              #:launch-configuration
                              #:launch-configuration-name-type
                              #:launch-configuration-names
                              #:launch-configuration-names-type
                              #:launch-configurations
                              #:launch-configurations-type #:launch-template
                              #:launch-template-name
                              #:launch-template-overrides
                              #:launch-template-specification
                              #:lifecycle-action-result
                              #:lifecycle-action-token #:lifecycle-hook
                              #:lifecycle-hook-names
                              #:lifecycle-hook-specification
                              #:lifecycle-hook-specifications #:lifecycle-hooks
                              #:lifecycle-state #:lifecycle-transition
                              #:limit-exceeded-fault #:load-balancer-names
                              #:load-balancer-state #:load-balancer-states
                              #:load-balancer-target-group-state
                              #:load-balancer-target-group-states
                              #:load-forecast #:load-forecasts #:local-storage
                              #:local-storage-type #:local-storage-types
                              #:max-group-prepared-capacity
                              #:max-instance-lifetime
                              #:max-number-of-auto-scaling-groups
                              #:max-number-of-launch-configurations
                              #:max-records #:memory-gi-bper-vcpu-request
                              #:memory-mi-brequest #:metric
                              #:metric-collection-type
                              #:metric-collection-types #:metric-data-queries
                              #:metric-data-query #:metric-dimension
                              #:metric-dimension-name #:metric-dimension-value
                              #:metric-dimensions
                              #:metric-granularity-in-seconds
                              #:metric-granularity-type
                              #:metric-granularity-types #:metric-name
                              #:metric-namespace #:metric-scale #:metric-stat
                              #:metric-statistic #:metric-type #:metric-unit
                              #:metrics #:min-adjustment-magnitude
                              #:min-adjustment-step #:mixed-instance-spot-price
                              #:mixed-instances-policy #:monitoring-enabled
                              #:network-bandwidth-gbps-request
                              #:network-interface-count-request #:no-device
                              #:non-zero-int-percent
                              #:notification-configuration
                              #:notification-configurations
                              #:notification-target-resource-name
                              #:nullable-boolean #:nullable-positive-double
                              #:nullable-positive-integer
                              #:number-of-auto-scaling-groups
                              #:number-of-launch-configurations
                              #:on-demand-base-capacity
                              #:on-demand-percentage-above-base-capacity
                              #:overrides
                              #:performance-factor-reference-request
                              #:performance-factor-reference-set-request
                              #:policies-type #:policy-arntype
                              #:policy-increment #:policy-names #:policy-types
                              #:predefined-load-metric-type
                              #:predefined-metric-pair-type
                              #:predefined-metric-specification
                              #:predefined-scaling-metric-type
                              #:predictive-scaling-configuration
                              #:predictive-scaling-customized-capacity-metric
                              #:predictive-scaling-customized-load-metric
                              #:predictive-scaling-customized-scaling-metric
                              #:predictive-scaling-forecast-timestamps
                              #:predictive-scaling-forecast-values
                              #:predictive-scaling-max-capacity-breach-behavior
                              #:predictive-scaling-max-capacity-buffer
                              #:predictive-scaling-metric-specification
                              #:predictive-scaling-metric-specifications
                              #:predictive-scaling-mode
                              #:predictive-scaling-predefined-load-metric
                              #:predictive-scaling-predefined-metric-pair
                              #:predictive-scaling-predefined-scaling-metric
                              #:predictive-scaling-scheduling-buffer-time
                              #:process-names #:process-type #:processes
                              #:processes-type #:progress #:propagate-at-launch
                              #:protected-from-scale-in #:put-lifecycle-hook
                              #:put-lifecycle-hook-answer
                              #:put-lifecycle-hook-type
                              #:put-notification-configuration
                              #:put-notification-configuration-type
                              #:put-scaling-policy #:put-scaling-policy-type
                              #:put-scheduled-update-group-action
                              #:put-scheduled-update-group-action-type
                              #:put-warm-pool #:put-warm-pool-answer
                              #:put-warm-pool-type
                              #:record-lifecycle-action-heartbeat
                              #:record-lifecycle-action-heartbeat-answer
                              #:record-lifecycle-action-heartbeat-type
                              #:refresh-instance-warmup #:refresh-preferences
                              #:refresh-strategy #:resource-contention-fault
                              #:resource-in-use-fault #:resource-name
                              #:resume-processes #:return-data
                              #:reuse-on-scale-in #:rollback-details
                              #:rollback-instance-refresh
                              #:rollback-instance-refresh-answer
                              #:rollback-instance-refresh-type
                              #:scale-in-protected-instances
                              #:scaling-activity-in-progress-fault
                              #:scaling-activity-status-code #:scaling-policies
                              #:scaling-policy #:scaling-policy-enabled
                              #:scaling-process-query #:scheduled-action-names
                              #:scheduled-actions-type
                              #:scheduled-update-group-action
                              #:scheduled-update-group-action-request
                              #:scheduled-update-group-action-requests
                              #:scheduled-update-group-actions
                              #:security-groups #:service-linked-role-failure
                              #:set-desired-capacity
                              #:set-desired-capacity-type #:set-instance-health
                              #:set-instance-health-query
                              #:set-instance-protection
                              #:set-instance-protection-answer
                              #:set-instance-protection-query
                              #:should-decrement-desired-capacity
                              #:should-respect-grace-period #:skip-matching
                              #:skip-zonal-shift-validation
                              #:spot-instance-pools #:spot-price
                              #:standby-instances #:start-instance-refresh
                              #:start-instance-refresh-answer
                              #:start-instance-refresh-type #:step-adjustment
                              #:step-adjustments #:string #:suspend-processes
                              #:suspended-process #:suspended-processes #:tag
                              #:tag-description #:tag-description-list
                              #:tag-key #:tag-value #:tags #:tags-type
                              #:target-group-arns
                              #:target-tracking-configuration
                              #:target-tracking-metric-data-queries
                              #:target-tracking-metric-data-query
                              #:target-tracking-metric-stat
                              #:terminate-instance-in-auto-scaling-group
                              #:terminate-instance-in-auto-scaling-group-type
                              #:termination-policies #:timestamp-type
                              #:total-local-storage-gbrequest
                              #:traffic-source-identifier
                              #:traffic-source-state #:traffic-source-states
                              #:traffic-sources #:update-auto-scaling-group
                              #:update-auto-scaling-group-type
                              #:update-placement-group-param
                              #:vcpu-count-request #:values
                              #:warm-pool-configuration #:warm-pool-min-size
                              #:warm-pool-size #:warm-pool-state
                              #:warm-pool-status #:xml-string
                              #:xml-string-max-len1023 #:xml-string-max-len1600
                              #:xml-string-max-len19 #:xml-string-max-len2047
                              #:xml-string-max-len255 #:xml-string-max-len32
                              #:xml-string-max-len5000 #:xml-string-max-len511
                              #:xml-string-max-len64 #:xml-string-metric-label
                              #:xml-string-metric-stat #:xml-string-user-data
                              #:zonal-shift-enabled))
(common-lisp:in-package #:pira/auto-scaling)

(smithy/sdk/service:define-service auto-scaling-2011-01-01 :shape-name
                                   "AutoScaling_2011_01_01" :version
                                   "2011-01-01" :title "Auto Scaling"
                                   :xml-namespace
                                   '(:uri
                                     "http://autoscaling.amazonaws.com/doc/2011-01-01/"
                                     :prefix common-lisp:nil)
                                   :traits
                                   '(("aws.api#service"
                                      ("sdkId" . "Auto Scaling")
                                      ("arnNamespace" . "autoscaling")
                                      ("cloudFormationName" . "AutoScaling")
                                      ("cloudTrailEventSource"
                                       . "autoscaling.amazonaws.com")
                                      ("docId" . "autoscaling-2011-01-01")
                                      ("endpointPrefix" . "autoscaling"))
                                     ("aws.auth#sigv4"
                                      ("name" . "autoscaling"))
                                     ("aws.protocols#awsQuery")))

(smithy/sdk/shapes:define-structure accelerator-count-request common-lisp:nil
                                    ((min :target-type
                                      nullable-positive-integer :member-name
                                      "Min")
                                     (max :target-type
                                      nullable-positive-integer :member-name
                                      "Max"))
                                    (:shape-name "AcceleratorCountRequest"))

(smithy/sdk/shapes:define-enum accelerator-manufacturer
    common-lisp:nil
  (:nvidia "nvidia")
  (:amd "amd")
  (:amazon-web-services "amazon-web-services")
  (:xilinx "xilinx"))

(smithy/sdk/shapes:define-list accelerator-manufacturers :member
                               accelerator-manufacturer)

(smithy/sdk/shapes:define-enum accelerator-name
    common-lisp:nil
  (:a100 "a100")
  (:v100 "v100")
  (:k80 "k80")
  (:t4 "t4")
  (:m60 "m60")
  (:radeon-pro-v520 "radeon-pro-v520")
  (:vu9p "vu9p"))

(smithy/sdk/shapes:define-list accelerator-names :member accelerator-name)

(smithy/sdk/shapes:define-structure accelerator-total-memory-mi-brequest
                                    common-lisp:nil
                                    ((min :target-type
                                      nullable-positive-integer :member-name
                                      "Min")
                                     (max :target-type
                                      nullable-positive-integer :member-name
                                      "Max"))
                                    (:shape-name
                                     "AcceleratorTotalMemoryMiBRequest"))

(smithy/sdk/shapes:define-enum accelerator-type
    common-lisp:nil
  (:gpu "gpu")
  (:fpga "fpga")
  (:inference "inference"))

(smithy/sdk/shapes:define-list accelerator-types :member accelerator-type)

(smithy/sdk/shapes:define-error active-instance-refresh-not-found-fault
                                common-lisp:nil
                                ((message :target-type xml-string-max-len255
                                  :member-name "message"))
                                (:shape-name
                                 "ActiveInstanceRefreshNotFoundFault")
                                (:error-code 400))

(smithy/sdk/shapes:define-list activities :member activity)

(smithy/sdk/shapes:define-structure activities-type common-lisp:nil
                                    ((activities :target-type activities
                                      :required common-lisp:t :member-name
                                      "Activities")
                                     (next-token :target-type xml-string
                                      :member-name "NextToken"))
                                    (:shape-name "ActivitiesType"))

(smithy/sdk/shapes:define-structure activity common-lisp:nil
                                    ((activity-id :target-type xml-string
                                      :required common-lisp:t :member-name
                                      "ActivityId")
                                     (auto-scaling-group-name :target-type
                                      xml-string-max-len255 :required
                                      common-lisp:t :member-name
                                      "AutoScalingGroupName")
                                     (description :target-type xml-string
                                      :member-name "Description")
                                     (cause :target-type xml-string-max-len1023
                                      :required common-lisp:t :member-name
                                      "Cause")
                                     (start-time :target-type timestamp-type
                                      :required common-lisp:t :member-name
                                      "StartTime")
                                     (end-time :target-type timestamp-type
                                      :member-name "EndTime")
                                     (status-code :target-type
                                      scaling-activity-status-code :required
                                      common-lisp:t :member-name "StatusCode")
                                     (status-message :target-type
                                      xml-string-max-len255 :member-name
                                      "StatusMessage")
                                     (progress :target-type progress
                                      :member-name "Progress")
                                     (details :target-type xml-string
                                      :member-name "Details")
                                     (auto-scaling-group-state :target-type
                                      auto-scaling-group-state :member-name
                                      "AutoScalingGroupState")
                                     (auto-scaling-group-arn :target-type
                                      resource-name :member-name
                                      "AutoScalingGroupARN"))
                                    (:shape-name "Activity"))

(smithy/sdk/shapes:define-list activity-ids :member xml-string)

(smithy/sdk/shapes:define-structure activity-type common-lisp:nil
                                    ((activity :target-type activity
                                      :member-name "Activity"))
                                    (:shape-name "ActivityType"))

(smithy/sdk/shapes:define-structure adjustment-type common-lisp:nil
                                    ((adjustment-type :target-type
                                      xml-string-max-len255 :member-name
                                      "AdjustmentType"))
                                    (:shape-name "AdjustmentType"))

(smithy/sdk/shapes:define-list adjustment-types :member adjustment-type)

(smithy/sdk/shapes:define-structure alarm common-lisp:nil
                                    ((alarm-name :target-type
                                      xml-string-max-len255 :member-name
                                      "AlarmName")
                                     (alarm-arn :target-type resource-name
                                      :member-name "AlarmARN"))
                                    (:shape-name "Alarm"))

(smithy/sdk/shapes:define-list alarm-list :member xml-string-max-len255)

(smithy/sdk/shapes:define-structure alarm-specification common-lisp:nil
                                    ((alarms :target-type alarm-list
                                      :member-name "Alarms"))
                                    (:shape-name "AlarmSpecification"))

(smithy/sdk/shapes:define-list alarms :member alarm)

(smithy/sdk/shapes:define-type allowed-instance-type
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list allowed-instance-types :member
                               allowed-instance-type)

(smithy/sdk/shapes:define-error already-exists-fault common-lisp:nil
                                ((message :target-type xml-string-max-len255
                                  :member-name "message"))
                                (:shape-name "AlreadyExistsFault")
                                (:error-code 400))

(smithy/sdk/shapes:define-type any-printable-ascii-string-max-len4000
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type ascii-string-max-len255
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type associate-public-ip-address
                               smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-structure attach-instances-query common-lisp:nil
                                    ((instance-ids :target-type instance-ids
                                      :member-name "InstanceIds")
                                     (auto-scaling-group-name :target-type
                                      xml-string-max-len255 :required
                                      common-lisp:t :member-name
                                      "AutoScalingGroupName"))
                                    (:shape-name "AttachInstancesQuery"))

(smithy/sdk/shapes:define-structure
 attach-load-balancer-target-groups-result-type common-lisp:nil common-lisp:nil
 (:shape-name "AttachLoadBalancerTargetGroupsResultType"))

(smithy/sdk/shapes:define-structure attach-load-balancer-target-groups-type
                                    common-lisp:nil
                                    ((auto-scaling-group-name :target-type
                                      xml-string-max-len255 :required
                                      common-lisp:t :member-name
                                      "AutoScalingGroupName")
                                     (target-group-arns :target-type
                                      target-group-arns :required common-lisp:t
                                      :member-name "TargetGroupARNs"))
                                    (:shape-name
                                     "AttachLoadBalancerTargetGroupsType"))

(smithy/sdk/shapes:define-structure attach-load-balancers-result-type
                                    common-lisp:nil common-lisp:nil
                                    (:shape-name
                                     "AttachLoadBalancersResultType"))

(smithy/sdk/shapes:define-structure attach-load-balancers-type common-lisp:nil
                                    ((auto-scaling-group-name :target-type
                                      xml-string-max-len255 :required
                                      common-lisp:t :member-name
                                      "AutoScalingGroupName")
                                     (load-balancer-names :target-type
                                      load-balancer-names :required
                                      common-lisp:t :member-name
                                      "LoadBalancerNames"))
                                    (:shape-name "AttachLoadBalancersType"))

(smithy/sdk/shapes:define-structure attach-traffic-sources-result-type
                                    common-lisp:nil common-lisp:nil
                                    (:shape-name
                                     "AttachTrafficSourcesResultType"))

(smithy/sdk/shapes:define-structure attach-traffic-sources-type common-lisp:nil
                                    ((auto-scaling-group-name :target-type
                                      xml-string-max-len255 :required
                                      common-lisp:t :member-name
                                      "AutoScalingGroupName")
                                     (traffic-sources :target-type
                                      traffic-sources :required common-lisp:t
                                      :member-name "TrafficSources")
                                     (skip-zonal-shift-validation :target-type
                                      skip-zonal-shift-validation :member-name
                                      "SkipZonalShiftValidation"))
                                    (:shape-name "AttachTrafficSourcesType"))

(smithy/sdk/shapes:define-type auto-rollback smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-structure auto-scaling-group common-lisp:nil
                                    ((auto-scaling-group-name :target-type
                                      xml-string-max-len255 :required
                                      common-lisp:t :member-name
                                      "AutoScalingGroupName")
                                     (auto-scaling-group-arn :target-type
                                      resource-name :member-name
                                      "AutoScalingGroupARN")
                                     (launch-configuration-name :target-type
                                      xml-string-max-len255 :member-name
                                      "LaunchConfigurationName")
                                     (launch-template :target-type
                                      launch-template-specification
                                      :member-name "LaunchTemplate")
                                     (mixed-instances-policy :target-type
                                      mixed-instances-policy :member-name
                                      "MixedInstancesPolicy")
                                     (min-size :target-type
                                      auto-scaling-group-min-size :required
                                      common-lisp:t :member-name "MinSize")
                                     (max-size :target-type
                                      auto-scaling-group-max-size :required
                                      common-lisp:t :member-name "MaxSize")
                                     (desired-capacity :target-type
                                      auto-scaling-group-desired-capacity
                                      :required common-lisp:t :member-name
                                      "DesiredCapacity")
                                     (predicted-capacity :target-type
                                      auto-scaling-group-predicted-capacity
                                      :member-name "PredictedCapacity")
                                     (default-cooldown :target-type cooldown
                                      :required common-lisp:t :member-name
                                      "DefaultCooldown")
                                     (availability-zones :target-type
                                      availability-zones :required
                                      common-lisp:t :member-name
                                      "AvailabilityZones")
                                     (load-balancer-names :target-type
                                      load-balancer-names :member-name
                                      "LoadBalancerNames")
                                     (target-group-arns :target-type
                                      target-group-arns :member-name
                                      "TargetGroupARNs")
                                     (health-check-type :target-type
                                      xml-string-max-len32 :required
                                      common-lisp:t :member-name
                                      "HealthCheckType")
                                     (health-check-grace-period :target-type
                                      health-check-grace-period :member-name
                                      "HealthCheckGracePeriod")
                                     (instances :target-type instances
                                      :member-name "Instances")
                                     (created-time :target-type timestamp-type
                                      :required common-lisp:t :member-name
                                      "CreatedTime")
                                     (suspended-processes :target-type
                                      suspended-processes :member-name
                                      "SuspendedProcesses")
                                     (placement-group :target-type
                                      xml-string-max-len255 :member-name
                                      "PlacementGroup")
                                     (vpczone-identifier :target-type
                                      xml-string-max-len5000 :member-name
                                      "VPCZoneIdentifier")
                                     (enabled-metrics :target-type
                                      enabled-metrics :member-name
                                      "EnabledMetrics")
                                     (status :target-type xml-string-max-len255
                                      :member-name "Status")
                                     (tags :target-type tag-description-list
                                      :member-name "Tags")
                                     (termination-policies :target-type
                                      termination-policies :member-name
                                      "TerminationPolicies")
                                     (new-instances-protected-from-scale-in
                                      :target-type instance-protected
                                      :member-name
                                      "NewInstancesProtectedFromScaleIn")
                                     (service-linked-role-arn :target-type
                                      resource-name :member-name
                                      "ServiceLinkedRoleARN")
                                     (max-instance-lifetime :target-type
                                      max-instance-lifetime :member-name
                                      "MaxInstanceLifetime")
                                     (capacity-rebalance :target-type
                                      capacity-rebalance-enabled :member-name
                                      "CapacityRebalance")
                                     (warm-pool-configuration :target-type
                                      warm-pool-configuration :member-name
                                      "WarmPoolConfiguration")
                                     (warm-pool-size :target-type
                                      warm-pool-size :member-name
                                      "WarmPoolSize")
                                     (context :target-type context :member-name
                                      "Context")
                                     (desired-capacity-type :target-type
                                      xml-string-max-len255 :member-name
                                      "DesiredCapacityType")
                                     (default-instance-warmup :target-type
                                      default-instance-warmup :member-name
                                      "DefaultInstanceWarmup")
                                     (traffic-sources :target-type
                                      traffic-sources :member-name
                                      "TrafficSources")
                                     (instance-maintenance-policy :target-type
                                      instance-maintenance-policy :member-name
                                      "InstanceMaintenancePolicy")
                                     (availability-zone-distribution
                                      :target-type
                                      availability-zone-distribution
                                      :member-name
                                      "AvailabilityZoneDistribution")
                                     (availability-zone-impairment-policy
                                      :target-type
                                      availability-zone-impairment-policy
                                      :member-name
                                      "AvailabilityZoneImpairmentPolicy")
                                     (capacity-reservation-specification
                                      :target-type
                                      capacity-reservation-specification
                                      :member-name
                                      "CapacityReservationSpecification"))
                                    (:shape-name "AutoScalingGroup"))

(smithy/sdk/shapes:define-type auto-scaling-group-desired-capacity
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type auto-scaling-group-max-size
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type auto-scaling-group-min-size
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-list auto-scaling-group-names :member
                               xml-string-max-len255)

(smithy/sdk/shapes:define-structure auto-scaling-group-names-type
                                    common-lisp:nil
                                    ((auto-scaling-group-names :target-type
                                      auto-scaling-group-names :member-name
                                      "AutoScalingGroupNames")
                                     (include-instances :target-type
                                      include-instances :member-name
                                      "IncludeInstances")
                                     (next-token :target-type xml-string
                                      :member-name "NextToken")
                                     (max-records :target-type max-records
                                      :member-name "MaxRecords")
                                     (filters :target-type filters :member-name
                                      "Filters"))
                                    (:shape-name "AutoScalingGroupNamesType"))

(smithy/sdk/shapes:define-type auto-scaling-group-predicted-capacity
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type auto-scaling-group-state
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list auto-scaling-groups :member auto-scaling-group)

(smithy/sdk/shapes:define-structure auto-scaling-groups-type common-lisp:nil
                                    ((auto-scaling-groups :target-type
                                      auto-scaling-groups :required
                                      common-lisp:t :member-name
                                      "AutoScalingGroups")
                                     (next-token :target-type xml-string
                                      :member-name "NextToken"))
                                    (:shape-name "AutoScalingGroupsType"))

(smithy/sdk/shapes:define-structure auto-scaling-instance-details
                                    common-lisp:nil
                                    ((instance-id :target-type
                                      xml-string-max-len19 :required
                                      common-lisp:t :member-name "InstanceId")
                                     (instance-type :target-type
                                      xml-string-max-len255 :member-name
                                      "InstanceType")
                                     (auto-scaling-group-name :target-type
                                      xml-string-max-len255 :required
                                      common-lisp:t :member-name
                                      "AutoScalingGroupName")
                                     (availability-zone :target-type
                                      xml-string-max-len255 :required
                                      common-lisp:t :member-name
                                      "AvailabilityZone")
                                     (lifecycle-state :target-type
                                      xml-string-max-len32 :required
                                      common-lisp:t :member-name
                                      "LifecycleState")
                                     (health-status :target-type
                                      xml-string-max-len32 :required
                                      common-lisp:t :member-name
                                      "HealthStatus")
                                     (launch-configuration-name :target-type
                                      xml-string-max-len255 :member-name
                                      "LaunchConfigurationName")
                                     (launch-template :target-type
                                      launch-template-specification
                                      :member-name "LaunchTemplate")
                                     (protected-from-scale-in :target-type
                                      instance-protected :required
                                      common-lisp:t :member-name
                                      "ProtectedFromScaleIn")
                                     (weighted-capacity :target-type
                                      xml-string-max-len32 :member-name
                                      "WeightedCapacity"))
                                    (:shape-name "AutoScalingInstanceDetails"))

(smithy/sdk/shapes:define-list auto-scaling-instances :member
                               auto-scaling-instance-details)

(smithy/sdk/shapes:define-structure auto-scaling-instances-type common-lisp:nil
                                    ((auto-scaling-instances :target-type
                                      auto-scaling-instances :member-name
                                      "AutoScalingInstances")
                                     (next-token :target-type xml-string
                                      :member-name "NextToken"))
                                    (:shape-name "AutoScalingInstancesType"))

(smithy/sdk/shapes:define-list auto-scaling-notification-types :member
                               xml-string-max-len255)

(smithy/sdk/shapes:define-structure availability-zone-distribution
                                    common-lisp:nil
                                    ((capacity-distribution-strategy
                                      :target-type
                                      capacity-distribution-strategy
                                      :member-name
                                      "CapacityDistributionStrategy"))
                                    (:shape-name
                                     "AvailabilityZoneDistribution"))

(smithy/sdk/shapes:define-structure availability-zone-impairment-policy
                                    common-lisp:nil
                                    ((zonal-shift-enabled :target-type
                                      zonal-shift-enabled :member-name
                                      "ZonalShiftEnabled")
                                     (impaired-zone-health-check-behavior
                                      :target-type
                                      impaired-zone-health-check-behavior
                                      :member-name
                                      "ImpairedZoneHealthCheckBehavior"))
                                    (:shape-name
                                     "AvailabilityZoneImpairmentPolicy"))

(smithy/sdk/shapes:define-list availability-zones :member xml-string-max-len255)

(smithy/sdk/shapes:define-type bake-time smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-enum bare-metal
    common-lisp:nil
  (:included "included")
  (:excluded "excluded")
  (:required "required"))

(smithy/sdk/shapes:define-structure baseline-ebs-bandwidth-mbps-request
                                    common-lisp:nil
                                    ((min :target-type
                                      nullable-positive-integer :member-name
                                      "Min")
                                     (max :target-type
                                      nullable-positive-integer :member-name
                                      "Max"))
                                    (:shape-name
                                     "BaselineEbsBandwidthMbpsRequest"))

(smithy/sdk/shapes:define-structure baseline-performance-factors-request
                                    common-lisp:nil
                                    ((cpu :target-type
                                      cpu-performance-factor-request
                                      :member-name "Cpu"))
                                    (:shape-name
                                     "BaselinePerformanceFactorsRequest"))

(smithy/sdk/shapes:define-structure batch-delete-scheduled-action-answer
                                    common-lisp:nil
                                    ((failed-scheduled-actions :target-type
                                      failed-scheduled-update-group-action-requests
                                      :member-name "FailedScheduledActions"))
                                    (:shape-name
                                     "BatchDeleteScheduledActionAnswer"))

(smithy/sdk/shapes:define-structure batch-delete-scheduled-action-type
                                    common-lisp:nil
                                    ((auto-scaling-group-name :target-type
                                      xml-string-max-len255 :required
                                      common-lisp:t :member-name
                                      "AutoScalingGroupName")
                                     (scheduled-action-names :target-type
                                      scheduled-action-names :required
                                      common-lisp:t :member-name
                                      "ScheduledActionNames"))
                                    (:shape-name
                                     "BatchDeleteScheduledActionType"))

(smithy/sdk/shapes:define-structure
 batch-put-scheduled-update-group-action-answer common-lisp:nil
 ((failed-scheduled-update-group-actions :target-type
   failed-scheduled-update-group-action-requests :member-name
   "FailedScheduledUpdateGroupActions"))
 (:shape-name "BatchPutScheduledUpdateGroupActionAnswer"))

(smithy/sdk/shapes:define-structure
 batch-put-scheduled-update-group-action-type common-lisp:nil
 ((auto-scaling-group-name :target-type xml-string-max-len255 :required
   common-lisp:t :member-name "AutoScalingGroupName")
  (scheduled-update-group-actions :target-type
   scheduled-update-group-action-requests :required common-lisp:t :member-name
   "ScheduledUpdateGroupActions"))
 (:shape-name "BatchPutScheduledUpdateGroupActionType"))

(smithy/sdk/shapes:define-type block-device-ebs-delete-on-termination
                               smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-type block-device-ebs-encrypted
                               smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-type block-device-ebs-iops
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type block-device-ebs-throughput
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type block-device-ebs-volume-size
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type block-device-ebs-volume-type
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure block-device-mapping common-lisp:nil
                                    ((virtual-name :target-type
                                      xml-string-max-len255 :member-name
                                      "VirtualName")
                                     (device-name :target-type
                                      xml-string-max-len255 :required
                                      common-lisp:t :member-name "DeviceName")
                                     (ebs :target-type ebs :member-name "Ebs")
                                     (no-device :target-type no-device
                                      :member-name "NoDevice"))
                                    (:shape-name "BlockDeviceMapping"))

(smithy/sdk/shapes:define-list block-device-mappings :member
                               block-device-mapping)

(smithy/sdk/shapes:define-enum burstable-performance
    common-lisp:nil
  (:included "included")
  (:excluded "excluded")
  (:required "required"))

(smithy/sdk/shapes:define-structure cancel-instance-refresh-answer
                                    common-lisp:nil
                                    ((instance-refresh-id :target-type
                                      xml-string-max-len255 :member-name
                                      "InstanceRefreshId"))
                                    (:shape-name "CancelInstanceRefreshAnswer"))

(smithy/sdk/shapes:define-structure cancel-instance-refresh-type
                                    common-lisp:nil
                                    ((auto-scaling-group-name :target-type
                                      xml-string-max-len255 :required
                                      common-lisp:t :member-name
                                      "AutoScalingGroupName"))
                                    (:shape-name "CancelInstanceRefreshType"))

(smithy/sdk/shapes:define-enum capacity-distribution-strategy
    common-lisp:nil
  (:balanced-only "balanced-only")
  (:balanced-best-effort "balanced-best-effort"))

(smithy/sdk/shapes:define-structure capacity-forecast common-lisp:nil
                                    ((timestamps :target-type
                                      predictive-scaling-forecast-timestamps
                                      :required common-lisp:t :member-name
                                      "Timestamps")
                                     (values :target-type
                                      predictive-scaling-forecast-values
                                      :required common-lisp:t :member-name
                                      "Values"))
                                    (:shape-name "CapacityForecast"))

(smithy/sdk/shapes:define-type capacity-rebalance-enabled
                               smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-list capacity-reservation-ids :member
                               ascii-string-max-len255)

(smithy/sdk/shapes:define-enum capacity-reservation-preference
    common-lisp:nil
  (:capacity-reservations-only "capacity-reservations-only")
  (:capacity-reservations-first "capacity-reservations-first")
  (:none "none")
  (:default "default"))

(smithy/sdk/shapes:define-list capacity-reservation-resource-group-arns :member
                               resource-name)

(smithy/sdk/shapes:define-structure capacity-reservation-specification
                                    common-lisp:nil
                                    ((capacity-reservation-preference
                                      :target-type
                                      capacity-reservation-preference
                                      :member-name
                                      "CapacityReservationPreference")
                                     (capacity-reservation-target :target-type
                                      capacity-reservation-target :member-name
                                      "CapacityReservationTarget"))
                                    (:shape-name
                                     "CapacityReservationSpecification"))

(smithy/sdk/shapes:define-structure capacity-reservation-target common-lisp:nil
                                    ((capacity-reservation-ids :target-type
                                      capacity-reservation-ids :member-name
                                      "CapacityReservationIds")
                                     (capacity-reservation-resource-group-arns
                                      :target-type
                                      capacity-reservation-resource-group-arns
                                      :member-name
                                      "CapacityReservationResourceGroupArns"))
                                    (:shape-name "CapacityReservationTarget"))

(smithy/sdk/shapes:define-type checkpoint-delay smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-list checkpoint-percentages :member
                               non-zero-int-percent)

(smithy/sdk/shapes:define-list classic-link-vpcsecurity-groups :member
                               xml-string-max-len255)

(smithy/sdk/shapes:define-structure complete-lifecycle-action-answer
                                    common-lisp:nil common-lisp:nil
                                    (:shape-name
                                     "CompleteLifecycleActionAnswer"))

(smithy/sdk/shapes:define-structure complete-lifecycle-action-type
                                    common-lisp:nil
                                    ((lifecycle-hook-name :target-type
                                      ascii-string-max-len255 :required
                                      common-lisp:t :member-name
                                      "LifecycleHookName")
                                     (auto-scaling-group-name :target-type
                                      resource-name :required common-lisp:t
                                      :member-name "AutoScalingGroupName")
                                     (lifecycle-action-token :target-type
                                      lifecycle-action-token :member-name
                                      "LifecycleActionToken")
                                     (lifecycle-action-result :target-type
                                      lifecycle-action-result :required
                                      common-lisp:t :member-name
                                      "LifecycleActionResult")
                                     (instance-id :target-type
                                      xml-string-max-len19 :member-name
                                      "InstanceId"))
                                    (:shape-name "CompleteLifecycleActionType"))

(smithy/sdk/shapes:define-type context smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type cooldown smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-enum cpu-manufacturer
    common-lisp:nil
  (:intel "intel")
  (:amd "amd")
  (:amazon-web-services "amazon-web-services")
  (:apple "apple"))

(smithy/sdk/shapes:define-list cpu-manufacturers :member cpu-manufacturer)

(smithy/sdk/shapes:define-structure cpu-performance-factor-request
                                    common-lisp:nil
                                    ((references :target-type
                                      performance-factor-reference-set-request
                                      :member-name "References" :xml-name
                                      "Reference"))
                                    (:shape-name "CpuPerformanceFactorRequest"))

(smithy/sdk/shapes:define-structure create-auto-scaling-group-type
                                    common-lisp:nil
                                    ((auto-scaling-group-name :target-type
                                      xml-string-max-len255 :required
                                      common-lisp:t :member-name
                                      "AutoScalingGroupName")
                                     (launch-configuration-name :target-type
                                      xml-string-max-len255 :member-name
                                      "LaunchConfigurationName")
                                     (launch-template :target-type
                                      launch-template-specification
                                      :member-name "LaunchTemplate")
                                     (mixed-instances-policy :target-type
                                      mixed-instances-policy :member-name
                                      "MixedInstancesPolicy")
                                     (instance-id :target-type
                                      xml-string-max-len19 :member-name
                                      "InstanceId")
                                     (min-size :target-type
                                      auto-scaling-group-min-size :required
                                      common-lisp:t :member-name "MinSize")
                                     (max-size :target-type
                                      auto-scaling-group-max-size :required
                                      common-lisp:t :member-name "MaxSize")
                                     (desired-capacity :target-type
                                      auto-scaling-group-desired-capacity
                                      :member-name "DesiredCapacity")
                                     (default-cooldown :target-type cooldown
                                      :member-name "DefaultCooldown")
                                     (availability-zones :target-type
                                      availability-zones :member-name
                                      "AvailabilityZones")
                                     (load-balancer-names :target-type
                                      load-balancer-names :member-name
                                      "LoadBalancerNames")
                                     (target-group-arns :target-type
                                      target-group-arns :member-name
                                      "TargetGroupARNs")
                                     (health-check-type :target-type
                                      xml-string-max-len32 :member-name
                                      "HealthCheckType")
                                     (health-check-grace-period :target-type
                                      health-check-grace-period :member-name
                                      "HealthCheckGracePeriod")
                                     (placement-group :target-type
                                      xml-string-max-len255 :member-name
                                      "PlacementGroup")
                                     (vpczone-identifier :target-type
                                      xml-string-max-len5000 :member-name
                                      "VPCZoneIdentifier")
                                     (termination-policies :target-type
                                      termination-policies :member-name
                                      "TerminationPolicies")
                                     (new-instances-protected-from-scale-in
                                      :target-type instance-protected
                                      :member-name
                                      "NewInstancesProtectedFromScaleIn")
                                     (capacity-rebalance :target-type
                                      capacity-rebalance-enabled :member-name
                                      "CapacityRebalance")
                                     (lifecycle-hook-specification-list
                                      :target-type
                                      lifecycle-hook-specifications
                                      :member-name
                                      "LifecycleHookSpecificationList")
                                     (tags :target-type tags :member-name
                                      "Tags")
                                     (service-linked-role-arn :target-type
                                      resource-name :member-name
                                      "ServiceLinkedRoleARN")
                                     (max-instance-lifetime :target-type
                                      max-instance-lifetime :member-name
                                      "MaxInstanceLifetime")
                                     (context :target-type context :member-name
                                      "Context")
                                     (desired-capacity-type :target-type
                                      xml-string-max-len255 :member-name
                                      "DesiredCapacityType")
                                     (default-instance-warmup :target-type
                                      default-instance-warmup :member-name
                                      "DefaultInstanceWarmup")
                                     (traffic-sources :target-type
                                      traffic-sources :member-name
                                      "TrafficSources")
                                     (instance-maintenance-policy :target-type
                                      instance-maintenance-policy :member-name
                                      "InstanceMaintenancePolicy")
                                     (availability-zone-distribution
                                      :target-type
                                      availability-zone-distribution
                                      :member-name
                                      "AvailabilityZoneDistribution")
                                     (availability-zone-impairment-policy
                                      :target-type
                                      availability-zone-impairment-policy
                                      :member-name
                                      "AvailabilityZoneImpairmentPolicy")
                                     (skip-zonal-shift-validation :target-type
                                      skip-zonal-shift-validation :member-name
                                      "SkipZonalShiftValidation")
                                     (capacity-reservation-specification
                                      :target-type
                                      capacity-reservation-specification
                                      :member-name
                                      "CapacityReservationSpecification"))
                                    (:shape-name "CreateAutoScalingGroupType"))

(smithy/sdk/shapes:define-structure create-launch-configuration-type
                                    common-lisp:nil
                                    ((launch-configuration-name :target-type
                                      xml-string-max-len255 :required
                                      common-lisp:t :member-name
                                      "LaunchConfigurationName")
                                     (image-id :target-type
                                      xml-string-max-len255 :member-name
                                      "ImageId")
                                     (key-name :target-type
                                      xml-string-max-len255 :member-name
                                      "KeyName")
                                     (security-groups :target-type
                                      security-groups :member-name
                                      "SecurityGroups")
                                     (classic-link-vpcid :target-type
                                      xml-string-max-len255 :member-name
                                      "ClassicLinkVPCId")
                                     (classic-link-vpcsecurity-groups
                                      :target-type
                                      classic-link-vpcsecurity-groups
                                      :member-name
                                      "ClassicLinkVPCSecurityGroups")
                                     (user-data :target-type
                                      xml-string-user-data :member-name
                                      "UserData")
                                     (instance-id :target-type
                                      xml-string-max-len19 :member-name
                                      "InstanceId")
                                     (instance-type :target-type
                                      xml-string-max-len255 :member-name
                                      "InstanceType")
                                     (kernel-id :target-type
                                      xml-string-max-len255 :member-name
                                      "KernelId")
                                     (ramdisk-id :target-type
                                      xml-string-max-len255 :member-name
                                      "RamdiskId")
                                     (block-device-mappings :target-type
                                      block-device-mappings :member-name
                                      "BlockDeviceMappings")
                                     (instance-monitoring :target-type
                                      instance-monitoring :member-name
                                      "InstanceMonitoring")
                                     (spot-price :target-type spot-price
                                      :member-name "SpotPrice")
                                     (iam-instance-profile :target-type
                                      xml-string-max-len1600 :member-name
                                      "IamInstanceProfile")
                                     (ebs-optimized :target-type ebs-optimized
                                      :member-name "EbsOptimized")
                                     (associate-public-ip-address :target-type
                                      associate-public-ip-address :member-name
                                      "AssociatePublicIpAddress")
                                     (placement-tenancy :target-type
                                      xml-string-max-len64 :member-name
                                      "PlacementTenancy")
                                     (metadata-options :target-type
                                      instance-metadata-options :member-name
                                      "MetadataOptions"))
                                    (:shape-name
                                     "CreateLaunchConfigurationType"))

(smithy/sdk/shapes:define-structure create-or-update-tags-type common-lisp:nil
                                    ((tags :target-type tags :required
                                      common-lisp:t :member-name "Tags"))
                                    (:shape-name "CreateOrUpdateTagsType"))

(smithy/sdk/shapes:define-structure customized-metric-specification
                                    common-lisp:nil
                                    ((metric-name :target-type metric-name
                                      :member-name "MetricName")
                                     (namespace :target-type metric-namespace
                                      :member-name "Namespace")
                                     (dimensions :target-type metric-dimensions
                                      :member-name "Dimensions")
                                     (statistic :target-type metric-statistic
                                      :member-name "Statistic")
                                     (unit :target-type metric-unit
                                      :member-name "Unit")
                                     (period :target-type
                                      metric-granularity-in-seconds
                                      :member-name "Period")
                                     (metrics :target-type
                                      target-tracking-metric-data-queries
                                      :member-name "Metrics"))
                                    (:shape-name
                                     "CustomizedMetricSpecification"))

(smithy/sdk/shapes:define-type default-instance-warmup
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-structure delete-auto-scaling-group-type
                                    common-lisp:nil
                                    ((auto-scaling-group-name :target-type
                                      xml-string-max-len255 :required
                                      common-lisp:t :member-name
                                      "AutoScalingGroupName")
                                     (force-delete :target-type force-delete
                                      :member-name "ForceDelete"))
                                    (:shape-name "DeleteAutoScalingGroupType"))

(smithy/sdk/shapes:define-structure delete-lifecycle-hook-answer
                                    common-lisp:nil common-lisp:nil
                                    (:shape-name "DeleteLifecycleHookAnswer"))

(smithy/sdk/shapes:define-structure delete-lifecycle-hook-type common-lisp:nil
                                    ((lifecycle-hook-name :target-type
                                      ascii-string-max-len255 :required
                                      common-lisp:t :member-name
                                      "LifecycleHookName")
                                     (auto-scaling-group-name :target-type
                                      xml-string-max-len255 :required
                                      common-lisp:t :member-name
                                      "AutoScalingGroupName"))
                                    (:shape-name "DeleteLifecycleHookType"))

(smithy/sdk/shapes:define-structure delete-notification-configuration-type
                                    common-lisp:nil
                                    ((auto-scaling-group-name :target-type
                                      xml-string-max-len255 :required
                                      common-lisp:t :member-name
                                      "AutoScalingGroupName")
                                     (topic-arn :target-type
                                      xml-string-max-len255 :required
                                      common-lisp:t :member-name "TopicARN"))
                                    (:shape-name
                                     "DeleteNotificationConfigurationType"))

(smithy/sdk/shapes:define-structure delete-policy-type common-lisp:nil
                                    ((auto-scaling-group-name :target-type
                                      xml-string-max-len255 :member-name
                                      "AutoScalingGroupName")
                                     (policy-name :target-type resource-name
                                      :required common-lisp:t :member-name
                                      "PolicyName"))
                                    (:shape-name "DeletePolicyType"))

(smithy/sdk/shapes:define-structure delete-scheduled-action-type
                                    common-lisp:nil
                                    ((auto-scaling-group-name :target-type
                                      xml-string-max-len255 :required
                                      common-lisp:t :member-name
                                      "AutoScalingGroupName")
                                     (scheduled-action-name :target-type
                                      xml-string-max-len255 :required
                                      common-lisp:t :member-name
                                      "ScheduledActionName"))
                                    (:shape-name "DeleteScheduledActionType"))

(smithy/sdk/shapes:define-structure delete-tags-type common-lisp:nil
                                    ((tags :target-type tags :required
                                      common-lisp:t :member-name "Tags"))
                                    (:shape-name "DeleteTagsType"))

(smithy/sdk/shapes:define-structure delete-warm-pool-answer common-lisp:nil
                                    common-lisp:nil
                                    (:shape-name "DeleteWarmPoolAnswer"))

(smithy/sdk/shapes:define-structure delete-warm-pool-type common-lisp:nil
                                    ((auto-scaling-group-name :target-type
                                      xml-string-max-len255 :required
                                      common-lisp:t :member-name
                                      "AutoScalingGroupName")
                                     (force-delete :target-type force-delete
                                      :member-name "ForceDelete"))
                                    (:shape-name "DeleteWarmPoolType"))

(smithy/sdk/shapes:define-structure describe-account-limits-answer
                                    common-lisp:nil
                                    ((max-number-of-auto-scaling-groups
                                      :target-type
                                      max-number-of-auto-scaling-groups
                                      :member-name
                                      "MaxNumberOfAutoScalingGroups")
                                     (max-number-of-launch-configurations
                                      :target-type
                                      max-number-of-launch-configurations
                                      :member-name
                                      "MaxNumberOfLaunchConfigurations")
                                     (number-of-auto-scaling-groups
                                      :target-type
                                      number-of-auto-scaling-groups
                                      :member-name "NumberOfAutoScalingGroups")
                                     (number-of-launch-configurations
                                      :target-type
                                      number-of-launch-configurations
                                      :member-name
                                      "NumberOfLaunchConfigurations"))
                                    (:shape-name "DescribeAccountLimitsAnswer"))

(smithy/sdk/shapes:define-structure describe-adjustment-types-answer
                                    common-lisp:nil
                                    ((adjustment-types :target-type
                                      adjustment-types :member-name
                                      "AdjustmentTypes"))
                                    (:shape-name
                                     "DescribeAdjustmentTypesAnswer"))

(smithy/sdk/shapes:define-structure describe-auto-scaling-instances-type
                                    common-lisp:nil
                                    ((instance-ids :target-type instance-ids
                                      :member-name "InstanceIds")
                                     (max-records :target-type max-records
                                      :member-name "MaxRecords")
                                     (next-token :target-type xml-string
                                      :member-name "NextToken"))
                                    (:shape-name
                                     "DescribeAutoScalingInstancesType"))

(smithy/sdk/shapes:define-structure
 describe-auto-scaling-notification-types-answer common-lisp:nil
 ((auto-scaling-notification-types :target-type auto-scaling-notification-types
   :member-name "AutoScalingNotificationTypes"))
 (:shape-name "DescribeAutoScalingNotificationTypesAnswer"))

(smithy/sdk/shapes:define-structure describe-instance-refreshes-answer
                                    common-lisp:nil
                                    ((instance-refreshes :target-type
                                      instance-refreshes :member-name
                                      "InstanceRefreshes")
                                     (next-token :target-type xml-string
                                      :member-name "NextToken"))
                                    (:shape-name
                                     "DescribeInstanceRefreshesAnswer"))

(smithy/sdk/shapes:define-structure describe-instance-refreshes-type
                                    common-lisp:nil
                                    ((auto-scaling-group-name :target-type
                                      xml-string-max-len255 :required
                                      common-lisp:t :member-name
                                      "AutoScalingGroupName")
                                     (instance-refresh-ids :target-type
                                      instance-refresh-ids :member-name
                                      "InstanceRefreshIds")
                                     (next-token :target-type xml-string
                                      :member-name "NextToken")
                                     (max-records :target-type max-records
                                      :member-name "MaxRecords"))
                                    (:shape-name
                                     "DescribeInstanceRefreshesType"))

(smithy/sdk/shapes:define-structure describe-lifecycle-hook-types-answer
                                    common-lisp:nil
                                    ((lifecycle-hook-types :target-type
                                      auto-scaling-notification-types
                                      :member-name "LifecycleHookTypes"))
                                    (:shape-name
                                     "DescribeLifecycleHookTypesAnswer"))

(smithy/sdk/shapes:define-structure describe-lifecycle-hooks-answer
                                    common-lisp:nil
                                    ((lifecycle-hooks :target-type
                                      lifecycle-hooks :member-name
                                      "LifecycleHooks"))
                                    (:shape-name
                                     "DescribeLifecycleHooksAnswer"))

(smithy/sdk/shapes:define-structure describe-lifecycle-hooks-type
                                    common-lisp:nil
                                    ((auto-scaling-group-name :target-type
                                      xml-string-max-len255 :required
                                      common-lisp:t :member-name
                                      "AutoScalingGroupName")
                                     (lifecycle-hook-names :target-type
                                      lifecycle-hook-names :member-name
                                      "LifecycleHookNames"))
                                    (:shape-name "DescribeLifecycleHooksType"))

(smithy/sdk/shapes:define-input describe-load-balancer-target-groups-request
                                common-lisp:nil
                                ((auto-scaling-group-name :target-type
                                  xml-string-max-len255 :required common-lisp:t
                                  :member-name "AutoScalingGroupName")
                                 (next-token :target-type xml-string
                                  :member-name "NextToken")
                                 (max-records :target-type max-records
                                  :member-name "MaxRecords"))
                                (:shape-name
                                 "DescribeLoadBalancerTargetGroupsRequest"))

(smithy/sdk/shapes:define-output describe-load-balancer-target-groups-response
                                 common-lisp:nil
                                 ((load-balancer-target-groups :target-type
                                   load-balancer-target-group-states
                                   :member-name "LoadBalancerTargetGroups")
                                  (next-token :target-type xml-string
                                   :member-name "NextToken"))
                                 (:shape-name
                                  "DescribeLoadBalancerTargetGroupsResponse"))

(smithy/sdk/shapes:define-input describe-load-balancers-request common-lisp:nil
                                ((auto-scaling-group-name :target-type
                                  xml-string-max-len255 :required common-lisp:t
                                  :member-name "AutoScalingGroupName")
                                 (next-token :target-type xml-string
                                  :member-name "NextToken")
                                 (max-records :target-type max-records
                                  :member-name "MaxRecords"))
                                (:shape-name "DescribeLoadBalancersRequest"))

(smithy/sdk/shapes:define-output describe-load-balancers-response
                                 common-lisp:nil
                                 ((load-balancers :target-type
                                   load-balancer-states :member-name
                                   "LoadBalancers")
                                  (next-token :target-type xml-string
                                   :member-name "NextToken"))
                                 (:shape-name "DescribeLoadBalancersResponse"))

(smithy/sdk/shapes:define-structure describe-metric-collection-types-answer
                                    common-lisp:nil
                                    ((metrics :target-type
                                      metric-collection-types :member-name
                                      "Metrics")
                                     (granularities :target-type
                                      metric-granularity-types :member-name
                                      "Granularities"))
                                    (:shape-name
                                     "DescribeMetricCollectionTypesAnswer"))

(smithy/sdk/shapes:define-structure describe-notification-configurations-answer
                                    common-lisp:nil
                                    ((notification-configurations :target-type
                                      notification-configurations :required
                                      common-lisp:t :member-name
                                      "NotificationConfigurations")
                                     (next-token :target-type xml-string
                                      :member-name "NextToken"))
                                    (:shape-name
                                     "DescribeNotificationConfigurationsAnswer"))

(smithy/sdk/shapes:define-structure describe-notification-configurations-type
                                    common-lisp:nil
                                    ((auto-scaling-group-names :target-type
                                      auto-scaling-group-names :member-name
                                      "AutoScalingGroupNames")
                                     (next-token :target-type xml-string
                                      :member-name "NextToken")
                                     (max-records :target-type max-records
                                      :member-name "MaxRecords"))
                                    (:shape-name
                                     "DescribeNotificationConfigurationsType"))

(smithy/sdk/shapes:define-structure describe-policies-type common-lisp:nil
                                    ((auto-scaling-group-name :target-type
                                      xml-string-max-len255 :member-name
                                      "AutoScalingGroupName")
                                     (policy-names :target-type policy-names
                                      :member-name "PolicyNames")
                                     (policy-types :target-type policy-types
                                      :member-name "PolicyTypes")
                                     (next-token :target-type xml-string
                                      :member-name "NextToken")
                                     (max-records :target-type max-records
                                      :member-name "MaxRecords"))
                                    (:shape-name "DescribePoliciesType"))

(smithy/sdk/shapes:define-structure describe-scaling-activities-type
                                    common-lisp:nil
                                    ((activity-ids :target-type activity-ids
                                      :member-name "ActivityIds")
                                     (auto-scaling-group-name :target-type
                                      xml-string-max-len255 :member-name
                                      "AutoScalingGroupName")
                                     (include-deleted-groups :target-type
                                      include-deleted-groups :member-name
                                      "IncludeDeletedGroups")
                                     (max-records :target-type max-records
                                      :member-name "MaxRecords")
                                     (next-token :target-type xml-string
                                      :member-name "NextToken"))
                                    (:shape-name
                                     "DescribeScalingActivitiesType"))

(smithy/sdk/shapes:define-structure describe-scheduled-actions-type
                                    common-lisp:nil
                                    ((auto-scaling-group-name :target-type
                                      xml-string-max-len255 :member-name
                                      "AutoScalingGroupName")
                                     (scheduled-action-names :target-type
                                      scheduled-action-names :member-name
                                      "ScheduledActionNames")
                                     (start-time :target-type timestamp-type
                                      :member-name "StartTime")
                                     (end-time :target-type timestamp-type
                                      :member-name "EndTime")
                                     (next-token :target-type xml-string
                                      :member-name "NextToken")
                                     (max-records :target-type max-records
                                      :member-name "MaxRecords"))
                                    (:shape-name
                                     "DescribeScheduledActionsType"))

(smithy/sdk/shapes:define-structure describe-tags-type common-lisp:nil
                                    ((filters :target-type filters :member-name
                                      "Filters")
                                     (next-token :target-type xml-string
                                      :member-name "NextToken")
                                     (max-records :target-type max-records
                                      :member-name "MaxRecords"))
                                    (:shape-name "DescribeTagsType"))

(smithy/sdk/shapes:define-structure describe-termination-policy-types-answer
                                    common-lisp:nil
                                    ((termination-policy-types :target-type
                                      termination-policies :member-name
                                      "TerminationPolicyTypes"))
                                    (:shape-name
                                     "DescribeTerminationPolicyTypesAnswer"))

(smithy/sdk/shapes:define-input describe-traffic-sources-request
                                common-lisp:nil
                                ((auto-scaling-group-name :target-type
                                  xml-string-max-len255 :required common-lisp:t
                                  :member-name "AutoScalingGroupName")
                                 (traffic-source-type :target-type
                                  xml-string-max-len255 :member-name
                                  "TrafficSourceType")
                                 (next-token :target-type xml-string
                                  :member-name "NextToken")
                                 (max-records :target-type max-records
                                  :member-name "MaxRecords"))
                                (:shape-name "DescribeTrafficSourcesRequest"))

(smithy/sdk/shapes:define-output describe-traffic-sources-response
                                 common-lisp:nil
                                 ((traffic-sources :target-type
                                   traffic-source-states :member-name
                                   "TrafficSources")
                                  (next-token :target-type xml-string
                                   :member-name "NextToken"))
                                 (:shape-name "DescribeTrafficSourcesResponse"))

(smithy/sdk/shapes:define-structure describe-warm-pool-answer common-lisp:nil
                                    ((warm-pool-configuration :target-type
                                      warm-pool-configuration :member-name
                                      "WarmPoolConfiguration")
                                     (instances :target-type instances
                                      :member-name "Instances")
                                     (next-token :target-type xml-string
                                      :member-name "NextToken"))
                                    (:shape-name "DescribeWarmPoolAnswer"))

(smithy/sdk/shapes:define-structure describe-warm-pool-type common-lisp:nil
                                    ((auto-scaling-group-name :target-type
                                      xml-string-max-len255 :required
                                      common-lisp:t :member-name
                                      "AutoScalingGroupName")
                                     (max-records :target-type max-records
                                      :member-name "MaxRecords")
                                     (next-token :target-type xml-string
                                      :member-name "NextToken"))
                                    (:shape-name "DescribeWarmPoolType"))

(smithy/sdk/shapes:define-structure desired-configuration common-lisp:nil
                                    ((launch-template :target-type
                                      launch-template-specification
                                      :member-name "LaunchTemplate")
                                     (mixed-instances-policy :target-type
                                      mixed-instances-policy :member-name
                                      "MixedInstancesPolicy"))
                                    (:shape-name "DesiredConfiguration"))

(smithy/sdk/shapes:define-structure detach-instances-answer common-lisp:nil
                                    ((activities :target-type activities
                                      :member-name "Activities"))
                                    (:shape-name "DetachInstancesAnswer"))

(smithy/sdk/shapes:define-structure detach-instances-query common-lisp:nil
                                    ((instance-ids :target-type instance-ids
                                      :member-name "InstanceIds")
                                     (auto-scaling-group-name :target-type
                                      xml-string-max-len255 :required
                                      common-lisp:t :member-name
                                      "AutoScalingGroupName")
                                     (should-decrement-desired-capacity
                                      :target-type
                                      should-decrement-desired-capacity
                                      :required common-lisp:t :member-name
                                      "ShouldDecrementDesiredCapacity"))
                                    (:shape-name "DetachInstancesQuery"))

(smithy/sdk/shapes:define-structure
 detach-load-balancer-target-groups-result-type common-lisp:nil common-lisp:nil
 (:shape-name "DetachLoadBalancerTargetGroupsResultType"))

(smithy/sdk/shapes:define-structure detach-load-balancer-target-groups-type
                                    common-lisp:nil
                                    ((auto-scaling-group-name :target-type
                                      xml-string-max-len255 :required
                                      common-lisp:t :member-name
                                      "AutoScalingGroupName")
                                     (target-group-arns :target-type
                                      target-group-arns :required common-lisp:t
                                      :member-name "TargetGroupARNs"))
                                    (:shape-name
                                     "DetachLoadBalancerTargetGroupsType"))

(smithy/sdk/shapes:define-structure detach-load-balancers-result-type
                                    common-lisp:nil common-lisp:nil
                                    (:shape-name
                                     "DetachLoadBalancersResultType"))

(smithy/sdk/shapes:define-structure detach-load-balancers-type common-lisp:nil
                                    ((auto-scaling-group-name :target-type
                                      xml-string-max-len255 :required
                                      common-lisp:t :member-name
                                      "AutoScalingGroupName")
                                     (load-balancer-names :target-type
                                      load-balancer-names :required
                                      common-lisp:t :member-name
                                      "LoadBalancerNames"))
                                    (:shape-name "DetachLoadBalancersType"))

(smithy/sdk/shapes:define-structure detach-traffic-sources-result-type
                                    common-lisp:nil common-lisp:nil
                                    (:shape-name
                                     "DetachTrafficSourcesResultType"))

(smithy/sdk/shapes:define-structure detach-traffic-sources-type common-lisp:nil
                                    ((auto-scaling-group-name :target-type
                                      xml-string-max-len255 :required
                                      common-lisp:t :member-name
                                      "AutoScalingGroupName")
                                     (traffic-sources :target-type
                                      traffic-sources :required common-lisp:t
                                      :member-name "TrafficSources"))
                                    (:shape-name "DetachTrafficSourcesType"))

(smithy/sdk/shapes:define-structure disable-metrics-collection-query
                                    common-lisp:nil
                                    ((auto-scaling-group-name :target-type
                                      xml-string-max-len255 :required
                                      common-lisp:t :member-name
                                      "AutoScalingGroupName")
                                     (metrics :target-type metrics :member-name
                                      "Metrics"))
                                    (:shape-name
                                     "DisableMetricsCollectionQuery"))

(smithy/sdk/shapes:define-type disable-scale-in smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-structure ebs common-lisp:nil
                                    ((snapshot-id :target-type
                                      xml-string-max-len255 :member-name
                                      "SnapshotId")
                                     (volume-size :target-type
                                      block-device-ebs-volume-size :member-name
                                      "VolumeSize")
                                     (volume-type :target-type
                                      block-device-ebs-volume-type :member-name
                                      "VolumeType")
                                     (delete-on-termination :target-type
                                      block-device-ebs-delete-on-termination
                                      :member-name "DeleteOnTermination")
                                     (iops :target-type block-device-ebs-iops
                                      :member-name "Iops")
                                     (encrypted :target-type
                                      block-device-ebs-encrypted :member-name
                                      "Encrypted")
                                     (throughput :target-type
                                      block-device-ebs-throughput :member-name
                                      "Throughput"))
                                    (:shape-name "Ebs"))

(smithy/sdk/shapes:define-type ebs-optimized smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-structure enable-metrics-collection-query
                                    common-lisp:nil
                                    ((auto-scaling-group-name :target-type
                                      xml-string-max-len255 :required
                                      common-lisp:t :member-name
                                      "AutoScalingGroupName")
                                     (metrics :target-type metrics :member-name
                                      "Metrics")
                                     (granularity :target-type
                                      xml-string-max-len255 :required
                                      common-lisp:t :member-name
                                      "Granularity"))
                                    (:shape-name
                                     "EnableMetricsCollectionQuery"))

(smithy/sdk/shapes:define-structure enabled-metric common-lisp:nil
                                    ((metric :target-type xml-string-max-len255
                                      :member-name "Metric")
                                     (granularity :target-type
                                      xml-string-max-len255 :member-name
                                      "Granularity"))
                                    (:shape-name "EnabledMetric"))

(smithy/sdk/shapes:define-list enabled-metrics :member enabled-metric)

(smithy/sdk/shapes:define-structure enter-standby-answer common-lisp:nil
                                    ((activities :target-type activities
                                      :member-name "Activities"))
                                    (:shape-name "EnterStandbyAnswer"))

(smithy/sdk/shapes:define-structure enter-standby-query common-lisp:nil
                                    ((instance-ids :target-type instance-ids
                                      :member-name "InstanceIds")
                                     (auto-scaling-group-name :target-type
                                      xml-string-max-len255 :required
                                      common-lisp:t :member-name
                                      "AutoScalingGroupName")
                                     (should-decrement-desired-capacity
                                      :target-type
                                      should-decrement-desired-capacity
                                      :required common-lisp:t :member-name
                                      "ShouldDecrementDesiredCapacity"))
                                    (:shape-name "EnterStandbyQuery"))

(smithy/sdk/shapes:define-type estimated-instance-warmup
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type excluded-instance smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list excluded-instance-types :member
                               excluded-instance)

(smithy/sdk/shapes:define-structure execute-policy-type common-lisp:nil
                                    ((auto-scaling-group-name :target-type
                                      xml-string-max-len255 :member-name
                                      "AutoScalingGroupName")
                                     (policy-name :target-type resource-name
                                      :required common-lisp:t :member-name
                                      "PolicyName")
                                     (honor-cooldown :target-type
                                      honor-cooldown :member-name
                                      "HonorCooldown")
                                     (metric-value :target-type metric-scale
                                      :member-name "MetricValue")
                                     (breach-threshold :target-type
                                      metric-scale :member-name
                                      "BreachThreshold"))
                                    (:shape-name "ExecutePolicyType"))

(smithy/sdk/shapes:define-structure exit-standby-answer common-lisp:nil
                                    ((activities :target-type activities
                                      :member-name "Activities"))
                                    (:shape-name "ExitStandbyAnswer"))

(smithy/sdk/shapes:define-structure exit-standby-query common-lisp:nil
                                    ((instance-ids :target-type instance-ids
                                      :member-name "InstanceIds")
                                     (auto-scaling-group-name :target-type
                                      xml-string-max-len255 :required
                                      common-lisp:t :member-name
                                      "AutoScalingGroupName"))
                                    (:shape-name "ExitStandbyQuery"))

(smithy/sdk/shapes:define-structure
 failed-scheduled-update-group-action-request common-lisp:nil
 ((scheduled-action-name :target-type xml-string-max-len255 :required
   common-lisp:t :member-name "ScheduledActionName")
  (error-code :target-type xml-string-max-len64 :member-name "ErrorCode")
  (error-message :target-type xml-string :member-name "ErrorMessage"))
 (:shape-name "FailedScheduledUpdateGroupActionRequest"))

(smithy/sdk/shapes:define-list failed-scheduled-update-group-action-requests
                               :member
                               failed-scheduled-update-group-action-request)

(smithy/sdk/shapes:define-structure filter common-lisp:nil
                                    ((name :target-type xml-string :member-name
                                      "Name")
                                     (values :target-type values :member-name
                                      "Values"))
                                    (:shape-name "Filter"))

(smithy/sdk/shapes:define-list filters :member filter)

(smithy/sdk/shapes:define-type force-delete smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-structure get-predictive-scaling-forecast-answer
                                    common-lisp:nil
                                    ((load-forecast :target-type load-forecasts
                                      :required common-lisp:t :member-name
                                      "LoadForecast")
                                     (capacity-forecast :target-type
                                      capacity-forecast :required common-lisp:t
                                      :member-name "CapacityForecast")
                                     (update-time :target-type timestamp-type
                                      :required common-lisp:t :member-name
                                      "UpdateTime"))
                                    (:shape-name
                                     "GetPredictiveScalingForecastAnswer"))

(smithy/sdk/shapes:define-structure get-predictive-scaling-forecast-type
                                    common-lisp:nil
                                    ((auto-scaling-group-name :target-type
                                      xml-string-max-len255 :required
                                      common-lisp:t :member-name
                                      "AutoScalingGroupName")
                                     (policy-name :target-type
                                      xml-string-max-len255 :required
                                      common-lisp:t :member-name "PolicyName")
                                     (start-time :target-type timestamp-type
                                      :required common-lisp:t :member-name
                                      "StartTime")
                                     (end-time :target-type timestamp-type
                                      :required common-lisp:t :member-name
                                      "EndTime"))
                                    (:shape-name
                                     "GetPredictiveScalingForecastType"))

(smithy/sdk/shapes:define-type global-timeout smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type health-check-grace-period
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type heartbeat-timeout
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type honor-cooldown smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-enum impaired-zone-health-check-behavior
    common-lisp:nil
  (:replace-unhealthy "ReplaceUnhealthy")
  (:ignore-unhealthy "IgnoreUnhealthy"))

(smithy/sdk/shapes:define-type include-deleted-groups
                               smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-type include-instances
                               smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-structure instance common-lisp:nil
                                    ((instance-id :target-type
                                      xml-string-max-len19 :required
                                      common-lisp:t :member-name "InstanceId")
                                     (instance-type :target-type
                                      xml-string-max-len255 :member-name
                                      "InstanceType")
                                     (availability-zone :target-type
                                      xml-string-max-len255 :required
                                      common-lisp:t :member-name
                                      "AvailabilityZone")
                                     (lifecycle-state :target-type
                                      lifecycle-state :required common-lisp:t
                                      :member-name "LifecycleState")
                                     (health-status :target-type
                                      xml-string-max-len32 :required
                                      common-lisp:t :member-name
                                      "HealthStatus")
                                     (launch-configuration-name :target-type
                                      xml-string-max-len255 :member-name
                                      "LaunchConfigurationName")
                                     (launch-template :target-type
                                      launch-template-specification
                                      :member-name "LaunchTemplate")
                                     (protected-from-scale-in :target-type
                                      instance-protected :required
                                      common-lisp:t :member-name
                                      "ProtectedFromScaleIn")
                                     (weighted-capacity :target-type
                                      xml-string-max-len32 :member-name
                                      "WeightedCapacity"))
                                    (:shape-name "Instance"))

(smithy/sdk/shapes:define-enum instance-generation
    common-lisp:nil
  (:current "current")
  (:previous "previous"))

(smithy/sdk/shapes:define-list instance-generations :member instance-generation)

(smithy/sdk/shapes:define-list instance-ids :member xml-string-max-len19)

(smithy/sdk/shapes:define-structure instance-maintenance-policy common-lisp:nil
                                    ((min-healthy-percentage :target-type
                                      int-percent-resettable :member-name
                                      "MinHealthyPercentage")
                                     (max-healthy-percentage :target-type
                                      int-percent100to200resettable
                                      :member-name "MaxHealthyPercentage"))
                                    (:shape-name "InstanceMaintenancePolicy"))

(smithy/sdk/shapes:define-enum instance-metadata-endpoint-state
    common-lisp:nil
  (:disabled "disabled")
  (:enabled "enabled"))

(smithy/sdk/shapes:define-type instance-metadata-http-put-response-hop-limit
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-enum instance-metadata-http-tokens-state
    common-lisp:nil
  (:optional "optional")
  (:required "required"))

(smithy/sdk/shapes:define-structure instance-metadata-options common-lisp:nil
                                    ((http-tokens :target-type
                                      instance-metadata-http-tokens-state
                                      :member-name "HttpTokens")
                                     (http-put-response-hop-limit :target-type
                                      instance-metadata-http-put-response-hop-limit
                                      :member-name "HttpPutResponseHopLimit")
                                     (http-endpoint :target-type
                                      instance-metadata-endpoint-state
                                      :member-name "HttpEndpoint"))
                                    (:shape-name "InstanceMetadataOptions"))

(smithy/sdk/shapes:define-structure instance-monitoring common-lisp:nil
                                    ((enabled :target-type monitoring-enabled
                                      :member-name "Enabled"))
                                    (:shape-name "InstanceMonitoring"))

(smithy/sdk/shapes:define-type instance-protected
                               smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-structure instance-refresh common-lisp:nil
                                    ((instance-refresh-id :target-type
                                      xml-string-max-len255 :member-name
                                      "InstanceRefreshId")
                                     (auto-scaling-group-name :target-type
                                      xml-string-max-len255 :member-name
                                      "AutoScalingGroupName")
                                     (status :target-type
                                      instance-refresh-status :member-name
                                      "Status")
                                     (status-reason :target-type
                                      xml-string-max-len1023 :member-name
                                      "StatusReason")
                                     (start-time :target-type timestamp-type
                                      :member-name "StartTime")
                                     (end-time :target-type timestamp-type
                                      :member-name "EndTime")
                                     (percentage-complete :target-type
                                      int-percent :member-name
                                      "PercentageComplete")
                                     (instances-to-update :target-type
                                      instances-to-update :member-name
                                      "InstancesToUpdate")
                                     (progress-details :target-type
                                      instance-refresh-progress-details
                                      :member-name "ProgressDetails")
                                     (preferences :target-type
                                      refresh-preferences :member-name
                                      "Preferences")
                                     (desired-configuration :target-type
                                      desired-configuration :member-name
                                      "DesiredConfiguration")
                                     (rollback-details :target-type
                                      rollback-details :member-name
                                      "RollbackDetails"))
                                    (:shape-name "InstanceRefresh"))

(smithy/sdk/shapes:define-list instance-refresh-ids :member
                               xml-string-max-len255)

(smithy/sdk/shapes:define-error instance-refresh-in-progress-fault
                                common-lisp:nil
                                ((message :target-type xml-string-max-len255
                                  :member-name "message"))
                                (:shape-name "InstanceRefreshInProgressFault")
                                (:error-code 400))

(smithy/sdk/shapes:define-structure instance-refresh-live-pool-progress
                                    common-lisp:nil
                                    ((percentage-complete :target-type
                                      int-percent :member-name
                                      "PercentageComplete")
                                     (instances-to-update :target-type
                                      instances-to-update :member-name
                                      "InstancesToUpdate"))
                                    (:shape-name
                                     "InstanceRefreshLivePoolProgress"))

(smithy/sdk/shapes:define-structure instance-refresh-progress-details
                                    common-lisp:nil
                                    ((live-pool-progress :target-type
                                      instance-refresh-live-pool-progress
                                      :member-name "LivePoolProgress")
                                     (warm-pool-progress :target-type
                                      instance-refresh-warm-pool-progress
                                      :member-name "WarmPoolProgress"))
                                    (:shape-name
                                     "InstanceRefreshProgressDetails"))

(smithy/sdk/shapes:define-enum instance-refresh-status
    common-lisp:nil
  (:pending "Pending")
  (:in-progress "InProgress")
  (:successful "Successful")
  (:failed "Failed")
  (:cancelling "Cancelling")
  (:cancelled "Cancelled")
  (:rollback-in-progress "RollbackInProgress")
  (:rollback-failed "RollbackFailed")
  (:rollback-successful "RollbackSuccessful")
  (:baking "Baking"))

(smithy/sdk/shapes:define-structure instance-refresh-warm-pool-progress
                                    common-lisp:nil
                                    ((percentage-complete :target-type
                                      int-percent :member-name
                                      "PercentageComplete")
                                     (instances-to-update :target-type
                                      instances-to-update :member-name
                                      "InstancesToUpdate"))
                                    (:shape-name
                                     "InstanceRefreshWarmPoolProgress"))

(smithy/sdk/shapes:define-list instance-refreshes :member instance-refresh)

(smithy/sdk/shapes:define-structure instance-requirements common-lisp:nil
                                    ((vcpu-count :target-type
                                      vcpu-count-request :required
                                      common-lisp:t :member-name "VCpuCount")
                                     (memory-mi-b :target-type
                                      memory-mi-brequest :required
                                      common-lisp:t :member-name "MemoryMiB")
                                     (cpu-manufacturers :target-type
                                      cpu-manufacturers :member-name
                                      "CpuManufacturers")
                                     (memory-gi-bper-vcpu :target-type
                                      memory-gi-bper-vcpu-request :member-name
                                      "MemoryGiBPerVCpu")
                                     (excluded-instance-types :target-type
                                      excluded-instance-types :member-name
                                      "ExcludedInstanceTypes")
                                     (instance-generations :target-type
                                      instance-generations :member-name
                                      "InstanceGenerations")
                                     (spot-max-price-percentage-over-lowest-price
                                      :target-type nullable-positive-integer
                                      :member-name
                                      "SpotMaxPricePercentageOverLowestPrice")
                                     (max-spot-price-as-percentage-of-optimal-on-demand-price
                                      :target-type nullable-positive-integer
                                      :member-name
                                      "MaxSpotPriceAsPercentageOfOptimalOnDemandPrice")
                                     (on-demand-max-price-percentage-over-lowest-price
                                      :target-type nullable-positive-integer
                                      :member-name
                                      "OnDemandMaxPricePercentageOverLowestPrice")
                                     (bare-metal :target-type bare-metal
                                      :member-name "BareMetal")
                                     (burstable-performance :target-type
                                      burstable-performance :member-name
                                      "BurstablePerformance")
                                     (require-hibernate-support :target-type
                                      nullable-boolean :member-name
                                      "RequireHibernateSupport")
                                     (network-interface-count :target-type
                                      network-interface-count-request
                                      :member-name "NetworkInterfaceCount")
                                     (local-storage :target-type local-storage
                                      :member-name "LocalStorage")
                                     (local-storage-types :target-type
                                      local-storage-types :member-name
                                      "LocalStorageTypes")
                                     (total-local-storage-gb :target-type
                                      total-local-storage-gbrequest
                                      :member-name "TotalLocalStorageGB")
                                     (baseline-ebs-bandwidth-mbps :target-type
                                      baseline-ebs-bandwidth-mbps-request
                                      :member-name "BaselineEbsBandwidthMbps")
                                     (accelerator-types :target-type
                                      accelerator-types :member-name
                                      "AcceleratorTypes")
                                     (accelerator-count :target-type
                                      accelerator-count-request :member-name
                                      "AcceleratorCount")
                                     (accelerator-manufacturers :target-type
                                      accelerator-manufacturers :member-name
                                      "AcceleratorManufacturers")
                                     (accelerator-names :target-type
                                      accelerator-names :member-name
                                      "AcceleratorNames")
                                     (accelerator-total-memory-mi-b
                                      :target-type
                                      accelerator-total-memory-mi-brequest
                                      :member-name "AcceleratorTotalMemoryMiB")
                                     (network-bandwidth-gbps :target-type
                                      network-bandwidth-gbps-request
                                      :member-name "NetworkBandwidthGbps")
                                     (allowed-instance-types :target-type
                                      allowed-instance-types :member-name
                                      "AllowedInstanceTypes")
                                     (baseline-performance-factors :target-type
                                      baseline-performance-factors-request
                                      :member-name
                                      "BaselinePerformanceFactors"))
                                    (:shape-name "InstanceRequirements"))

(smithy/sdk/shapes:define-structure instance-reuse-policy common-lisp:nil
                                    ((reuse-on-scale-in :target-type
                                      reuse-on-scale-in :member-name
                                      "ReuseOnScaleIn"))
                                    (:shape-name "InstanceReusePolicy"))

(smithy/sdk/shapes:define-list instances :member instance)

(smithy/sdk/shapes:define-structure instances-distribution common-lisp:nil
                                    ((on-demand-allocation-strategy
                                      :target-type xml-string :member-name
                                      "OnDemandAllocationStrategy")
                                     (on-demand-base-capacity :target-type
                                      on-demand-base-capacity :member-name
                                      "OnDemandBaseCapacity")
                                     (on-demand-percentage-above-base-capacity
                                      :target-type
                                      on-demand-percentage-above-base-capacity
                                      :member-name
                                      "OnDemandPercentageAboveBaseCapacity")
                                     (spot-allocation-strategy :target-type
                                      xml-string :member-name
                                      "SpotAllocationStrategy")
                                     (spot-instance-pools :target-type
                                      spot-instance-pools :member-name
                                      "SpotInstancePools")
                                     (spot-max-price :target-type
                                      mixed-instance-spot-price :member-name
                                      "SpotMaxPrice"))
                                    (:shape-name "InstancesDistribution"))

(smithy/sdk/shapes:define-type instances-to-update
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type int-percent smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type int-percent100to200
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type int-percent100to200resettable
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type int-percent-resettable
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-error invalid-next-token common-lisp:nil
                                ((message :target-type xml-string-max-len255
                                  :member-name "message"))
                                (:shape-name "InvalidNextToken")
                                (:error-code 400))

(smithy/sdk/shapes:define-error irreversible-instance-refresh-fault
                                common-lisp:nil
                                ((message :target-type xml-string-max-len255
                                  :member-name "message"))
                                (:shape-name
                                 "IrreversibleInstanceRefreshFault")
                                (:error-code 400))

(smithy/sdk/shapes:define-structure launch-configuration common-lisp:nil
                                    ((launch-configuration-name :target-type
                                      xml-string-max-len255 :required
                                      common-lisp:t :member-name
                                      "LaunchConfigurationName")
                                     (launch-configuration-arn :target-type
                                      resource-name :member-name
                                      "LaunchConfigurationARN")
                                     (image-id :target-type
                                      xml-string-max-len255 :required
                                      common-lisp:t :member-name "ImageId")
                                     (key-name :target-type
                                      xml-string-max-len255 :member-name
                                      "KeyName")
                                     (security-groups :target-type
                                      security-groups :member-name
                                      "SecurityGroups")
                                     (classic-link-vpcid :target-type
                                      xml-string-max-len255 :member-name
                                      "ClassicLinkVPCId")
                                     (classic-link-vpcsecurity-groups
                                      :target-type
                                      classic-link-vpcsecurity-groups
                                      :member-name
                                      "ClassicLinkVPCSecurityGroups")
                                     (user-data :target-type
                                      xml-string-user-data :member-name
                                      "UserData")
                                     (instance-type :target-type
                                      xml-string-max-len255 :required
                                      common-lisp:t :member-name
                                      "InstanceType")
                                     (kernel-id :target-type
                                      xml-string-max-len255 :member-name
                                      "KernelId")
                                     (ramdisk-id :target-type
                                      xml-string-max-len255 :member-name
                                      "RamdiskId")
                                     (block-device-mappings :target-type
                                      block-device-mappings :member-name
                                      "BlockDeviceMappings")
                                     (instance-monitoring :target-type
                                      instance-monitoring :member-name
                                      "InstanceMonitoring")
                                     (spot-price :target-type spot-price
                                      :member-name "SpotPrice")
                                     (iam-instance-profile :target-type
                                      xml-string-max-len1600 :member-name
                                      "IamInstanceProfile")
                                     (created-time :target-type timestamp-type
                                      :required common-lisp:t :member-name
                                      "CreatedTime")
                                     (ebs-optimized :target-type ebs-optimized
                                      :member-name "EbsOptimized")
                                     (associate-public-ip-address :target-type
                                      associate-public-ip-address :member-name
                                      "AssociatePublicIpAddress")
                                     (placement-tenancy :target-type
                                      xml-string-max-len64 :member-name
                                      "PlacementTenancy")
                                     (metadata-options :target-type
                                      instance-metadata-options :member-name
                                      "MetadataOptions"))
                                    (:shape-name "LaunchConfiguration"))

(smithy/sdk/shapes:define-structure launch-configuration-name-type
                                    common-lisp:nil
                                    ((launch-configuration-name :target-type
                                      xml-string-max-len255 :required
                                      common-lisp:t :member-name
                                      "LaunchConfigurationName"))
                                    (:shape-name "LaunchConfigurationNameType"))

(smithy/sdk/shapes:define-list launch-configuration-names :member
                               xml-string-max-len255)

(smithy/sdk/shapes:define-structure launch-configuration-names-type
                                    common-lisp:nil
                                    ((launch-configuration-names :target-type
                                      launch-configuration-names :member-name
                                      "LaunchConfigurationNames")
                                     (next-token :target-type xml-string
                                      :member-name "NextToken")
                                     (max-records :target-type max-records
                                      :member-name "MaxRecords"))
                                    (:shape-name
                                     "LaunchConfigurationNamesType"))

(smithy/sdk/shapes:define-list launch-configurations :member
                               launch-configuration)

(smithy/sdk/shapes:define-structure launch-configurations-type common-lisp:nil
                                    ((launch-configurations :target-type
                                      launch-configurations :required
                                      common-lisp:t :member-name
                                      "LaunchConfigurations")
                                     (next-token :target-type xml-string
                                      :member-name "NextToken"))
                                    (:shape-name "LaunchConfigurationsType"))

(smithy/sdk/shapes:define-structure launch-template common-lisp:nil
                                    ((launch-template-specification
                                      :target-type
                                      launch-template-specification
                                      :member-name
                                      "LaunchTemplateSpecification")
                                     (overrides :target-type overrides
                                      :member-name "Overrides"))
                                    (:shape-name "LaunchTemplate"))

(smithy/sdk/shapes:define-type launch-template-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure launch-template-overrides common-lisp:nil
                                    ((instance-type :target-type
                                      xml-string-max-len255 :member-name
                                      "InstanceType")
                                     (weighted-capacity :target-type
                                      xml-string-max-len32 :member-name
                                      "WeightedCapacity")
                                     (launch-template-specification
                                      :target-type
                                      launch-template-specification
                                      :member-name
                                      "LaunchTemplateSpecification")
                                     (instance-requirements :target-type
                                      instance-requirements :member-name
                                      "InstanceRequirements"))
                                    (:shape-name "LaunchTemplateOverrides"))

(smithy/sdk/shapes:define-structure launch-template-specification
                                    common-lisp:nil
                                    ((launch-template-id :target-type
                                      xml-string-max-len255 :member-name
                                      "LaunchTemplateId")
                                     (launch-template-name :target-type
                                      launch-template-name :member-name
                                      "LaunchTemplateName")
                                     (version :target-type
                                      xml-string-max-len255 :member-name
                                      "Version"))
                                    (:shape-name "LaunchTemplateSpecification"))

(smithy/sdk/shapes:define-type lifecycle-action-result
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type lifecycle-action-token
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure lifecycle-hook common-lisp:nil
                                    ((lifecycle-hook-name :target-type
                                      ascii-string-max-len255 :member-name
                                      "LifecycleHookName")
                                     (auto-scaling-group-name :target-type
                                      xml-string-max-len255 :member-name
                                      "AutoScalingGroupName")
                                     (lifecycle-transition :target-type
                                      lifecycle-transition :member-name
                                      "LifecycleTransition")
                                     (notification-target-arn :target-type
                                      notification-target-resource-name
                                      :member-name "NotificationTargetARN")
                                     (role-arn :target-type
                                      xml-string-max-len255 :member-name
                                      "RoleARN")
                                     (notification-metadata :target-type
                                      any-printable-ascii-string-max-len4000
                                      :member-name "NotificationMetadata")
                                     (heartbeat-timeout :target-type
                                      heartbeat-timeout :member-name
                                      "HeartbeatTimeout")
                                     (global-timeout :target-type
                                      global-timeout :member-name
                                      "GlobalTimeout")
                                     (default-result :target-type
                                      lifecycle-action-result :member-name
                                      "DefaultResult"))
                                    (:shape-name "LifecycleHook"))

(smithy/sdk/shapes:define-list lifecycle-hook-names :member
                               ascii-string-max-len255)

(smithy/sdk/shapes:define-structure lifecycle-hook-specification
                                    common-lisp:nil
                                    ((lifecycle-hook-name :target-type
                                      ascii-string-max-len255 :required
                                      common-lisp:t :member-name
                                      "LifecycleHookName")
                                     (lifecycle-transition :target-type
                                      lifecycle-transition :required
                                      common-lisp:t :member-name
                                      "LifecycleTransition")
                                     (notification-metadata :target-type
                                      any-printable-ascii-string-max-len4000
                                      :member-name "NotificationMetadata")
                                     (heartbeat-timeout :target-type
                                      heartbeat-timeout :member-name
                                      "HeartbeatTimeout")
                                     (default-result :target-type
                                      lifecycle-action-result :member-name
                                      "DefaultResult")
                                     (notification-target-arn :target-type
                                      notification-target-resource-name
                                      :member-name "NotificationTargetARN")
                                     (role-arn :target-type
                                      xml-string-max-len255 :member-name
                                      "RoleARN"))
                                    (:shape-name "LifecycleHookSpecification"))

(smithy/sdk/shapes:define-list lifecycle-hook-specifications :member
                               lifecycle-hook-specification)

(smithy/sdk/shapes:define-list lifecycle-hooks :member lifecycle-hook)

(smithy/sdk/shapes:define-enum lifecycle-state
    common-lisp:nil
  (:pending "Pending")
  (:pending-wait "Pending:Wait")
  (:pending-proceed "Pending:Proceed")
  (:quarantined "Quarantined")
  (:in-service "InService")
  (:terminating "Terminating")
  (:terminating-wait "Terminating:Wait")
  (:terminating-proceed "Terminating:Proceed")
  (:terminated "Terminated")
  (:detaching "Detaching")
  (:detached "Detached")
  (:entering-standby "EnteringStandby")
  (:standby "Standby")
  (:warmed-pending "Warmed:Pending")
  (:warmed-pending-wait "Warmed:Pending:Wait")
  (:warmed-pending-proceed "Warmed:Pending:Proceed")
  (:warmed-terminating "Warmed:Terminating")
  (:warmed-terminating-wait "Warmed:Terminating:Wait")
  (:warmed-terminating-proceed "Warmed:Terminating:Proceed")
  (:warmed-terminated "Warmed:Terminated")
  (:warmed-stopped "Warmed:Stopped")
  (:warmed-running "Warmed:Running")
  (:warmed-hibernated "Warmed:Hibernated"))

(smithy/sdk/shapes:define-type lifecycle-transition
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error limit-exceeded-fault common-lisp:nil
                                ((message :target-type xml-string-max-len255
                                  :member-name "message"))
                                (:shape-name "LimitExceededFault")
                                (:error-code 400))

(smithy/sdk/shapes:define-list load-balancer-names :member
                               xml-string-max-len255)

(smithy/sdk/shapes:define-structure load-balancer-state common-lisp:nil
                                    ((load-balancer-name :target-type
                                      xml-string-max-len255 :member-name
                                      "LoadBalancerName")
                                     (state :target-type xml-string-max-len255
                                      :member-name "State"))
                                    (:shape-name "LoadBalancerState"))

(smithy/sdk/shapes:define-list load-balancer-states :member load-balancer-state)

(smithy/sdk/shapes:define-structure load-balancer-target-group-state
                                    common-lisp:nil
                                    ((load-balancer-target-group-arn
                                      :target-type xml-string-max-len511
                                      :member-name
                                      "LoadBalancerTargetGroupARN")
                                     (state :target-type xml-string-max-len255
                                      :member-name "State"))
                                    (:shape-name
                                     "LoadBalancerTargetGroupState"))

(smithy/sdk/shapes:define-list load-balancer-target-group-states :member
                               load-balancer-target-group-state)

(smithy/sdk/shapes:define-structure load-forecast common-lisp:nil
                                    ((timestamps :target-type
                                      predictive-scaling-forecast-timestamps
                                      :required common-lisp:t :member-name
                                      "Timestamps")
                                     (values :target-type
                                      predictive-scaling-forecast-values
                                      :required common-lisp:t :member-name
                                      "Values")
                                     (metric-specification :target-type
                                      predictive-scaling-metric-specification
                                      :required common-lisp:t :member-name
                                      "MetricSpecification"))
                                    (:shape-name "LoadForecast"))

(smithy/sdk/shapes:define-list load-forecasts :member load-forecast)

(smithy/sdk/shapes:define-enum local-storage
    common-lisp:nil
  (:included "included")
  (:excluded "excluded")
  (:required "required"))

(smithy/sdk/shapes:define-enum local-storage-type
    common-lisp:nil
  (:hdd "hdd")
  (:ssd "ssd"))

(smithy/sdk/shapes:define-list local-storage-types :member local-storage-type)

(smithy/sdk/shapes:define-type max-group-prepared-capacity
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type max-instance-lifetime
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type max-number-of-auto-scaling-groups
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type max-number-of-launch-configurations
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type max-records smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-structure memory-gi-bper-vcpu-request common-lisp:nil
                                    ((min :target-type nullable-positive-double
                                      :member-name "Min")
                                     (max :target-type nullable-positive-double
                                      :member-name "Max"))
                                    (:shape-name "MemoryGiBPerVCpuRequest"))

(smithy/sdk/shapes:define-structure memory-mi-brequest common-lisp:nil
                                    ((min :target-type
                                      nullable-positive-integer :required
                                      common-lisp:t :member-name "Min")
                                     (max :target-type
                                      nullable-positive-integer :member-name
                                      "Max"))
                                    (:shape-name "MemoryMiBRequest"))

(smithy/sdk/shapes:define-structure metric common-lisp:nil
                                    ((namespace :target-type metric-namespace
                                      :required common-lisp:t :member-name
                                      "Namespace")
                                     (metric-name :target-type metric-name
                                      :required common-lisp:t :member-name
                                      "MetricName")
                                     (dimensions :target-type metric-dimensions
                                      :member-name "Dimensions"))
                                    (:shape-name "Metric"))

(smithy/sdk/shapes:define-structure metric-collection-type common-lisp:nil
                                    ((metric :target-type xml-string-max-len255
                                      :member-name "Metric"))
                                    (:shape-name "MetricCollectionType"))

(smithy/sdk/shapes:define-list metric-collection-types :member
                               metric-collection-type)

(smithy/sdk/shapes:define-list metric-data-queries :member metric-data-query)

(smithy/sdk/shapes:define-structure metric-data-query common-lisp:nil
                                    ((id :target-type xml-string-max-len255
                                      :required common-lisp:t :member-name
                                      "Id")
                                     (expression :target-type
                                      xml-string-max-len1023 :member-name
                                      "Expression")
                                     (metric-stat :target-type metric-stat
                                      :member-name "MetricStat")
                                     (label :target-type
                                      xml-string-metric-label :member-name
                                      "Label")
                                     (return-data :target-type return-data
                                      :member-name "ReturnData"))
                                    (:shape-name "MetricDataQuery"))

(smithy/sdk/shapes:define-structure metric-dimension common-lisp:nil
                                    ((name :target-type metric-dimension-name
                                      :required common-lisp:t :member-name
                                      "Name")
                                     (value :target-type metric-dimension-value
                                      :required common-lisp:t :member-name
                                      "Value"))
                                    (:shape-name "MetricDimension"))

(smithy/sdk/shapes:define-type metric-dimension-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type metric-dimension-value
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list metric-dimensions :member metric-dimension)

(smithy/sdk/shapes:define-type metric-granularity-in-seconds
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-structure metric-granularity-type common-lisp:nil
                                    ((granularity :target-type
                                      xml-string-max-len255 :member-name
                                      "Granularity"))
                                    (:shape-name "MetricGranularityType"))

(smithy/sdk/shapes:define-list metric-granularity-types :member
                               metric-granularity-type)

(smithy/sdk/shapes:define-type metric-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type metric-namespace smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type metric-scale smithy/sdk/smithy-types:double)

(smithy/sdk/shapes:define-structure metric-stat common-lisp:nil
                                    ((metric :target-type metric :required
                                      common-lisp:t :member-name "Metric")
                                     (stat :target-type xml-string-metric-stat
                                      :required common-lisp:t :member-name
                                      "Stat")
                                     (unit :target-type metric-unit
                                      :member-name "Unit"))
                                    (:shape-name "MetricStat"))

(smithy/sdk/shapes:define-enum metric-statistic
    common-lisp:nil
  (:average "Average")
  (:minimum "Minimum")
  (:maximum "Maximum")
  (:sample-count "SampleCount")
  (:sum "Sum"))

(smithy/sdk/shapes:define-enum metric-type
    common-lisp:nil
  (:asgaverage-cpuutilization "ASGAverageCPUUtilization")
  (:asgaverage-network-in "ASGAverageNetworkIn")
  (:asgaverage-network-out "ASGAverageNetworkOut")
  (:albrequest-count-per-target "ALBRequestCountPerTarget"))

(smithy/sdk/shapes:define-type metric-unit smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list metrics :member xml-string-max-len255)

(smithy/sdk/shapes:define-type min-adjustment-magnitude
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type min-adjustment-step
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type mixed-instance-spot-price
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure mixed-instances-policy common-lisp:nil
                                    ((launch-template :target-type
                                      launch-template :member-name
                                      "LaunchTemplate")
                                     (instances-distribution :target-type
                                      instances-distribution :member-name
                                      "InstancesDistribution"))
                                    (:shape-name "MixedInstancesPolicy"))

(smithy/sdk/shapes:define-type monitoring-enabled
                               smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-structure network-bandwidth-gbps-request
                                    common-lisp:nil
                                    ((min :target-type nullable-positive-double
                                      :member-name "Min")
                                     (max :target-type nullable-positive-double
                                      :member-name "Max"))
                                    (:shape-name "NetworkBandwidthGbpsRequest"))

(smithy/sdk/shapes:define-structure network-interface-count-request
                                    common-lisp:nil
                                    ((min :target-type
                                      nullable-positive-integer :member-name
                                      "Min")
                                     (max :target-type
                                      nullable-positive-integer :member-name
                                      "Max"))
                                    (:shape-name
                                     "NetworkInterfaceCountRequest"))

(smithy/sdk/shapes:define-type no-device smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-type non-zero-int-percent
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-structure notification-configuration common-lisp:nil
                                    ((auto-scaling-group-name :target-type
                                      xml-string-max-len255 :member-name
                                      "AutoScalingGroupName")
                                     (topic-arn :target-type
                                      xml-string-max-len255 :member-name
                                      "TopicARN")
                                     (notification-type :target-type
                                      xml-string-max-len255 :member-name
                                      "NotificationType"))
                                    (:shape-name "NotificationConfiguration"))

(smithy/sdk/shapes:define-list notification-configurations :member
                               notification-configuration)

(smithy/sdk/shapes:define-type notification-target-resource-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type nullable-boolean smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-type nullable-positive-double
                               smithy/sdk/smithy-types:double)

(smithy/sdk/shapes:define-type nullable-positive-integer
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type number-of-auto-scaling-groups
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type number-of-launch-configurations
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type on-demand-base-capacity
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type on-demand-percentage-above-base-capacity
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-list overrides :member launch-template-overrides)

(smithy/sdk/shapes:define-structure performance-factor-reference-request
                                    common-lisp:nil
                                    ((instance-family :target-type string
                                      :member-name "InstanceFamily"))
                                    (:shape-name
                                     "PerformanceFactorReferenceRequest"))

(smithy/sdk/shapes:define-list performance-factor-reference-set-request :member
                               (performance-factor-reference-request :xml-name
                                "item"))

(smithy/sdk/shapes:define-structure policies-type common-lisp:nil
                                    ((scaling-policies :target-type
                                      scaling-policies :member-name
                                      "ScalingPolicies")
                                     (next-token :target-type xml-string
                                      :member-name "NextToken"))
                                    (:shape-name "PoliciesType"))

(smithy/sdk/shapes:define-structure policy-arntype common-lisp:nil
                                    ((policy-arn :target-type resource-name
                                      :member-name "PolicyARN")
                                     (alarms :target-type alarms :member-name
                                      "Alarms"))
                                    (:shape-name "PolicyARNType"))

(smithy/sdk/shapes:define-type policy-increment smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-list policy-names :member resource-name)

(smithy/sdk/shapes:define-list policy-types :member xml-string-max-len64)

(smithy/sdk/shapes:define-enum predefined-load-metric-type
    common-lisp:nil
  (:asgtotal-cpuutilization "ASGTotalCPUUtilization")
  (:asgtotal-network-in "ASGTotalNetworkIn")
  (:asgtotal-network-out "ASGTotalNetworkOut")
  (:albtarget-group-request-count "ALBTargetGroupRequestCount"))

(smithy/sdk/shapes:define-enum predefined-metric-pair-type
    common-lisp:nil
  (:asgcpuutilization "ASGCPUUtilization")
  (:asgnetwork-in "ASGNetworkIn")
  (:asgnetwork-out "ASGNetworkOut")
  (:albrequest-count "ALBRequestCount"))

(smithy/sdk/shapes:define-structure predefined-metric-specification
                                    common-lisp:nil
                                    ((predefined-metric-type :target-type
                                      metric-type :required common-lisp:t
                                      :member-name "PredefinedMetricType")
                                     (resource-label :target-type
                                      xml-string-max-len1023 :member-name
                                      "ResourceLabel"))
                                    (:shape-name
                                     "PredefinedMetricSpecification"))

(smithy/sdk/shapes:define-enum predefined-scaling-metric-type
    common-lisp:nil
  (:asgaverage-cpuutilization "ASGAverageCPUUtilization")
  (:asgaverage-network-in "ASGAverageNetworkIn")
  (:asgaverage-network-out "ASGAverageNetworkOut")
  (:albrequest-count-per-target "ALBRequestCountPerTarget"))

(smithy/sdk/shapes:define-structure predictive-scaling-configuration
                                    common-lisp:nil
                                    ((metric-specifications :target-type
                                      predictive-scaling-metric-specifications
                                      :required common-lisp:t :member-name
                                      "MetricSpecifications")
                                     (mode :target-type predictive-scaling-mode
                                      :member-name "Mode")
                                     (scheduling-buffer-time :target-type
                                      predictive-scaling-scheduling-buffer-time
                                      :member-name "SchedulingBufferTime")
                                     (max-capacity-breach-behavior :target-type
                                      predictive-scaling-max-capacity-breach-behavior
                                      :member-name "MaxCapacityBreachBehavior")
                                     (max-capacity-buffer :target-type
                                      predictive-scaling-max-capacity-buffer
                                      :member-name "MaxCapacityBuffer"))
                                    (:shape-name
                                     "PredictiveScalingConfiguration"))

(smithy/sdk/shapes:define-structure
 predictive-scaling-customized-capacity-metric common-lisp:nil
 ((metric-data-queries :target-type metric-data-queries :required common-lisp:t
   :member-name "MetricDataQueries"))
 (:shape-name "PredictiveScalingCustomizedCapacityMetric"))

(smithy/sdk/shapes:define-structure predictive-scaling-customized-load-metric
                                    common-lisp:nil
                                    ((metric-data-queries :target-type
                                      metric-data-queries :required
                                      common-lisp:t :member-name
                                      "MetricDataQueries"))
                                    (:shape-name
                                     "PredictiveScalingCustomizedLoadMetric"))

(smithy/sdk/shapes:define-structure
 predictive-scaling-customized-scaling-metric common-lisp:nil
 ((metric-data-queries :target-type metric-data-queries :required common-lisp:t
   :member-name "MetricDataQueries"))
 (:shape-name "PredictiveScalingCustomizedScalingMetric"))

(smithy/sdk/shapes:define-list predictive-scaling-forecast-timestamps :member
                               timestamp-type)

(smithy/sdk/shapes:define-list predictive-scaling-forecast-values :member
                               metric-scale)

(smithy/sdk/shapes:define-enum predictive-scaling-max-capacity-breach-behavior
    common-lisp:nil
  (:honor-max-capacity "HonorMaxCapacity")
  (:increase-max-capacity "IncreaseMaxCapacity"))

(smithy/sdk/shapes:define-type predictive-scaling-max-capacity-buffer
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-structure predictive-scaling-metric-specification
                                    common-lisp:nil
                                    ((target-value :target-type metric-scale
                                      :required common-lisp:t :member-name
                                      "TargetValue")
                                     (predefined-metric-pair-specification
                                      :target-type
                                      predictive-scaling-predefined-metric-pair
                                      :member-name
                                      "PredefinedMetricPairSpecification")
                                     (predefined-scaling-metric-specification
                                      :target-type
                                      predictive-scaling-predefined-scaling-metric
                                      :member-name
                                      "PredefinedScalingMetricSpecification")
                                     (predefined-load-metric-specification
                                      :target-type
                                      predictive-scaling-predefined-load-metric
                                      :member-name
                                      "PredefinedLoadMetricSpecification")
                                     (customized-scaling-metric-specification
                                      :target-type
                                      predictive-scaling-customized-scaling-metric
                                      :member-name
                                      "CustomizedScalingMetricSpecification")
                                     (customized-load-metric-specification
                                      :target-type
                                      predictive-scaling-customized-load-metric
                                      :member-name
                                      "CustomizedLoadMetricSpecification")
                                     (customized-capacity-metric-specification
                                      :target-type
                                      predictive-scaling-customized-capacity-metric
                                      :member-name
                                      "CustomizedCapacityMetricSpecification"))
                                    (:shape-name
                                     "PredictiveScalingMetricSpecification"))

(smithy/sdk/shapes:define-list predictive-scaling-metric-specifications :member
                               predictive-scaling-metric-specification)

(smithy/sdk/shapes:define-enum predictive-scaling-mode
    common-lisp:nil
  (:forecast-and-scale "ForecastAndScale")
  (:forecast-only "ForecastOnly"))

(smithy/sdk/shapes:define-structure predictive-scaling-predefined-load-metric
                                    common-lisp:nil
                                    ((predefined-metric-type :target-type
                                      predefined-load-metric-type :required
                                      common-lisp:t :member-name
                                      "PredefinedMetricType")
                                     (resource-label :target-type
                                      xml-string-max-len1023 :member-name
                                      "ResourceLabel"))
                                    (:shape-name
                                     "PredictiveScalingPredefinedLoadMetric"))

(smithy/sdk/shapes:define-structure predictive-scaling-predefined-metric-pair
                                    common-lisp:nil
                                    ((predefined-metric-type :target-type
                                      predefined-metric-pair-type :required
                                      common-lisp:t :member-name
                                      "PredefinedMetricType")
                                     (resource-label :target-type
                                      xml-string-max-len1023 :member-name
                                      "ResourceLabel"))
                                    (:shape-name
                                     "PredictiveScalingPredefinedMetricPair"))

(smithy/sdk/shapes:define-structure
 predictive-scaling-predefined-scaling-metric common-lisp:nil
 ((predefined-metric-type :target-type predefined-scaling-metric-type :required
   common-lisp:t :member-name "PredefinedMetricType")
  (resource-label :target-type xml-string-max-len1023 :member-name
   "ResourceLabel"))
 (:shape-name "PredictiveScalingPredefinedScalingMetric"))

(smithy/sdk/shapes:define-type predictive-scaling-scheduling-buffer-time
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-list process-names :member xml-string-max-len255)

(smithy/sdk/shapes:define-structure process-type common-lisp:nil
                                    ((process-name :target-type
                                      xml-string-max-len255 :required
                                      common-lisp:t :member-name
                                      "ProcessName"))
                                    (:shape-name "ProcessType"))

(smithy/sdk/shapes:define-list processes :member process-type)

(smithy/sdk/shapes:define-structure processes-type common-lisp:nil
                                    ((processes :target-type processes
                                      :member-name "Processes"))
                                    (:shape-name "ProcessesType"))

(smithy/sdk/shapes:define-type progress smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type propagate-at-launch
                               smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-type protected-from-scale-in
                               smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-structure put-lifecycle-hook-answer common-lisp:nil
                                    common-lisp:nil
                                    (:shape-name "PutLifecycleHookAnswer"))

(smithy/sdk/shapes:define-structure put-lifecycle-hook-type common-lisp:nil
                                    ((lifecycle-hook-name :target-type
                                      ascii-string-max-len255 :required
                                      common-lisp:t :member-name
                                      "LifecycleHookName")
                                     (auto-scaling-group-name :target-type
                                      xml-string-max-len255 :required
                                      common-lisp:t :member-name
                                      "AutoScalingGroupName")
                                     (lifecycle-transition :target-type
                                      lifecycle-transition :member-name
                                      "LifecycleTransition")
                                     (role-arn :target-type
                                      xml-string-max-len255 :member-name
                                      "RoleARN")
                                     (notification-target-arn :target-type
                                      notification-target-resource-name
                                      :member-name "NotificationTargetARN")
                                     (notification-metadata :target-type
                                      any-printable-ascii-string-max-len4000
                                      :member-name "NotificationMetadata")
                                     (heartbeat-timeout :target-type
                                      heartbeat-timeout :member-name
                                      "HeartbeatTimeout")
                                     (default-result :target-type
                                      lifecycle-action-result :member-name
                                      "DefaultResult"))
                                    (:shape-name "PutLifecycleHookType"))

(smithy/sdk/shapes:define-structure put-notification-configuration-type
                                    common-lisp:nil
                                    ((auto-scaling-group-name :target-type
                                      xml-string-max-len255 :required
                                      common-lisp:t :member-name
                                      "AutoScalingGroupName")
                                     (topic-arn :target-type
                                      xml-string-max-len255 :required
                                      common-lisp:t :member-name "TopicARN")
                                     (notification-types :target-type
                                      auto-scaling-notification-types :required
                                      common-lisp:t :member-name
                                      "NotificationTypes"))
                                    (:shape-name
                                     "PutNotificationConfigurationType"))

(smithy/sdk/shapes:define-structure put-scaling-policy-type common-lisp:nil
                                    ((auto-scaling-group-name :target-type
                                      xml-string-max-len255 :required
                                      common-lisp:t :member-name
                                      "AutoScalingGroupName")
                                     (policy-name :target-type
                                      xml-string-max-len255 :required
                                      common-lisp:t :member-name "PolicyName")
                                     (policy-type :target-type
                                      xml-string-max-len64 :member-name
                                      "PolicyType")
                                     (adjustment-type :target-type
                                      xml-string-max-len255 :member-name
                                      "AdjustmentType")
                                     (min-adjustment-step :target-type
                                      min-adjustment-step :member-name
                                      "MinAdjustmentStep")
                                     (min-adjustment-magnitude :target-type
                                      min-adjustment-magnitude :member-name
                                      "MinAdjustmentMagnitude")
                                     (scaling-adjustment :target-type
                                      policy-increment :member-name
                                      "ScalingAdjustment")
                                     (cooldown :target-type cooldown
                                      :member-name "Cooldown")
                                     (metric-aggregation-type :target-type
                                      xml-string-max-len32 :member-name
                                      "MetricAggregationType")
                                     (step-adjustments :target-type
                                      step-adjustments :member-name
                                      "StepAdjustments")
                                     (estimated-instance-warmup :target-type
                                      estimated-instance-warmup :member-name
                                      "EstimatedInstanceWarmup")
                                     (target-tracking-configuration
                                      :target-type
                                      target-tracking-configuration
                                      :member-name
                                      "TargetTrackingConfiguration")
                                     (enabled :target-type
                                      scaling-policy-enabled :member-name
                                      "Enabled")
                                     (predictive-scaling-configuration
                                      :target-type
                                      predictive-scaling-configuration
                                      :member-name
                                      "PredictiveScalingConfiguration"))
                                    (:shape-name "PutScalingPolicyType"))

(smithy/sdk/shapes:define-structure put-scheduled-update-group-action-type
                                    common-lisp:nil
                                    ((auto-scaling-group-name :target-type
                                      xml-string-max-len255 :required
                                      common-lisp:t :member-name
                                      "AutoScalingGroupName")
                                     (scheduled-action-name :target-type
                                      xml-string-max-len255 :required
                                      common-lisp:t :member-name
                                      "ScheduledActionName")
                                     (time :target-type timestamp-type
                                      :member-name "Time")
                                     (start-time :target-type timestamp-type
                                      :member-name "StartTime")
                                     (end-time :target-type timestamp-type
                                      :member-name "EndTime")
                                     (recurrence :target-type
                                      xml-string-max-len255 :member-name
                                      "Recurrence")
                                     (min-size :target-type
                                      auto-scaling-group-min-size :member-name
                                      "MinSize")
                                     (max-size :target-type
                                      auto-scaling-group-max-size :member-name
                                      "MaxSize")
                                     (desired-capacity :target-type
                                      auto-scaling-group-desired-capacity
                                      :member-name "DesiredCapacity")
                                     (time-zone :target-type
                                      xml-string-max-len255 :member-name
                                      "TimeZone"))
                                    (:shape-name
                                     "PutScheduledUpdateGroupActionType"))

(smithy/sdk/shapes:define-structure put-warm-pool-answer common-lisp:nil
                                    common-lisp:nil
                                    (:shape-name "PutWarmPoolAnswer"))

(smithy/sdk/shapes:define-structure put-warm-pool-type common-lisp:nil
                                    ((auto-scaling-group-name :target-type
                                      xml-string-max-len255 :required
                                      common-lisp:t :member-name
                                      "AutoScalingGroupName")
                                     (max-group-prepared-capacity :target-type
                                      max-group-prepared-capacity :member-name
                                      "MaxGroupPreparedCapacity")
                                     (min-size :target-type warm-pool-min-size
                                      :member-name "MinSize")
                                     (pool-state :target-type warm-pool-state
                                      :member-name "PoolState")
                                     (instance-reuse-policy :target-type
                                      instance-reuse-policy :member-name
                                      "InstanceReusePolicy"))
                                    (:shape-name "PutWarmPoolType"))

(smithy/sdk/shapes:define-structure record-lifecycle-action-heartbeat-answer
                                    common-lisp:nil common-lisp:nil
                                    (:shape-name
                                     "RecordLifecycleActionHeartbeatAnswer"))

(smithy/sdk/shapes:define-structure record-lifecycle-action-heartbeat-type
                                    common-lisp:nil
                                    ((lifecycle-hook-name :target-type
                                      ascii-string-max-len255 :required
                                      common-lisp:t :member-name
                                      "LifecycleHookName")
                                     (auto-scaling-group-name :target-type
                                      resource-name :required common-lisp:t
                                      :member-name "AutoScalingGroupName")
                                     (lifecycle-action-token :target-type
                                      lifecycle-action-token :member-name
                                      "LifecycleActionToken")
                                     (instance-id :target-type
                                      xml-string-max-len19 :member-name
                                      "InstanceId"))
                                    (:shape-name
                                     "RecordLifecycleActionHeartbeatType"))

(smithy/sdk/shapes:define-type refresh-instance-warmup
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-structure refresh-preferences common-lisp:nil
                                    ((min-healthy-percentage :target-type
                                      int-percent :member-name
                                      "MinHealthyPercentage")
                                     (instance-warmup :target-type
                                      refresh-instance-warmup :member-name
                                      "InstanceWarmup")
                                     (checkpoint-percentages :target-type
                                      checkpoint-percentages :member-name
                                      "CheckpointPercentages")
                                     (checkpoint-delay :target-type
                                      checkpoint-delay :member-name
                                      "CheckpointDelay")
                                     (skip-matching :target-type skip-matching
                                      :member-name "SkipMatching")
                                     (auto-rollback :target-type auto-rollback
                                      :member-name "AutoRollback")
                                     (scale-in-protected-instances :target-type
                                      scale-in-protected-instances :member-name
                                      "ScaleInProtectedInstances")
                                     (standby-instances :target-type
                                      standby-instances :member-name
                                      "StandbyInstances")
                                     (alarm-specification :target-type
                                      alarm-specification :member-name
                                      "AlarmSpecification")
                                     (max-healthy-percentage :target-type
                                      int-percent100to200 :member-name
                                      "MaxHealthyPercentage")
                                     (bake-time :target-type bake-time
                                      :member-name "BakeTime"))
                                    (:shape-name "RefreshPreferences"))

(smithy/sdk/shapes:define-enum refresh-strategy
    common-lisp:nil
  (:rolling "Rolling"))

(smithy/sdk/shapes:define-error resource-contention-fault common-lisp:nil
                                ((message :target-type xml-string-max-len255
                                  :member-name "message"))
                                (:shape-name "ResourceContentionFault")
                                (:error-code 500))

(smithy/sdk/shapes:define-error resource-in-use-fault common-lisp:nil
                                ((message :target-type xml-string-max-len255
                                  :member-name "message"))
                                (:shape-name "ResourceInUseFault")
                                (:error-code 400))

(smithy/sdk/shapes:define-type resource-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type return-data smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-type reuse-on-scale-in
                               smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-structure rollback-details common-lisp:nil
                                    ((rollback-reason :target-type
                                      xml-string-max-len1023 :member-name
                                      "RollbackReason")
                                     (rollback-start-time :target-type
                                      timestamp-type :member-name
                                      "RollbackStartTime")
                                     (percentage-complete-on-rollback
                                      :target-type int-percent :member-name
                                      "PercentageCompleteOnRollback")
                                     (instances-to-update-on-rollback
                                      :target-type instances-to-update
                                      :member-name
                                      "InstancesToUpdateOnRollback")
                                     (progress-details-on-rollback :target-type
                                      instance-refresh-progress-details
                                      :member-name
                                      "ProgressDetailsOnRollback"))
                                    (:shape-name "RollbackDetails"))

(smithy/sdk/shapes:define-structure rollback-instance-refresh-answer
                                    common-lisp:nil
                                    ((instance-refresh-id :target-type
                                      xml-string-max-len255 :member-name
                                      "InstanceRefreshId"))
                                    (:shape-name
                                     "RollbackInstanceRefreshAnswer"))

(smithy/sdk/shapes:define-structure rollback-instance-refresh-type
                                    common-lisp:nil
                                    ((auto-scaling-group-name :target-type
                                      xml-string-max-len255 :required
                                      common-lisp:t :member-name
                                      "AutoScalingGroupName"))
                                    (:shape-name "RollbackInstanceRefreshType"))

(smithy/sdk/shapes:define-enum scale-in-protected-instances
    common-lisp:nil
  (:refresh "Refresh")
  (:ignore "Ignore")
  (:wait "Wait"))

(smithy/sdk/shapes:define-error scaling-activity-in-progress-fault
                                common-lisp:nil
                                ((message :target-type xml-string-max-len255
                                  :member-name "message"))
                                (:shape-name "ScalingActivityInProgressFault")
                                (:error-code 400))

(smithy/sdk/shapes:define-enum scaling-activity-status-code
    common-lisp:nil
  (:pending-spot-bid-placement "PendingSpotBidPlacement")
  (:waiting-for-spot-instance-request-id "WaitingForSpotInstanceRequestId")
  (:waiting-for-spot-instance-id "WaitingForSpotInstanceId")
  (:waiting-for-instance-id "WaitingForInstanceId")
  (:pre-in-service "PreInService")
  (:in-progress "InProgress")
  (:waiting-for-elbconnection-draining "WaitingForELBConnectionDraining")
  (:mid-lifecycle-action "MidLifecycleAction")
  (:waiting-for-instance-warmup "WaitingForInstanceWarmup")
  (:successful "Successful")
  (:failed "Failed")
  (:cancelled "Cancelled")
  (:waiting-for-connection-draining "WaitingForConnectionDraining"))

(smithy/sdk/shapes:define-list scaling-policies :member scaling-policy)

(smithy/sdk/shapes:define-structure scaling-policy common-lisp:nil
                                    ((auto-scaling-group-name :target-type
                                      xml-string-max-len255 :member-name
                                      "AutoScalingGroupName")
                                     (policy-name :target-type
                                      xml-string-max-len255 :member-name
                                      "PolicyName")
                                     (policy-arn :target-type resource-name
                                      :member-name "PolicyARN")
                                     (policy-type :target-type
                                      xml-string-max-len64 :member-name
                                      "PolicyType")
                                     (adjustment-type :target-type
                                      xml-string-max-len255 :member-name
                                      "AdjustmentType")
                                     (min-adjustment-step :target-type
                                      min-adjustment-step :member-name
                                      "MinAdjustmentStep")
                                     (min-adjustment-magnitude :target-type
                                      min-adjustment-magnitude :member-name
                                      "MinAdjustmentMagnitude")
                                     (scaling-adjustment :target-type
                                      policy-increment :member-name
                                      "ScalingAdjustment")
                                     (cooldown :target-type cooldown
                                      :member-name "Cooldown")
                                     (step-adjustments :target-type
                                      step-adjustments :member-name
                                      "StepAdjustments")
                                     (metric-aggregation-type :target-type
                                      xml-string-max-len32 :member-name
                                      "MetricAggregationType")
                                     (estimated-instance-warmup :target-type
                                      estimated-instance-warmup :member-name
                                      "EstimatedInstanceWarmup")
                                     (alarms :target-type alarms :member-name
                                      "Alarms")
                                     (target-tracking-configuration
                                      :target-type
                                      target-tracking-configuration
                                      :member-name
                                      "TargetTrackingConfiguration")
                                     (enabled :target-type
                                      scaling-policy-enabled :member-name
                                      "Enabled")
                                     (predictive-scaling-configuration
                                      :target-type
                                      predictive-scaling-configuration
                                      :member-name
                                      "PredictiveScalingConfiguration"))
                                    (:shape-name "ScalingPolicy"))

(smithy/sdk/shapes:define-type scaling-policy-enabled
                               smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-structure scaling-process-query common-lisp:nil
                                    ((auto-scaling-group-name :target-type
                                      xml-string-max-len255 :required
                                      common-lisp:t :member-name
                                      "AutoScalingGroupName")
                                     (scaling-processes :target-type
                                      process-names :member-name
                                      "ScalingProcesses"))
                                    (:shape-name "ScalingProcessQuery"))

(smithy/sdk/shapes:define-list scheduled-action-names :member
                               xml-string-max-len255)

(smithy/sdk/shapes:define-structure scheduled-actions-type common-lisp:nil
                                    ((scheduled-update-group-actions
                                      :target-type
                                      scheduled-update-group-actions
                                      :member-name
                                      "ScheduledUpdateGroupActions")
                                     (next-token :target-type xml-string
                                      :member-name "NextToken"))
                                    (:shape-name "ScheduledActionsType"))

(smithy/sdk/shapes:define-structure scheduled-update-group-action
                                    common-lisp:nil
                                    ((auto-scaling-group-name :target-type
                                      xml-string-max-len255 :member-name
                                      "AutoScalingGroupName")
                                     (scheduled-action-name :target-type
                                      xml-string-max-len255 :member-name
                                      "ScheduledActionName")
                                     (scheduled-action-arn :target-type
                                      resource-name :member-name
                                      "ScheduledActionARN")
                                     (time :target-type timestamp-type
                                      :member-name "Time")
                                     (start-time :target-type timestamp-type
                                      :member-name "StartTime")
                                     (end-time :target-type timestamp-type
                                      :member-name "EndTime")
                                     (recurrence :target-type
                                      xml-string-max-len255 :member-name
                                      "Recurrence")
                                     (min-size :target-type
                                      auto-scaling-group-min-size :member-name
                                      "MinSize")
                                     (max-size :target-type
                                      auto-scaling-group-max-size :member-name
                                      "MaxSize")
                                     (desired-capacity :target-type
                                      auto-scaling-group-desired-capacity
                                      :member-name "DesiredCapacity")
                                     (time-zone :target-type
                                      xml-string-max-len255 :member-name
                                      "TimeZone"))
                                    (:shape-name "ScheduledUpdateGroupAction"))

(smithy/sdk/shapes:define-structure scheduled-update-group-action-request
                                    common-lisp:nil
                                    ((scheduled-action-name :target-type
                                      xml-string-max-len255 :required
                                      common-lisp:t :member-name
                                      "ScheduledActionName")
                                     (start-time :target-type timestamp-type
                                      :member-name "StartTime")
                                     (end-time :target-type timestamp-type
                                      :member-name "EndTime")
                                     (recurrence :target-type
                                      xml-string-max-len255 :member-name
                                      "Recurrence")
                                     (min-size :target-type
                                      auto-scaling-group-min-size :member-name
                                      "MinSize")
                                     (max-size :target-type
                                      auto-scaling-group-max-size :member-name
                                      "MaxSize")
                                     (desired-capacity :target-type
                                      auto-scaling-group-desired-capacity
                                      :member-name "DesiredCapacity")
                                     (time-zone :target-type
                                      xml-string-max-len255 :member-name
                                      "TimeZone"))
                                    (:shape-name
                                     "ScheduledUpdateGroupActionRequest"))

(smithy/sdk/shapes:define-list scheduled-update-group-action-requests :member
                               scheduled-update-group-action-request)

(smithy/sdk/shapes:define-list scheduled-update-group-actions :member
                               scheduled-update-group-action)

(smithy/sdk/shapes:define-list security-groups :member xml-string)

(smithy/sdk/shapes:define-error service-linked-role-failure common-lisp:nil
                                ((message :target-type xml-string-max-len255
                                  :member-name "message"))
                                (:shape-name "ServiceLinkedRoleFailure")
                                (:error-code 500))

(smithy/sdk/shapes:define-structure set-desired-capacity-type common-lisp:nil
                                    ((auto-scaling-group-name :target-type
                                      xml-string-max-len255 :required
                                      common-lisp:t :member-name
                                      "AutoScalingGroupName")
                                     (desired-capacity :target-type
                                      auto-scaling-group-desired-capacity
                                      :required common-lisp:t :member-name
                                      "DesiredCapacity")
                                     (honor-cooldown :target-type
                                      honor-cooldown :member-name
                                      "HonorCooldown"))
                                    (:shape-name "SetDesiredCapacityType"))

(smithy/sdk/shapes:define-structure set-instance-health-query common-lisp:nil
                                    ((instance-id :target-type
                                      xml-string-max-len19 :required
                                      common-lisp:t :member-name "InstanceId")
                                     (health-status :target-type
                                      xml-string-max-len32 :required
                                      common-lisp:t :member-name
                                      "HealthStatus")
                                     (should-respect-grace-period :target-type
                                      should-respect-grace-period :member-name
                                      "ShouldRespectGracePeriod"))
                                    (:shape-name "SetInstanceHealthQuery"))

(smithy/sdk/shapes:define-structure set-instance-protection-answer
                                    common-lisp:nil common-lisp:nil
                                    (:shape-name "SetInstanceProtectionAnswer"))

(smithy/sdk/shapes:define-structure set-instance-protection-query
                                    common-lisp:nil
                                    ((instance-ids :target-type instance-ids
                                      :required common-lisp:t :member-name
                                      "InstanceIds")
                                     (auto-scaling-group-name :target-type
                                      xml-string-max-len255 :required
                                      common-lisp:t :member-name
                                      "AutoScalingGroupName")
                                     (protected-from-scale-in :target-type
                                      protected-from-scale-in :required
                                      common-lisp:t :member-name
                                      "ProtectedFromScaleIn"))
                                    (:shape-name "SetInstanceProtectionQuery"))

(smithy/sdk/shapes:define-type should-decrement-desired-capacity
                               smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-type should-respect-grace-period
                               smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-type skip-matching smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-type skip-zonal-shift-validation
                               smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-type spot-instance-pools
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type spot-price smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum standby-instances
    common-lisp:nil
  (:terminate "Terminate")
  (:ignore "Ignore")
  (:wait "Wait"))

(smithy/sdk/shapes:define-structure start-instance-refresh-answer
                                    common-lisp:nil
                                    ((instance-refresh-id :target-type
                                      xml-string-max-len255 :member-name
                                      "InstanceRefreshId"))
                                    (:shape-name "StartInstanceRefreshAnswer"))

(smithy/sdk/shapes:define-structure start-instance-refresh-type common-lisp:nil
                                    ((auto-scaling-group-name :target-type
                                      xml-string-max-len255 :required
                                      common-lisp:t :member-name
                                      "AutoScalingGroupName")
                                     (strategy :target-type refresh-strategy
                                      :member-name "Strategy")
                                     (desired-configuration :target-type
                                      desired-configuration :member-name
                                      "DesiredConfiguration")
                                     (preferences :target-type
                                      refresh-preferences :member-name
                                      "Preferences"))
                                    (:shape-name "StartInstanceRefreshType"))

(smithy/sdk/shapes:define-structure step-adjustment common-lisp:nil
                                    ((metric-interval-lower-bound :target-type
                                      metric-scale :member-name
                                      "MetricIntervalLowerBound")
                                     (metric-interval-upper-bound :target-type
                                      metric-scale :member-name
                                      "MetricIntervalUpperBound")
                                     (scaling-adjustment :target-type
                                      policy-increment :required common-lisp:t
                                      :member-name "ScalingAdjustment"))
                                    (:shape-name "StepAdjustment"))

(smithy/sdk/shapes:define-list step-adjustments :member step-adjustment)

(smithy/sdk/shapes:define-type string smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure suspended-process common-lisp:nil
                                    ((process-name :target-type
                                      xml-string-max-len255 :member-name
                                      "ProcessName")
                                     (suspension-reason :target-type
                                      xml-string-max-len255 :member-name
                                      "SuspensionReason"))
                                    (:shape-name "SuspendedProcess"))

(smithy/sdk/shapes:define-list suspended-processes :member suspended-process)

(smithy/sdk/shapes:define-structure tag common-lisp:nil
                                    ((resource-id :target-type xml-string
                                      :member-name "ResourceId")
                                     (resource-type :target-type xml-string
                                      :member-name "ResourceType")
                                     (key :target-type tag-key :required
                                      common-lisp:t :member-name "Key")
                                     (value :target-type tag-value :member-name
                                      "Value")
                                     (propagate-at-launch :target-type
                                      propagate-at-launch :member-name
                                      "PropagateAtLaunch"))
                                    (:shape-name "Tag"))

(smithy/sdk/shapes:define-structure tag-description common-lisp:nil
                                    ((resource-id :target-type xml-string
                                      :member-name "ResourceId")
                                     (resource-type :target-type xml-string
                                      :member-name "ResourceType")
                                     (key :target-type tag-key :member-name
                                      "Key")
                                     (value :target-type tag-value :member-name
                                      "Value")
                                     (propagate-at-launch :target-type
                                      propagate-at-launch :member-name
                                      "PropagateAtLaunch"))
                                    (:shape-name "TagDescription"))

(smithy/sdk/shapes:define-list tag-description-list :member tag-description)

(smithy/sdk/shapes:define-type tag-key smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type tag-value smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list tags :member tag)

(smithy/sdk/shapes:define-structure tags-type common-lisp:nil
                                    ((tags :target-type tag-description-list
                                      :member-name "Tags")
                                     (next-token :target-type xml-string
                                      :member-name "NextToken"))
                                    (:shape-name "TagsType"))

(smithy/sdk/shapes:define-list target-group-arns :member xml-string-max-len511)

(smithy/sdk/shapes:define-structure target-tracking-configuration
                                    common-lisp:nil
                                    ((predefined-metric-specification
                                      :target-type
                                      predefined-metric-specification
                                      :member-name
                                      "PredefinedMetricSpecification")
                                     (customized-metric-specification
                                      :target-type
                                      customized-metric-specification
                                      :member-name
                                      "CustomizedMetricSpecification")
                                     (target-value :target-type metric-scale
                                      :required common-lisp:t :member-name
                                      "TargetValue")
                                     (disable-scale-in :target-type
                                      disable-scale-in :member-name
                                      "DisableScaleIn"))
                                    (:shape-name "TargetTrackingConfiguration"))

(smithy/sdk/shapes:define-list target-tracking-metric-data-queries :member
                               target-tracking-metric-data-query)

(smithy/sdk/shapes:define-structure target-tracking-metric-data-query
                                    common-lisp:nil
                                    ((id :target-type xml-string-max-len64
                                      :required common-lisp:t :member-name
                                      "Id")
                                     (expression :target-type
                                      xml-string-max-len2047 :member-name
                                      "Expression")
                                     (metric-stat :target-type
                                      target-tracking-metric-stat :member-name
                                      "MetricStat")
                                     (label :target-type
                                      xml-string-metric-label :member-name
                                      "Label")
                                     (period :target-type
                                      metric-granularity-in-seconds
                                      :member-name "Period")
                                     (return-data :target-type return-data
                                      :member-name "ReturnData"))
                                    (:shape-name
                                     "TargetTrackingMetricDataQuery"))

(smithy/sdk/shapes:define-structure target-tracking-metric-stat common-lisp:nil
                                    ((metric :target-type metric :required
                                      common-lisp:t :member-name "Metric")
                                     (stat :target-type xml-string-metric-stat
                                      :required common-lisp:t :member-name
                                      "Stat")
                                     (unit :target-type metric-unit
                                      :member-name "Unit")
                                     (period :target-type
                                      metric-granularity-in-seconds
                                      :member-name "Period"))
                                    (:shape-name "TargetTrackingMetricStat"))

(smithy/sdk/shapes:define-structure
 terminate-instance-in-auto-scaling-group-type common-lisp:nil
 ((instance-id :target-type xml-string-max-len19 :required common-lisp:t
   :member-name "InstanceId")
  (should-decrement-desired-capacity :target-type
   should-decrement-desired-capacity :required common-lisp:t :member-name
   "ShouldDecrementDesiredCapacity"))
 (:shape-name "TerminateInstanceInAutoScalingGroupType"))

(smithy/sdk/shapes:define-list termination-policies :member
                               xml-string-max-len1600)

(smithy/sdk/shapes:define-type timestamp-type smithy/sdk/smithy-types:timestamp)

(smithy/sdk/shapes:define-structure total-local-storage-gbrequest
                                    common-lisp:nil
                                    ((min :target-type nullable-positive-double
                                      :member-name "Min")
                                     (max :target-type nullable-positive-double
                                      :member-name "Max"))
                                    (:shape-name "TotalLocalStorageGBRequest"))

(smithy/sdk/shapes:define-structure traffic-source-identifier common-lisp:nil
                                    ((identifier :target-type
                                      xml-string-max-len511 :required
                                      common-lisp:t :member-name "Identifier")
                                     (type :target-type xml-string-max-len511
                                      :member-name "Type"))
                                    (:shape-name "TrafficSourceIdentifier"))

(smithy/sdk/shapes:define-structure traffic-source-state common-lisp:nil
                                    ((traffic-source :target-type
                                      xml-string-max-len511 :member-name
                                      "TrafficSource")
                                     (state :target-type xml-string-max-len255
                                      :member-name "State")
                                     (identifier :target-type
                                      xml-string-max-len511 :member-name
                                      "Identifier")
                                     (type :target-type xml-string-max-len511
                                      :member-name "Type"))
                                    (:shape-name "TrafficSourceState"))

(smithy/sdk/shapes:define-list traffic-source-states :member
                               traffic-source-state)

(smithy/sdk/shapes:define-list traffic-sources :member
                               traffic-source-identifier)

(smithy/sdk/shapes:define-structure update-auto-scaling-group-type
                                    common-lisp:nil
                                    ((auto-scaling-group-name :target-type
                                      xml-string-max-len255 :required
                                      common-lisp:t :member-name
                                      "AutoScalingGroupName")
                                     (launch-configuration-name :target-type
                                      xml-string-max-len255 :member-name
                                      "LaunchConfigurationName")
                                     (launch-template :target-type
                                      launch-template-specification
                                      :member-name "LaunchTemplate")
                                     (mixed-instances-policy :target-type
                                      mixed-instances-policy :member-name
                                      "MixedInstancesPolicy")
                                     (min-size :target-type
                                      auto-scaling-group-min-size :member-name
                                      "MinSize")
                                     (max-size :target-type
                                      auto-scaling-group-max-size :member-name
                                      "MaxSize")
                                     (desired-capacity :target-type
                                      auto-scaling-group-desired-capacity
                                      :member-name "DesiredCapacity")
                                     (default-cooldown :target-type cooldown
                                      :member-name "DefaultCooldown")
                                     (availability-zones :target-type
                                      availability-zones :member-name
                                      "AvailabilityZones")
                                     (health-check-type :target-type
                                      xml-string-max-len32 :member-name
                                      "HealthCheckType")
                                     (health-check-grace-period :target-type
                                      health-check-grace-period :member-name
                                      "HealthCheckGracePeriod")
                                     (placement-group :target-type
                                      update-placement-group-param :member-name
                                      "PlacementGroup")
                                     (vpczone-identifier :target-type
                                      xml-string-max-len5000 :member-name
                                      "VPCZoneIdentifier")
                                     (termination-policies :target-type
                                      termination-policies :member-name
                                      "TerminationPolicies")
                                     (new-instances-protected-from-scale-in
                                      :target-type instance-protected
                                      :member-name
                                      "NewInstancesProtectedFromScaleIn")
                                     (service-linked-role-arn :target-type
                                      resource-name :member-name
                                      "ServiceLinkedRoleARN")
                                     (max-instance-lifetime :target-type
                                      max-instance-lifetime :member-name
                                      "MaxInstanceLifetime")
                                     (capacity-rebalance :target-type
                                      capacity-rebalance-enabled :member-name
                                      "CapacityRebalance")
                                     (context :target-type context :member-name
                                      "Context")
                                     (desired-capacity-type :target-type
                                      xml-string-max-len255 :member-name
                                      "DesiredCapacityType")
                                     (default-instance-warmup :target-type
                                      default-instance-warmup :member-name
                                      "DefaultInstanceWarmup")
                                     (instance-maintenance-policy :target-type
                                      instance-maintenance-policy :member-name
                                      "InstanceMaintenancePolicy")
                                     (availability-zone-distribution
                                      :target-type
                                      availability-zone-distribution
                                      :member-name
                                      "AvailabilityZoneDistribution")
                                     (availability-zone-impairment-policy
                                      :target-type
                                      availability-zone-impairment-policy
                                      :member-name
                                      "AvailabilityZoneImpairmentPolicy")
                                     (skip-zonal-shift-validation :target-type
                                      skip-zonal-shift-validation :member-name
                                      "SkipZonalShiftValidation")
                                     (capacity-reservation-specification
                                      :target-type
                                      capacity-reservation-specification
                                      :member-name
                                      "CapacityReservationSpecification"))
                                    (:shape-name "UpdateAutoScalingGroupType"))

(smithy/sdk/shapes:define-type update-placement-group-param
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure vcpu-count-request common-lisp:nil
                                    ((min :target-type
                                      nullable-positive-integer :required
                                      common-lisp:t :member-name "Min")
                                     (max :target-type
                                      nullable-positive-integer :member-name
                                      "Max"))
                                    (:shape-name "VCpuCountRequest"))

(smithy/sdk/shapes:define-list values :member xml-string)

(smithy/sdk/shapes:define-structure warm-pool-configuration common-lisp:nil
                                    ((max-group-prepared-capacity :target-type
                                      max-group-prepared-capacity :member-name
                                      "MaxGroupPreparedCapacity")
                                     (min-size :target-type warm-pool-min-size
                                      :member-name "MinSize")
                                     (pool-state :target-type warm-pool-state
                                      :member-name "PoolState")
                                     (status :target-type warm-pool-status
                                      :member-name "Status")
                                     (instance-reuse-policy :target-type
                                      instance-reuse-policy :member-name
                                      "InstanceReusePolicy"))
                                    (:shape-name "WarmPoolConfiguration"))

(smithy/sdk/shapes:define-type warm-pool-min-size
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type warm-pool-size smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-enum warm-pool-state
    common-lisp:nil
  (:stopped "Stopped")
  (:running "Running")
  (:hibernated "Hibernated"))

(smithy/sdk/shapes:define-enum warm-pool-status
    common-lisp:nil
  (:pending-delete "PendingDelete"))

(smithy/sdk/shapes:define-type xml-string smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type xml-string-max-len1023
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type xml-string-max-len1600
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type xml-string-max-len19
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type xml-string-max-len2047
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type xml-string-max-len255
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type xml-string-max-len32
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type xml-string-max-len5000
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type xml-string-max-len511
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type xml-string-max-len64
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type xml-string-metric-label
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type xml-string-metric-stat
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type xml-string-user-data
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type zonal-shift-enabled
                               smithy/sdk/smithy-types:boolean)

(smithy/sdk/operation:define-operation attach-instances :shape-name
                                       "AttachInstances" :input
                                       attach-instances-query :output
                                       common-lisp:null :errors
                                       (resource-contention-fault
                                        service-linked-role-failure))

(smithy/sdk/operation:define-operation attach-load-balancer-target-groups
                                       :shape-name
                                       "AttachLoadBalancerTargetGroups" :input
                                       attach-load-balancer-target-groups-type
                                       :output
                                       attach-load-balancer-target-groups-result-type
                                       :errors
                                       (resource-contention-fault
                                        service-linked-role-failure))

(smithy/sdk/operation:define-operation attach-load-balancers :shape-name
                                       "AttachLoadBalancers" :input
                                       attach-load-balancers-type :output
                                       attach-load-balancers-result-type
                                       :errors
                                       (resource-contention-fault
                                        service-linked-role-failure))

(smithy/sdk/operation:define-operation attach-traffic-sources :shape-name
                                       "AttachTrafficSources" :input
                                       attach-traffic-sources-type :output
                                       attach-traffic-sources-result-type
                                       :errors
                                       (resource-contention-fault
                                        service-linked-role-failure))

(smithy/sdk/operation:define-operation batch-delete-scheduled-action
                                       :shape-name "BatchDeleteScheduledAction"
                                       :input
                                       batch-delete-scheduled-action-type
                                       :output
                                       batch-delete-scheduled-action-answer
                                       :errors (resource-contention-fault))

(smithy/sdk/operation:define-operation batch-put-scheduled-update-group-action
                                       :shape-name
                                       "BatchPutScheduledUpdateGroupAction"
                                       :input
                                       batch-put-scheduled-update-group-action-type
                                       :output
                                       batch-put-scheduled-update-group-action-answer
                                       :errors
                                       (already-exists-fault
                                        limit-exceeded-fault
                                        resource-contention-fault))

(smithy/sdk/operation:define-operation cancel-instance-refresh :shape-name
                                       "CancelInstanceRefresh" :input
                                       cancel-instance-refresh-type :output
                                       cancel-instance-refresh-answer :errors
                                       (active-instance-refresh-not-found-fault
                                        limit-exceeded-fault
                                        resource-contention-fault))

(smithy/sdk/operation:define-operation complete-lifecycle-action :shape-name
                                       "CompleteLifecycleAction" :input
                                       complete-lifecycle-action-type :output
                                       complete-lifecycle-action-answer :errors
                                       (resource-contention-fault))

(smithy/sdk/operation:define-operation create-auto-scaling-group :shape-name
                                       "CreateAutoScalingGroup" :input
                                       create-auto-scaling-group-type :output
                                       common-lisp:null :errors
                                       (already-exists-fault
                                        limit-exceeded-fault
                                        resource-contention-fault
                                        service-linked-role-failure))

(smithy/sdk/operation:define-operation create-launch-configuration :shape-name
                                       "CreateLaunchConfiguration" :input
                                       create-launch-configuration-type :output
                                       common-lisp:null :errors
                                       (already-exists-fault
                                        limit-exceeded-fault
                                        resource-contention-fault))

(smithy/sdk/operation:define-operation create-or-update-tags :shape-name
                                       "CreateOrUpdateTags" :input
                                       create-or-update-tags-type :output
                                       common-lisp:null :errors
                                       (already-exists-fault
                                        limit-exceeded-fault
                                        resource-contention-fault
                                        resource-in-use-fault))

(smithy/sdk/operation:define-operation delete-auto-scaling-group :shape-name
                                       "DeleteAutoScalingGroup" :input
                                       delete-auto-scaling-group-type :output
                                       common-lisp:null :errors
                                       (resource-contention-fault
                                        resource-in-use-fault
                                        scaling-activity-in-progress-fault))

(smithy/sdk/operation:define-operation delete-launch-configuration :shape-name
                                       "DeleteLaunchConfiguration" :input
                                       launch-configuration-name-type :output
                                       common-lisp:null :errors
                                       (resource-contention-fault
                                        resource-in-use-fault))

(smithy/sdk/operation:define-operation delete-lifecycle-hook :shape-name
                                       "DeleteLifecycleHook" :input
                                       delete-lifecycle-hook-type :output
                                       delete-lifecycle-hook-answer :errors
                                       (resource-contention-fault))

(smithy/sdk/operation:define-operation delete-notification-configuration
                                       :shape-name
                                       "DeleteNotificationConfiguration" :input
                                       delete-notification-configuration-type
                                       :output common-lisp:null :errors
                                       (resource-contention-fault))

(smithy/sdk/operation:define-operation delete-policy :shape-name "DeletePolicy"
                                       :input delete-policy-type :output
                                       common-lisp:null :errors
                                       (resource-contention-fault
                                        service-linked-role-failure))

(smithy/sdk/operation:define-operation delete-scheduled-action :shape-name
                                       "DeleteScheduledAction" :input
                                       delete-scheduled-action-type :output
                                       common-lisp:null :errors
                                       (resource-contention-fault))

(smithy/sdk/operation:define-operation delete-tags :shape-name "DeleteTags"
                                       :input delete-tags-type :output
                                       common-lisp:null :errors
                                       (resource-contention-fault
                                        resource-in-use-fault))

(smithy/sdk/operation:define-operation delete-warm-pool :shape-name
                                       "DeleteWarmPool" :input
                                       delete-warm-pool-type :output
                                       delete-warm-pool-answer :errors
                                       (limit-exceeded-fault
                                        resource-contention-fault
                                        resource-in-use-fault
                                        scaling-activity-in-progress-fault))

(smithy/sdk/operation:define-operation describe-account-limits :shape-name
                                       "DescribeAccountLimits" :input
                                       common-lisp:null :output
                                       describe-account-limits-answer :errors
                                       (resource-contention-fault))

(smithy/sdk/operation:define-operation describe-adjustment-types :shape-name
                                       "DescribeAdjustmentTypes" :input
                                       common-lisp:null :output
                                       describe-adjustment-types-answer :errors
                                       (resource-contention-fault))

(smithy/sdk/operation:define-operation describe-auto-scaling-groups :shape-name
                                       "DescribeAutoScalingGroups" :input
                                       auto-scaling-group-names-type :output
                                       auto-scaling-groups-type :errors
                                       (invalid-next-token
                                        resource-contention-fault))

(smithy/sdk/operation:define-operation describe-auto-scaling-instances
                                       :shape-name
                                       "DescribeAutoScalingInstances" :input
                                       describe-auto-scaling-instances-type
                                       :output auto-scaling-instances-type
                                       :errors
                                       (invalid-next-token
                                        resource-contention-fault))

(smithy/sdk/operation:define-operation describe-auto-scaling-notification-types
                                       :shape-name
                                       "DescribeAutoScalingNotificationTypes"
                                       :input common-lisp:null :output
                                       describe-auto-scaling-notification-types-answer
                                       :errors (resource-contention-fault))

(smithy/sdk/operation:define-operation describe-instance-refreshes :shape-name
                                       "DescribeInstanceRefreshes" :input
                                       describe-instance-refreshes-type :output
                                       describe-instance-refreshes-answer
                                       :errors
                                       (invalid-next-token
                                        resource-contention-fault))

(smithy/sdk/operation:define-operation describe-launch-configurations
                                       :shape-name
                                       "DescribeLaunchConfigurations" :input
                                       launch-configuration-names-type :output
                                       launch-configurations-type :errors
                                       (invalid-next-token
                                        resource-contention-fault))

(smithy/sdk/operation:define-operation describe-lifecycle-hook-types
                                       :shape-name "DescribeLifecycleHookTypes"
                                       :input common-lisp:null :output
                                       describe-lifecycle-hook-types-answer
                                       :errors (resource-contention-fault))

(smithy/sdk/operation:define-operation describe-lifecycle-hooks :shape-name
                                       "DescribeLifecycleHooks" :input
                                       describe-lifecycle-hooks-type :output
                                       describe-lifecycle-hooks-answer :errors
                                       (resource-contention-fault))

(smithy/sdk/operation:define-operation describe-load-balancer-target-groups
                                       :shape-name
                                       "DescribeLoadBalancerTargetGroups"
                                       :input
                                       describe-load-balancer-target-groups-request
                                       :output
                                       describe-load-balancer-target-groups-response
                                       :errors
                                       (invalid-next-token
                                        resource-contention-fault))

(smithy/sdk/operation:define-operation describe-load-balancers :shape-name
                                       "DescribeLoadBalancers" :input
                                       describe-load-balancers-request :output
                                       describe-load-balancers-response :errors
                                       (invalid-next-token
                                        resource-contention-fault))

(smithy/sdk/operation:define-operation describe-metric-collection-types
                                       :shape-name
                                       "DescribeMetricCollectionTypes" :input
                                       common-lisp:null :output
                                       describe-metric-collection-types-answer
                                       :errors (resource-contention-fault))

(smithy/sdk/operation:define-operation describe-notification-configurations
                                       :shape-name
                                       "DescribeNotificationConfigurations"
                                       :input
                                       describe-notification-configurations-type
                                       :output
                                       describe-notification-configurations-answer
                                       :errors
                                       (invalid-next-token
                                        resource-contention-fault))

(smithy/sdk/operation:define-operation describe-policies :shape-name
                                       "DescribePolicies" :input
                                       describe-policies-type :output
                                       policies-type :errors
                                       (invalid-next-token
                                        resource-contention-fault
                                        service-linked-role-failure))

(smithy/sdk/operation:define-operation describe-scaling-activities :shape-name
                                       "DescribeScalingActivities" :input
                                       describe-scaling-activities-type :output
                                       activities-type :errors
                                       (invalid-next-token
                                        resource-contention-fault))

(smithy/sdk/operation:define-operation describe-scaling-process-types
                                       :shape-name
                                       "DescribeScalingProcessTypes" :input
                                       common-lisp:null :output processes-type
                                       :errors (resource-contention-fault))

(smithy/sdk/operation:define-operation describe-scheduled-actions :shape-name
                                       "DescribeScheduledActions" :input
                                       describe-scheduled-actions-type :output
                                       scheduled-actions-type :errors
                                       (invalid-next-token
                                        resource-contention-fault))

(smithy/sdk/operation:define-operation describe-tags :shape-name "DescribeTags"
                                       :input describe-tags-type :output
                                       tags-type :errors
                                       (invalid-next-token
                                        resource-contention-fault))

(smithy/sdk/operation:define-operation describe-termination-policy-types
                                       :shape-name
                                       "DescribeTerminationPolicyTypes" :input
                                       common-lisp:null :output
                                       describe-termination-policy-types-answer
                                       :errors (resource-contention-fault))

(smithy/sdk/operation:define-operation describe-traffic-sources :shape-name
                                       "DescribeTrafficSources" :input
                                       describe-traffic-sources-request :output
                                       describe-traffic-sources-response
                                       :errors
                                       (invalid-next-token
                                        resource-contention-fault))

(smithy/sdk/operation:define-operation describe-warm-pool :shape-name
                                       "DescribeWarmPool" :input
                                       describe-warm-pool-type :output
                                       describe-warm-pool-answer :errors
                                       (invalid-next-token limit-exceeded-fault
                                        resource-contention-fault))

(smithy/sdk/operation:define-operation detach-instances :shape-name
                                       "DetachInstances" :input
                                       detach-instances-query :output
                                       detach-instances-answer :errors
                                       (resource-contention-fault))

(smithy/sdk/operation:define-operation detach-load-balancer-target-groups
                                       :shape-name
                                       "DetachLoadBalancerTargetGroups" :input
                                       detach-load-balancer-target-groups-type
                                       :output
                                       detach-load-balancer-target-groups-result-type
                                       :errors (resource-contention-fault))

(smithy/sdk/operation:define-operation detach-load-balancers :shape-name
                                       "DetachLoadBalancers" :input
                                       detach-load-balancers-type :output
                                       detach-load-balancers-result-type
                                       :errors (resource-contention-fault))

(smithy/sdk/operation:define-operation detach-traffic-sources :shape-name
                                       "DetachTrafficSources" :input
                                       detach-traffic-sources-type :output
                                       detach-traffic-sources-result-type
                                       :errors (resource-contention-fault))

(smithy/sdk/operation:define-operation disable-metrics-collection :shape-name
                                       "DisableMetricsCollection" :input
                                       disable-metrics-collection-query :output
                                       common-lisp:null :errors
                                       (resource-contention-fault))

(smithy/sdk/operation:define-operation enable-metrics-collection :shape-name
                                       "EnableMetricsCollection" :input
                                       enable-metrics-collection-query :output
                                       common-lisp:null :errors
                                       (resource-contention-fault))

(smithy/sdk/operation:define-operation enter-standby :shape-name "EnterStandby"
                                       :input enter-standby-query :output
                                       enter-standby-answer :errors
                                       (resource-contention-fault))

(smithy/sdk/operation:define-operation execute-policy :shape-name
                                       "ExecutePolicy" :input
                                       execute-policy-type :output
                                       common-lisp:null :errors
                                       (resource-contention-fault
                                        scaling-activity-in-progress-fault))

(smithy/sdk/operation:define-operation exit-standby :shape-name "ExitStandby"
                                       :input exit-standby-query :output
                                       exit-standby-answer :errors
                                       (resource-contention-fault))

(smithy/sdk/operation:define-operation get-predictive-scaling-forecast
                                       :shape-name
                                       "GetPredictiveScalingForecast" :input
                                       get-predictive-scaling-forecast-type
                                       :output
                                       get-predictive-scaling-forecast-answer
                                       :errors (resource-contention-fault))

(smithy/sdk/operation:define-operation put-lifecycle-hook :shape-name
                                       "PutLifecycleHook" :input
                                       put-lifecycle-hook-type :output
                                       put-lifecycle-hook-answer :errors
                                       (limit-exceeded-fault
                                        resource-contention-fault))

(smithy/sdk/operation:define-operation put-notification-configuration
                                       :shape-name
                                       "PutNotificationConfiguration" :input
                                       put-notification-configuration-type
                                       :output common-lisp:null :errors
                                       (limit-exceeded-fault
                                        resource-contention-fault
                                        service-linked-role-failure))

(smithy/sdk/operation:define-operation put-scaling-policy :shape-name
                                       "PutScalingPolicy" :input
                                       put-scaling-policy-type :output
                                       policy-arntype :errors
                                       (limit-exceeded-fault
                                        resource-contention-fault
                                        service-linked-role-failure))

(smithy/sdk/operation:define-operation put-scheduled-update-group-action
                                       :shape-name
                                       "PutScheduledUpdateGroupAction" :input
                                       put-scheduled-update-group-action-type
                                       :output common-lisp:null :errors
                                       (already-exists-fault
                                        limit-exceeded-fault
                                        resource-contention-fault))

(smithy/sdk/operation:define-operation put-warm-pool :shape-name "PutWarmPool"
                                       :input put-warm-pool-type :output
                                       put-warm-pool-answer :errors
                                       (limit-exceeded-fault
                                        resource-contention-fault))

(smithy/sdk/operation:define-operation record-lifecycle-action-heartbeat
                                       :shape-name
                                       "RecordLifecycleActionHeartbeat" :input
                                       record-lifecycle-action-heartbeat-type
                                       :output
                                       record-lifecycle-action-heartbeat-answer
                                       :errors (resource-contention-fault))

(smithy/sdk/operation:define-operation resume-processes :shape-name
                                       "ResumeProcesses" :input
                                       scaling-process-query :output
                                       common-lisp:null :errors
                                       (resource-contention-fault
                                        resource-in-use-fault))

(smithy/sdk/operation:define-operation rollback-instance-refresh :shape-name
                                       "RollbackInstanceRefresh" :input
                                       rollback-instance-refresh-type :output
                                       rollback-instance-refresh-answer :errors
                                       (active-instance-refresh-not-found-fault
                                        irreversible-instance-refresh-fault
                                        limit-exceeded-fault
                                        resource-contention-fault))

(smithy/sdk/operation:define-operation set-desired-capacity :shape-name
                                       "SetDesiredCapacity" :input
                                       set-desired-capacity-type :output
                                       common-lisp:null :errors
                                       (resource-contention-fault
                                        scaling-activity-in-progress-fault))

(smithy/sdk/operation:define-operation set-instance-health :shape-name
                                       "SetInstanceHealth" :input
                                       set-instance-health-query :output
                                       common-lisp:null :errors
                                       (resource-contention-fault))

(smithy/sdk/operation:define-operation set-instance-protection :shape-name
                                       "SetInstanceProtection" :input
                                       set-instance-protection-query :output
                                       set-instance-protection-answer :errors
                                       (limit-exceeded-fault
                                        resource-contention-fault))

(smithy/sdk/operation:define-operation start-instance-refresh :shape-name
                                       "StartInstanceRefresh" :input
                                       start-instance-refresh-type :output
                                       start-instance-refresh-answer :errors
                                       (instance-refresh-in-progress-fault
                                        limit-exceeded-fault
                                        resource-contention-fault))

(smithy/sdk/operation:define-operation suspend-processes :shape-name
                                       "SuspendProcesses" :input
                                       scaling-process-query :output
                                       common-lisp:null :errors
                                       (resource-contention-fault
                                        resource-in-use-fault))

(smithy/sdk/operation:define-operation terminate-instance-in-auto-scaling-group
                                       :shape-name
                                       "TerminateInstanceInAutoScalingGroup"
                                       :input
                                       terminate-instance-in-auto-scaling-group-type
                                       :output activity-type :errors
                                       (resource-contention-fault
                                        scaling-activity-in-progress-fault))

(smithy/sdk/operation:define-operation update-auto-scaling-group :shape-name
                                       "UpdateAutoScalingGroup" :input
                                       update-auto-scaling-group-type :output
                                       common-lisp:null :errors
                                       (resource-contention-fault
                                        scaling-activity-in-progress-fault
                                        service-linked-role-failure))
