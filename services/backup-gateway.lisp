(uiop/package:define-package #:pira/backup-gateway (:use)
                             (:export #:activation-key
                              #:associate-gateway-to-server
                              #:associate-gateway-to-server-input
                              #:associate-gateway-to-server-output
                              #:average-upload-rate-limit
                              #:backup-on-premises-v20210101
                              #:bandwidth-rate-limit-interval
                              #:bandwidth-rate-limit-intervals
                              #:bandwidth-rate-limit-schedule-resource
                              #:create-gateway #:create-gateway-input
                              #:create-gateway-output #:day-of-month
                              #:day-of-week #:days-of-week #:delete-gateway
                              #:delete-gateway-input #:delete-gateway-output
                              #:delete-hypervisor #:delete-hypervisor-input
                              #:delete-hypervisor-output
                              #:disassociate-gateway-from-server
                              #:disassociate-gateway-from-server-input
                              #:disassociate-gateway-from-server-output
                              #:gateway #:gateway-arn #:gateway-details
                              #:gateway-resource #:gateway-type #:gateways
                              #:get-bandwidth-rate-limit-schedule
                              #:get-bandwidth-rate-limit-schedule-input
                              #:get-bandwidth-rate-limit-schedule-output
                              #:get-gateway #:get-gateway-input
                              #:get-gateway-output #:get-hypervisor
                              #:get-hypervisor-input #:get-hypervisor-output
                              #:get-hypervisor-property-mappings
                              #:get-hypervisor-property-mappings-input
                              #:get-hypervisor-property-mappings-output
                              #:get-virtual-machine #:get-virtual-machine-input
                              #:get-virtual-machine-output #:host #:hour-of-day
                              #:hypervisor #:hypervisor-details #:hypervisor-id
                              #:hypervisor-property-mapping-resource
                              #:hypervisor-resource #:hypervisor-state
                              #:hypervisors #:iam-role-arn
                              #:import-hypervisor-configuration
                              #:import-hypervisor-configuration-input
                              #:import-hypervisor-configuration-output
                              #:kms-key-arn #:list-gateways
                              #:list-gateways-input #:list-gateways-output
                              #:list-hypervisors #:list-hypervisors-input
                              #:list-hypervisors-output
                              #:list-tags-for-resource
                              #:list-tags-for-resource-input
                              #:list-tags-for-resource-output
                              #:list-virtual-machines
                              #:list-virtual-machines-input
                              #:list-virtual-machines-output #:log-group-arn
                              #:maintenance-start-time #:max-results
                              #:minute-of-hour #:name #:next-token #:password
                              #:path #:put-bandwidth-rate-limit-schedule
                              #:put-bandwidth-rate-limit-schedule-input
                              #:put-bandwidth-rate-limit-schedule-output
                              #:put-hypervisor-property-mappings
                              #:put-hypervisor-property-mappings-input
                              #:put-hypervisor-property-mappings-output
                              #:put-maintenance-start-time
                              #:put-maintenance-start-time-input
                              #:put-maintenance-start-time-output
                              #:resource-arn #:server-arn
                              #:start-virtual-machines-metadata-sync
                              #:start-virtual-machines-metadata-sync-input
                              #:start-virtual-machines-metadata-sync-output
                              #:sync-metadata-status #:tag #:tag-key #:tag-keys
                              #:tag-resource #:tag-resource-input
                              #:tag-resource-output #:tag-value #:tags
                              #:test-hypervisor-configuration
                              #:test-hypervisor-configuration-input
                              #:test-hypervisor-configuration-output #:time
                              #:untag-resource #:untag-resource-input
                              #:untag-resource-output
                              #:update-gateway-information
                              #:update-gateway-information-input
                              #:update-gateway-information-output
                              #:update-gateway-software-now
                              #:update-gateway-software-now-input
                              #:update-gateway-software-now-output
                              #:update-hypervisor #:update-hypervisor-input
                              #:update-hypervisor-output #:username
                              #:virtual-machine #:virtual-machine-details
                              #:virtual-machine-resource #:virtual-machines
                              #:vmware-category #:vmware-tag #:vmware-tag-name
                              #:vmware-tags #:vmware-to-aws-tag-mapping
                              #:vmware-to-aws-tag-mappings #:vpc-endpoint
                              #:string))
(common-lisp:in-package #:pira/backup-gateway)

(smithy/sdk/service:define-service backup-on-premises-v20210101 :shape-name
                                   "BackupOnPremises_v20210101" :version
                                   "2021-01-01" :title "AWS Backup Gateway"
                                   :errors
                                   '(internal-server-exception
                                     throttling-exception validation-exception)
                                   :traits
                                   '(("aws.api#service"
                                      ("sdkId" . "Backup Gateway")
                                      ("arnNamespace" . "backup-gateway")
                                      ("cloudFormationName" . "BackupGateway")
                                      ("cloudTrailEventSource"
                                       . "backup-gateway.amazonaws.com")
                                      ("endpointPrefix" . "backup-gateway"))
                                     ("aws.auth#sigv4"
                                      ("name" . "backup-gateway"))
                                     ("aws.protocols#awsJson1_0")))

(smithy/sdk/shapes:define-error access-denied-exception common-lisp:nil
                                ((error-code :target-type string :required
                                  common-lisp:t :member-name "ErrorCode")
                                 (message :target-type string :member-name
                                  "Message"))
                                (:shape-name "AccessDeniedException")
                                (:error-code 403))

(smithy/sdk/shapes:define-type activation-key smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure associate-gateway-to-server-input
                                    common-lisp:nil
                                    ((gateway-arn :target-type gateway-arn
                                      :required common-lisp:t :member-name
                                      "GatewayArn")
                                     (server-arn :target-type server-arn
                                      :required common-lisp:t :member-name
                                      "ServerArn"))
                                    (:shape-name
                                     "AssociateGatewayToServerInput"))

(smithy/sdk/shapes:define-structure associate-gateway-to-server-output
                                    common-lisp:nil
                                    ((gateway-arn :target-type gateway-arn
                                      :member-name "GatewayArn"))
                                    (:shape-name
                                     "AssociateGatewayToServerOutput"))

(smithy/sdk/shapes:define-type average-upload-rate-limit
                               smithy/sdk/smithy-types:long)

(smithy/sdk/shapes:define-structure bandwidth-rate-limit-interval
                                    common-lisp:nil
                                    ((average-upload-rate-limit-in-bits-per-sec
                                      :target-type average-upload-rate-limit
                                      :member-name
                                      "AverageUploadRateLimitInBitsPerSec")
                                     (start-hour-of-day :target-type
                                      hour-of-day :required common-lisp:t
                                      :member-name "StartHourOfDay")
                                     (end-hour-of-day :target-type hour-of-day
                                      :required common-lisp:t :member-name
                                      "EndHourOfDay")
                                     (start-minute-of-hour :target-type
                                      minute-of-hour :required common-lisp:t
                                      :member-name "StartMinuteOfHour")
                                     (end-minute-of-hour :target-type
                                      minute-of-hour :required common-lisp:t
                                      :member-name "EndMinuteOfHour")
                                     (days-of-week :target-type days-of-week
                                      :required common-lisp:t :member-name
                                      "DaysOfWeek"))
                                    (:shape-name "BandwidthRateLimitInterval"))

(smithy/sdk/shapes:define-list bandwidth-rate-limit-intervals :member
                               bandwidth-rate-limit-interval)

common-lisp:nil

(smithy/sdk/shapes:define-error conflict-exception common-lisp:nil
                                ((error-code :target-type string :required
                                  common-lisp:t :member-name "ErrorCode")
                                 (message :target-type string :member-name
                                  "Message"))
                                (:shape-name "ConflictException")
                                (:error-code 409))

(smithy/sdk/shapes:define-structure create-gateway-input common-lisp:nil
                                    ((activation-key :target-type
                                      activation-key :required common-lisp:t
                                      :member-name "ActivationKey")
                                     (gateway-display-name :target-type name
                                      :required common-lisp:t :member-name
                                      "GatewayDisplayName")
                                     (gateway-type :target-type gateway-type
                                      :required common-lisp:t :member-name
                                      "GatewayType")
                                     (tags :target-type tags :member-name
                                      "Tags"))
                                    (:shape-name "CreateGatewayInput"))

(smithy/sdk/shapes:define-structure create-gateway-output common-lisp:nil
                                    ((gateway-arn :target-type gateway-arn
                                      :member-name "GatewayArn"))
                                    (:shape-name "CreateGatewayOutput"))

(smithy/sdk/shapes:define-type day-of-month smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type day-of-week smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-list days-of-week :member day-of-week)

(smithy/sdk/shapes:define-structure delete-gateway-input common-lisp:nil
                                    ((gateway-arn :target-type gateway-arn
                                      :required common-lisp:t :member-name
                                      "GatewayArn"))
                                    (:shape-name "DeleteGatewayInput"))

(smithy/sdk/shapes:define-structure delete-gateway-output common-lisp:nil
                                    ((gateway-arn :target-type gateway-arn
                                      :member-name "GatewayArn"))
                                    (:shape-name "DeleteGatewayOutput"))

(smithy/sdk/shapes:define-structure delete-hypervisor-input common-lisp:nil
                                    ((hypervisor-arn :target-type server-arn
                                      :required common-lisp:t :member-name
                                      "HypervisorArn"))
                                    (:shape-name "DeleteHypervisorInput"))

(smithy/sdk/shapes:define-structure delete-hypervisor-output common-lisp:nil
                                    ((hypervisor-arn :target-type server-arn
                                      :member-name "HypervisorArn"))
                                    (:shape-name "DeleteHypervisorOutput"))

(smithy/sdk/shapes:define-structure disassociate-gateway-from-server-input
                                    common-lisp:nil
                                    ((gateway-arn :target-type gateway-arn
                                      :required common-lisp:t :member-name
                                      "GatewayArn"))
                                    (:shape-name
                                     "DisassociateGatewayFromServerInput"))

(smithy/sdk/shapes:define-structure disassociate-gateway-from-server-output
                                    common-lisp:nil
                                    ((gateway-arn :target-type gateway-arn
                                      :member-name "GatewayArn"))
                                    (:shape-name
                                     "DisassociateGatewayFromServerOutput"))

(smithy/sdk/shapes:define-structure gateway common-lisp:nil
                                    ((gateway-arn :target-type gateway-arn
                                      :member-name "GatewayArn")
                                     (gateway-display-name :target-type name
                                      :member-name "GatewayDisplayName")
                                     (gateway-type :target-type gateway-type
                                      :member-name "GatewayType")
                                     (hypervisor-id :target-type hypervisor-id
                                      :member-name "HypervisorId")
                                     (last-seen-time :target-type time
                                      :member-name "LastSeenTime"))
                                    (:shape-name "Gateway"))

(smithy/sdk/shapes:define-type gateway-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure gateway-details common-lisp:nil
                                    ((gateway-arn :target-type gateway-arn
                                      :member-name "GatewayArn")
                                     (gateway-display-name :target-type name
                                      :member-name "GatewayDisplayName")
                                     (gateway-type :target-type gateway-type
                                      :member-name "GatewayType")
                                     (hypervisor-id :target-type hypervisor-id
                                      :member-name "HypervisorId")
                                     (last-seen-time :target-type time
                                      :member-name "LastSeenTime")
                                     (maintenance-start-time :target-type
                                      maintenance-start-time :member-name
                                      "MaintenanceStartTime")
                                     (next-update-availability-time
                                      :target-type time :member-name
                                      "NextUpdateAvailabilityTime")
                                     (vpc-endpoint :target-type vpc-endpoint
                                      :member-name "VpcEndpoint"))
                                    (:shape-name "GatewayDetails"))

common-lisp:nil

(smithy/sdk/shapes:define-type gateway-type smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list gateways :member gateway)

(smithy/sdk/shapes:define-structure get-bandwidth-rate-limit-schedule-input
                                    common-lisp:nil
                                    ((gateway-arn :target-type gateway-arn
                                      :required common-lisp:t :member-name
                                      "GatewayArn"))
                                    (:shape-name
                                     "GetBandwidthRateLimitScheduleInput"))

(smithy/sdk/shapes:define-structure get-bandwidth-rate-limit-schedule-output
                                    common-lisp:nil
                                    ((gateway-arn :target-type gateway-arn
                                      :member-name "GatewayArn")
                                     (bandwidth-rate-limit-intervals
                                      :target-type
                                      bandwidth-rate-limit-intervals
                                      :member-name
                                      "BandwidthRateLimitIntervals"))
                                    (:shape-name
                                     "GetBandwidthRateLimitScheduleOutput"))

(smithy/sdk/shapes:define-structure get-gateway-input common-lisp:nil
                                    ((gateway-arn :target-type gateway-arn
                                      :required common-lisp:t :member-name
                                      "GatewayArn"))
                                    (:shape-name "GetGatewayInput"))

(smithy/sdk/shapes:define-structure get-gateway-output common-lisp:nil
                                    ((gateway :target-type gateway-details
                                      :member-name "Gateway"))
                                    (:shape-name "GetGatewayOutput"))

(smithy/sdk/shapes:define-structure get-hypervisor-input common-lisp:nil
                                    ((hypervisor-arn :target-type server-arn
                                      :required common-lisp:t :member-name
                                      "HypervisorArn"))
                                    (:shape-name "GetHypervisorInput"))

(smithy/sdk/shapes:define-structure get-hypervisor-output common-lisp:nil
                                    ((hypervisor :target-type
                                      hypervisor-details :member-name
                                      "Hypervisor"))
                                    (:shape-name "GetHypervisorOutput"))

(smithy/sdk/shapes:define-structure get-hypervisor-property-mappings-input
                                    common-lisp:nil
                                    ((hypervisor-arn :target-type server-arn
                                      :required common-lisp:t :member-name
                                      "HypervisorArn"))
                                    (:shape-name
                                     "GetHypervisorPropertyMappingsInput"))

(smithy/sdk/shapes:define-structure get-hypervisor-property-mappings-output
                                    common-lisp:nil
                                    ((hypervisor-arn :target-type server-arn
                                      :member-name "HypervisorArn")
                                     (vmware-to-aws-tag-mappings :target-type
                                      vmware-to-aws-tag-mappings :member-name
                                      "VmwareToAwsTagMappings")
                                     (iam-role-arn :target-type iam-role-arn
                                      :member-name "IamRoleArn"))
                                    (:shape-name
                                     "GetHypervisorPropertyMappingsOutput"))

(smithy/sdk/shapes:define-structure get-virtual-machine-input common-lisp:nil
                                    ((resource-arn :target-type resource-arn
                                      :required common-lisp:t :member-name
                                      "ResourceArn"))
                                    (:shape-name "GetVirtualMachineInput"))

(smithy/sdk/shapes:define-structure get-virtual-machine-output common-lisp:nil
                                    ((virtual-machine :target-type
                                      virtual-machine-details :member-name
                                      "VirtualMachine"))
                                    (:shape-name "GetVirtualMachineOutput"))

(smithy/sdk/shapes:define-type host smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type hour-of-day smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-structure hypervisor common-lisp:nil
                                    ((host :target-type host :member-name
                                      "Host")
                                     (hypervisor-arn :target-type server-arn
                                      :member-name "HypervisorArn")
                                     (kms-key-arn :target-type kms-key-arn
                                      :member-name "KmsKeyArn")
                                     (name :target-type name :member-name
                                      "Name")
                                     (state :target-type hypervisor-state
                                      :member-name "State"))
                                    (:shape-name "Hypervisor"))

(smithy/sdk/shapes:define-structure hypervisor-details common-lisp:nil
                                    ((host :target-type host :member-name
                                      "Host")
                                     (hypervisor-arn :target-type server-arn
                                      :member-name "HypervisorArn")
                                     (kms-key-arn :target-type kms-key-arn
                                      :member-name "KmsKeyArn")
                                     (name :target-type name :member-name
                                      "Name")
                                     (log-group-arn :target-type log-group-arn
                                      :member-name "LogGroupArn")
                                     (state :target-type hypervisor-state
                                      :member-name "State")
                                     (last-successful-metadata-sync-time
                                      :target-type time :member-name
                                      "LastSuccessfulMetadataSyncTime")
                                     (latest-metadata-sync-status-message
                                      :target-type string :member-name
                                      "LatestMetadataSyncStatusMessage")
                                     (latest-metadata-sync-status :target-type
                                      sync-metadata-status :member-name
                                      "LatestMetadataSyncStatus"))
                                    (:shape-name "HypervisorDetails"))

(smithy/sdk/shapes:define-type hypervisor-id smithy/sdk/smithy-types:string)

common-lisp:nil

common-lisp:nil

(smithy/sdk/shapes:define-type hypervisor-state smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list hypervisors :member hypervisor)

(smithy/sdk/shapes:define-type iam-role-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure import-hypervisor-configuration-input
                                    common-lisp:nil
                                    ((name :target-type name :required
                                      common-lisp:t :member-name "Name")
                                     (host :target-type host :required
                                      common-lisp:t :member-name "Host")
                                     (username :target-type username
                                      :member-name "Username")
                                     (password :target-type password
                                      :member-name "Password")
                                     (kms-key-arn :target-type kms-key-arn
                                      :member-name "KmsKeyArn")
                                     (tags :target-type tags :member-name
                                      "Tags"))
                                    (:shape-name
                                     "ImportHypervisorConfigurationInput"))

(smithy/sdk/shapes:define-structure import-hypervisor-configuration-output
                                    common-lisp:nil
                                    ((hypervisor-arn :target-type server-arn
                                      :member-name "HypervisorArn"))
                                    (:shape-name
                                     "ImportHypervisorConfigurationOutput"))

(smithy/sdk/shapes:define-error internal-server-exception common-lisp:nil
                                ((error-code :target-type string :member-name
                                  "ErrorCode")
                                 (message :target-type string :member-name
                                  "Message"))
                                (:shape-name "InternalServerException")
                                (:error-code 500))

(smithy/sdk/shapes:define-type kms-key-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure list-gateways-input common-lisp:nil
                                    ((max-results :target-type max-results
                                      :member-name "MaxResults")
                                     (next-token :target-type next-token
                                      :member-name "NextToken"))
                                    (:shape-name "ListGatewaysInput"))

(smithy/sdk/shapes:define-structure list-gateways-output common-lisp:nil
                                    ((gateways :target-type gateways
                                      :member-name "Gateways")
                                     (next-token :target-type next-token
                                      :member-name "NextToken"))
                                    (:shape-name "ListGatewaysOutput"))

(smithy/sdk/shapes:define-structure list-hypervisors-input common-lisp:nil
                                    ((max-results :target-type max-results
                                      :member-name "MaxResults")
                                     (next-token :target-type next-token
                                      :member-name "NextToken"))
                                    (:shape-name "ListHypervisorsInput"))

(smithy/sdk/shapes:define-structure list-hypervisors-output common-lisp:nil
                                    ((hypervisors :target-type hypervisors
                                      :member-name "Hypervisors")
                                     (next-token :target-type next-token
                                      :member-name "NextToken"))
                                    (:shape-name "ListHypervisorsOutput"))

(smithy/sdk/shapes:define-structure list-tags-for-resource-input
                                    common-lisp:nil
                                    ((resource-arn :target-type resource-arn
                                      :required common-lisp:t :member-name
                                      "ResourceArn"))
                                    (:shape-name "ListTagsForResourceInput"))

(smithy/sdk/shapes:define-structure list-tags-for-resource-output
                                    common-lisp:nil
                                    ((resource-arn :target-type resource-arn
                                      :member-name "ResourceArn")
                                     (tags :target-type tags :member-name
                                      "Tags"))
                                    (:shape-name "ListTagsForResourceOutput"))

(smithy/sdk/shapes:define-structure list-virtual-machines-input common-lisp:nil
                                    ((hypervisor-arn :target-type server-arn
                                      :member-name "HypervisorArn")
                                     (max-results :target-type max-results
                                      :member-name "MaxResults")
                                     (next-token :target-type next-token
                                      :member-name "NextToken"))
                                    (:shape-name "ListVirtualMachinesInput"))

(smithy/sdk/shapes:define-structure list-virtual-machines-output
                                    common-lisp:nil
                                    ((virtual-machines :target-type
                                      virtual-machines :member-name
                                      "VirtualMachines")
                                     (next-token :target-type next-token
                                      :member-name "NextToken"))
                                    (:shape-name "ListVirtualMachinesOutput"))

(smithy/sdk/shapes:define-type log-group-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure maintenance-start-time common-lisp:nil
                                    ((day-of-month :target-type day-of-month
                                      :member-name "DayOfMonth")
                                     (day-of-week :target-type day-of-week
                                      :member-name "DayOfWeek")
                                     (hour-of-day :target-type hour-of-day
                                      :required common-lisp:t :member-name
                                      "HourOfDay")
                                     (minute-of-hour :target-type
                                      minute-of-hour :required common-lisp:t
                                      :member-name "MinuteOfHour"))
                                    (:shape-name "MaintenanceStartTime"))

(smithy/sdk/shapes:define-type max-results smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type minute-of-hour smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type next-token smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type password smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type path smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure put-bandwidth-rate-limit-schedule-input
                                    common-lisp:nil
                                    ((gateway-arn :target-type gateway-arn
                                      :required common-lisp:t :member-name
                                      "GatewayArn")
                                     (bandwidth-rate-limit-intervals
                                      :target-type
                                      bandwidth-rate-limit-intervals :required
                                      common-lisp:t :member-name
                                      "BandwidthRateLimitIntervals"))
                                    (:shape-name
                                     "PutBandwidthRateLimitScheduleInput"))

(smithy/sdk/shapes:define-structure put-bandwidth-rate-limit-schedule-output
                                    common-lisp:nil
                                    ((gateway-arn :target-type gateway-arn
                                      :member-name "GatewayArn"))
                                    (:shape-name
                                     "PutBandwidthRateLimitScheduleOutput"))

(smithy/sdk/shapes:define-structure put-hypervisor-property-mappings-input
                                    common-lisp:nil
                                    ((hypervisor-arn :target-type server-arn
                                      :required common-lisp:t :member-name
                                      "HypervisorArn")
                                     (vmware-to-aws-tag-mappings :target-type
                                      vmware-to-aws-tag-mappings :required
                                      common-lisp:t :member-name
                                      "VmwareToAwsTagMappings")
                                     (iam-role-arn :target-type iam-role-arn
                                      :required common-lisp:t :member-name
                                      "IamRoleArn"))
                                    (:shape-name
                                     "PutHypervisorPropertyMappingsInput"))

(smithy/sdk/shapes:define-structure put-hypervisor-property-mappings-output
                                    common-lisp:nil
                                    ((hypervisor-arn :target-type server-arn
                                      :member-name "HypervisorArn"))
                                    (:shape-name
                                     "PutHypervisorPropertyMappingsOutput"))

(smithy/sdk/shapes:define-structure put-maintenance-start-time-input
                                    common-lisp:nil
                                    ((gateway-arn :target-type gateway-arn
                                      :required common-lisp:t :member-name
                                      "GatewayArn")
                                     (hour-of-day :target-type hour-of-day
                                      :required common-lisp:t :member-name
                                      "HourOfDay")
                                     (minute-of-hour :target-type
                                      minute-of-hour :required common-lisp:t
                                      :member-name "MinuteOfHour")
                                     (day-of-week :target-type day-of-week
                                      :member-name "DayOfWeek")
                                     (day-of-month :target-type day-of-month
                                      :member-name "DayOfMonth"))
                                    (:shape-name
                                     "PutMaintenanceStartTimeInput"))

(smithy/sdk/shapes:define-structure put-maintenance-start-time-output
                                    common-lisp:nil
                                    ((gateway-arn :target-type gateway-arn
                                      :member-name "GatewayArn"))
                                    (:shape-name
                                     "PutMaintenanceStartTimeOutput"))

(smithy/sdk/shapes:define-type resource-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error resource-not-found-exception common-lisp:nil
                                ((error-code :target-type string :member-name
                                  "ErrorCode")
                                 (message :target-type string :member-name
                                  "Message"))
                                (:shape-name "ResourceNotFoundException")
                                (:error-code 404))

(smithy/sdk/shapes:define-type server-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure start-virtual-machines-metadata-sync-input
                                    common-lisp:nil
                                    ((hypervisor-arn :target-type server-arn
                                      :required common-lisp:t :member-name
                                      "HypervisorArn"))
                                    (:shape-name
                                     "StartVirtualMachinesMetadataSyncInput"))

(smithy/sdk/shapes:define-structure start-virtual-machines-metadata-sync-output
                                    common-lisp:nil
                                    ((hypervisor-arn :target-type server-arn
                                      :member-name "HypervisorArn"))
                                    (:shape-name
                                     "StartVirtualMachinesMetadataSyncOutput"))

(smithy/sdk/shapes:define-type sync-metadata-status
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure tag common-lisp:nil
                                    ((key :target-type tag-key :required
                                      common-lisp:t :member-name "Key")
                                     (value :target-type tag-value :required
                                      common-lisp:t :member-name "Value"))
                                    (:shape-name "Tag"))

(smithy/sdk/shapes:define-type tag-key smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list tag-keys :member tag-key)

(smithy/sdk/shapes:define-structure tag-resource-input common-lisp:nil
                                    ((resource-arn :target-type resource-arn
                                      :required common-lisp:t :member-name
                                      "ResourceARN")
                                     (tags :target-type tags :required
                                      common-lisp:t :member-name "Tags"))
                                    (:shape-name "TagResourceInput"))

(smithy/sdk/shapes:define-structure tag-resource-output common-lisp:nil
                                    ((resource-arn :target-type resource-arn
                                      :member-name "ResourceARN"))
                                    (:shape-name "TagResourceOutput"))

(smithy/sdk/shapes:define-type tag-value smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list tags :member tag)

(smithy/sdk/shapes:define-structure test-hypervisor-configuration-input
                                    common-lisp:nil
                                    ((gateway-arn :target-type gateway-arn
                                      :required common-lisp:t :member-name
                                      "GatewayArn")
                                     (host :target-type host :required
                                      common-lisp:t :member-name "Host")
                                     (username :target-type username
                                      :member-name "Username")
                                     (password :target-type password
                                      :member-name "Password"))
                                    (:shape-name
                                     "TestHypervisorConfigurationInput"))

(smithy/sdk/shapes:define-structure test-hypervisor-configuration-output
                                    common-lisp:nil common-lisp:nil
                                    (:shape-name
                                     "TestHypervisorConfigurationOutput"))

(smithy/sdk/shapes:define-error throttling-exception common-lisp:nil
                                ((error-code :target-type string :required
                                  common-lisp:t :member-name "ErrorCode")
                                 (message :target-type string :member-name
                                  "Message"))
                                (:shape-name "ThrottlingException")
                                (:error-code 429))

(smithy/sdk/shapes:define-type time smithy/sdk/smithy-types:timestamp)

(smithy/sdk/shapes:define-structure untag-resource-input common-lisp:nil
                                    ((resource-arn :target-type resource-arn
                                      :required common-lisp:t :member-name
                                      "ResourceARN")
                                     (tag-keys :target-type tag-keys :required
                                      common-lisp:t :member-name "TagKeys"))
                                    (:shape-name "UntagResourceInput"))

(smithy/sdk/shapes:define-structure untag-resource-output common-lisp:nil
                                    ((resource-arn :target-type resource-arn
                                      :member-name "ResourceARN"))
                                    (:shape-name "UntagResourceOutput"))

(smithy/sdk/shapes:define-structure update-gateway-information-input
                                    common-lisp:nil
                                    ((gateway-arn :target-type gateway-arn
                                      :required common-lisp:t :member-name
                                      "GatewayArn")
                                     (gateway-display-name :target-type name
                                      :member-name "GatewayDisplayName"))
                                    (:shape-name
                                     "UpdateGatewayInformationInput"))

(smithy/sdk/shapes:define-structure update-gateway-information-output
                                    common-lisp:nil
                                    ((gateway-arn :target-type gateway-arn
                                      :member-name "GatewayArn"))
                                    (:shape-name
                                     "UpdateGatewayInformationOutput"))

(smithy/sdk/shapes:define-structure update-gateway-software-now-input
                                    common-lisp:nil
                                    ((gateway-arn :target-type gateway-arn
                                      :required common-lisp:t :member-name
                                      "GatewayArn"))
                                    (:shape-name
                                     "UpdateGatewaySoftwareNowInput"))

(smithy/sdk/shapes:define-structure update-gateway-software-now-output
                                    common-lisp:nil
                                    ((gateway-arn :target-type gateway-arn
                                      :member-name "GatewayArn"))
                                    (:shape-name
                                     "UpdateGatewaySoftwareNowOutput"))

(smithy/sdk/shapes:define-structure update-hypervisor-input common-lisp:nil
                                    ((hypervisor-arn :target-type server-arn
                                      :required common-lisp:t :member-name
                                      "HypervisorArn")
                                     (host :target-type host :member-name
                                      "Host")
                                     (username :target-type username
                                      :member-name "Username")
                                     (password :target-type password
                                      :member-name "Password")
                                     (name :target-type name :member-name
                                      "Name")
                                     (log-group-arn :target-type log-group-arn
                                      :member-name "LogGroupArn"))
                                    (:shape-name "UpdateHypervisorInput"))

(smithy/sdk/shapes:define-structure update-hypervisor-output common-lisp:nil
                                    ((hypervisor-arn :target-type server-arn
                                      :member-name "HypervisorArn"))
                                    (:shape-name "UpdateHypervisorOutput"))

(smithy/sdk/shapes:define-type username smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error validation-exception common-lisp:nil
                                ((error-code :target-type string :member-name
                                  "ErrorCode")
                                 (message :target-type string :member-name
                                  "Message"))
                                (:shape-name "ValidationException")
                                (:error-code 400))

(smithy/sdk/shapes:define-structure virtual-machine common-lisp:nil
                                    ((host-name :target-type name :member-name
                                      "HostName")
                                     (hypervisor-id :target-type string
                                      :member-name "HypervisorId")
                                     (name :target-type name :member-name
                                      "Name")
                                     (path :target-type path :member-name
                                      "Path")
                                     (resource-arn :target-type resource-arn
                                      :member-name "ResourceArn")
                                     (last-backup-date :target-type time
                                      :member-name "LastBackupDate"))
                                    (:shape-name "VirtualMachine"))

(smithy/sdk/shapes:define-structure virtual-machine-details common-lisp:nil
                                    ((host-name :target-type name :member-name
                                      "HostName")
                                     (hypervisor-id :target-type string
                                      :member-name "HypervisorId")
                                     (name :target-type name :member-name
                                      "Name")
                                     (path :target-type path :member-name
                                      "Path")
                                     (resource-arn :target-type resource-arn
                                      :member-name "ResourceArn")
                                     (last-backup-date :target-type time
                                      :member-name "LastBackupDate")
                                     (vmware-tags :target-type vmware-tags
                                      :member-name "VmwareTags"))
                                    (:shape-name "VirtualMachineDetails"))

common-lisp:nil

(smithy/sdk/shapes:define-list virtual-machines :member virtual-machine)

(smithy/sdk/shapes:define-type vmware-category smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure vmware-tag common-lisp:nil
                                    ((vmware-category :target-type
                                      vmware-category :member-name
                                      "VmwareCategory")
                                     (vmware-tag-name :target-type
                                      vmware-tag-name :member-name
                                      "VmwareTagName")
                                     (vmware-tag-description :target-type
                                      string :member-name
                                      "VmwareTagDescription"))
                                    (:shape-name "VmwareTag"))

(smithy/sdk/shapes:define-type vmware-tag-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list vmware-tags :member vmware-tag)

(smithy/sdk/shapes:define-structure vmware-to-aws-tag-mapping common-lisp:nil
                                    ((vmware-category :target-type
                                      vmware-category :required common-lisp:t
                                      :member-name "VmwareCategory")
                                     (vmware-tag-name :target-type
                                      vmware-tag-name :required common-lisp:t
                                      :member-name "VmwareTagName")
                                     (aws-tag-key :target-type tag-key
                                      :required common-lisp:t :member-name
                                      "AwsTagKey")
                                     (aws-tag-value :target-type tag-value
                                      :required common-lisp:t :member-name
                                      "AwsTagValue"))
                                    (:shape-name "VmwareToAwsTagMapping"))

(smithy/sdk/shapes:define-list vmware-to-aws-tag-mappings :member
                               vmware-to-aws-tag-mapping)

(smithy/sdk/shapes:define-type vpc-endpoint smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type string smithy/sdk/smithy-types:string)

(smithy/sdk/operation:define-operation associate-gateway-to-server :shape-name
                                       "AssociateGatewayToServer" :input
                                       associate-gateway-to-server-input
                                       :output
                                       associate-gateway-to-server-output
                                       :errors (conflict-exception))

(smithy/sdk/operation:define-operation create-gateway :shape-name
                                       "CreateGateway" :input
                                       create-gateway-input :output
                                       create-gateway-output :errors
                                       common-lisp:nil)

(smithy/sdk/operation:define-operation delete-gateway :shape-name
                                       "DeleteGateway" :input
                                       delete-gateway-input :output
                                       delete-gateway-output :errors
                                       (resource-not-found-exception))

(smithy/sdk/operation:define-operation delete-hypervisor :shape-name
                                       "DeleteHypervisor" :input
                                       delete-hypervisor-input :output
                                       delete-hypervisor-output :errors
                                       (access-denied-exception
                                        conflict-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation disassociate-gateway-from-server
                                       :shape-name
                                       "DisassociateGatewayFromServer" :input
                                       disassociate-gateway-from-server-input
                                       :output
                                       disassociate-gateway-from-server-output
                                       :errors
                                       (conflict-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation get-bandwidth-rate-limit-schedule
                                       :shape-name
                                       "GetBandwidthRateLimitSchedule" :input
                                       get-bandwidth-rate-limit-schedule-input
                                       :output
                                       get-bandwidth-rate-limit-schedule-output
                                       :errors (resource-not-found-exception))

(smithy/sdk/operation:define-operation get-gateway :shape-name "GetGateway"
                                       :input get-gateway-input :output
                                       get-gateway-output :errors
                                       (resource-not-found-exception))

(smithy/sdk/operation:define-operation get-hypervisor :shape-name
                                       "GetHypervisor" :input
                                       get-hypervisor-input :output
                                       get-hypervisor-output :errors
                                       (resource-not-found-exception))

(smithy/sdk/operation:define-operation get-hypervisor-property-mappings
                                       :shape-name
                                       "GetHypervisorPropertyMappings" :input
                                       get-hypervisor-property-mappings-input
                                       :output
                                       get-hypervisor-property-mappings-output
                                       :errors (resource-not-found-exception))

(smithy/sdk/operation:define-operation get-virtual-machine :shape-name
                                       "GetVirtualMachine" :input
                                       get-virtual-machine-input :output
                                       get-virtual-machine-output :errors
                                       (resource-not-found-exception))

(smithy/sdk/operation:define-operation import-hypervisor-configuration
                                       :shape-name
                                       "ImportHypervisorConfiguration" :input
                                       import-hypervisor-configuration-input
                                       :output
                                       import-hypervisor-configuration-output
                                       :errors
                                       (access-denied-exception
                                        conflict-exception))

(smithy/sdk/operation:define-operation list-gateways :shape-name "ListGateways"
                                       :input list-gateways-input :output
                                       list-gateways-output :errors
                                       common-lisp:nil)

(smithy/sdk/operation:define-operation list-hypervisors :shape-name
                                       "ListHypervisors" :input
                                       list-hypervisors-input :output
                                       list-hypervisors-output :errors
                                       common-lisp:nil)

(smithy/sdk/operation:define-operation list-tags-for-resource :shape-name
                                       "ListTagsForResource" :input
                                       list-tags-for-resource-input :output
                                       list-tags-for-resource-output :errors
                                       (resource-not-found-exception))

(smithy/sdk/operation:define-operation list-virtual-machines :shape-name
                                       "ListVirtualMachines" :input
                                       list-virtual-machines-input :output
                                       list-virtual-machines-output :errors
                                       common-lisp:nil)

(smithy/sdk/operation:define-operation put-bandwidth-rate-limit-schedule
                                       :shape-name
                                       "PutBandwidthRateLimitSchedule" :input
                                       put-bandwidth-rate-limit-schedule-input
                                       :output
                                       put-bandwidth-rate-limit-schedule-output
                                       :errors (resource-not-found-exception))

(smithy/sdk/operation:define-operation put-hypervisor-property-mappings
                                       :shape-name
                                       "PutHypervisorPropertyMappings" :input
                                       put-hypervisor-property-mappings-input
                                       :output
                                       put-hypervisor-property-mappings-output
                                       :errors
                                       (access-denied-exception
                                        conflict-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation put-maintenance-start-time :shape-name
                                       "PutMaintenanceStartTime" :input
                                       put-maintenance-start-time-input :output
                                       put-maintenance-start-time-output
                                       :errors
                                       (conflict-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation start-virtual-machines-metadata-sync
                                       :shape-name
                                       "StartVirtualMachinesMetadataSync"
                                       :input
                                       start-virtual-machines-metadata-sync-input
                                       :output
                                       start-virtual-machines-metadata-sync-output
                                       :errors
                                       (access-denied-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation tag-resource :shape-name "TagResource"
                                       :input tag-resource-input :output
                                       tag-resource-output :errors
                                       (resource-not-found-exception))

(smithy/sdk/operation:define-operation test-hypervisor-configuration
                                       :shape-name
                                       "TestHypervisorConfiguration" :input
                                       test-hypervisor-configuration-input
                                       :output
                                       test-hypervisor-configuration-output
                                       :errors
                                       (conflict-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation untag-resource :shape-name
                                       "UntagResource" :input
                                       untag-resource-input :output
                                       untag-resource-output :errors
                                       (resource-not-found-exception))

(smithy/sdk/operation:define-operation update-gateway-information :shape-name
                                       "UpdateGatewayInformation" :input
                                       update-gateway-information-input :output
                                       update-gateway-information-output
                                       :errors
                                       (conflict-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation update-gateway-software-now :shape-name
                                       "UpdateGatewaySoftwareNow" :input
                                       update-gateway-software-now-input
                                       :output
                                       update-gateway-software-now-output
                                       :errors (resource-not-found-exception))

(smithy/sdk/operation:define-operation update-hypervisor :shape-name
                                       "UpdateHypervisor" :input
                                       update-hypervisor-input :output
                                       update-hypervisor-output :errors
                                       (access-denied-exception
                                        conflict-exception
                                        resource-not-found-exception))
