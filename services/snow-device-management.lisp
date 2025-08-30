(uiop/package:define-package #:pira/snow-device-management (:use)
                             (:export #:access-denied-exception
                              #:attachment-status #:cancel-task
                              #:cancel-task-input #:cancel-task-output
                              #:capacity #:capacity-list #:command
                              #:cpu-options #:create-task #:create-task-input
                              #:create-task-output #:describe-device
                              #:describe-device-ec2input
                              #:describe-device-ec2instances
                              #:describe-device-ec2output
                              #:describe-device-input #:describe-device-output
                              #:describe-execution #:describe-execution-input
                              #:describe-execution-output #:describe-task
                              #:describe-task-input #:describe-task-output
                              #:device-summary #:device-summary-list
                              #:ebs-instance-block-device #:execution
                              #:execution-id #:execution-state
                              #:execution-summary #:execution-summary-list
                              #:idempotency-token #:instance
                              #:instance-block-device-mapping
                              #:instance-block-device-mapping-list
                              #:instance-ids-list #:instance-state
                              #:instance-state-name #:instance-summary
                              #:instance-summary-list
                              #:internal-server-exception
                              #:ip-address-assignment #:job-id
                              #:list-device-resources
                              #:list-device-resources-input
                              #:list-device-resources-output #:list-devices
                              #:list-devices-input #:list-devices-output
                              #:list-executions #:list-executions-input
                              #:list-executions-output #:list-tags-for-resource
                              #:list-tags-for-resource-input
                              #:list-tags-for-resource-output #:list-tasks
                              #:list-tasks-input #:list-tasks-output
                              #:managed-device #:managed-device-id
                              #:max-results #:next-token
                              #:physical-connector-type
                              #:physical-network-interface
                              #:physical-network-interface-list #:reboot
                              #:resource-not-found-exception #:resource-summary
                              #:resource-summary-list
                              #:security-group-identifier
                              #:security-group-identifier-list
                              #:service-quota-exceeded-exception
                              #:snow-device-management #:software-information
                              #:tag-keys #:tag-map #:tag-resource
                              #:tag-resource-input #:target-list #:task
                              #:task-description-string #:task-id #:task-state
                              #:task-summary #:task-summary-list
                              #:throttling-exception #:unlock #:unlock-state
                              #:untag-resource #:untag-resource-input
                              #:validation-exception
                              #:snow-device-management-error))
(common-lisp:in-package #:pira/snow-device-management)

(common-lisp:define-condition snow-device-management-error
    (pira/error:aws-error)
    common-lisp:nil)

(smithy/sdk/service:define-service snow-device-management :shape-name
                                   "SnowDeviceManagement" :version "2021-08-04"
                                   :title "AWS Snow Device Management"
                                   :operations
                                   '(list-tags-for-resource tag-resource
                                     untag-resource)
                                   :traits
                                   '(("aws.api#service"
                                      ("arnNamespace"
                                       . "snow-device-management")
                                      ("sdkId" . "Snow Device Management"))
                                     ("aws.auth#sigv4"
                                      ("name" . "snow-device-management"))
                                     ("aws.protocols#restJson1")))

(smithy/sdk/shapes:define-error access-denied-exception common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "message"))
                                (:shape-name "AccessDeniedException")
                                (:error-code 403)
                                (:base-class snow-device-management-error))

(smithy/sdk/shapes:define-type attachment-status smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input cancel-task-input common-lisp:nil
                                ((task-id :target-type task-id :required
                                  common-lisp:t :member-name "taskId"
                                  :http-label common-lisp:t))
                                (:shape-name "CancelTaskInput"))

(smithy/sdk/shapes:define-structure cancel-task-output common-lisp:nil
                                    ((task-id :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "taskId"))
                                    (:shape-name "CancelTaskOutput"))

(smithy/sdk/shapes:define-structure capacity common-lisp:nil
                                    ((name :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "name")
                                     (unit :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "unit")
                                     (total :target-type
                                      smithy/sdk/smithy-types:long :member-name
                                      "total")
                                     (used :target-type
                                      smithy/sdk/smithy-types:long :member-name
                                      "used")
                                     (available :target-type
                                      smithy/sdk/smithy-types:long :member-name
                                      "available"))
                                    (:shape-name "Capacity"))

(smithy/sdk/shapes:define-list capacity-list :member capacity)

(smithy/sdk/shapes:define-union command common-lisp:nil
                                ((unlock :target-type unlock :member-name
                                  "unlock")
                                 (reboot :target-type reboot :member-name
                                  "reboot"))
                                (:shape-name "Command"))

(smithy/sdk/shapes:define-structure cpu-options common-lisp:nil
                                    ((core-count :target-type
                                      smithy/sdk/smithy-types:integer
                                      :member-name "coreCount")
                                     (threads-per-core :target-type
                                      smithy/sdk/smithy-types:integer
                                      :member-name "threadsPerCore"))
                                    (:shape-name "CpuOptions"))

(smithy/sdk/shapes:define-structure create-task-input common-lisp:nil
                                    ((targets :target-type target-list
                                      :required common-lisp:t :member-name
                                      "targets")
                                     (command :target-type command :required
                                      common-lisp:t :member-name "command")
                                     (description :target-type
                                      task-description-string :member-name
                                      "description")
                                     (tags :target-type tag-map :member-name
                                      "tags")
                                     (client-token :target-type
                                      idempotency-token :member-name
                                      "clientToken"))
                                    (:shape-name "CreateTaskInput"))

(smithy/sdk/shapes:define-structure create-task-output common-lisp:nil
                                    ((task-id :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "taskId")
                                     (task-arn :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "taskArn"))
                                    (:shape-name "CreateTaskOutput"))

(smithy/sdk/shapes:define-input describe-device-ec2input common-lisp:nil
                                ((managed-device-id :target-type
                                  managed-device-id :required common-lisp:t
                                  :member-name "managedDeviceId" :http-label
                                  common-lisp:t)
                                 (instance-ids :target-type instance-ids-list
                                  :required common-lisp:t :member-name
                                  "instanceIds"))
                                (:shape-name "DescribeDeviceEc2Input"))

(smithy/sdk/shapes:define-structure describe-device-ec2output common-lisp:nil
                                    ((instances :target-type
                                      instance-summary-list :member-name
                                      "instances"))
                                    (:shape-name "DescribeDeviceEc2Output"))

(smithy/sdk/shapes:define-input describe-device-input common-lisp:nil
                                ((managed-device-id :target-type
                                  managed-device-id :required common-lisp:t
                                  :member-name "managedDeviceId" :http-label
                                  common-lisp:t))
                                (:shape-name "DescribeDeviceInput"))

(smithy/sdk/shapes:define-structure describe-device-output common-lisp:nil
                                    ((last-reached-out-at :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :member-name "lastReachedOutAt")
                                     (last-updated-at :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :member-name "lastUpdatedAt")
                                     (tags :target-type tag-map :member-name
                                      "tags")
                                     (managed-device-id :target-type
                                      managed-device-id :member-name
                                      "managedDeviceId")
                                     (managed-device-arn :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "managedDeviceArn")
                                     (device-type :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "deviceType")
                                     (associated-with-job :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "associatedWithJob")
                                     (device-state :target-type unlock-state
                                      :member-name "deviceState")
                                     (physical-network-interfaces :target-type
                                      physical-network-interface-list
                                      :member-name "physicalNetworkInterfaces")
                                     (device-capacities :target-type
                                      capacity-list :member-name
                                      "deviceCapacities")
                                     (software :target-type
                                      software-information :member-name
                                      "software"))
                                    (:shape-name "DescribeDeviceOutput"))

(smithy/sdk/shapes:define-input describe-execution-input common-lisp:nil
                                ((task-id :target-type task-id :required
                                  common-lisp:t :member-name "taskId"
                                  :http-label common-lisp:t)
                                 (managed-device-id :target-type
                                  managed-device-id :required common-lisp:t
                                  :member-name "managedDeviceId" :http-label
                                  common-lisp:t))
                                (:shape-name "DescribeExecutionInput"))

(smithy/sdk/shapes:define-structure describe-execution-output common-lisp:nil
                                    ((task-id :target-type task-id :member-name
                                      "taskId")
                                     (execution-id :target-type execution-id
                                      :member-name "executionId")
                                     (managed-device-id :target-type
                                      managed-device-id :member-name
                                      "managedDeviceId")
                                     (state :target-type execution-state
                                      :member-name "state")
                                     (started-at :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :member-name "startedAt")
                                     (last-updated-at :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :member-name "lastUpdatedAt"))
                                    (:shape-name "DescribeExecutionOutput"))

(smithy/sdk/shapes:define-input describe-task-input common-lisp:nil
                                ((task-id :target-type task-id :required
                                  common-lisp:t :member-name "taskId"
                                  :http-label common-lisp:t))
                                (:shape-name "DescribeTaskInput"))

(smithy/sdk/shapes:define-structure describe-task-output common-lisp:nil
                                    ((task-id :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "taskId")
                                     (task-arn :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "taskArn")
                                     (targets :target-type target-list
                                      :member-name "targets")
                                     (state :target-type task-state
                                      :member-name "state")
                                     (created-at :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :member-name "createdAt")
                                     (last-updated-at :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :member-name "lastUpdatedAt")
                                     (completed-at :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :member-name "completedAt")
                                     (description :target-type
                                      task-description-string :member-name
                                      "description")
                                     (tags :target-type tag-map :member-name
                                      "tags"))
                                    (:shape-name "DescribeTaskOutput"))

(smithy/sdk/shapes:define-structure device-summary common-lisp:nil
                                    ((managed-device-id :target-type
                                      managed-device-id :member-name
                                      "managedDeviceId")
                                     (managed-device-arn :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "managedDeviceArn")
                                     (associated-with-job :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "associatedWithJob")
                                     (tags :target-type tag-map :member-name
                                      "tags"))
                                    (:shape-name "DeviceSummary"))

(smithy/sdk/shapes:define-list device-summary-list :member device-summary)

(smithy/sdk/shapes:define-structure ebs-instance-block-device common-lisp:nil
                                    ((attach-time :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :member-name "attachTime")
                                     (delete-on-termination :target-type
                                      smithy/sdk/smithy-types:boolean
                                      :member-name "deleteOnTermination")
                                     (status :target-type attachment-status
                                      :member-name "status")
                                     (volume-id :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "volumeId"))
                                    (:shape-name "EbsInstanceBlockDevice"))

common-lisp:nil

(smithy/sdk/shapes:define-type execution-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type execution-state smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure execution-summary common-lisp:nil
                                    ((task-id :target-type task-id :member-name
                                      "taskId")
                                     (execution-id :target-type execution-id
                                      :member-name "executionId")
                                     (managed-device-id :target-type
                                      managed-device-id :member-name
                                      "managedDeviceId")
                                     (state :target-type execution-state
                                      :member-name "state"))
                                    (:shape-name "ExecutionSummary"))

(smithy/sdk/shapes:define-list execution-summary-list :member execution-summary)

(smithy/sdk/shapes:define-type idempotency-token smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure instance common-lisp:nil
                                    ((image-id :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "imageId")
                                     (ami-launch-index :target-type
                                      smithy/sdk/smithy-types:integer
                                      :member-name "amiLaunchIndex")
                                     (instance-id :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "instanceId")
                                     (state :target-type instance-state
                                      :member-name "state")
                                     (instance-type :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "instanceType")
                                     (private-ip-address :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "privateIpAddress")
                                     (public-ip-address :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "publicIpAddress")
                                     (created-at :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :member-name "createdAt")
                                     (updated-at :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :member-name "updatedAt")
                                     (block-device-mappings :target-type
                                      instance-block-device-mapping-list
                                      :member-name "blockDeviceMappings")
                                     (security-groups :target-type
                                      security-group-identifier-list
                                      :member-name "securityGroups")
                                     (cpu-options :target-type cpu-options
                                      :member-name "cpuOptions")
                                     (root-device-name :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "rootDeviceName"))
                                    (:shape-name "Instance"))

(smithy/sdk/shapes:define-structure instance-block-device-mapping
                                    common-lisp:nil
                                    ((device-name :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "deviceName")
                                     (ebs :target-type
                                      ebs-instance-block-device :member-name
                                      "ebs"))
                                    (:shape-name "InstanceBlockDeviceMapping"))

(smithy/sdk/shapes:define-list instance-block-device-mapping-list :member
                               instance-block-device-mapping)

(smithy/sdk/shapes:define-list instance-ids-list :member
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure instance-state common-lisp:nil
                                    ((code :target-type
                                      smithy/sdk/smithy-types:integer
                                      :member-name "code")
                                     (name :target-type instance-state-name
                                      :member-name "name"))
                                    (:shape-name "InstanceState"))

(smithy/sdk/shapes:define-type instance-state-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure instance-summary common-lisp:nil
                                    ((instance :target-type instance
                                      :member-name "instance")
                                     (last-updated-at :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :member-name "lastUpdatedAt"))
                                    (:shape-name "InstanceSummary"))

(smithy/sdk/shapes:define-list instance-summary-list :member instance-summary)

(smithy/sdk/shapes:define-error internal-server-exception common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "message"))
                                (:shape-name "InternalServerException")
                                (:error-code 500)
                                (:base-class snow-device-management-error))

(smithy/sdk/shapes:define-type ip-address-assignment
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type job-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input list-device-resources-input common-lisp:nil
                                ((managed-device-id :target-type
                                  managed-device-id :required common-lisp:t
                                  :member-name "managedDeviceId" :http-label
                                  common-lisp:t)
                                 (type :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "type" :http-query "type")
                                 (max-results :target-type max-results
                                  :member-name "maxResults" :http-query
                                  "maxResults")
                                 (next-token :target-type next-token
                                  :member-name "nextToken" :http-query
                                  "nextToken"))
                                (:shape-name "ListDeviceResourcesInput"))

(smithy/sdk/shapes:define-structure list-device-resources-output
                                    common-lisp:nil
                                    ((resources :target-type
                                      resource-summary-list :member-name
                                      "resources")
                                     (next-token :target-type next-token
                                      :member-name "nextToken"))
                                    (:shape-name "ListDeviceResourcesOutput"))

(smithy/sdk/shapes:define-input list-devices-input common-lisp:nil
                                ((job-id :target-type job-id :member-name
                                  "jobId" :http-query "jobId")
                                 (max-results :target-type max-results
                                  :member-name "maxResults" :http-query
                                  "maxResults")
                                 (next-token :target-type next-token
                                  :member-name "nextToken" :http-query
                                  "nextToken"))
                                (:shape-name "ListDevicesInput"))

(smithy/sdk/shapes:define-structure list-devices-output common-lisp:nil
                                    ((devices :target-type device-summary-list
                                      :member-name "devices")
                                     (next-token :target-type next-token
                                      :member-name "nextToken"))
                                    (:shape-name "ListDevicesOutput"))

(smithy/sdk/shapes:define-input list-executions-input common-lisp:nil
                                ((task-id :target-type task-id :required
                                  common-lisp:t :member-name "taskId"
                                  :http-query "taskId")
                                 (state :target-type execution-state
                                  :member-name "state" :http-query "state")
                                 (max-results :target-type max-results
                                  :member-name "maxResults" :http-query
                                  "maxResults")
                                 (next-token :target-type next-token
                                  :member-name "nextToken" :http-query
                                  "nextToken"))
                                (:shape-name "ListExecutionsInput"))

(smithy/sdk/shapes:define-structure list-executions-output common-lisp:nil
                                    ((executions :target-type
                                      execution-summary-list :member-name
                                      "executions")
                                     (next-token :target-type next-token
                                      :member-name "nextToken"))
                                    (:shape-name "ListExecutionsOutput"))

(smithy/sdk/shapes:define-input list-tags-for-resource-input common-lisp:nil
                                ((resource-arn :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "resourceArn"
                                  :http-label common-lisp:t))
                                (:shape-name "ListTagsForResourceInput"))

(smithy/sdk/shapes:define-structure list-tags-for-resource-output
                                    common-lisp:nil
                                    ((tags :target-type tag-map :member-name
                                      "tags"))
                                    (:shape-name "ListTagsForResourceOutput"))

(smithy/sdk/shapes:define-input list-tasks-input common-lisp:nil
                                ((state :target-type task-state :member-name
                                  "state" :http-query "state")
                                 (max-results :target-type max-results
                                  :member-name "maxResults" :http-query
                                  "maxResults")
                                 (next-token :target-type next-token
                                  :member-name "nextToken" :http-query
                                  "nextToken"))
                                (:shape-name "ListTasksInput"))

(smithy/sdk/shapes:define-structure list-tasks-output common-lisp:nil
                                    ((tasks :target-type task-summary-list
                                      :member-name "tasks")
                                     (next-token :target-type next-token
                                      :member-name "nextToken"))
                                    (:shape-name "ListTasksOutput"))

common-lisp:nil

(smithy/sdk/shapes:define-type managed-device-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type max-results smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type next-token smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type physical-connector-type
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure physical-network-interface common-lisp:nil
                                    ((physical-network-interface-id
                                      :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name
                                      "physicalNetworkInterfaceId")
                                     (physical-connector-type :target-type
                                      physical-connector-type :member-name
                                      "physicalConnectorType")
                                     (ip-address-assignment :target-type
                                      ip-address-assignment :member-name
                                      "ipAddressAssignment")
                                     (ip-address :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "ipAddress")
                                     (netmask :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "netmask")
                                     (default-gateway :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "defaultGateway")
                                     (mac-address :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "macAddress"))
                                    (:shape-name "PhysicalNetworkInterface"))

(smithy/sdk/shapes:define-list physical-network-interface-list :member
                               physical-network-interface)

(smithy/sdk/shapes:define-structure reboot common-lisp:nil common-lisp:nil
                                    (:shape-name "Reboot"))

(smithy/sdk/shapes:define-error resource-not-found-exception common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "message"))
                                (:shape-name "ResourceNotFoundException")
                                (:error-code 404)
                                (:base-class snow-device-management-error))

(smithy/sdk/shapes:define-structure resource-summary common-lisp:nil
                                    ((resource-type :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name
                                      "resourceType")
                                     (arn :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "arn")
                                     (id :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "id"))
                                    (:shape-name "ResourceSummary"))

(smithy/sdk/shapes:define-list resource-summary-list :member resource-summary)

(smithy/sdk/shapes:define-structure security-group-identifier common-lisp:nil
                                    ((group-id :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "groupId")
                                     (group-name :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "groupName"))
                                    (:shape-name "SecurityGroupIdentifier"))

(smithy/sdk/shapes:define-list security-group-identifier-list :member
                               security-group-identifier)

(smithy/sdk/shapes:define-error service-quota-exceeded-exception
                                common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "message"))
                                (:shape-name "ServiceQuotaExceededException")
                                (:error-code 402)
                                (:base-class snow-device-management-error))

(smithy/sdk/shapes:define-structure software-information common-lisp:nil
                                    ((installed-version :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "installedVersion")
                                     (installing-version :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "installingVersion")
                                     (install-state :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "installState"))
                                    (:shape-name "SoftwareInformation"))

(smithy/sdk/shapes:define-list tag-keys :member smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-map tag-map :key smithy/sdk/smithy-types:string
                              :value smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input tag-resource-input common-lisp:nil
                                ((resource-arn :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "resourceArn"
                                  :http-label common-lisp:t)
                                 (tags :target-type tag-map :required
                                  common-lisp:t :member-name "tags"))
                                (:shape-name "TagResourceInput"))

(smithy/sdk/shapes:define-list target-list :member
                               smithy/sdk/smithy-types:string)

common-lisp:nil

(smithy/sdk/shapes:define-type task-description-string
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type task-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type task-state smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure task-summary common-lisp:nil
                                    ((task-id :target-type task-id :required
                                      common-lisp:t :member-name "taskId")
                                     (task-arn :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "taskArn")
                                     (state :target-type task-state
                                      :member-name "state")
                                     (tags :target-type tag-map :member-name
                                      "tags"))
                                    (:shape-name "TaskSummary"))

(smithy/sdk/shapes:define-list task-summary-list :member task-summary)

(smithy/sdk/shapes:define-error throttling-exception common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "message"))
                                (:shape-name "ThrottlingException")
                                (:error-code 429)
                                (:base-class snow-device-management-error))

(smithy/sdk/shapes:define-structure unlock common-lisp:nil common-lisp:nil
                                    (:shape-name "Unlock"))

(smithy/sdk/shapes:define-type unlock-state smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input untag-resource-input common-lisp:nil
                                ((resource-arn :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "resourceArn"
                                  :http-label common-lisp:t)
                                 (tag-keys :target-type tag-keys :required
                                  common-lisp:t :member-name "tagKeys"
                                  :http-query "tagKeys"))
                                (:shape-name "UntagResourceInput"))

(smithy/sdk/shapes:define-error validation-exception common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "message"))
                                (:shape-name "ValidationException")
                                (:error-code 400)
                                (:base-class snow-device-management-error))

(smithy/sdk/operation:define-operation cancel-task :shape-name "CancelTask"
                                       :input cancel-task-input :output
                                       cancel-task-output :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/task/{taskId}/cancel" :code 200)

(smithy/sdk/operation:define-operation create-task :shape-name "CreateTask"
                                       :input create-task-input :output
                                       create-task-output :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri "/task" :code 200)

(smithy/sdk/operation:define-operation describe-device :shape-name
                                       "DescribeDevice" :input
                                       describe-device-input :output
                                       describe-device-output :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/managed-device/{managedDeviceId}/describe"
                                       :code 200)

(smithy/sdk/operation:define-operation describe-device-ec2instances :shape-name
                                       "DescribeDeviceEc2Instances" :input
                                       describe-device-ec2input :output
                                       describe-device-ec2output :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/managed-device/{managedDeviceId}/resources/ec2/describe"
                                       :code 200)

(smithy/sdk/operation:define-operation describe-execution :shape-name
                                       "DescribeExecution" :input
                                       describe-execution-input :output
                                       describe-execution-output :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/task/{taskId}/execution/{managedDeviceId}"
                                       :code 200)

(smithy/sdk/operation:define-operation describe-task :shape-name "DescribeTask"
                                       :input describe-task-input :output
                                       describe-task-output :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri "/task/{taskId}"
                                       :code 200)

(smithy/sdk/operation:define-operation list-device-resources :shape-name
                                       "ListDeviceResources" :input
                                       list-device-resources-input :output
                                       list-device-resources-output :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/managed-device/{managedDeviceId}/resources"
                                       :code 200)

(smithy/sdk/operation:define-operation list-devices :shape-name "ListDevices"
                                       :input list-devices-input :output
                                       list-devices-output :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri "/managed-devices"
                                       :code 200)

(smithy/sdk/operation:define-operation list-executions :shape-name
                                       "ListExecutions" :input
                                       list-executions-input :output
                                       list-executions-output :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri "/executions" :code
                                       200)

(smithy/sdk/operation:define-operation list-tags-for-resource :shape-name
                                       "ListTagsForResource" :input
                                       list-tags-for-resource-input :output
                                       list-tags-for-resource-output :errors
                                       (internal-server-exception
                                        resource-not-found-exception
                                        validation-exception)
                                       :method "GET" :uri "/tags/{resourceArn}")

(smithy/sdk/operation:define-operation list-tasks :shape-name "ListTasks"
                                       :input list-tasks-input :output
                                       list-tasks-output :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri "/tasks" :code 200)

(smithy/sdk/operation:define-operation tag-resource :shape-name "TagResource"
                                       :input tag-resource-input :output
                                       common-lisp:null :errors
                                       (internal-server-exception
                                        resource-not-found-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/tags/{resourceArn}")

(smithy/sdk/operation:define-operation untag-resource :shape-name
                                       "UntagResource" :input
                                       untag-resource-input :output
                                       common-lisp:null :errors
                                       (internal-server-exception
                                        resource-not-found-exception
                                        validation-exception)
                                       :method "DELETE" :uri
                                       "/tags/{resourceArn}")
