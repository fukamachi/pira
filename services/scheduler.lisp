(uiop/package:define-package #:pira/scheduler (:use)
                             (:export #:awschronos-service
                              #:action-after-completion #:assign-public-ip
                              #:aws-vpc-configuration #:capacity-provider
                              #:capacity-provider-strategy
                              #:capacity-provider-strategy-item
                              #:capacity-provider-strategy-item-base
                              #:capacity-provider-strategy-item-weight
                              #:client-token #:create-schedule
                              #:create-schedule-group
                              #:create-schedule-group-input
                              #:create-schedule-group-output
                              #:create-schedule-input #:create-schedule-output
                              #:creation-date #:dead-letter-config
                              #:delete-schedule #:delete-schedule-group
                              #:delete-schedule-group-input
                              #:delete-schedule-group-output
                              #:delete-schedule-input #:delete-schedule-output
                              #:description #:detail-type #:ecs-parameters
                              #:enable-ecsmanaged-tags #:enable-execute-command
                              #:end-date #:event-bridge-parameters
                              #:flexible-time-window
                              #:flexible-time-window-mode #:get-schedule
                              #:get-schedule-group #:get-schedule-group-input
                              #:get-schedule-group-output #:get-schedule-input
                              #:get-schedule-output #:group
                              #:kinesis-parameters #:kms-key-arn
                              #:last-modification-date #:launch-type
                              #:list-schedule-groups
                              #:list-schedule-groups-input
                              #:list-schedule-groups-output #:list-schedules
                              #:list-schedules-input #:list-schedules-output
                              #:list-tags-for-resource
                              #:list-tags-for-resource-input
                              #:list-tags-for-resource-output #:max-results
                              #:maximum-event-age-in-seconds
                              #:maximum-retry-attempts
                              #:maximum-window-in-minutes #:message-group-id
                              #:name #:name-prefix #:network-configuration
                              #:next-token #:placement-constraint
                              #:placement-constraint-expression
                              #:placement-constraint-type
                              #:placement-constraints #:placement-strategies
                              #:placement-strategy #:placement-strategy-field
                              #:placement-strategy-type #:platform-version
                              #:propagate-tags #:reference-id #:resource-arn
                              #:retry-policy #:role-arn
                              #:sage-maker-pipeline-parameter
                              #:sage-maker-pipeline-parameter-list
                              #:sage-maker-pipeline-parameter-name
                              #:sage-maker-pipeline-parameter-value
                              #:sage-maker-pipeline-parameters #:schedule
                              #:schedule-arn #:schedule-expression
                              #:schedule-expression-timezone #:schedule-group
                              #:schedule-group-arn #:schedule-group-list
                              #:schedule-group-name
                              #:schedule-group-name-prefix
                              #:schedule-group-state #:schedule-group-summary
                              #:schedule-list #:schedule-state
                              #:schedule-summary #:security-group
                              #:security-groups #:source #:sqs-parameters
                              #:start-date #:subnet #:subnets #:tag #:tag-key
                              #:tag-key-list #:tag-list #:tag-map
                              #:tag-resource #:tag-resource-arn
                              #:tag-resource-input #:tag-resource-output
                              #:tag-value #:tags #:target #:target-arn
                              #:target-input #:target-partition-key
                              #:target-summary #:task-count
                              #:task-definition-arn #:untag-resource
                              #:untag-resource-input #:untag-resource-output
                              #:update-schedule #:update-schedule-input
                              #:update-schedule-output))
(common-lisp:in-package #:pira/scheduler)

(smithy/sdk/service:define-service awschronos-service :shape-name
                                   "AWSChronosService" :version "2021-06-30"
                                   :title "Amazon EventBridge Scheduler"
                                   :operations
                                   '(list-tags-for-resource tag-resource
                                     untag-resource)
                                   :traits
                                   '(("aws.api#service" ("sdkId" . "Scheduler")
                                      ("arnNamespace" . "scheduler")
                                      ("cloudFormationName" . "Scheduler"))
                                     ("aws.auth#sigv4" ("name" . "scheduler"))
                                     ("aws.protocols#restJson1")))

(smithy/sdk/shapes:define-type action-after-completion
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type assign-public-ip smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure aws-vpc-configuration common-lisp:nil
                                    ((subnets :target-type subnets :required
                                      common-lisp:t :member-name "Subnets")
                                     (security-groups :target-type
                                      security-groups :member-name
                                      "SecurityGroups")
                                     (assign-public-ip :target-type
                                      assign-public-ip :member-name
                                      "AssignPublicIp"))
                                    (:shape-name "AwsVpcConfiguration"))

(smithy/sdk/shapes:define-type capacity-provider smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list capacity-provider-strategy :member
                               capacity-provider-strategy-item)

(smithy/sdk/shapes:define-structure capacity-provider-strategy-item
                                    common-lisp:nil
                                    ((capacity-provider :target-type
                                      capacity-provider :required common-lisp:t
                                      :member-name "capacityProvider")
                                     (weight :target-type
                                      capacity-provider-strategy-item-weight
                                      :member-name "weight")
                                     (base :target-type
                                      capacity-provider-strategy-item-base
                                      :member-name "base"))
                                    (:shape-name
                                     "CapacityProviderStrategyItem"))

(smithy/sdk/shapes:define-type capacity-provider-strategy-item-base
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type capacity-provider-strategy-item-weight
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type client-token smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error conflict-exception common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "Message"))
                                (:shape-name "ConflictException")
                                (:error-code 409))

(smithy/sdk/shapes:define-structure create-schedule-group-input common-lisp:nil
                                    ((name :target-type schedule-group-name
                                      :required common-lisp:t :member-name
                                      "Name")
                                     (tags :target-type tag-list :member-name
                                      "Tags")
                                     (client-token :target-type client-token
                                      :member-name "ClientToken"))
                                    (:shape-name "CreateScheduleGroupInput"))

(smithy/sdk/shapes:define-structure create-schedule-group-output
                                    common-lisp:nil
                                    ((schedule-group-arn :target-type
                                      schedule-group-arn :required
                                      common-lisp:t :member-name
                                      "ScheduleGroupArn"))
                                    (:shape-name "CreateScheduleGroupOutput"))

(smithy/sdk/shapes:define-structure create-schedule-input common-lisp:nil
                                    ((name :target-type name :required
                                      common-lisp:t :member-name "Name")
                                     (group-name :target-type
                                      schedule-group-name :member-name
                                      "GroupName")
                                     (schedule-expression :target-type
                                      schedule-expression :required
                                      common-lisp:t :member-name
                                      "ScheduleExpression")
                                     (start-date :target-type start-date
                                      :member-name "StartDate")
                                     (end-date :target-type end-date
                                      :member-name "EndDate")
                                     (description :target-type description
                                      :member-name "Description")
                                     (schedule-expression-timezone :target-type
                                      schedule-expression-timezone :member-name
                                      "ScheduleExpressionTimezone")
                                     (state :target-type schedule-state
                                      :member-name "State")
                                     (kms-key-arn :target-type kms-key-arn
                                      :member-name "KmsKeyArn")
                                     (target :target-type target :required
                                      common-lisp:t :member-name "Target")
                                     (flexible-time-window :target-type
                                      flexible-time-window :required
                                      common-lisp:t :member-name
                                      "FlexibleTimeWindow")
                                     (client-token :target-type client-token
                                      :member-name "ClientToken")
                                     (action-after-completion :target-type
                                      action-after-completion :member-name
                                      "ActionAfterCompletion"))
                                    (:shape-name "CreateScheduleInput"))

(smithy/sdk/shapes:define-structure create-schedule-output common-lisp:nil
                                    ((schedule-arn :target-type schedule-arn
                                      :required common-lisp:t :member-name
                                      "ScheduleArn"))
                                    (:shape-name "CreateScheduleOutput"))

(smithy/sdk/shapes:define-type creation-date smithy/sdk/smithy-types:timestamp)

(smithy/sdk/shapes:define-structure dead-letter-config common-lisp:nil
                                    ((arn :target-type resource-arn
                                      :member-name "Arn"))
                                    (:shape-name "DeadLetterConfig"))

(smithy/sdk/shapes:define-structure delete-schedule-group-input common-lisp:nil
                                    ((name :target-type schedule-group-name
                                      :required common-lisp:t :member-name
                                      "Name")
                                     (client-token :target-type client-token
                                      :member-name "ClientToken" :http-query
                                      "clientToken"))
                                    (:shape-name "DeleteScheduleGroupInput"))

(smithy/sdk/shapes:define-structure delete-schedule-group-output
                                    common-lisp:nil common-lisp:nil
                                    (:shape-name "DeleteScheduleGroupOutput"))

(smithy/sdk/shapes:define-structure delete-schedule-input common-lisp:nil
                                    ((name :target-type name :required
                                      common-lisp:t :member-name "Name")
                                     (group-name :target-type
                                      schedule-group-name :member-name
                                      "GroupName" :http-query "groupName")
                                     (client-token :target-type client-token
                                      :member-name "ClientToken" :http-query
                                      "clientToken"))
                                    (:shape-name "DeleteScheduleInput"))

(smithy/sdk/shapes:define-structure delete-schedule-output common-lisp:nil
                                    common-lisp:nil
                                    (:shape-name "DeleteScheduleOutput"))

(smithy/sdk/shapes:define-type description smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type detail-type smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure ecs-parameters common-lisp:nil
                                    ((task-definition-arn :target-type
                                      task-definition-arn :required
                                      common-lisp:t :member-name
                                      "TaskDefinitionArn")
                                     (task-count :target-type task-count
                                      :member-name "TaskCount")
                                     (launch-type :target-type launch-type
                                      :member-name "LaunchType")
                                     (network-configuration :target-type
                                      network-configuration :member-name
                                      "NetworkConfiguration")
                                     (platform-version :target-type
                                      platform-version :member-name
                                      "PlatformVersion")
                                     (group :target-type group :member-name
                                      "Group")
                                     (capacity-provider-strategy :target-type
                                      capacity-provider-strategy :member-name
                                      "CapacityProviderStrategy")
                                     (enable-ecsmanaged-tags :target-type
                                      enable-ecsmanaged-tags :member-name
                                      "EnableECSManagedTags")
                                     (enable-execute-command :target-type
                                      enable-execute-command :member-name
                                      "EnableExecuteCommand")
                                     (placement-constraints :target-type
                                      placement-constraints :member-name
                                      "PlacementConstraints")
                                     (placement-strategy :target-type
                                      placement-strategies :member-name
                                      "PlacementStrategy")
                                     (propagate-tags :target-type
                                      propagate-tags :member-name
                                      "PropagateTags")
                                     (reference-id :target-type reference-id
                                      :member-name "ReferenceId")
                                     (tags :target-type tags :member-name
                                      "Tags"))
                                    (:shape-name "EcsParameters"))

(smithy/sdk/shapes:define-type enable-ecsmanaged-tags
                               smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-type enable-execute-command
                               smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-type end-date smithy/sdk/smithy-types:timestamp)

(smithy/sdk/shapes:define-structure event-bridge-parameters common-lisp:nil
                                    ((detail-type :target-type detail-type
                                      :required common-lisp:t :member-name
                                      "DetailType")
                                     (source :target-type source :required
                                      common-lisp:t :member-name "Source"))
                                    (:shape-name "EventBridgeParameters"))

(smithy/sdk/shapes:define-structure flexible-time-window common-lisp:nil
                                    ((mode :target-type
                                      flexible-time-window-mode :required
                                      common-lisp:t :member-name "Mode")
                                     (maximum-window-in-minutes :target-type
                                      maximum-window-in-minutes :member-name
                                      "MaximumWindowInMinutes"))
                                    (:shape-name "FlexibleTimeWindow"))

(smithy/sdk/shapes:define-type flexible-time-window-mode
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure get-schedule-group-input common-lisp:nil
                                    ((name :target-type schedule-group-name
                                      :required common-lisp:t :member-name
                                      "Name"))
                                    (:shape-name "GetScheduleGroupInput"))

(smithy/sdk/shapes:define-structure get-schedule-group-output common-lisp:nil
                                    ((arn :target-type schedule-group-arn
                                      :member-name "Arn")
                                     (name :target-type schedule-group-name
                                      :member-name "Name")
                                     (state :target-type schedule-group-state
                                      :member-name "State")
                                     (creation-date :target-type creation-date
                                      :member-name "CreationDate")
                                     (last-modification-date :target-type
                                      last-modification-date :member-name
                                      "LastModificationDate"))
                                    (:shape-name "GetScheduleGroupOutput"))

(smithy/sdk/shapes:define-structure get-schedule-input common-lisp:nil
                                    ((name :target-type name :required
                                      common-lisp:t :member-name "Name")
                                     (group-name :target-type
                                      schedule-group-name :member-name
                                      "GroupName" :http-query "groupName"))
                                    (:shape-name "GetScheduleInput"))

(smithy/sdk/shapes:define-structure get-schedule-output common-lisp:nil
                                    ((arn :target-type schedule-arn
                                      :member-name "Arn")
                                     (group-name :target-type
                                      schedule-group-name :member-name
                                      "GroupName")
                                     (name :target-type name :member-name
                                      "Name")
                                     (schedule-expression :target-type
                                      schedule-expression :member-name
                                      "ScheduleExpression")
                                     (start-date :target-type start-date
                                      :member-name "StartDate")
                                     (end-date :target-type end-date
                                      :member-name "EndDate")
                                     (description :target-type description
                                      :member-name "Description")
                                     (schedule-expression-timezone :target-type
                                      schedule-expression-timezone :member-name
                                      "ScheduleExpressionTimezone")
                                     (state :target-type schedule-state
                                      :member-name "State")
                                     (creation-date :target-type creation-date
                                      :member-name "CreationDate")
                                     (last-modification-date :target-type
                                      last-modification-date :member-name
                                      "LastModificationDate")
                                     (kms-key-arn :target-type kms-key-arn
                                      :member-name "KmsKeyArn")
                                     (target :target-type target :member-name
                                      "Target")
                                     (flexible-time-window :target-type
                                      flexible-time-window :member-name
                                      "FlexibleTimeWindow")
                                     (action-after-completion :target-type
                                      action-after-completion :member-name
                                      "ActionAfterCompletion"))
                                    (:shape-name "GetScheduleOutput"))

(smithy/sdk/shapes:define-type group smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error internal-server-exception common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "Message"))
                                (:shape-name "InternalServerException")
                                (:error-code 500))

(smithy/sdk/shapes:define-structure kinesis-parameters common-lisp:nil
                                    ((partition-key :target-type
                                      target-partition-key :required
                                      common-lisp:t :member-name
                                      "PartitionKey"))
                                    (:shape-name "KinesisParameters"))

(smithy/sdk/shapes:define-type kms-key-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type last-modification-date
                               smithy/sdk/smithy-types:timestamp)

(smithy/sdk/shapes:define-type launch-type smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure list-schedule-groups-input common-lisp:nil
                                    ((name-prefix :target-type
                                      schedule-group-name-prefix :member-name
                                      "NamePrefix" :http-query "NamePrefix")
                                     (next-token :target-type next-token
                                      :member-name "NextToken" :http-query
                                      "NextToken")
                                     (max-results :target-type max-results
                                      :member-name "MaxResults" :http-query
                                      "MaxResults"))
                                    (:shape-name "ListScheduleGroupsInput"))

(smithy/sdk/shapes:define-structure list-schedule-groups-output common-lisp:nil
                                    ((next-token :target-type next-token
                                      :member-name "NextToken")
                                     (schedule-groups :target-type
                                      schedule-group-list :required
                                      common-lisp:t :member-name
                                      "ScheduleGroups"))
                                    (:shape-name "ListScheduleGroupsOutput"))

(smithy/sdk/shapes:define-structure list-schedules-input common-lisp:nil
                                    ((group-name :target-type
                                      schedule-group-name :member-name
                                      "GroupName" :http-query "ScheduleGroup")
                                     (name-prefix :target-type name-prefix
                                      :member-name "NamePrefix" :http-query
                                      "NamePrefix")
                                     (state :target-type schedule-state
                                      :member-name "State" :http-query "State")
                                     (next-token :target-type next-token
                                      :member-name "NextToken" :http-query
                                      "NextToken")
                                     (max-results :target-type max-results
                                      :member-name "MaxResults" :http-query
                                      "MaxResults"))
                                    (:shape-name "ListSchedulesInput"))

(smithy/sdk/shapes:define-structure list-schedules-output common-lisp:nil
                                    ((next-token :target-type next-token
                                      :member-name "NextToken")
                                     (schedules :target-type schedule-list
                                      :required common-lisp:t :member-name
                                      "Schedules"))
                                    (:shape-name "ListSchedulesOutput"))

(smithy/sdk/shapes:define-structure list-tags-for-resource-input
                                    common-lisp:nil
                                    ((resource-arn :target-type
                                      tag-resource-arn :required common-lisp:t
                                      :member-name "ResourceArn"))
                                    (:shape-name "ListTagsForResourceInput"))

(smithy/sdk/shapes:define-structure list-tags-for-resource-output
                                    common-lisp:nil
                                    ((tags :target-type tag-list :member-name
                                      "Tags"))
                                    (:shape-name "ListTagsForResourceOutput"))

(smithy/sdk/shapes:define-type max-results smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type maximum-event-age-in-seconds
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type maximum-retry-attempts
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type maximum-window-in-minutes
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type message-group-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type name-prefix smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure network-configuration common-lisp:nil
                                    ((awsvpc-configuration :target-type
                                      aws-vpc-configuration :member-name
                                      "awsvpcConfiguration"))
                                    (:shape-name "NetworkConfiguration"))

(smithy/sdk/shapes:define-type next-token smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure placement-constraint common-lisp:nil
                                    ((type :target-type
                                      placement-constraint-type :member-name
                                      "type")
                                     (expression :target-type
                                      placement-constraint-expression
                                      :member-name "expression"))
                                    (:shape-name "PlacementConstraint"))

(smithy/sdk/shapes:define-type placement-constraint-expression
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type placement-constraint-type
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list placement-constraints :member
                               placement-constraint)

(smithy/sdk/shapes:define-list placement-strategies :member placement-strategy)

(smithy/sdk/shapes:define-structure placement-strategy common-lisp:nil
                                    ((type :target-type placement-strategy-type
                                      :member-name "type")
                                     (field :target-type
                                      placement-strategy-field :member-name
                                      "field"))
                                    (:shape-name "PlacementStrategy"))

(smithy/sdk/shapes:define-type placement-strategy-field
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type placement-strategy-type
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type platform-version smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type propagate-tags smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type reference-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type resource-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error resource-not-found-exception common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "Message"))
                                (:shape-name "ResourceNotFoundException")
                                (:error-code 404))

(smithy/sdk/shapes:define-structure retry-policy common-lisp:nil
                                    ((maximum-event-age-in-seconds :target-type
                                      maximum-event-age-in-seconds :member-name
                                      "MaximumEventAgeInSeconds")
                                     (maximum-retry-attempts :target-type
                                      maximum-retry-attempts :member-name
                                      "MaximumRetryAttempts"))
                                    (:shape-name "RetryPolicy"))

(smithy/sdk/shapes:define-type role-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure sage-maker-pipeline-parameter
                                    common-lisp:nil
                                    ((name :target-type
                                      sage-maker-pipeline-parameter-name
                                      :required common-lisp:t :member-name
                                      "Name")
                                     (value :target-type
                                      sage-maker-pipeline-parameter-value
                                      :required common-lisp:t :member-name
                                      "Value"))
                                    (:shape-name "SageMakerPipelineParameter"))

(smithy/sdk/shapes:define-list sage-maker-pipeline-parameter-list :member
                               sage-maker-pipeline-parameter)

(smithy/sdk/shapes:define-type sage-maker-pipeline-parameter-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type sage-maker-pipeline-parameter-value
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure sage-maker-pipeline-parameters
                                    common-lisp:nil
                                    ((pipeline-parameter-list :target-type
                                      sage-maker-pipeline-parameter-list
                                      :member-name "PipelineParameterList"))
                                    (:shape-name "SageMakerPipelineParameters"))

common-lisp:nil

(smithy/sdk/shapes:define-type schedule-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type schedule-expression
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type schedule-expression-timezone
                               smithy/sdk/smithy-types:string)

common-lisp:nil

(smithy/sdk/shapes:define-type schedule-group-arn
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list schedule-group-list :member
                               schedule-group-summary)

(smithy/sdk/shapes:define-type schedule-group-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type schedule-group-name-prefix
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type schedule-group-state
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure schedule-group-summary common-lisp:nil
                                    ((arn :target-type schedule-group-arn
                                      :member-name "Arn")
                                     (name :target-type schedule-group-name
                                      :member-name "Name")
                                     (state :target-type schedule-group-state
                                      :member-name "State")
                                     (creation-date :target-type creation-date
                                      :member-name "CreationDate")
                                     (last-modification-date :target-type
                                      last-modification-date :member-name
                                      "LastModificationDate"))
                                    (:shape-name "ScheduleGroupSummary"))

(smithy/sdk/shapes:define-list schedule-list :member schedule-summary)

(smithy/sdk/shapes:define-type schedule-state smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure schedule-summary common-lisp:nil
                                    ((arn :target-type schedule-arn
                                      :member-name "Arn")
                                     (name :target-type name :member-name
                                      "Name")
                                     (group-name :target-type
                                      schedule-group-name :member-name
                                      "GroupName")
                                     (state :target-type schedule-state
                                      :member-name "State")
                                     (creation-date :target-type creation-date
                                      :member-name "CreationDate")
                                     (last-modification-date :target-type
                                      last-modification-date :member-name
                                      "LastModificationDate")
                                     (target :target-type target-summary
                                      :member-name "Target"))
                                    (:shape-name "ScheduleSummary"))

(smithy/sdk/shapes:define-type security-group smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list security-groups :member security-group)

(smithy/sdk/shapes:define-error service-quota-exceeded-exception
                                common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "Message"))
                                (:shape-name "ServiceQuotaExceededException")
                                (:error-code 402))

(smithy/sdk/shapes:define-type source smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure sqs-parameters common-lisp:nil
                                    ((message-group-id :target-type
                                      message-group-id :member-name
                                      "MessageGroupId"))
                                    (:shape-name "SqsParameters"))

(smithy/sdk/shapes:define-type start-date smithy/sdk/smithy-types:timestamp)

(smithy/sdk/shapes:define-type subnet smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list subnets :member subnet)

(smithy/sdk/shapes:define-structure tag common-lisp:nil
                                    ((key :target-type tag-key :required
                                      common-lisp:t :member-name "Key")
                                     (value :target-type tag-value :required
                                      common-lisp:t :member-name "Value"))
                                    (:shape-name "Tag"))

(smithy/sdk/shapes:define-type tag-key smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list tag-key-list :member tag-key)

(smithy/sdk/shapes:define-list tag-list :member tag)

(smithy/sdk/shapes:define-map tag-map :key tag-key :value tag-value)

(smithy/sdk/shapes:define-type tag-resource-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure tag-resource-input common-lisp:nil
                                    ((resource-arn :target-type
                                      tag-resource-arn :required common-lisp:t
                                      :member-name "ResourceArn")
                                     (tags :target-type tag-list :required
                                      common-lisp:t :member-name "Tags"))
                                    (:shape-name "TagResourceInput"))

(smithy/sdk/shapes:define-structure tag-resource-output common-lisp:nil
                                    common-lisp:nil
                                    (:shape-name "TagResourceOutput"))

(smithy/sdk/shapes:define-type tag-value smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list tags :member tag-map)

(smithy/sdk/shapes:define-structure target common-lisp:nil
                                    ((arn :target-type target-arn :required
                                      common-lisp:t :member-name "Arn")
                                     (role-arn :target-type role-arn :required
                                      common-lisp:t :member-name "RoleArn")
                                     (dead-letter-config :target-type
                                      dead-letter-config :member-name
                                      "DeadLetterConfig")
                                     (retry-policy :target-type retry-policy
                                      :member-name "RetryPolicy")
                                     (input :target-type target-input
                                      :member-name "Input")
                                     (ecs-parameters :target-type
                                      ecs-parameters :member-name
                                      "EcsParameters")
                                     (event-bridge-parameters :target-type
                                      event-bridge-parameters :member-name
                                      "EventBridgeParameters")
                                     (kinesis-parameters :target-type
                                      kinesis-parameters :member-name
                                      "KinesisParameters")
                                     (sage-maker-pipeline-parameters
                                      :target-type
                                      sage-maker-pipeline-parameters
                                      :member-name
                                      "SageMakerPipelineParameters")
                                     (sqs-parameters :target-type
                                      sqs-parameters :member-name
                                      "SqsParameters"))
                                    (:shape-name "Target"))

(smithy/sdk/shapes:define-type target-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type target-input smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type target-partition-key
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure target-summary common-lisp:nil
                                    ((arn :target-type target-arn :required
                                      common-lisp:t :member-name "Arn"))
                                    (:shape-name "TargetSummary"))

(smithy/sdk/shapes:define-type task-count smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type task-definition-arn
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error throttling-exception common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "Message"))
                                (:shape-name "ThrottlingException")
                                (:error-code 429))

(smithy/sdk/shapes:define-structure untag-resource-input common-lisp:nil
                                    ((resource-arn :target-type
                                      tag-resource-arn :required common-lisp:t
                                      :member-name "ResourceArn")
                                     (tag-keys :target-type tag-key-list
                                      :required common-lisp:t :member-name
                                      "TagKeys" :http-query "TagKeys"))
                                    (:shape-name "UntagResourceInput"))

(smithy/sdk/shapes:define-structure untag-resource-output common-lisp:nil
                                    common-lisp:nil
                                    (:shape-name "UntagResourceOutput"))

(smithy/sdk/shapes:define-structure update-schedule-input common-lisp:nil
                                    ((name :target-type name :required
                                      common-lisp:t :member-name "Name")
                                     (group-name :target-type
                                      schedule-group-name :member-name
                                      "GroupName")
                                     (schedule-expression :target-type
                                      schedule-expression :required
                                      common-lisp:t :member-name
                                      "ScheduleExpression")
                                     (start-date :target-type start-date
                                      :member-name "StartDate")
                                     (end-date :target-type end-date
                                      :member-name "EndDate")
                                     (description :target-type description
                                      :member-name "Description")
                                     (schedule-expression-timezone :target-type
                                      schedule-expression-timezone :member-name
                                      "ScheduleExpressionTimezone")
                                     (state :target-type schedule-state
                                      :member-name "State")
                                     (kms-key-arn :target-type kms-key-arn
                                      :member-name "KmsKeyArn")
                                     (target :target-type target :required
                                      common-lisp:t :member-name "Target")
                                     (flexible-time-window :target-type
                                      flexible-time-window :required
                                      common-lisp:t :member-name
                                      "FlexibleTimeWindow")
                                     (client-token :target-type client-token
                                      :member-name "ClientToken")
                                     (action-after-completion :target-type
                                      action-after-completion :member-name
                                      "ActionAfterCompletion"))
                                    (:shape-name "UpdateScheduleInput"))

(smithy/sdk/shapes:define-structure update-schedule-output common-lisp:nil
                                    ((schedule-arn :target-type schedule-arn
                                      :required common-lisp:t :member-name
                                      "ScheduleArn"))
                                    (:shape-name "UpdateScheduleOutput"))

(smithy/sdk/shapes:define-error validation-exception common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "Message"))
                                (:shape-name "ValidationException")
                                (:error-code 400))

(smithy/sdk/operation:define-operation create-schedule :shape-name
                                       "CreateSchedule" :input
                                       create-schedule-input :output
                                       create-schedule-output :errors
                                       (conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri "/schedules/{Name}"
                                       :code 200)

(smithy/sdk/operation:define-operation create-schedule-group :shape-name
                                       "CreateScheduleGroup" :input
                                       create-schedule-group-input :output
                                       create-schedule-group-output :errors
                                       (conflict-exception
                                        internal-server-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/schedule-groups/{Name}" :code 200)

(smithy/sdk/operation:define-operation delete-schedule :shape-name
                                       "DeleteSchedule" :input
                                       delete-schedule-input :output
                                       delete-schedule-output :errors
                                       (conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "DELETE" :uri
                                       "/schedules/{Name}" :code 200)

(smithy/sdk/operation:define-operation delete-schedule-group :shape-name
                                       "DeleteScheduleGroup" :input
                                       delete-schedule-group-input :output
                                       delete-schedule-group-output :errors
                                       (conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "DELETE" :uri
                                       "/schedule-groups/{Name}" :code 200)

(smithy/sdk/operation:define-operation get-schedule :shape-name "GetSchedule"
                                       :input get-schedule-input :output
                                       get-schedule-output :errors
                                       (internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri "/schedules/{Name}"
                                       :code 200)

(smithy/sdk/operation:define-operation get-schedule-group :shape-name
                                       "GetScheduleGroup" :input
                                       get-schedule-group-input :output
                                       get-schedule-group-output :errors
                                       (internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/schedule-groups/{Name}" :code 200)

(smithy/sdk/operation:define-operation list-schedule-groups :shape-name
                                       "ListScheduleGroups" :input
                                       list-schedule-groups-input :output
                                       list-schedule-groups-output :errors
                                       (internal-server-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri "/schedule-groups"
                                       :code 200)

(smithy/sdk/operation:define-operation list-schedules :shape-name
                                       "ListSchedules" :input
                                       list-schedules-input :output
                                       list-schedules-output :errors
                                       (internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri "/schedules" :code
                                       200)

(smithy/sdk/operation:define-operation list-tags-for-resource :shape-name
                                       "ListTagsForResource" :input
                                       list-tags-for-resource-input :output
                                       list-tags-for-resource-output :errors
                                       (internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri "/tags/{ResourceArn}"
                                       :code 200)

(smithy/sdk/operation:define-operation tag-resource :shape-name "TagResource"
                                       :input tag-resource-input :output
                                       tag-resource-output :errors
                                       (conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/tags/{ResourceArn}" :code 200)

(smithy/sdk/operation:define-operation untag-resource :shape-name
                                       "UntagResource" :input
                                       untag-resource-input :output
                                       untag-resource-output :errors
                                       (conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "DELETE" :uri
                                       "/tags/{ResourceArn}" :code 200)

(smithy/sdk/operation:define-operation update-schedule :shape-name
                                       "UpdateSchedule" :input
                                       update-schedule-input :output
                                       update-schedule-output :errors
                                       (conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "PUT" :uri "/schedules/{Name}"
                                       :code 200)
