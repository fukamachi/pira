(uiop/package:define-package #:pira/pipes (:use)
                             (:export #:arn #:arn-or-json-path #:arn-or-url
                              #:assign-public-ip #:aws-vpc-configuration
                              #:batch-array-properties #:batch-array-size
                              #:batch-container-overrides #:batch-depends-on
                              #:batch-environment-variable
                              #:batch-environment-variable-list
                              #:batch-job-dependency
                              #:batch-job-dependency-type
                              #:batch-parameters-map
                              #:batch-resource-requirement
                              #:batch-resource-requirement-type
                              #:batch-resource-requirements-list
                              #:batch-retry-attempts #:batch-retry-strategy
                              #:boolean #:capacity-provider
                              #:capacity-provider-strategy
                              #:capacity-provider-strategy-item
                              #:capacity-provider-strategy-item-base
                              #:capacity-provider-strategy-item-weight
                              #:cloudwatch-log-group-arn
                              #:cloudwatch-logs-log-destination
                              #:cloudwatch-logs-log-destination-parameters
                              #:conflict-exception #:create-pipe #:database
                              #:db-user #:dead-letter-config #:delete-pipe
                              #:describe-pipe #:dimension-mapping
                              #:dimension-mappings #:dimension-name
                              #:dimension-value #:dimension-value-type
                              #:dynamo-dbstream-start-position
                              #:ecs-container-override
                              #:ecs-container-override-list
                              #:ecs-environment-file
                              #:ecs-environment-file-list
                              #:ecs-environment-file-type
                              #:ecs-environment-variable
                              #:ecs-environment-variable-list
                              #:ecs-ephemeral-storage
                              #:ecs-inference-accelerator-override
                              #:ecs-inference-accelerator-override-list
                              #:ecs-resource-requirement
                              #:ecs-resource-requirement-type
                              #:ecs-resource-requirements-list
                              #:ecs-task-override #:endpoint-string
                              #:ephemeral-storage-size #:epoch-time-unit
                              #:error-message #:event-bridge-detail-type
                              #:event-bridge-endpoint-id
                              #:event-bridge-event-resource-list
                              #:event-bridge-event-source #:event-pattern
                              #:filter #:filter-criteria #:filter-list
                              #:firehose-arn #:firehose-log-destination
                              #:firehose-log-destination-parameters
                              #:header-key #:header-parameters-map
                              #:header-value #:include-execution-data
                              #:include-execution-data-option #:input-template
                              #:internal-exception #:json-path
                              #:kafka-bootstrap-servers #:kafka-topic-name
                              #:kinesis-partition-key
                              #:kinesis-stream-start-position
                              #:kms-key-identifier #:launch-type #:limit-max10
                              #:limit-max100 #:limit-max10000 #:limit-min1
                              #:list-pipes #:list-tags-for-resource
                              #:list-tags-for-resource-request
                              #:list-tags-for-resource-response #:log-level
                              #:log-stream-name #:mqbroker-access-credentials
                              #:mqbroker-queue-name #:mskaccess-credentials
                              #:mskstart-position
                              #:maximum-batching-window-in-seconds
                              #:maximum-record-age-in-seconds
                              #:maximum-retry-attempts-esm #:measure-name
                              #:measure-value #:measure-value-type
                              #:message-deduplication-id #:message-group-id
                              #:multi-measure-attribute-mapping
                              #:multi-measure-attribute-mappings
                              #:multi-measure-attribute-name
                              #:multi-measure-mapping #:multi-measure-mappings
                              #:multi-measure-name #:network-configuration
                              #:next-token #:not-found-exception
                              #:on-partial-batch-item-failure-streams
                              #:optional-arn #:path-parameter
                              #:path-parameter-list #:pipe #:pipe-arn
                              #:pipe-description
                              #:pipe-enrichment-http-parameters
                              #:pipe-enrichment-parameters #:pipe-list
                              #:pipe-log-configuration
                              #:pipe-log-configuration-parameters #:pipe-name
                              #:pipe-resource
                              #:pipe-source-active-mqbroker-parameters
                              #:pipe-source-dynamo-dbstream-parameters
                              #:pipe-source-kinesis-stream-parameters
                              #:pipe-source-managed-streaming-kafka-parameters
                              #:pipe-source-parameters
                              #:pipe-source-rabbit-mqbroker-parameters
                              #:pipe-source-self-managed-kafka-parameters
                              #:pipe-source-sqs-queue-parameters #:pipe-state
                              #:pipe-state-reason
                              #:pipe-target-batch-job-parameters
                              #:pipe-target-cloud-watch-logs-parameters
                              #:pipe-target-ecs-task-parameters
                              #:pipe-target-event-bridge-event-bus-parameters
                              #:pipe-target-http-parameters
                              #:pipe-target-invocation-type
                              #:pipe-target-kinesis-stream-parameters
                              #:pipe-target-lambda-function-parameters
                              #:pipe-target-parameters
                              #:pipe-target-redshift-data-parameters
                              #:pipe-target-sage-maker-pipeline-parameters
                              #:pipe-target-sqs-queue-parameters
                              #:pipe-target-state-machine-parameters
                              #:pipe-target-timestream-parameters #:pipes
                              #:placement-constraint
                              #:placement-constraint-expression
                              #:placement-constraint-type
                              #:placement-constraints #:placement-strategies
                              #:placement-strategy #:placement-strategy-field
                              #:placement-strategy-type #:propagate-tags
                              #:query-string-key #:query-string-parameters-map
                              #:query-string-value #:reference-id
                              #:requested-pipe-state
                              #:requested-pipe-state-describe-response
                              #:resource-arn #:role-arn #:s3log-destination
                              #:s3log-destination-parameters #:s3output-format
                              #:sage-maker-pipeline-parameter
                              #:sage-maker-pipeline-parameter-list
                              #:sage-maker-pipeline-parameter-name
                              #:sage-maker-pipeline-parameter-value
                              #:secret-manager-arn
                              #:secret-manager-arn-or-json-path
                              #:security-group #:security-group-id
                              #:security-group-ids #:security-groups
                              #:self-managed-kafka-access-configuration-credentials
                              #:self-managed-kafka-access-configuration-vpc
                              #:self-managed-kafka-start-position
                              #:service-quota-exceeded-exception
                              #:single-measure-mapping
                              #:single-measure-mappings #:sql #:sqls
                              #:start-pipe #:statement-name #:stop-pipe
                              #:string #:string-list #:subnet #:subnet-id
                              #:subnet-ids #:subnets #:tag #:tag-key
                              #:tag-key-list #:tag-list #:tag-map
                              #:tag-resource #:tag-resource-request
                              #:tag-resource-response #:tag-value
                              #:throttling-exception #:time-field-type
                              #:time-value #:timestamp #:timestamp-format #:uri
                              #:untag-resource #:untag-resource-request
                              #:untag-resource-response #:update-pipe
                              #:update-pipe-source-active-mqbroker-parameters
                              #:update-pipe-source-dynamo-dbstream-parameters
                              #:update-pipe-source-kinesis-stream-parameters
                              #:update-pipe-source-managed-streaming-kafka-parameters
                              #:update-pipe-source-parameters
                              #:update-pipe-source-rabbit-mqbroker-parameters
                              #:update-pipe-source-self-managed-kafka-parameters
                              #:update-pipe-source-sqs-queue-parameters
                              #:validation-exception
                              #:validation-exception-field
                              #:validation-exception-field-list #:version-value
                              #:pipes-error))
(common-lisp:in-package #:pira/pipes)

(common-lisp:define-condition pipes-error
    (pira/error:aws-error)
    common-lisp:nil)

(smithy/sdk/service:define-service pipes :shape-name "Pipes" :version
                                   "2015-10-07" :title
                                   "Amazon EventBridge Pipes" :operations
                                   '(list-tags-for-resource tag-resource
                                     untag-resource)
                                   :xml-namespace
                                   '(:uri
                                     "http://events.amazonaws.com/doc/2015-10-07"
                                     :prefix common-lisp:nil)
                                   :traits
                                   '(("aws.api#service" ("sdkId" . "Pipes")
                                      ("arnNamespace" . "pipes")
                                      ("cloudFormationName" . "Pipes")
                                      ("cloudTrailEventSource"
                                       . "pipes.amazonaws.com")
                                      ("endpointPrefix" . "pipes"))
                                     ("aws.auth#sigv4" ("name" . "pipes"))
                                     ("aws.iam#defineConditionKeys"
                                      ("aws:ResourceTag/${TagKey}"
                                       ("type" . "String")
                                       ("documentation"
                                        . "Filters access by tag-value associated with the resource")
                                       ("externalDocumentation"
                                        . "${DocHomeURL}IAM/latest/UserGuide/reference_policies_condition-keys.html#condition-keys-resourcetag"))
                                      ("aws:RequestTag/${TagKey}"
                                       ("type" . "String")
                                       ("documentation"
                                        . "Filters access by allowed set of values for each of the tags")
                                       ("externalDocumentation"
                                        . "${DocHomeURL}IAM/latest/UserGuide/reference_policies_condition-keys.html#condition-keys-resourcetag"))
                                      ("aws:TagKeys" ("type" . "ArrayOfString")
                                       ("documentation"
                                        . "Filters access by the presence of mandatory tags in the request")
                                       ("externalDocumentation"
                                        . "${DocHomeURL}IAM/latest/UserGuide/reference_policies_condition-keys.html#condition-keys-resourcetag")))
                                     ("aws.iam#supportedPrincipalTypes"
                                      . #("Root" "IAMUser" "IAMRole"
                                          "FederatedUser"))
                                     ("aws.protocols#restJson1")))

(smithy/sdk/shapes:define-type arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type arn-or-json-path smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type arn-or-url smithy/sdk/smithy-types:string)

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

(smithy/sdk/shapes:define-structure batch-array-properties common-lisp:nil
                                    ((size :target-type batch-array-size
                                      :member-name "Size"))
                                    (:shape-name "BatchArrayProperties"))

(smithy/sdk/shapes:define-type batch-array-size smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-structure batch-container-overrides common-lisp:nil
                                    ((command :target-type string-list
                                      :member-name "Command")
                                     (environment :target-type
                                      batch-environment-variable-list
                                      :member-name "Environment")
                                     (instance-type :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "InstanceType")
                                     (resource-requirements :target-type
                                      batch-resource-requirements-list
                                      :member-name "ResourceRequirements"))
                                    (:shape-name "BatchContainerOverrides"))

(smithy/sdk/shapes:define-list batch-depends-on :member batch-job-dependency)

(smithy/sdk/shapes:define-structure batch-environment-variable common-lisp:nil
                                    ((name :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "Name")
                                     (value :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "Value"))
                                    (:shape-name "BatchEnvironmentVariable"))

(smithy/sdk/shapes:define-list batch-environment-variable-list :member
                               batch-environment-variable)

(smithy/sdk/shapes:define-structure batch-job-dependency common-lisp:nil
                                    ((job-id :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "JobId")
                                     (type :target-type
                                      batch-job-dependency-type :member-name
                                      "Type"))
                                    (:shape-name "BatchJobDependency"))

(smithy/sdk/shapes:define-type batch-job-dependency-type
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-map batch-parameters-map :key
                              smithy/sdk/smithy-types:string :value
                              smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure batch-resource-requirement common-lisp:nil
                                    ((type :target-type
                                      batch-resource-requirement-type :required
                                      common-lisp:t :member-name "Type")
                                     (value :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "Value"))
                                    (:shape-name "BatchResourceRequirement"))

(smithy/sdk/shapes:define-type batch-resource-requirement-type
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list batch-resource-requirements-list :member
                               batch-resource-requirement)

(smithy/sdk/shapes:define-type batch-retry-attempts
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-structure batch-retry-strategy common-lisp:nil
                                    ((attempts :target-type
                                      batch-retry-attempts :member-name
                                      "Attempts"))
                                    (:shape-name "BatchRetryStrategy"))

(smithy/sdk/shapes:define-type boolean smithy/sdk/smithy-types:boolean)

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

(smithy/sdk/shapes:define-type cloudwatch-log-group-arn
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure cloudwatch-logs-log-destination
                                    common-lisp:nil
                                    ((log-group-arn :target-type
                                      cloudwatch-log-group-arn :member-name
                                      "LogGroupArn"))
                                    (:shape-name
                                     "CloudwatchLogsLogDestination"))

(smithy/sdk/shapes:define-structure cloudwatch-logs-log-destination-parameters
                                    common-lisp:nil
                                    ((log-group-arn :target-type
                                      cloudwatch-log-group-arn :required
                                      common-lisp:t :member-name
                                      "LogGroupArn"))
                                    (:shape-name
                                     "CloudwatchLogsLogDestinationParameters"))

(smithy/sdk/shapes:define-error conflict-exception common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "message")
                                 (resource-id :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "resourceId")
                                 (resource-type :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "resourceType"))
                                (:shape-name "ConflictException")
                                (:error-code 409) (:base-class pipes-error))

(smithy/sdk/shapes:define-input create-pipe-request common-lisp:nil
                                ((name :target-type pipe-name :required
                                  common-lisp:t :member-name "Name" :http-label
                                  common-lisp:t)
                                 (description :target-type pipe-description
                                  :member-name "Description")
                                 (desired-state :target-type
                                  requested-pipe-state :member-name
                                  "DesiredState")
                                 (source :target-type arn-or-url :required
                                  common-lisp:t :member-name "Source")
                                 (source-parameters :target-type
                                  pipe-source-parameters :member-name
                                  "SourceParameters")
                                 (enrichment :target-type optional-arn
                                  :member-name "Enrichment")
                                 (enrichment-parameters :target-type
                                  pipe-enrichment-parameters :member-name
                                  "EnrichmentParameters")
                                 (target :target-type arn :required
                                  common-lisp:t :member-name "Target")
                                 (target-parameters :target-type
                                  pipe-target-parameters :member-name
                                  "TargetParameters")
                                 (role-arn :target-type role-arn :required
                                  common-lisp:t :member-name "RoleArn")
                                 (tags :target-type tag-map :member-name
                                  "Tags")
                                 (log-configuration :target-type
                                  pipe-log-configuration-parameters
                                  :member-name "LogConfiguration")
                                 (kms-key-identifier :target-type
                                  kms-key-identifier :member-name
                                  "KmsKeyIdentifier"))
                                (:shape-name "CreatePipeRequest"))

(smithy/sdk/shapes:define-output create-pipe-response common-lisp:nil
                                 ((arn :target-type pipe-arn :member-name
                                   "Arn")
                                  (name :target-type pipe-name :member-name
                                   "Name")
                                  (desired-state :target-type
                                   requested-pipe-state :member-name
                                   "DesiredState")
                                  (current-state :target-type pipe-state
                                   :member-name "CurrentState")
                                  (creation-time :target-type timestamp
                                   :member-name "CreationTime")
                                  (last-modified-time :target-type timestamp
                                   :member-name "LastModifiedTime"))
                                 (:shape-name "CreatePipeResponse"))

(smithy/sdk/shapes:define-type database smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type db-user smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure dead-letter-config common-lisp:nil
                                    ((arn :target-type arn :member-name "Arn"))
                                    (:shape-name "DeadLetterConfig"))

(smithy/sdk/shapes:define-input delete-pipe-request common-lisp:nil
                                ((name :target-type pipe-name :required
                                  common-lisp:t :member-name "Name" :http-label
                                  common-lisp:t))
                                (:shape-name "DeletePipeRequest"))

(smithy/sdk/shapes:define-output delete-pipe-response common-lisp:nil
                                 ((arn :target-type pipe-arn :member-name
                                   "Arn")
                                  (name :target-type pipe-name :member-name
                                   "Name")
                                  (desired-state :target-type
                                   requested-pipe-state-describe-response
                                   :member-name "DesiredState")
                                  (current-state :target-type pipe-state
                                   :member-name "CurrentState")
                                  (creation-time :target-type timestamp
                                   :member-name "CreationTime")
                                  (last-modified-time :target-type timestamp
                                   :member-name "LastModifiedTime"))
                                 (:shape-name "DeletePipeResponse"))

(smithy/sdk/shapes:define-input describe-pipe-request common-lisp:nil
                                ((name :target-type pipe-name :required
                                  common-lisp:t :member-name "Name" :http-label
                                  common-lisp:t))
                                (:shape-name "DescribePipeRequest"))

(smithy/sdk/shapes:define-output describe-pipe-response common-lisp:nil
                                 ((arn :target-type pipe-arn :member-name
                                   "Arn")
                                  (name :target-type pipe-name :member-name
                                   "Name")
                                  (description :target-type pipe-description
                                   :member-name "Description")
                                  (desired-state :target-type
                                   requested-pipe-state-describe-response
                                   :member-name "DesiredState")
                                  (current-state :target-type pipe-state
                                   :member-name "CurrentState")
                                  (state-reason :target-type pipe-state-reason
                                   :member-name "StateReason")
                                  (source :target-type arn-or-url :member-name
                                   "Source")
                                  (source-parameters :target-type
                                   pipe-source-parameters :member-name
                                   "SourceParameters")
                                  (enrichment :target-type optional-arn
                                   :member-name "Enrichment")
                                  (enrichment-parameters :target-type
                                   pipe-enrichment-parameters :member-name
                                   "EnrichmentParameters")
                                  (target :target-type arn :member-name
                                   "Target")
                                  (target-parameters :target-type
                                   pipe-target-parameters :member-name
                                   "TargetParameters")
                                  (role-arn :target-type role-arn :member-name
                                   "RoleArn")
                                  (tags :target-type tag-map :member-name
                                   "Tags")
                                  (creation-time :target-type timestamp
                                   :member-name "CreationTime")
                                  (last-modified-time :target-type timestamp
                                   :member-name "LastModifiedTime")
                                  (log-configuration :target-type
                                   pipe-log-configuration :member-name
                                   "LogConfiguration")
                                  (kms-key-identifier :target-type
                                   kms-key-identifier :member-name
                                   "KmsKeyIdentifier"))
                                 (:shape-name "DescribePipeResponse"))

(smithy/sdk/shapes:define-structure dimension-mapping common-lisp:nil
                                    ((dimension-value :target-type
                                      dimension-value :required common-lisp:t
                                      :member-name "DimensionValue")
                                     (dimension-value-type :target-type
                                      dimension-value-type :required
                                      common-lisp:t :member-name
                                      "DimensionValueType")
                                     (dimension-name :target-type
                                      dimension-name :required common-lisp:t
                                      :member-name "DimensionName"))
                                    (:shape-name "DimensionMapping"))

(smithy/sdk/shapes:define-list dimension-mappings :member dimension-mapping)

(smithy/sdk/shapes:define-type dimension-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type dimension-value smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type dimension-value-type
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type dynamo-dbstream-start-position
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure ecs-container-override common-lisp:nil
                                    ((command :target-type string-list
                                      :member-name "Command")
                                     (cpu :target-type
                                      smithy/sdk/smithy-types:integer
                                      :member-name "Cpu")
                                     (environment :target-type
                                      ecs-environment-variable-list
                                      :member-name "Environment")
                                     (environment-files :target-type
                                      ecs-environment-file-list :member-name
                                      "EnvironmentFiles")
                                     (memory :target-type
                                      smithy/sdk/smithy-types:integer
                                      :member-name "Memory")
                                     (memory-reservation :target-type
                                      smithy/sdk/smithy-types:integer
                                      :member-name "MemoryReservation")
                                     (name :target-type string :member-name
                                      "Name")
                                     (resource-requirements :target-type
                                      ecs-resource-requirements-list
                                      :member-name "ResourceRequirements"))
                                    (:shape-name "EcsContainerOverride"))

(smithy/sdk/shapes:define-list ecs-container-override-list :member
                               ecs-container-override)

(smithy/sdk/shapes:define-structure ecs-environment-file common-lisp:nil
                                    ((type :target-type
                                      ecs-environment-file-type :required
                                      common-lisp:t :member-name "type")
                                     (value :target-type string :required
                                      common-lisp:t :member-name "value"))
                                    (:shape-name "EcsEnvironmentFile"))

(smithy/sdk/shapes:define-list ecs-environment-file-list :member
                               ecs-environment-file)

(smithy/sdk/shapes:define-type ecs-environment-file-type
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure ecs-environment-variable common-lisp:nil
                                    ((name :target-type string :member-name
                                      "name")
                                     (value :target-type string :member-name
                                      "value"))
                                    (:shape-name "EcsEnvironmentVariable"))

(smithy/sdk/shapes:define-list ecs-environment-variable-list :member
                               ecs-environment-variable)

(smithy/sdk/shapes:define-structure ecs-ephemeral-storage common-lisp:nil
                                    ((size-in-gi-b :target-type
                                      ephemeral-storage-size :required
                                      common-lisp:t :member-name "sizeInGiB"))
                                    (:shape-name "EcsEphemeralStorage"))

(smithy/sdk/shapes:define-structure ecs-inference-accelerator-override
                                    common-lisp:nil
                                    ((device-name :target-type string
                                      :member-name "deviceName")
                                     (device-type :target-type string
                                      :member-name "deviceType"))
                                    (:shape-name
                                     "EcsInferenceAcceleratorOverride"))

(smithy/sdk/shapes:define-list ecs-inference-accelerator-override-list :member
                               ecs-inference-accelerator-override)

(smithy/sdk/shapes:define-structure ecs-resource-requirement common-lisp:nil
                                    ((type :target-type
                                      ecs-resource-requirement-type :required
                                      common-lisp:t :member-name "type")
                                     (value :target-type string :required
                                      common-lisp:t :member-name "value"))
                                    (:shape-name "EcsResourceRequirement"))

(smithy/sdk/shapes:define-type ecs-resource-requirement-type
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list ecs-resource-requirements-list :member
                               ecs-resource-requirement)

(smithy/sdk/shapes:define-structure ecs-task-override common-lisp:nil
                                    ((container-overrides :target-type
                                      ecs-container-override-list :member-name
                                      "ContainerOverrides")
                                     (cpu :target-type string :member-name
                                      "Cpu")
                                     (ephemeral-storage :target-type
                                      ecs-ephemeral-storage :member-name
                                      "EphemeralStorage")
                                     (execution-role-arn :target-type
                                      arn-or-json-path :member-name
                                      "ExecutionRoleArn")
                                     (inference-accelerator-overrides
                                      :target-type
                                      ecs-inference-accelerator-override-list
                                      :member-name
                                      "InferenceAcceleratorOverrides")
                                     (memory :target-type string :member-name
                                      "Memory")
                                     (task-role-arn :target-type
                                      arn-or-json-path :member-name
                                      "TaskRoleArn"))
                                    (:shape-name "EcsTaskOverride"))

(smithy/sdk/shapes:define-type endpoint-string smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type ephemeral-storage-size
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type epoch-time-unit smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type error-message smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type event-bridge-detail-type
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type event-bridge-endpoint-id
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list event-bridge-event-resource-list :member
                               arn-or-json-path)

(smithy/sdk/shapes:define-type event-bridge-event-source
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type event-pattern smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure filter common-lisp:nil
                                    ((pattern :target-type event-pattern
                                      :member-name "Pattern"))
                                    (:shape-name "Filter"))

(smithy/sdk/shapes:define-structure filter-criteria common-lisp:nil
                                    ((filters :target-type filter-list
                                      :member-name "Filters"))
                                    (:shape-name "FilterCriteria"))

(smithy/sdk/shapes:define-list filter-list :member filter)

(smithy/sdk/shapes:define-type firehose-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure firehose-log-destination common-lisp:nil
                                    ((delivery-stream-arn :target-type
                                      firehose-arn :member-name
                                      "DeliveryStreamArn"))
                                    (:shape-name "FirehoseLogDestination"))

(smithy/sdk/shapes:define-structure firehose-log-destination-parameters
                                    common-lisp:nil
                                    ((delivery-stream-arn :target-type
                                      firehose-arn :required common-lisp:t
                                      :member-name "DeliveryStreamArn"))
                                    (:shape-name
                                     "FirehoseLogDestinationParameters"))

(smithy/sdk/shapes:define-type header-key smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-map header-parameters-map :key header-key :value
                              header-value)

(smithy/sdk/shapes:define-type header-value smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list include-execution-data :member
                               include-execution-data-option)

(smithy/sdk/shapes:define-type include-execution-data-option
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type input-template smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error internal-exception common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "message")
                                 (retry-after-seconds :target-type
                                  smithy/sdk/smithy-types:integer :member-name
                                  "retryAfterSeconds" :http-header
                                  "Retry-After"))
                                (:shape-name "InternalException")
                                (:error-code 500) (:base-class pipes-error))

(smithy/sdk/shapes:define-type json-path smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list kafka-bootstrap-servers :member endpoint-string)

(smithy/sdk/shapes:define-type kafka-topic-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type kinesis-partition-key
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type kinesis-stream-start-position
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type kms-key-identifier
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type launch-type smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type limit-max10 smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type limit-max100 smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type limit-max10000 smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type limit-min1 smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-input list-pipes-request common-lisp:nil
                                ((name-prefix :target-type pipe-name
                                  :member-name "NamePrefix" :http-query
                                  "NamePrefix")
                                 (desired-state :target-type
                                  requested-pipe-state :member-name
                                  "DesiredState" :http-query "DesiredState")
                                 (current-state :target-type pipe-state
                                  :member-name "CurrentState" :http-query
                                  "CurrentState")
                                 (source-prefix :target-type resource-arn
                                  :member-name "SourcePrefix" :http-query
                                  "SourcePrefix")
                                 (target-prefix :target-type resource-arn
                                  :member-name "TargetPrefix" :http-query
                                  "TargetPrefix")
                                 (next-token :target-type next-token
                                  :member-name "NextToken" :http-query
                                  "NextToken")
                                 (limit :target-type limit-max100 :member-name
                                  "Limit" :http-query "Limit"))
                                (:shape-name "ListPipesRequest"))

(smithy/sdk/shapes:define-output list-pipes-response common-lisp:nil
                                 ((pipes :target-type pipe-list :member-name
                                   "Pipes")
                                  (next-token :target-type next-token
                                   :member-name "NextToken"))
                                 (:shape-name "ListPipesResponse"))

(smithy/sdk/shapes:define-input list-tags-for-resource-request common-lisp:nil
                                ((resource-arn :target-type pipe-arn :required
                                  common-lisp:t :member-name "resourceArn"
                                  :http-label common-lisp:t))
                                (:shape-name "ListTagsForResourceRequest"))

(smithy/sdk/shapes:define-structure list-tags-for-resource-response
                                    common-lisp:nil
                                    ((tags :target-type tag-map :member-name
                                      "tags"))
                                    (:shape-name "ListTagsForResourceResponse"))

(smithy/sdk/shapes:define-type log-level smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type log-stream-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-union mqbroker-access-credentials common-lisp:nil
                                ((basic-auth :target-type secret-manager-arn
                                  :member-name "BasicAuth"))
                                (:shape-name "MQBrokerAccessCredentials"))

(smithy/sdk/shapes:define-type mqbroker-queue-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-union mskaccess-credentials common-lisp:nil
                                ((sasl-scram512auth :target-type
                                  secret-manager-arn :member-name
                                  "SaslScram512Auth")
                                 (client-certificate-tls-auth :target-type
                                  secret-manager-arn :member-name
                                  "ClientCertificateTlsAuth"))
                                (:shape-name "MSKAccessCredentials"))

(smithy/sdk/shapes:define-type mskstart-position smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type maximum-batching-window-in-seconds
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type maximum-record-age-in-seconds
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type maximum-retry-attempts-esm
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type measure-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type measure-value smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type measure-value-type
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type message-deduplication-id
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type message-group-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure multi-measure-attribute-mapping
                                    common-lisp:nil
                                    ((measure-value :target-type measure-value
                                      :required common-lisp:t :member-name
                                      "MeasureValue")
                                     (measure-value-type :target-type
                                      measure-value-type :required
                                      common-lisp:t :member-name
                                      "MeasureValueType")
                                     (multi-measure-attribute-name :target-type
                                      multi-measure-attribute-name :required
                                      common-lisp:t :member-name
                                      "MultiMeasureAttributeName"))
                                    (:shape-name
                                     "MultiMeasureAttributeMapping"))

(smithy/sdk/shapes:define-list multi-measure-attribute-mappings :member
                               multi-measure-attribute-mapping)

(smithy/sdk/shapes:define-type multi-measure-attribute-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure multi-measure-mapping common-lisp:nil
                                    ((multi-measure-name :target-type
                                      multi-measure-name :required
                                      common-lisp:t :member-name
                                      "MultiMeasureName")
                                     (multi-measure-attribute-mappings
                                      :target-type
                                      multi-measure-attribute-mappings
                                      :required common-lisp:t :member-name
                                      "MultiMeasureAttributeMappings"))
                                    (:shape-name "MultiMeasureMapping"))

(smithy/sdk/shapes:define-list multi-measure-mappings :member
                               multi-measure-mapping)

(smithy/sdk/shapes:define-type multi-measure-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure network-configuration common-lisp:nil
                                    ((awsvpc-configuration :target-type
                                      aws-vpc-configuration :member-name
                                      "awsvpcConfiguration"))
                                    (:shape-name "NetworkConfiguration"))

(smithy/sdk/shapes:define-type next-token smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error not-found-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message"))
                                (:shape-name "NotFoundException")
                                (:error-code 404) (:base-class pipes-error))

(smithy/sdk/shapes:define-type on-partial-batch-item-failure-streams
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type optional-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type path-parameter smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list path-parameter-list :member path-parameter)

(smithy/sdk/shapes:define-structure pipe common-lisp:nil
                                    ((name :target-type pipe-name :member-name
                                      "Name")
                                     (arn :target-type pipe-arn :member-name
                                      "Arn")
                                     (desired-state :target-type
                                      requested-pipe-state :member-name
                                      "DesiredState")
                                     (current-state :target-type pipe-state
                                      :member-name "CurrentState")
                                     (state-reason :target-type
                                      pipe-state-reason :member-name
                                      "StateReason")
                                     (creation-time :target-type timestamp
                                      :member-name "CreationTime")
                                     (last-modified-time :target-type timestamp
                                      :member-name "LastModifiedTime")
                                     (source :target-type arn-or-url
                                      :member-name "Source")
                                     (target :target-type arn :member-name
                                      "Target")
                                     (enrichment :target-type optional-arn
                                      :member-name "Enrichment"))
                                    (:shape-name "Pipe"))

(smithy/sdk/shapes:define-type pipe-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type pipe-description smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure pipe-enrichment-http-parameters
                                    common-lisp:nil
                                    ((path-parameter-values :target-type
                                      path-parameter-list :member-name
                                      "PathParameterValues")
                                     (header-parameters :target-type
                                      header-parameters-map :member-name
                                      "HeaderParameters")
                                     (query-string-parameters :target-type
                                      query-string-parameters-map :member-name
                                      "QueryStringParameters"))
                                    (:shape-name
                                     "PipeEnrichmentHttpParameters"))

(smithy/sdk/shapes:define-structure pipe-enrichment-parameters common-lisp:nil
                                    ((input-template :target-type
                                      input-template :member-name
                                      "InputTemplate")
                                     (http-parameters :target-type
                                      pipe-enrichment-http-parameters
                                      :member-name "HttpParameters"))
                                    (:shape-name "PipeEnrichmentParameters"))

(smithy/sdk/shapes:define-list pipe-list :member pipe)

(smithy/sdk/shapes:define-structure pipe-log-configuration common-lisp:nil
                                    ((s3log-destination :target-type
                                      s3log-destination :member-name
                                      "S3LogDestination")
                                     (firehose-log-destination :target-type
                                      firehose-log-destination :member-name
                                      "FirehoseLogDestination")
                                     (cloudwatch-logs-log-destination
                                      :target-type
                                      cloudwatch-logs-log-destination
                                      :member-name
                                      "CloudwatchLogsLogDestination")
                                     (level :target-type log-level :member-name
                                      "Level")
                                     (include-execution-data :target-type
                                      include-execution-data :member-name
                                      "IncludeExecutionData"))
                                    (:shape-name "PipeLogConfiguration"))

(smithy/sdk/shapes:define-structure pipe-log-configuration-parameters
                                    common-lisp:nil
                                    ((s3log-destination :target-type
                                      s3log-destination-parameters :member-name
                                      "S3LogDestination")
                                     (firehose-log-destination :target-type
                                      firehose-log-destination-parameters
                                      :member-name "FirehoseLogDestination")
                                     (cloudwatch-logs-log-destination
                                      :target-type
                                      cloudwatch-logs-log-destination-parameters
                                      :member-name
                                      "CloudwatchLogsLogDestination")
                                     (level :target-type log-level :required
                                      common-lisp:t :member-name "Level")
                                     (include-execution-data :target-type
                                      include-execution-data :member-name
                                      "IncludeExecutionData"))
                                    (:shape-name
                                     "PipeLogConfigurationParameters"))

(smithy/sdk/shapes:define-type pipe-name smithy/sdk/smithy-types:string)

common-lisp:nil

(smithy/sdk/shapes:define-structure pipe-source-active-mqbroker-parameters
                                    common-lisp:nil
                                    ((credentials :target-type
                                      mqbroker-access-credentials :required
                                      common-lisp:t :member-name "Credentials")
                                     (queue-name :target-type
                                      mqbroker-queue-name :required
                                      common-lisp:t :member-name "QueueName")
                                     (batch-size :target-type limit-max10000
                                      :member-name "BatchSize")
                                     (maximum-batching-window-in-seconds
                                      :target-type
                                      maximum-batching-window-in-seconds
                                      :member-name
                                      "MaximumBatchingWindowInSeconds"))
                                    (:shape-name
                                     "PipeSourceActiveMQBrokerParameters"))

(smithy/sdk/shapes:define-structure pipe-source-dynamo-dbstream-parameters
                                    common-lisp:nil
                                    ((batch-size :target-type limit-max10000
                                      :member-name "BatchSize")
                                     (dead-letter-config :target-type
                                      dead-letter-config :member-name
                                      "DeadLetterConfig")
                                     (on-partial-batch-item-failure
                                      :target-type
                                      on-partial-batch-item-failure-streams
                                      :member-name "OnPartialBatchItemFailure")
                                     (maximum-batching-window-in-seconds
                                      :target-type
                                      maximum-batching-window-in-seconds
                                      :member-name
                                      "MaximumBatchingWindowInSeconds")
                                     (maximum-record-age-in-seconds
                                      :target-type
                                      maximum-record-age-in-seconds
                                      :member-name "MaximumRecordAgeInSeconds")
                                     (maximum-retry-attempts :target-type
                                      maximum-retry-attempts-esm :member-name
                                      "MaximumRetryAttempts")
                                     (parallelization-factor :target-type
                                      limit-max10 :member-name
                                      "ParallelizationFactor")
                                     (starting-position :target-type
                                      dynamo-dbstream-start-position :required
                                      common-lisp:t :member-name
                                      "StartingPosition"))
                                    (:shape-name
                                     "PipeSourceDynamoDBStreamParameters"))

(smithy/sdk/shapes:define-structure pipe-source-kinesis-stream-parameters
                                    common-lisp:nil
                                    ((batch-size :target-type limit-max10000
                                      :member-name "BatchSize")
                                     (dead-letter-config :target-type
                                      dead-letter-config :member-name
                                      "DeadLetterConfig")
                                     (on-partial-batch-item-failure
                                      :target-type
                                      on-partial-batch-item-failure-streams
                                      :member-name "OnPartialBatchItemFailure")
                                     (maximum-batching-window-in-seconds
                                      :target-type
                                      maximum-batching-window-in-seconds
                                      :member-name
                                      "MaximumBatchingWindowInSeconds")
                                     (maximum-record-age-in-seconds
                                      :target-type
                                      maximum-record-age-in-seconds
                                      :member-name "MaximumRecordAgeInSeconds")
                                     (maximum-retry-attempts :target-type
                                      maximum-retry-attempts-esm :member-name
                                      "MaximumRetryAttempts")
                                     (parallelization-factor :target-type
                                      limit-max10 :member-name
                                      "ParallelizationFactor")
                                     (starting-position :target-type
                                      kinesis-stream-start-position :required
                                      common-lisp:t :member-name
                                      "StartingPosition")
                                     (starting-position-timestamp :target-type
                                      timestamp :member-name
                                      "StartingPositionTimestamp"))
                                    (:shape-name
                                     "PipeSourceKinesisStreamParameters"))

(smithy/sdk/shapes:define-structure
 pipe-source-managed-streaming-kafka-parameters common-lisp:nil
 ((topic-name :target-type kafka-topic-name :required common-lisp:t
   :member-name "TopicName")
  (starting-position :target-type mskstart-position :member-name
   "StartingPosition")
  (batch-size :target-type limit-max10000 :member-name "BatchSize")
  (maximum-batching-window-in-seconds :target-type
   maximum-batching-window-in-seconds :member-name
   "MaximumBatchingWindowInSeconds")
  (consumer-group-id :target-type uri :member-name "ConsumerGroupID")
  (credentials :target-type mskaccess-credentials :member-name "Credentials"))
 (:shape-name "PipeSourceManagedStreamingKafkaParameters"))

(smithy/sdk/shapes:define-structure pipe-source-parameters common-lisp:nil
                                    ((filter-criteria :target-type
                                      filter-criteria :member-name
                                      "FilterCriteria")
                                     (kinesis-stream-parameters :target-type
                                      pipe-source-kinesis-stream-parameters
                                      :member-name "KinesisStreamParameters")
                                     (dynamo-dbstream-parameters :target-type
                                      pipe-source-dynamo-dbstream-parameters
                                      :member-name "DynamoDBStreamParameters")
                                     (sqs-queue-parameters :target-type
                                      pipe-source-sqs-queue-parameters
                                      :member-name "SqsQueueParameters")
                                     (active-mqbroker-parameters :target-type
                                      pipe-source-active-mqbroker-parameters
                                      :member-name "ActiveMQBrokerParameters")
                                     (rabbit-mqbroker-parameters :target-type
                                      pipe-source-rabbit-mqbroker-parameters
                                      :member-name "RabbitMQBrokerParameters")
                                     (managed-streaming-kafka-parameters
                                      :target-type
                                      pipe-source-managed-streaming-kafka-parameters
                                      :member-name
                                      "ManagedStreamingKafkaParameters")
                                     (self-managed-kafka-parameters
                                      :target-type
                                      pipe-source-self-managed-kafka-parameters
                                      :member-name
                                      "SelfManagedKafkaParameters"))
                                    (:shape-name "PipeSourceParameters"))

(smithy/sdk/shapes:define-structure pipe-source-rabbit-mqbroker-parameters
                                    common-lisp:nil
                                    ((credentials :target-type
                                      mqbroker-access-credentials :required
                                      common-lisp:t :member-name "Credentials")
                                     (queue-name :target-type
                                      mqbroker-queue-name :required
                                      common-lisp:t :member-name "QueueName")
                                     (virtual-host :target-type uri
                                      :member-name "VirtualHost")
                                     (batch-size :target-type limit-max10000
                                      :member-name "BatchSize")
                                     (maximum-batching-window-in-seconds
                                      :target-type
                                      maximum-batching-window-in-seconds
                                      :member-name
                                      "MaximumBatchingWindowInSeconds"))
                                    (:shape-name
                                     "PipeSourceRabbitMQBrokerParameters"))

(smithy/sdk/shapes:define-structure pipe-source-self-managed-kafka-parameters
                                    common-lisp:nil
                                    ((topic-name :target-type kafka-topic-name
                                      :required common-lisp:t :member-name
                                      "TopicName")
                                     (starting-position :target-type
                                      self-managed-kafka-start-position
                                      :member-name "StartingPosition")
                                     (additional-bootstrap-servers :target-type
                                      kafka-bootstrap-servers :member-name
                                      "AdditionalBootstrapServers")
                                     (batch-size :target-type limit-max10000
                                      :member-name "BatchSize")
                                     (maximum-batching-window-in-seconds
                                      :target-type
                                      maximum-batching-window-in-seconds
                                      :member-name
                                      "MaximumBatchingWindowInSeconds")
                                     (consumer-group-id :target-type uri
                                      :member-name "ConsumerGroupID")
                                     (credentials :target-type
                                      self-managed-kafka-access-configuration-credentials
                                      :member-name "Credentials")
                                     (server-root-ca-certificate :target-type
                                      secret-manager-arn :member-name
                                      "ServerRootCaCertificate")
                                     (vpc :target-type
                                      self-managed-kafka-access-configuration-vpc
                                      :member-name "Vpc"))
                                    (:shape-name
                                     "PipeSourceSelfManagedKafkaParameters"))

(smithy/sdk/shapes:define-structure pipe-source-sqs-queue-parameters
                                    common-lisp:nil
                                    ((batch-size :target-type limit-max10000
                                      :member-name "BatchSize")
                                     (maximum-batching-window-in-seconds
                                      :target-type
                                      maximum-batching-window-in-seconds
                                      :member-name
                                      "MaximumBatchingWindowInSeconds"))
                                    (:shape-name
                                     "PipeSourceSqsQueueParameters"))

(smithy/sdk/shapes:define-type pipe-state smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type pipe-state-reason smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure pipe-target-batch-job-parameters
                                    common-lisp:nil
                                    ((job-definition :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name
                                      "JobDefinition")
                                     (job-name :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "JobName")
                                     (array-properties :target-type
                                      batch-array-properties :member-name
                                      "ArrayProperties")
                                     (retry-strategy :target-type
                                      batch-retry-strategy :member-name
                                      "RetryStrategy")
                                     (container-overrides :target-type
                                      batch-container-overrides :member-name
                                      "ContainerOverrides")
                                     (depends-on :target-type batch-depends-on
                                      :member-name "DependsOn")
                                     (parameters :target-type
                                      batch-parameters-map :member-name
                                      "Parameters"))
                                    (:shape-name
                                     "PipeTargetBatchJobParameters"))

(smithy/sdk/shapes:define-structure pipe-target-cloud-watch-logs-parameters
                                    common-lisp:nil
                                    ((log-stream-name :target-type
                                      log-stream-name :member-name
                                      "LogStreamName")
                                     (timestamp :target-type json-path
                                      :member-name "Timestamp"))
                                    (:shape-name
                                     "PipeTargetCloudWatchLogsParameters"))

(smithy/sdk/shapes:define-structure pipe-target-ecs-task-parameters
                                    common-lisp:nil
                                    ((task-definition-arn :target-type
                                      arn-or-json-path :required common-lisp:t
                                      :member-name "TaskDefinitionArn")
                                     (task-count :target-type limit-min1
                                      :member-name "TaskCount")
                                     (launch-type :target-type launch-type
                                      :member-name "LaunchType")
                                     (network-configuration :target-type
                                      network-configuration :member-name
                                      "NetworkConfiguration")
                                     (platform-version :target-type string
                                      :member-name "PlatformVersion")
                                     (group :target-type string :member-name
                                      "Group")
                                     (capacity-provider-strategy :target-type
                                      capacity-provider-strategy :member-name
                                      "CapacityProviderStrategy")
                                     (enable-ecsmanaged-tags :target-type
                                      boolean :member-name
                                      "EnableECSManagedTags")
                                     (enable-execute-command :target-type
                                      boolean :member-name
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
                                     (overrides :target-type ecs-task-override
                                      :member-name "Overrides")
                                     (tags :target-type tag-list :member-name
                                      "Tags"))
                                    (:shape-name "PipeTargetEcsTaskParameters"))

(smithy/sdk/shapes:define-structure
 pipe-target-event-bridge-event-bus-parameters common-lisp:nil
 ((endpoint-id :target-type event-bridge-endpoint-id :member-name "EndpointId")
  (detail-type :target-type event-bridge-detail-type :member-name "DetailType")
  (source :target-type event-bridge-event-source :member-name "Source")
  (resources :target-type event-bridge-event-resource-list :member-name
   "Resources")
  (time :target-type json-path :member-name "Time"))
 (:shape-name "PipeTargetEventBridgeEventBusParameters"))

(smithy/sdk/shapes:define-structure pipe-target-http-parameters common-lisp:nil
                                    ((path-parameter-values :target-type
                                      path-parameter-list :member-name
                                      "PathParameterValues")
                                     (header-parameters :target-type
                                      header-parameters-map :member-name
                                      "HeaderParameters")
                                     (query-string-parameters :target-type
                                      query-string-parameters-map :member-name
                                      "QueryStringParameters"))
                                    (:shape-name "PipeTargetHttpParameters"))

(smithy/sdk/shapes:define-type pipe-target-invocation-type
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure pipe-target-kinesis-stream-parameters
                                    common-lisp:nil
                                    ((partition-key :target-type
                                      kinesis-partition-key :required
                                      common-lisp:t :member-name
                                      "PartitionKey"))
                                    (:shape-name
                                     "PipeTargetKinesisStreamParameters"))

(smithy/sdk/shapes:define-structure pipe-target-lambda-function-parameters
                                    common-lisp:nil
                                    ((invocation-type :target-type
                                      pipe-target-invocation-type :member-name
                                      "InvocationType"))
                                    (:shape-name
                                     "PipeTargetLambdaFunctionParameters"))

(smithy/sdk/shapes:define-structure pipe-target-parameters common-lisp:nil
                                    ((input-template :target-type
                                      input-template :member-name
                                      "InputTemplate")
                                     (lambda-function-parameters :target-type
                                      pipe-target-lambda-function-parameters
                                      :member-name "LambdaFunctionParameters")
                                     (step-function-state-machine-parameters
                                      :target-type
                                      pipe-target-state-machine-parameters
                                      :member-name
                                      "StepFunctionStateMachineParameters")
                                     (kinesis-stream-parameters :target-type
                                      pipe-target-kinesis-stream-parameters
                                      :member-name "KinesisStreamParameters")
                                     (ecs-task-parameters :target-type
                                      pipe-target-ecs-task-parameters
                                      :member-name "EcsTaskParameters")
                                     (batch-job-parameters :target-type
                                      pipe-target-batch-job-parameters
                                      :member-name "BatchJobParameters")
                                     (sqs-queue-parameters :target-type
                                      pipe-target-sqs-queue-parameters
                                      :member-name "SqsQueueParameters")
                                     (http-parameters :target-type
                                      pipe-target-http-parameters :member-name
                                      "HttpParameters")
                                     (redshift-data-parameters :target-type
                                      pipe-target-redshift-data-parameters
                                      :member-name "RedshiftDataParameters")
                                     (sage-maker-pipeline-parameters
                                      :target-type
                                      pipe-target-sage-maker-pipeline-parameters
                                      :member-name
                                      "SageMakerPipelineParameters")
                                     (event-bridge-event-bus-parameters
                                      :target-type
                                      pipe-target-event-bridge-event-bus-parameters
                                      :member-name
                                      "EventBridgeEventBusParameters")
                                     (cloud-watch-logs-parameters :target-type
                                      pipe-target-cloud-watch-logs-parameters
                                      :member-name "CloudWatchLogsParameters")
                                     (timestream-parameters :target-type
                                      pipe-target-timestream-parameters
                                      :member-name "TimestreamParameters"))
                                    (:shape-name "PipeTargetParameters"))

(smithy/sdk/shapes:define-structure pipe-target-redshift-data-parameters
                                    common-lisp:nil
                                    ((secret-manager-arn :target-type
                                      secret-manager-arn-or-json-path
                                      :member-name "SecretManagerArn")
                                     (database :target-type database :required
                                      common-lisp:t :member-name "Database")
                                     (db-user :target-type db-user :member-name
                                      "DbUser")
                                     (statement-name :target-type
                                      statement-name :member-name
                                      "StatementName")
                                     (with-event :target-type boolean
                                      :member-name "WithEvent")
                                     (sqls :target-type sqls :required
                                      common-lisp:t :member-name "Sqls"))
                                    (:shape-name
                                     "PipeTargetRedshiftDataParameters"))

(smithy/sdk/shapes:define-structure pipe-target-sage-maker-pipeline-parameters
                                    common-lisp:nil
                                    ((pipeline-parameter-list :target-type
                                      sage-maker-pipeline-parameter-list
                                      :member-name "PipelineParameterList"))
                                    (:shape-name
                                     "PipeTargetSageMakerPipelineParameters"))

(smithy/sdk/shapes:define-structure pipe-target-sqs-queue-parameters
                                    common-lisp:nil
                                    ((message-group-id :target-type
                                      message-group-id :member-name
                                      "MessageGroupId")
                                     (message-deduplication-id :target-type
                                      message-deduplication-id :member-name
                                      "MessageDeduplicationId"))
                                    (:shape-name
                                     "PipeTargetSqsQueueParameters"))

(smithy/sdk/shapes:define-structure pipe-target-state-machine-parameters
                                    common-lisp:nil
                                    ((invocation-type :target-type
                                      pipe-target-invocation-type :member-name
                                      "InvocationType"))
                                    (:shape-name
                                     "PipeTargetStateMachineParameters"))

(smithy/sdk/shapes:define-structure pipe-target-timestream-parameters
                                    common-lisp:nil
                                    ((time-value :target-type time-value
                                      :required common-lisp:t :member-name
                                      "TimeValue")
                                     (epoch-time-unit :target-type
                                      epoch-time-unit :member-name
                                      "EpochTimeUnit")
                                     (time-field-type :target-type
                                      time-field-type :member-name
                                      "TimeFieldType")
                                     (timestamp-format :target-type
                                      timestamp-format :member-name
                                      "TimestampFormat")
                                     (version-value :target-type version-value
                                      :required common-lisp:t :member-name
                                      "VersionValue")
                                     (dimension-mappings :target-type
                                      dimension-mappings :required
                                      common-lisp:t :member-name
                                      "DimensionMappings")
                                     (single-measure-mappings :target-type
                                      single-measure-mappings :member-name
                                      "SingleMeasureMappings")
                                     (multi-measure-mappings :target-type
                                      multi-measure-mappings :member-name
                                      "MultiMeasureMappings"))
                                    (:shape-name
                                     "PipeTargetTimestreamParameters"))

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

(smithy/sdk/shapes:define-type propagate-tags smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type query-string-key smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-map query-string-parameters-map :key query-string-key
                              :value query-string-value)

(smithy/sdk/shapes:define-type query-string-value
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type reference-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type requested-pipe-state
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type requested-pipe-state-describe-response
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type resource-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type role-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure s3log-destination common-lisp:nil
                                    ((bucket-name :target-type string
                                      :member-name "BucketName")
                                     (prefix :target-type string :member-name
                                      "Prefix")
                                     (bucket-owner :target-type string
                                      :member-name "BucketOwner")
                                     (output-format :target-type
                                      s3output-format :member-name
                                      "OutputFormat"))
                                    (:shape-name "S3LogDestination"))

(smithy/sdk/shapes:define-structure s3log-destination-parameters
                                    common-lisp:nil
                                    ((bucket-name :target-type string :required
                                      common-lisp:t :member-name "BucketName")
                                     (bucket-owner :target-type string
                                      :required common-lisp:t :member-name
                                      "BucketOwner")
                                     (output-format :target-type
                                      s3output-format :member-name
                                      "OutputFormat")
                                     (prefix :target-type string :member-name
                                      "Prefix"))
                                    (:shape-name "S3LogDestinationParameters"))

(smithy/sdk/shapes:define-type s3output-format smithy/sdk/smithy-types:string)

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

(smithy/sdk/shapes:define-type secret-manager-arn
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type secret-manager-arn-or-json-path
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type security-group smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type security-group-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list security-group-ids :member security-group-id)

(smithy/sdk/shapes:define-list security-groups :member security-group)

(smithy/sdk/shapes:define-union
 self-managed-kafka-access-configuration-credentials common-lisp:nil
 ((basic-auth :target-type secret-manager-arn :member-name "BasicAuth")
  (sasl-scram512auth :target-type secret-manager-arn :member-name
   "SaslScram512Auth")
  (sasl-scram256auth :target-type secret-manager-arn :member-name
   "SaslScram256Auth")
  (client-certificate-tls-auth :target-type secret-manager-arn :member-name
   "ClientCertificateTlsAuth"))
 (:shape-name "SelfManagedKafkaAccessConfigurationCredentials"))

(smithy/sdk/shapes:define-structure self-managed-kafka-access-configuration-vpc
                                    common-lisp:nil
                                    ((subnets :target-type subnet-ids
                                      :member-name "Subnets")
                                     (security-group :target-type
                                      security-group-ids :member-name
                                      "SecurityGroup"))
                                    (:shape-name
                                     "SelfManagedKafkaAccessConfigurationVpc"))

(smithy/sdk/shapes:define-type self-managed-kafka-start-position
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error service-quota-exceeded-exception
                                common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "message")
                                 (resource-id :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "resourceId")
                                 (resource-type :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "resourceType")
                                 (service-code :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "serviceCode")
                                 (quota-code :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "quotaCode"))
                                (:shape-name "ServiceQuotaExceededException")
                                (:error-code 402) (:base-class pipes-error))

(smithy/sdk/shapes:define-structure single-measure-mapping common-lisp:nil
                                    ((measure-value :target-type measure-value
                                      :required common-lisp:t :member-name
                                      "MeasureValue")
                                     (measure-value-type :target-type
                                      measure-value-type :required
                                      common-lisp:t :member-name
                                      "MeasureValueType")
                                     (measure-name :target-type measure-name
                                      :required common-lisp:t :member-name
                                      "MeasureName"))
                                    (:shape-name "SingleMeasureMapping"))

(smithy/sdk/shapes:define-list single-measure-mappings :member
                               single-measure-mapping)

(smithy/sdk/shapes:define-type sql smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list sqls :member sql)

(smithy/sdk/shapes:define-input start-pipe-request common-lisp:nil
                                ((name :target-type pipe-name :required
                                  common-lisp:t :member-name "Name" :http-label
                                  common-lisp:t))
                                (:shape-name "StartPipeRequest"))

(smithy/sdk/shapes:define-output start-pipe-response common-lisp:nil
                                 ((arn :target-type pipe-arn :member-name
                                   "Arn")
                                  (name :target-type pipe-name :member-name
                                   "Name")
                                  (desired-state :target-type
                                   requested-pipe-state :member-name
                                   "DesiredState")
                                  (current-state :target-type pipe-state
                                   :member-name "CurrentState")
                                  (creation-time :target-type timestamp
                                   :member-name "CreationTime")
                                  (last-modified-time :target-type timestamp
                                   :member-name "LastModifiedTime"))
                                 (:shape-name "StartPipeResponse"))

(smithy/sdk/shapes:define-type statement-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input stop-pipe-request common-lisp:nil
                                ((name :target-type pipe-name :required
                                  common-lisp:t :member-name "Name" :http-label
                                  common-lisp:t))
                                (:shape-name "StopPipeRequest"))

(smithy/sdk/shapes:define-output stop-pipe-response common-lisp:nil
                                 ((arn :target-type pipe-arn :member-name
                                   "Arn")
                                  (name :target-type pipe-name :member-name
                                   "Name")
                                  (desired-state :target-type
                                   requested-pipe-state :member-name
                                   "DesiredState")
                                  (current-state :target-type pipe-state
                                   :member-name "CurrentState")
                                  (creation-time :target-type timestamp
                                   :member-name "CreationTime")
                                  (last-modified-time :target-type timestamp
                                   :member-name "LastModifiedTime"))
                                 (:shape-name "StopPipeResponse"))

(smithy/sdk/shapes:define-type string smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list string-list :member string)

(smithy/sdk/shapes:define-type subnet smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type subnet-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list subnet-ids :member subnet-id)

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

(smithy/sdk/shapes:define-input tag-resource-request common-lisp:nil
                                ((resource-arn :target-type pipe-arn :required
                                  common-lisp:t :member-name "resourceArn"
                                  :http-label common-lisp:t)
                                 (tags :target-type tag-map :required
                                  common-lisp:t :member-name "tags"))
                                (:shape-name "TagResourceRequest"))

(smithy/sdk/shapes:define-structure tag-resource-response common-lisp:nil
                                    common-lisp:nil
                                    (:shape-name "TagResourceResponse"))

(smithy/sdk/shapes:define-type tag-value smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error throttling-exception common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "message")
                                 (service-code :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "serviceCode")
                                 (quota-code :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "quotaCode")
                                 (retry-after-seconds :target-type
                                  smithy/sdk/smithy-types:integer :member-name
                                  "retryAfterSeconds" :http-header
                                  "Retry-After"))
                                (:shape-name "ThrottlingException")
                                (:error-code 429) (:base-class pipes-error))

(smithy/sdk/shapes:define-type time-field-type smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type time-value smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type timestamp smithy/sdk/smithy-types:timestamp)

(smithy/sdk/shapes:define-type timestamp-format smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type uri smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input untag-resource-request common-lisp:nil
                                ((resource-arn :target-type pipe-arn :required
                                  common-lisp:t :member-name "resourceArn"
                                  :http-label common-lisp:t)
                                 (tag-keys :target-type tag-key-list :required
                                  common-lisp:t :member-name "tagKeys"
                                  :http-query "tagKeys"))
                                (:shape-name "UntagResourceRequest"))

(smithy/sdk/shapes:define-structure untag-resource-response common-lisp:nil
                                    common-lisp:nil
                                    (:shape-name "UntagResourceResponse"))

(smithy/sdk/shapes:define-input update-pipe-request common-lisp:nil
                                ((name :target-type pipe-name :required
                                  common-lisp:t :member-name "Name" :http-label
                                  common-lisp:t)
                                 (description :target-type pipe-description
                                  :member-name "Description")
                                 (desired-state :target-type
                                  requested-pipe-state :member-name
                                  "DesiredState")
                                 (source-parameters :target-type
                                  update-pipe-source-parameters :member-name
                                  "SourceParameters")
                                 (enrichment :target-type optional-arn
                                  :member-name "Enrichment")
                                 (enrichment-parameters :target-type
                                  pipe-enrichment-parameters :member-name
                                  "EnrichmentParameters")
                                 (target :target-type arn :member-name
                                  "Target")
                                 (target-parameters :target-type
                                  pipe-target-parameters :member-name
                                  "TargetParameters")
                                 (role-arn :target-type role-arn :required
                                  common-lisp:t :member-name "RoleArn")
                                 (log-configuration :target-type
                                  pipe-log-configuration-parameters
                                  :member-name "LogConfiguration")
                                 (kms-key-identifier :target-type
                                  kms-key-identifier :member-name
                                  "KmsKeyIdentifier"))
                                (:shape-name "UpdatePipeRequest"))

(smithy/sdk/shapes:define-output update-pipe-response common-lisp:nil
                                 ((arn :target-type pipe-arn :member-name
                                   "Arn")
                                  (name :target-type pipe-name :member-name
                                   "Name")
                                  (desired-state :target-type
                                   requested-pipe-state :member-name
                                   "DesiredState")
                                  (current-state :target-type pipe-state
                                   :member-name "CurrentState")
                                  (creation-time :target-type timestamp
                                   :member-name "CreationTime")
                                  (last-modified-time :target-type timestamp
                                   :member-name "LastModifiedTime"))
                                 (:shape-name "UpdatePipeResponse"))

(smithy/sdk/shapes:define-structure
 update-pipe-source-active-mqbroker-parameters common-lisp:nil
 ((credentials :target-type mqbroker-access-credentials :required common-lisp:t
   :member-name "Credentials")
  (batch-size :target-type limit-max10000 :member-name "BatchSize")
  (maximum-batching-window-in-seconds :target-type
   maximum-batching-window-in-seconds :member-name
   "MaximumBatchingWindowInSeconds"))
 (:shape-name "UpdatePipeSourceActiveMQBrokerParameters"))

(smithy/sdk/shapes:define-structure
 update-pipe-source-dynamo-dbstream-parameters common-lisp:nil
 ((batch-size :target-type limit-max10000 :member-name "BatchSize")
  (dead-letter-config :target-type dead-letter-config :member-name
   "DeadLetterConfig")
  (on-partial-batch-item-failure :target-type
   on-partial-batch-item-failure-streams :member-name
   "OnPartialBatchItemFailure")
  (maximum-batching-window-in-seconds :target-type
   maximum-batching-window-in-seconds :member-name
   "MaximumBatchingWindowInSeconds")
  (maximum-record-age-in-seconds :target-type maximum-record-age-in-seconds
   :member-name "MaximumRecordAgeInSeconds")
  (maximum-retry-attempts :target-type maximum-retry-attempts-esm :member-name
   "MaximumRetryAttempts")
  (parallelization-factor :target-type limit-max10 :member-name
   "ParallelizationFactor"))
 (:shape-name "UpdatePipeSourceDynamoDBStreamParameters"))

(smithy/sdk/shapes:define-structure
 update-pipe-source-kinesis-stream-parameters common-lisp:nil
 ((batch-size :target-type limit-max10000 :member-name "BatchSize")
  (dead-letter-config :target-type dead-letter-config :member-name
   "DeadLetterConfig")
  (on-partial-batch-item-failure :target-type
   on-partial-batch-item-failure-streams :member-name
   "OnPartialBatchItemFailure")
  (maximum-batching-window-in-seconds :target-type
   maximum-batching-window-in-seconds :member-name
   "MaximumBatchingWindowInSeconds")
  (maximum-record-age-in-seconds :target-type maximum-record-age-in-seconds
   :member-name "MaximumRecordAgeInSeconds")
  (maximum-retry-attempts :target-type maximum-retry-attempts-esm :member-name
   "MaximumRetryAttempts")
  (parallelization-factor :target-type limit-max10 :member-name
   "ParallelizationFactor"))
 (:shape-name "UpdatePipeSourceKinesisStreamParameters"))

(smithy/sdk/shapes:define-structure
 update-pipe-source-managed-streaming-kafka-parameters common-lisp:nil
 ((batch-size :target-type limit-max10000 :member-name "BatchSize")
  (credentials :target-type mskaccess-credentials :member-name "Credentials")
  (maximum-batching-window-in-seconds :target-type
   maximum-batching-window-in-seconds :member-name
   "MaximumBatchingWindowInSeconds"))
 (:shape-name "UpdatePipeSourceManagedStreamingKafkaParameters"))

(smithy/sdk/shapes:define-structure update-pipe-source-parameters
                                    common-lisp:nil
                                    ((filter-criteria :target-type
                                      filter-criteria :member-name
                                      "FilterCriteria")
                                     (kinesis-stream-parameters :target-type
                                      update-pipe-source-kinesis-stream-parameters
                                      :member-name "KinesisStreamParameters")
                                     (dynamo-dbstream-parameters :target-type
                                      update-pipe-source-dynamo-dbstream-parameters
                                      :member-name "DynamoDBStreamParameters")
                                     (sqs-queue-parameters :target-type
                                      update-pipe-source-sqs-queue-parameters
                                      :member-name "SqsQueueParameters")
                                     (active-mqbroker-parameters :target-type
                                      update-pipe-source-active-mqbroker-parameters
                                      :member-name "ActiveMQBrokerParameters")
                                     (rabbit-mqbroker-parameters :target-type
                                      update-pipe-source-rabbit-mqbroker-parameters
                                      :member-name "RabbitMQBrokerParameters")
                                     (managed-streaming-kafka-parameters
                                      :target-type
                                      update-pipe-source-managed-streaming-kafka-parameters
                                      :member-name
                                      "ManagedStreamingKafkaParameters")
                                     (self-managed-kafka-parameters
                                      :target-type
                                      update-pipe-source-self-managed-kafka-parameters
                                      :member-name
                                      "SelfManagedKafkaParameters"))
                                    (:shape-name "UpdatePipeSourceParameters"))

(smithy/sdk/shapes:define-structure
 update-pipe-source-rabbit-mqbroker-parameters common-lisp:nil
 ((credentials :target-type mqbroker-access-credentials :required common-lisp:t
   :member-name "Credentials")
  (batch-size :target-type limit-max10000 :member-name "BatchSize")
  (maximum-batching-window-in-seconds :target-type
   maximum-batching-window-in-seconds :member-name
   "MaximumBatchingWindowInSeconds"))
 (:shape-name "UpdatePipeSourceRabbitMQBrokerParameters"))

(smithy/sdk/shapes:define-structure
 update-pipe-source-self-managed-kafka-parameters common-lisp:nil
 ((batch-size :target-type limit-max10000 :member-name "BatchSize")
  (maximum-batching-window-in-seconds :target-type
   maximum-batching-window-in-seconds :member-name
   "MaximumBatchingWindowInSeconds")
  (credentials :target-type self-managed-kafka-access-configuration-credentials
   :member-name "Credentials")
  (server-root-ca-certificate :target-type secret-manager-arn :member-name
   "ServerRootCaCertificate")
  (vpc :target-type self-managed-kafka-access-configuration-vpc :member-name
   "Vpc"))
 (:shape-name "UpdatePipeSourceSelfManagedKafkaParameters"))

(smithy/sdk/shapes:define-structure update-pipe-source-sqs-queue-parameters
                                    common-lisp:nil
                                    ((batch-size :target-type limit-max10000
                                      :member-name "BatchSize")
                                     (maximum-batching-window-in-seconds
                                      :target-type
                                      maximum-batching-window-in-seconds
                                      :member-name
                                      "MaximumBatchingWindowInSeconds"))
                                    (:shape-name
                                     "UpdatePipeSourceSqsQueueParameters"))

(smithy/sdk/shapes:define-error validation-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message")
                                 (field-list :target-type
                                  validation-exception-field-list :member-name
                                  "fieldList"))
                                (:shape-name "ValidationException")
                                (:error-code 400) (:base-class pipes-error))

(smithy/sdk/shapes:define-structure validation-exception-field common-lisp:nil
                                    ((name :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "name")
                                     (message :target-type error-message
                                      :required common-lisp:t :member-name
                                      "message"))
                                    (:shape-name "ValidationExceptionField"))

(smithy/sdk/shapes:define-list validation-exception-field-list :member
                               validation-exception-field)

(smithy/sdk/shapes:define-type version-value smithy/sdk/smithy-types:string)

(smithy/sdk/operation:define-operation create-pipe :shape-name "CreatePipe"
                                       :input create-pipe-request :output
                                       create-pipe-response :errors
                                       (conflict-exception internal-exception
                                        not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri "/v1/pipes/{Name}"
                                       :code 200)

(smithy/sdk/operation:define-operation delete-pipe :shape-name "DeletePipe"
                                       :input delete-pipe-request :output
                                       delete-pipe-response :errors
                                       (conflict-exception internal-exception
                                        not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "DELETE" :uri "/v1/pipes/{Name}"
                                       :code 200)

(smithy/sdk/operation:define-operation describe-pipe :shape-name "DescribePipe"
                                       :input describe-pipe-request :output
                                       describe-pipe-response :errors
                                       (internal-exception not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri "/v1/pipes/{Name}"
                                       :code 200)

(smithy/sdk/operation:define-operation list-pipes :shape-name "ListPipes"
                                       :input list-pipes-request :output
                                       list-pipes-response :errors
                                       (internal-exception throttling-exception
                                        validation-exception)
                                       :method "GET" :uri "/v1/pipes" :code 200)

(smithy/sdk/operation:define-operation list-tags-for-resource :shape-name
                                       "ListTagsForResource" :input
                                       list-tags-for-resource-request :output
                                       list-tags-for-resource-response :errors
                                       (internal-exception not-found-exception
                                        validation-exception)
                                       :method "GET" :uri "/tags/{resourceArn}")

(smithy/sdk/operation:define-operation start-pipe :shape-name "StartPipe"
                                       :input start-pipe-request :output
                                       start-pipe-response :errors
                                       (conflict-exception internal-exception
                                        not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/v1/pipes/{Name}/start" :code 200)

(smithy/sdk/operation:define-operation stop-pipe :shape-name "StopPipe" :input
                                       stop-pipe-request :output
                                       stop-pipe-response :errors
                                       (conflict-exception internal-exception
                                        not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/v1/pipes/{Name}/stop" :code 200)

(smithy/sdk/operation:define-operation tag-resource :shape-name "TagResource"
                                       :input tag-resource-request :output
                                       tag-resource-response :errors
                                       (internal-exception not-found-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/tags/{resourceArn}")

(smithy/sdk/operation:define-operation untag-resource :shape-name
                                       "UntagResource" :input
                                       untag-resource-request :output
                                       untag-resource-response :errors
                                       (internal-exception not-found-exception
                                        validation-exception)
                                       :method "DELETE" :uri
                                       "/tags/{resourceArn}")

(smithy/sdk/operation:define-operation update-pipe :shape-name "UpdatePipe"
                                       :input update-pipe-request :output
                                       update-pipe-response :errors
                                       (conflict-exception internal-exception
                                        not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "PUT" :uri "/v1/pipes/{Name}"
                                       :code 200)
