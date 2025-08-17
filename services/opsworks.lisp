(uiop/package:define-package #:pira/opsworks (:use)
                             (:export #:agent-version #:agent-versions #:app
                              #:app-attributes #:app-attributes-keys #:app-type
                              #:apps #:architecture #:assign-instance
                              #:assign-volume #:associate-elastic-ip
                              #:attach-elastic-load-balancer
                              #:auto-scaling-thresholds #:auto-scaling-type
                              #:block-device-mapping #:block-device-mappings
                              #:boolean #:chef-configuration #:clone-stack
                              #:cloud-watch-logs-configuration
                              #:cloud-watch-logs-encoding
                              #:cloud-watch-logs-initial-position
                              #:cloud-watch-logs-log-stream
                              #:cloud-watch-logs-log-streams
                              #:cloud-watch-logs-time-zone #:command #:commands
                              #:create-app #:create-deployment
                              #:create-instance #:create-layer #:create-stack
                              #:create-user-profile
                              #:daily-auto-scaling-schedule #:data-source
                              #:data-sources #:date-time #:delete-app
                              #:delete-instance #:delete-layer #:delete-stack
                              #:delete-user-profile #:deployment
                              #:deployment-command #:deployment-command-args
                              #:deployment-command-name #:deployments
                              #:deregister-ecs-cluster #:deregister-elastic-ip
                              #:deregister-instance
                              #:deregister-rds-db-instance #:deregister-volume
                              #:describe-agent-versions #:describe-apps
                              #:describe-commands #:describe-deployments
                              #:describe-ecs-clusters #:describe-elastic-ips
                              #:describe-elastic-load-balancers
                              #:describe-instances #:describe-layers
                              #:describe-load-based-auto-scaling
                              #:describe-my-user-profile
                              #:describe-operating-systems
                              #:describe-permissions #:describe-raid-arrays
                              #:describe-rds-db-instances
                              #:describe-service-errors
                              #:describe-stack-provisioning-parameters
                              #:describe-stack-summary #:describe-stacks
                              #:describe-time-based-auto-scaling
                              #:describe-user-profiles #:describe-volumes
                              #:detach-elastic-load-balancer
                              #:disassociate-elastic-ip #:double
                              #:ebs-block-device #:ecs-cluster #:ecs-clusters
                              #:elastic-ip #:elastic-ips
                              #:elastic-load-balancer #:elastic-load-balancers
                              #:environment-variable #:environment-variables
                              #:get-hostname-suggestion #:grant-access #:hour
                              #:instance #:instance-identity #:instances
                              #:instances-count #:integer #:layer
                              #:layer-attributes #:layer-attributes-keys
                              #:layer-type #:layers
                              #:lifecycle-event-configuration #:list-tags
                              #:load-based-auto-scaling-configuration
                              #:load-based-auto-scaling-configurations
                              #:max-results #:minute #:next-token
                              #:operating-system
                              #:operating-system-configuration-manager
                              #:operating-system-configuration-managers
                              #:operating-systems #:ops-works-20130218
                              #:parameters #:permission #:permissions
                              #:raid-array #:raid-arrays #:rds-db-instance
                              #:rds-db-instances #:reboot-instance #:recipes
                              #:register-ecs-cluster #:register-elastic-ip
                              #:register-instance #:register-rds-db-instance
                              #:register-volume #:reported-os #:resource-arn
                              #:root-device-type #:self-user-profile
                              #:service-error #:service-errors
                              #:set-load-based-auto-scaling #:set-permission
                              #:set-time-based-auto-scaling
                              #:shutdown-event-configuration #:source
                              #:source-type #:ssl-configuration #:stack
                              #:stack-attributes #:stack-attributes-keys
                              #:stack-configuration-manager #:stack-summary
                              #:stacks #:start-instance #:start-stack
                              #:stop-instance #:stop-stack #:string #:strings
                              #:switch #:tag-key #:tag-keys #:tag-resource
                              #:tag-value #:tags #:temporary-credential
                              #:time-based-auto-scaling-configuration
                              #:time-based-auto-scaling-configurations
                              #:unassign-instance #:unassign-volume
                              #:untag-resource #:update-app #:update-elastic-ip
                              #:update-instance #:update-layer
                              #:update-my-user-profile #:update-rds-db-instance
                              #:update-stack #:update-user-profile
                              #:update-volume #:user-profile #:user-profiles
                              #:valid-for-in-minutes #:virtualization-type
                              #:volume #:volume-configuration
                              #:volume-configurations #:volume-type #:volumes
                              #:weekly-auto-scaling-schedule))
(common-lisp:in-package #:pira/opsworks)

(smithy/sdk/service:define-service ops-works-20130218 :shape-name
                                   "OpsWorks_20130218" :version "2013-02-18"
                                   :title "AWS OpsWorks" :operations
                                   '(assign-instance assign-volume
                                     associate-elastic-ip
                                     attach-elastic-load-balancer clone-stack
                                     create-app create-deployment
                                     create-instance create-layer create-stack
                                     create-user-profile delete-app
                                     delete-instance delete-layer delete-stack
                                     delete-user-profile deregister-ecs-cluster
                                     deregister-elastic-ip deregister-instance
                                     deregister-rds-db-instance
                                     deregister-volume describe-agent-versions
                                     describe-apps describe-commands
                                     describe-deployments describe-ecs-clusters
                                     describe-elastic-ips
                                     describe-elastic-load-balancers
                                     describe-instances describe-layers
                                     describe-load-based-auto-scaling
                                     describe-my-user-profile
                                     describe-operating-systems
                                     describe-permissions describe-raid-arrays
                                     describe-rds-db-instances
                                     describe-service-errors
                                     describe-stack-provisioning-parameters
                                     describe-stacks describe-stack-summary
                                     describe-time-based-auto-scaling
                                     describe-user-profiles describe-volumes
                                     detach-elastic-load-balancer
                                     disassociate-elastic-ip
                                     get-hostname-suggestion grant-access
                                     list-tags reboot-instance
                                     register-ecs-cluster register-elastic-ip
                                     register-instance register-rds-db-instance
                                     register-volume
                                     set-load-based-auto-scaling set-permission
                                     set-time-based-auto-scaling start-instance
                                     start-stack stop-instance stop-stack
                                     tag-resource unassign-instance
                                     unassign-volume untag-resource update-app
                                     update-elastic-ip update-instance
                                     update-layer update-my-user-profile
                                     update-rds-db-instance update-stack
                                     update-user-profile update-volume)
                                   :xml-namespace
                                   '(:uri
                                     "http://opsworks.amazonaws.com/doc/2013-02-18/"
                                     :prefix common-lisp:nil)
                                   :traits
                                   '(("aws.api#service" ("sdkId" . "OpsWorks")
                                      ("arnNamespace" . "opsworks")
                                      ("cloudFormationName" . "OpsWorks")
                                      ("cloudTrailEventSource"
                                       . "opsworks.amazonaws.com")
                                      ("endpointPrefix" . "opsworks"))
                                     ("aws.auth#sigv4" ("name" . "opsworks"))
                                     ("aws.protocols#awsJson1_1")))

(smithy/sdk/shapes:define-structure agent-version common-lisp:nil
                                    ((version :target-type string :member-name
                                      "Version")
                                     (configuration-manager :target-type
                                      stack-configuration-manager :member-name
                                      "ConfigurationManager"))
                                    (:shape-name "AgentVersion"))

(smithy/sdk/shapes:define-list agent-versions :member agent-version)

(smithy/sdk/shapes:define-structure app common-lisp:nil
                                    ((app-id :target-type string :member-name
                                      "AppId")
                                     (stack-id :target-type string :member-name
                                      "StackId")
                                     (shortname :target-type string
                                      :member-name "Shortname")
                                     (name :target-type string :member-name
                                      "Name")
                                     (description :target-type string
                                      :member-name "Description")
                                     (data-sources :target-type data-sources
                                      :member-name "DataSources")
                                     (type :target-type app-type :member-name
                                      "Type")
                                     (app-source :target-type source
                                      :member-name "AppSource")
                                     (domains :target-type strings :member-name
                                      "Domains")
                                     (enable-ssl :target-type boolean
                                      :member-name "EnableSsl")
                                     (ssl-configuration :target-type
                                      ssl-configuration :member-name
                                      "SslConfiguration")
                                     (attributes :target-type app-attributes
                                      :member-name "Attributes")
                                     (created-at :target-type string
                                      :member-name "CreatedAt")
                                     (environment :target-type
                                      environment-variables :member-name
                                      "Environment"))
                                    (:shape-name "App"))

(smithy/sdk/shapes:define-map app-attributes :key app-attributes-keys :value
                              string)

(smithy/sdk/shapes:define-enum app-attributes-keys
    common-lisp:nil
  (:document-root "DocumentRoot")
  (:rails-env "RailsEnv")
  (:auto-bundle-on-deploy "AutoBundleOnDeploy")
  (:aws-flow-ruby-settings "AwsFlowRubySettings"))

(smithy/sdk/shapes:define-enum app-type
    common-lisp:nil
  (:aws-flow-ruby "aws-flow-ruby")
  (:java "java")
  (:rails "rails")
  (:php "php")
  (:nodejs "nodejs")
  (:static "static")
  (:other "other"))

(smithy/sdk/shapes:define-list apps :member app)

(smithy/sdk/shapes:define-enum architecture
    common-lisp:nil
  (:x86-64 "x86_64")
  (:i386 "i386"))

(smithy/sdk/shapes:define-input assign-instance-request common-lisp:nil
                                ((instance-id :target-type string :required
                                  common-lisp:t :member-name "InstanceId")
                                 (layer-ids :target-type strings :required
                                  common-lisp:t :member-name "LayerIds"))
                                (:shape-name "AssignInstanceRequest"))

(smithy/sdk/shapes:define-input assign-volume-request common-lisp:nil
                                ((volume-id :target-type string :required
                                  common-lisp:t :member-name "VolumeId")
                                 (instance-id :target-type string :member-name
                                  "InstanceId"))
                                (:shape-name "AssignVolumeRequest"))

(smithy/sdk/shapes:define-input associate-elastic-ip-request common-lisp:nil
                                ((elastic-ip :target-type string :required
                                  common-lisp:t :member-name "ElasticIp")
                                 (instance-id :target-type string :member-name
                                  "InstanceId"))
                                (:shape-name "AssociateElasticIpRequest"))

(smithy/sdk/shapes:define-input attach-elastic-load-balancer-request
                                common-lisp:nil
                                ((elastic-load-balancer-name :target-type
                                  string :required common-lisp:t :member-name
                                  "ElasticLoadBalancerName")
                                 (layer-id :target-type string :required
                                  common-lisp:t :member-name "LayerId"))
                                (:shape-name
                                 "AttachElasticLoadBalancerRequest"))

(smithy/sdk/shapes:define-structure auto-scaling-thresholds common-lisp:nil
                                    ((instance-count :target-type integer
                                      :member-name "InstanceCount")
                                     (thresholds-wait-time :target-type minute
                                      :member-name "ThresholdsWaitTime")
                                     (ignore-metrics-time :target-type minute
                                      :member-name "IgnoreMetricsTime")
                                     (cpu-threshold :target-type double
                                      :member-name "CpuThreshold")
                                     (memory-threshold :target-type double
                                      :member-name "MemoryThreshold")
                                     (load-threshold :target-type double
                                      :member-name "LoadThreshold")
                                     (alarms :target-type strings :member-name
                                      "Alarms"))
                                    (:shape-name "AutoScalingThresholds"))

(smithy/sdk/shapes:define-enum auto-scaling-type
    common-lisp:nil
  (:load "load")
  (:timer "timer"))

(smithy/sdk/shapes:define-structure block-device-mapping common-lisp:nil
                                    ((device-name :target-type string
                                      :member-name "DeviceName")
                                     (no-device :target-type string
                                      :member-name "NoDevice")
                                     (virtual-name :target-type string
                                      :member-name "VirtualName")
                                     (ebs :target-type ebs-block-device
                                      :member-name "Ebs"))
                                    (:shape-name "BlockDeviceMapping"))

(smithy/sdk/shapes:define-list block-device-mappings :member
                               block-device-mapping)

(smithy/sdk/shapes:define-type boolean smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-structure chef-configuration common-lisp:nil
                                    ((manage-berkshelf :target-type boolean
                                      :member-name "ManageBerkshelf")
                                     (berkshelf-version :target-type string
                                      :member-name "BerkshelfVersion"))
                                    (:shape-name "ChefConfiguration"))

(smithy/sdk/shapes:define-input clone-stack-request common-lisp:nil
                                ((source-stack-id :target-type string :required
                                  common-lisp:t :member-name "SourceStackId")
                                 (name :target-type string :member-name "Name")
                                 (region :target-type string :member-name
                                  "Region")
                                 (vpc-id :target-type string :member-name
                                  "VpcId")
                                 (attributes :target-type stack-attributes
                                  :member-name "Attributes")
                                 (service-role-arn :target-type string
                                  :required common-lisp:t :member-name
                                  "ServiceRoleArn")
                                 (default-instance-profile-arn :target-type
                                  string :member-name
                                  "DefaultInstanceProfileArn")
                                 (default-os :target-type string :member-name
                                  "DefaultOs")
                                 (hostname-theme :target-type string
                                  :member-name "HostnameTheme")
                                 (default-availability-zone :target-type string
                                  :member-name "DefaultAvailabilityZone")
                                 (default-subnet-id :target-type string
                                  :member-name "DefaultSubnetId")
                                 (custom-json :target-type string :member-name
                                  "CustomJson")
                                 (configuration-manager :target-type
                                  stack-configuration-manager :member-name
                                  "ConfigurationManager")
                                 (chef-configuration :target-type
                                  chef-configuration :member-name
                                  "ChefConfiguration")
                                 (use-custom-cookbooks :target-type boolean
                                  :member-name "UseCustomCookbooks")
                                 (use-opsworks-security-groups :target-type
                                  boolean :member-name
                                  "UseOpsworksSecurityGroups")
                                 (custom-cookbooks-source :target-type source
                                  :member-name "CustomCookbooksSource")
                                 (default-ssh-key-name :target-type string
                                  :member-name "DefaultSshKeyName")
                                 (clone-permissions :target-type boolean
                                  :member-name "ClonePermissions")
                                 (clone-app-ids :target-type strings
                                  :member-name "CloneAppIds")
                                 (default-root-device-type :target-type
                                  root-device-type :member-name
                                  "DefaultRootDeviceType")
                                 (agent-version :target-type string
                                  :member-name "AgentVersion"))
                                (:shape-name "CloneStackRequest"))

(smithy/sdk/shapes:define-output clone-stack-result common-lisp:nil
                                 ((stack-id :target-type string :member-name
                                   "StackId"))
                                 (:shape-name "CloneStackResult"))

(smithy/sdk/shapes:define-structure cloud-watch-logs-configuration
                                    common-lisp:nil
                                    ((enabled :target-type boolean :member-name
                                      "Enabled")
                                     (log-streams :target-type
                                      cloud-watch-logs-log-streams :member-name
                                      "LogStreams"))
                                    (:shape-name "CloudWatchLogsConfiguration"))

(smithy/sdk/shapes:define-enum cloud-watch-logs-encoding
    common-lisp:nil
  (:ascii "ascii")
  (:big5 "big5")
  (:big5hkscs "big5hkscs")
  (:cp037 "cp037")
  (:cp424 "cp424")
  (:cp437 "cp437")
  (:cp500 "cp500")
  (:cp720 "cp720")
  (:cp737 "cp737")
  (:cp775 "cp775")
  (:cp850 "cp850")
  (:cp852 "cp852")
  (:cp855 "cp855")
  (:cp856 "cp856")
  (:cp857 "cp857")
  (:cp858 "cp858")
  (:cp860 "cp860")
  (:cp861 "cp861")
  (:cp862 "cp862")
  (:cp863 "cp863")
  (:cp864 "cp864")
  (:cp865 "cp865")
  (:cp866 "cp866")
  (:cp869 "cp869")
  (:cp874 "cp874")
  (:cp875 "cp875")
  (:cp932 "cp932")
  (:cp949 "cp949")
  (:cp950 "cp950")
  (:cp1006 "cp1006")
  (:cp1026 "cp1026")
  (:cp1140 "cp1140")
  (:cp1250 "cp1250")
  (:cp1251 "cp1251")
  (:cp1252 "cp1252")
  (:cp1253 "cp1253")
  (:cp1254 "cp1254")
  (:cp1255 "cp1255")
  (:cp1256 "cp1256")
  (:cp1257 "cp1257")
  (:cp1258 "cp1258")
  (:euc-jp "euc_jp")
  (:euc-jis-2004 "euc_jis_2004")
  (:euc-jisx0213 "euc_jisx0213")
  (:euc-kr "euc_kr")
  (:gb2312 "gb2312")
  (:gbk "gbk")
  (:gb18030 "gb18030")
  (:hz "hz")
  (:iso2022-jp "iso2022_jp")
  (:iso2022-jp-1 "iso2022_jp_1")
  (:iso2022-jp-2 "iso2022_jp_2")
  (:iso2022-jp-2004 "iso2022_jp_2004")
  (:iso2022-jp-3 "iso2022_jp_3")
  (:iso2022-jp-ext "iso2022_jp_ext")
  (:iso2022-kr "iso2022_kr")
  (:latin-1 "latin_1")
  (:iso8859-2 "iso8859_2")
  (:iso8859-3 "iso8859_3")
  (:iso8859-4 "iso8859_4")
  (:iso8859-5 "iso8859_5")
  (:iso8859-6 "iso8859_6")
  (:iso8859-7 "iso8859_7")
  (:iso8859-8 "iso8859_8")
  (:iso8859-9 "iso8859_9")
  (:iso8859-10 "iso8859_10")
  (:iso8859-13 "iso8859_13")
  (:iso8859-14 "iso8859_14")
  (:iso8859-15 "iso8859_15")
  (:iso8859-16 "iso8859_16")
  (:johab "johab")
  (:koi8-r "koi8_r")
  (:koi8-u "koi8_u")
  (:mac-cyrillic "mac_cyrillic")
  (:mac-greek "mac_greek")
  (:mac-iceland "mac_iceland")
  (:mac-latin2 "mac_latin2")
  (:mac-roman "mac_roman")
  (:mac-turkish "mac_turkish")
  (:ptcp154 "ptcp154")
  (:shift-jis "shift_jis")
  (:shift-jis-2004 "shift_jis_2004")
  (:shift-jisx0213 "shift_jisx0213")
  (:utf-32 "utf_32")
  (:utf-32-be "utf_32_be")
  (:utf-32-le "utf_32_le")
  (:utf-16 "utf_16")
  (:utf-16-be "utf_16_be")
  (:utf-16-le "utf_16_le")
  (:utf-7 "utf_7")
  (:utf-8 "utf_8")
  (:utf-8-sig "utf_8_sig"))

(smithy/sdk/shapes:define-enum cloud-watch-logs-initial-position
    common-lisp:nil
  (:start-of-file "start_of_file")
  (:end-of-file "end_of_file"))

(smithy/sdk/shapes:define-structure cloud-watch-logs-log-stream common-lisp:nil
                                    ((log-group-name :target-type string
                                      :member-name "LogGroupName")
                                     (datetime-format :target-type string
                                      :member-name "DatetimeFormat")
                                     (time-zone :target-type
                                      cloud-watch-logs-time-zone :member-name
                                      "TimeZone")
                                     (file :target-type string :member-name
                                      "File")
                                     (file-fingerprint-lines :target-type
                                      string :member-name
                                      "FileFingerprintLines")
                                     (multi-line-start-pattern :target-type
                                      string :member-name
                                      "MultiLineStartPattern")
                                     (initial-position :target-type
                                      cloud-watch-logs-initial-position
                                      :member-name "InitialPosition")
                                     (encoding :target-type
                                      cloud-watch-logs-encoding :member-name
                                      "Encoding")
                                     (buffer-duration :target-type integer
                                      :member-name "BufferDuration")
                                     (batch-count :target-type integer
                                      :member-name "BatchCount")
                                     (batch-size :target-type integer
                                      :member-name "BatchSize"))
                                    (:shape-name "CloudWatchLogsLogStream"))

(smithy/sdk/shapes:define-list cloud-watch-logs-log-streams :member
                               cloud-watch-logs-log-stream)

(smithy/sdk/shapes:define-enum cloud-watch-logs-time-zone
    common-lisp:nil
  (:local "LOCAL")
  (:utc "UTC"))

(smithy/sdk/shapes:define-structure command common-lisp:nil
                                    ((command-id :target-type string
                                      :member-name "CommandId")
                                     (instance-id :target-type string
                                      :member-name "InstanceId")
                                     (deployment-id :target-type string
                                      :member-name "DeploymentId")
                                     (created-at :target-type date-time
                                      :member-name "CreatedAt")
                                     (acknowledged-at :target-type date-time
                                      :member-name "AcknowledgedAt")
                                     (completed-at :target-type date-time
                                      :member-name "CompletedAt")
                                     (status :target-type string :member-name
                                      "Status")
                                     (exit-code :target-type integer
                                      :member-name "ExitCode")
                                     (log-url :target-type string :member-name
                                      "LogUrl")
                                     (type :target-type string :member-name
                                      "Type"))
                                    (:shape-name "Command"))

(smithy/sdk/shapes:define-list commands :member command)

(smithy/sdk/shapes:define-input create-app-request common-lisp:nil
                                ((stack-id :target-type string :required
                                  common-lisp:t :member-name "StackId")
                                 (shortname :target-type string :member-name
                                  "Shortname")
                                 (name :target-type string :required
                                  common-lisp:t :member-name "Name")
                                 (description :target-type string :member-name
                                  "Description")
                                 (data-sources :target-type data-sources
                                  :member-name "DataSources")
                                 (type :target-type app-type :required
                                  common-lisp:t :member-name "Type")
                                 (app-source :target-type source :member-name
                                  "AppSource")
                                 (domains :target-type strings :member-name
                                  "Domains")
                                 (enable-ssl :target-type boolean :member-name
                                  "EnableSsl")
                                 (ssl-configuration :target-type
                                  ssl-configuration :member-name
                                  "SslConfiguration")
                                 (attributes :target-type app-attributes
                                  :member-name "Attributes")
                                 (environment :target-type
                                  environment-variables :member-name
                                  "Environment"))
                                (:shape-name "CreateAppRequest"))

(smithy/sdk/shapes:define-output create-app-result common-lisp:nil
                                 ((app-id :target-type string :member-name
                                   "AppId"))
                                 (:shape-name "CreateAppResult"))

(smithy/sdk/shapes:define-input create-deployment-request common-lisp:nil
                                ((stack-id :target-type string :required
                                  common-lisp:t :member-name "StackId")
                                 (app-id :target-type string :member-name
                                  "AppId")
                                 (instance-ids :target-type strings
                                  :member-name "InstanceIds")
                                 (layer-ids :target-type strings :member-name
                                  "LayerIds")
                                 (command :target-type deployment-command
                                  :required common-lisp:t :member-name
                                  "Command")
                                 (comment :target-type string :member-name
                                  "Comment")
                                 (custom-json :target-type string :member-name
                                  "CustomJson"))
                                (:shape-name "CreateDeploymentRequest"))

(smithy/sdk/shapes:define-output create-deployment-result common-lisp:nil
                                 ((deployment-id :target-type string
                                   :member-name "DeploymentId"))
                                 (:shape-name "CreateDeploymentResult"))

(smithy/sdk/shapes:define-input create-instance-request common-lisp:nil
                                ((stack-id :target-type string :required
                                  common-lisp:t :member-name "StackId")
                                 (layer-ids :target-type strings :required
                                  common-lisp:t :member-name "LayerIds")
                                 (instance-type :target-type string :required
                                  common-lisp:t :member-name "InstanceType")
                                 (auto-scaling-type :target-type
                                  auto-scaling-type :member-name
                                  "AutoScalingType")
                                 (hostname :target-type string :member-name
                                  "Hostname")
                                 (os :target-type string :member-name "Os")
                                 (ami-id :target-type string :member-name
                                  "AmiId")
                                 (ssh-key-name :target-type string :member-name
                                  "SshKeyName")
                                 (availability-zone :target-type string
                                  :member-name "AvailabilityZone")
                                 (virtualization-type :target-type string
                                  :member-name "VirtualizationType")
                                 (subnet-id :target-type string :member-name
                                  "SubnetId")
                                 (architecture :target-type architecture
                                  :member-name "Architecture")
                                 (root-device-type :target-type
                                  root-device-type :member-name
                                  "RootDeviceType")
                                 (block-device-mappings :target-type
                                  block-device-mappings :member-name
                                  "BlockDeviceMappings")
                                 (install-updates-on-boot :target-type boolean
                                  :member-name "InstallUpdatesOnBoot")
                                 (ebs-optimized :target-type boolean
                                  :member-name "EbsOptimized")
                                 (agent-version :target-type string
                                  :member-name "AgentVersion")
                                 (tenancy :target-type string :member-name
                                  "Tenancy"))
                                (:shape-name "CreateInstanceRequest"))

(smithy/sdk/shapes:define-output create-instance-result common-lisp:nil
                                 ((instance-id :target-type string :member-name
                                   "InstanceId"))
                                 (:shape-name "CreateInstanceResult"))

(smithy/sdk/shapes:define-input create-layer-request common-lisp:nil
                                ((stack-id :target-type string :required
                                  common-lisp:t :member-name "StackId")
                                 (type :target-type layer-type :required
                                  common-lisp:t :member-name "Type")
                                 (name :target-type string :required
                                  common-lisp:t :member-name "Name")
                                 (shortname :target-type string :required
                                  common-lisp:t :member-name "Shortname")
                                 (attributes :target-type layer-attributes
                                  :member-name "Attributes")
                                 (cloud-watch-logs-configuration :target-type
                                  cloud-watch-logs-configuration :member-name
                                  "CloudWatchLogsConfiguration")
                                 (custom-instance-profile-arn :target-type
                                  string :member-name
                                  "CustomInstanceProfileArn")
                                 (custom-json :target-type string :member-name
                                  "CustomJson")
                                 (custom-security-group-ids :target-type
                                  strings :member-name
                                  "CustomSecurityGroupIds")
                                 (packages :target-type strings :member-name
                                  "Packages")
                                 (volume-configurations :target-type
                                  volume-configurations :member-name
                                  "VolumeConfigurations")
                                 (enable-auto-healing :target-type boolean
                                  :member-name "EnableAutoHealing")
                                 (auto-assign-elastic-ips :target-type boolean
                                  :member-name "AutoAssignElasticIps")
                                 (auto-assign-public-ips :target-type boolean
                                  :member-name "AutoAssignPublicIps")
                                 (custom-recipes :target-type recipes
                                  :member-name "CustomRecipes")
                                 (install-updates-on-boot :target-type boolean
                                  :member-name "InstallUpdatesOnBoot")
                                 (use-ebs-optimized-instances :target-type
                                  boolean :member-name
                                  "UseEbsOptimizedInstances")
                                 (lifecycle-event-configuration :target-type
                                  lifecycle-event-configuration :member-name
                                  "LifecycleEventConfiguration"))
                                (:shape-name "CreateLayerRequest"))

(smithy/sdk/shapes:define-output create-layer-result common-lisp:nil
                                 ((layer-id :target-type string :member-name
                                   "LayerId"))
                                 (:shape-name "CreateLayerResult"))

(smithy/sdk/shapes:define-input create-stack-request common-lisp:nil
                                ((name :target-type string :required
                                  common-lisp:t :member-name "Name")
                                 (region :target-type string :required
                                  common-lisp:t :member-name "Region")
                                 (vpc-id :target-type string :member-name
                                  "VpcId")
                                 (attributes :target-type stack-attributes
                                  :member-name "Attributes")
                                 (service-role-arn :target-type string
                                  :required common-lisp:t :member-name
                                  "ServiceRoleArn")
                                 (default-instance-profile-arn :target-type
                                  string :required common-lisp:t :member-name
                                  "DefaultInstanceProfileArn")
                                 (default-os :target-type string :member-name
                                  "DefaultOs")
                                 (hostname-theme :target-type string
                                  :member-name "HostnameTheme")
                                 (default-availability-zone :target-type string
                                  :member-name "DefaultAvailabilityZone")
                                 (default-subnet-id :target-type string
                                  :member-name "DefaultSubnetId")
                                 (custom-json :target-type string :member-name
                                  "CustomJson")
                                 (configuration-manager :target-type
                                  stack-configuration-manager :member-name
                                  "ConfigurationManager")
                                 (chef-configuration :target-type
                                  chef-configuration :member-name
                                  "ChefConfiguration")
                                 (use-custom-cookbooks :target-type boolean
                                  :member-name "UseCustomCookbooks")
                                 (use-opsworks-security-groups :target-type
                                  boolean :member-name
                                  "UseOpsworksSecurityGroups")
                                 (custom-cookbooks-source :target-type source
                                  :member-name "CustomCookbooksSource")
                                 (default-ssh-key-name :target-type string
                                  :member-name "DefaultSshKeyName")
                                 (default-root-device-type :target-type
                                  root-device-type :member-name
                                  "DefaultRootDeviceType")
                                 (agent-version :target-type string
                                  :member-name "AgentVersion"))
                                (:shape-name "CreateStackRequest"))

(smithy/sdk/shapes:define-output create-stack-result common-lisp:nil
                                 ((stack-id :target-type string :member-name
                                   "StackId"))
                                 (:shape-name "CreateStackResult"))

(smithy/sdk/shapes:define-input create-user-profile-request common-lisp:nil
                                ((iam-user-arn :target-type string :required
                                  common-lisp:t :member-name "IamUserArn")
                                 (ssh-username :target-type string :member-name
                                  "SshUsername")
                                 (ssh-public-key :target-type string
                                  :member-name "SshPublicKey")
                                 (allow-self-management :target-type boolean
                                  :member-name "AllowSelfManagement"))
                                (:shape-name "CreateUserProfileRequest"))

(smithy/sdk/shapes:define-output create-user-profile-result common-lisp:nil
                                 ((iam-user-arn :target-type string
                                   :member-name "IamUserArn"))
                                 (:shape-name "CreateUserProfileResult"))

(smithy/sdk/shapes:define-map daily-auto-scaling-schedule :key hour :value
                              switch)

(smithy/sdk/shapes:define-structure data-source common-lisp:nil
                                    ((type :target-type string :member-name
                                      "Type")
                                     (arn :target-type string :member-name
                                      "Arn")
                                     (database-name :target-type string
                                      :member-name "DatabaseName"))
                                    (:shape-name "DataSource"))

(smithy/sdk/shapes:define-list data-sources :member data-source)

(smithy/sdk/shapes:define-type date-time smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input delete-app-request common-lisp:nil
                                ((app-id :target-type string :required
                                  common-lisp:t :member-name "AppId"))
                                (:shape-name "DeleteAppRequest"))

(smithy/sdk/shapes:define-input delete-instance-request common-lisp:nil
                                ((instance-id :target-type string :required
                                  common-lisp:t :member-name "InstanceId")
                                 (delete-elastic-ip :target-type boolean
                                  :member-name "DeleteElasticIp")
                                 (delete-volumes :target-type boolean
                                  :member-name "DeleteVolumes"))
                                (:shape-name "DeleteInstanceRequest"))

(smithy/sdk/shapes:define-input delete-layer-request common-lisp:nil
                                ((layer-id :target-type string :required
                                  common-lisp:t :member-name "LayerId"))
                                (:shape-name "DeleteLayerRequest"))

(smithy/sdk/shapes:define-input delete-stack-request common-lisp:nil
                                ((stack-id :target-type string :required
                                  common-lisp:t :member-name "StackId"))
                                (:shape-name "DeleteStackRequest"))

(smithy/sdk/shapes:define-input delete-user-profile-request common-lisp:nil
                                ((iam-user-arn :target-type string :required
                                  common-lisp:t :member-name "IamUserArn"))
                                (:shape-name "DeleteUserProfileRequest"))

(smithy/sdk/shapes:define-structure deployment common-lisp:nil
                                    ((deployment-id :target-type string
                                      :member-name "DeploymentId")
                                     (stack-id :target-type string :member-name
                                      "StackId")
                                     (app-id :target-type string :member-name
                                      "AppId")
                                     (created-at :target-type date-time
                                      :member-name "CreatedAt")
                                     (completed-at :target-type date-time
                                      :member-name "CompletedAt")
                                     (duration :target-type integer
                                      :member-name "Duration")
                                     (iam-user-arn :target-type string
                                      :member-name "IamUserArn")
                                     (comment :target-type string :member-name
                                      "Comment")
                                     (command :target-type deployment-command
                                      :member-name "Command")
                                     (status :target-type string :member-name
                                      "Status")
                                     (custom-json :target-type string
                                      :member-name "CustomJson")
                                     (instance-ids :target-type strings
                                      :member-name "InstanceIds"))
                                    (:shape-name "Deployment"))

(smithy/sdk/shapes:define-structure deployment-command common-lisp:nil
                                    ((name :target-type deployment-command-name
                                      :required common-lisp:t :member-name
                                      "Name")
                                     (args :target-type deployment-command-args
                                      :member-name "Args"))
                                    (:shape-name "DeploymentCommand"))

(smithy/sdk/shapes:define-map deployment-command-args :key string :value
                              strings)

(smithy/sdk/shapes:define-enum deployment-command-name
    common-lisp:nil
  (:install-dependencies "install_dependencies")
  (:update-dependencies "update_dependencies")
  (:update-custom-cookbooks "update_custom_cookbooks")
  (:execute-recipes "execute_recipes")
  (:configure "configure")
  (:setup "setup")
  (:deploy "deploy")
  (:rollback "rollback")
  (:start "start")
  (:stop "stop")
  (:restart "restart")
  (:undeploy "undeploy"))

(smithy/sdk/shapes:define-list deployments :member deployment)

(smithy/sdk/shapes:define-input deregister-ecs-cluster-request common-lisp:nil
                                ((ecs-cluster-arn :target-type string :required
                                  common-lisp:t :member-name "EcsClusterArn"))
                                (:shape-name "DeregisterEcsClusterRequest"))

(smithy/sdk/shapes:define-input deregister-elastic-ip-request common-lisp:nil
                                ((elastic-ip :target-type string :required
                                  common-lisp:t :member-name "ElasticIp"))
                                (:shape-name "DeregisterElasticIpRequest"))

(smithy/sdk/shapes:define-input deregister-instance-request common-lisp:nil
                                ((instance-id :target-type string :required
                                  common-lisp:t :member-name "InstanceId"))
                                (:shape-name "DeregisterInstanceRequest"))

(smithy/sdk/shapes:define-input deregister-rds-db-instance-request
                                common-lisp:nil
                                ((rds-db-instance-arn :target-type string
                                  :required common-lisp:t :member-name
                                  "RdsDbInstanceArn"))
                                (:shape-name "DeregisterRdsDbInstanceRequest"))

(smithy/sdk/shapes:define-input deregister-volume-request common-lisp:nil
                                ((volume-id :target-type string :required
                                  common-lisp:t :member-name "VolumeId"))
                                (:shape-name "DeregisterVolumeRequest"))

(smithy/sdk/shapes:define-input describe-agent-versions-request common-lisp:nil
                                ((stack-id :target-type string :member-name
                                  "StackId")
                                 (configuration-manager :target-type
                                  stack-configuration-manager :member-name
                                  "ConfigurationManager"))
                                (:shape-name "DescribeAgentVersionsRequest"))

(smithy/sdk/shapes:define-output describe-agent-versions-result common-lisp:nil
                                 ((agent-versions :target-type agent-versions
                                   :member-name "AgentVersions"))
                                 (:shape-name "DescribeAgentVersionsResult"))

(smithy/sdk/shapes:define-input describe-apps-request common-lisp:nil
                                ((stack-id :target-type string :member-name
                                  "StackId")
                                 (app-ids :target-type strings :member-name
                                  "AppIds"))
                                (:shape-name "DescribeAppsRequest"))

(smithy/sdk/shapes:define-output describe-apps-result common-lisp:nil
                                 ((apps :target-type apps :member-name "Apps"))
                                 (:shape-name "DescribeAppsResult"))

(smithy/sdk/shapes:define-input describe-commands-request common-lisp:nil
                                ((deployment-id :target-type string
                                  :member-name "DeploymentId")
                                 (instance-id :target-type string :member-name
                                  "InstanceId")
                                 (command-ids :target-type strings :member-name
                                  "CommandIds"))
                                (:shape-name "DescribeCommandsRequest"))

(smithy/sdk/shapes:define-output describe-commands-result common-lisp:nil
                                 ((commands :target-type commands :member-name
                                   "Commands"))
                                 (:shape-name "DescribeCommandsResult"))

(smithy/sdk/shapes:define-input describe-deployments-request common-lisp:nil
                                ((stack-id :target-type string :member-name
                                  "StackId")
                                 (app-id :target-type string :member-name
                                  "AppId")
                                 (deployment-ids :target-type strings
                                  :member-name "DeploymentIds"))
                                (:shape-name "DescribeDeploymentsRequest"))

(smithy/sdk/shapes:define-output describe-deployments-result common-lisp:nil
                                 ((deployments :target-type deployments
                                   :member-name "Deployments"))
                                 (:shape-name "DescribeDeploymentsResult"))

(smithy/sdk/shapes:define-input describe-ecs-clusters-request common-lisp:nil
                                ((ecs-cluster-arns :target-type strings
                                  :member-name "EcsClusterArns")
                                 (stack-id :target-type string :member-name
                                  "StackId")
                                 (next-token :target-type string :member-name
                                  "NextToken")
                                 (max-results :target-type integer :member-name
                                  "MaxResults"))
                                (:shape-name "DescribeEcsClustersRequest"))

(smithy/sdk/shapes:define-output describe-ecs-clusters-result common-lisp:nil
                                 ((ecs-clusters :target-type ecs-clusters
                                   :member-name "EcsClusters")
                                  (next-token :target-type string :member-name
                                   "NextToken"))
                                 (:shape-name "DescribeEcsClustersResult"))

(smithy/sdk/shapes:define-input describe-elastic-ips-request common-lisp:nil
                                ((instance-id :target-type string :member-name
                                  "InstanceId")
                                 (stack-id :target-type string :member-name
                                  "StackId")
                                 (ips :target-type strings :member-name "Ips"))
                                (:shape-name "DescribeElasticIpsRequest"))

(smithy/sdk/shapes:define-output describe-elastic-ips-result common-lisp:nil
                                 ((elastic-ips :target-type elastic-ips
                                   :member-name "ElasticIps"))
                                 (:shape-name "DescribeElasticIpsResult"))

(smithy/sdk/shapes:define-input describe-elastic-load-balancers-request
                                common-lisp:nil
                                ((stack-id :target-type string :member-name
                                  "StackId")
                                 (layer-ids :target-type strings :member-name
                                  "LayerIds"))
                                (:shape-name
                                 "DescribeElasticLoadBalancersRequest"))

(smithy/sdk/shapes:define-output describe-elastic-load-balancers-result
                                 common-lisp:nil
                                 ((elastic-load-balancers :target-type
                                   elastic-load-balancers :member-name
                                   "ElasticLoadBalancers"))
                                 (:shape-name
                                  "DescribeElasticLoadBalancersResult"))

(smithy/sdk/shapes:define-input describe-instances-request common-lisp:nil
                                ((stack-id :target-type string :member-name
                                  "StackId")
                                 (layer-id :target-type string :member-name
                                  "LayerId")
                                 (instance-ids :target-type strings
                                  :member-name "InstanceIds"))
                                (:shape-name "DescribeInstancesRequest"))

(smithy/sdk/shapes:define-output describe-instances-result common-lisp:nil
                                 ((instances :target-type instances
                                   :member-name "Instances"))
                                 (:shape-name "DescribeInstancesResult"))

(smithy/sdk/shapes:define-input describe-layers-request common-lisp:nil
                                ((stack-id :target-type string :member-name
                                  "StackId")
                                 (layer-ids :target-type strings :member-name
                                  "LayerIds"))
                                (:shape-name "DescribeLayersRequest"))

(smithy/sdk/shapes:define-output describe-layers-result common-lisp:nil
                                 ((layers :target-type layers :member-name
                                   "Layers"))
                                 (:shape-name "DescribeLayersResult"))

(smithy/sdk/shapes:define-input describe-load-based-auto-scaling-request
                                common-lisp:nil
                                ((layer-ids :target-type strings :required
                                  common-lisp:t :member-name "LayerIds"))
                                (:shape-name
                                 "DescribeLoadBasedAutoScalingRequest"))

(smithy/sdk/shapes:define-output describe-load-based-auto-scaling-result
                                 common-lisp:nil
                                 ((load-based-auto-scaling-configurations
                                   :target-type
                                   load-based-auto-scaling-configurations
                                   :member-name
                                   "LoadBasedAutoScalingConfigurations"))
                                 (:shape-name
                                  "DescribeLoadBasedAutoScalingResult"))

(smithy/sdk/shapes:define-output describe-my-user-profile-result
                                 common-lisp:nil
                                 ((user-profile :target-type self-user-profile
                                   :member-name "UserProfile"))
                                 (:shape-name "DescribeMyUserProfileResult"))

(smithy/sdk/shapes:define-output describe-operating-systems-response
                                 common-lisp:nil
                                 ((operating-systems :target-type
                                   operating-systems :member-name
                                   "OperatingSystems"))
                                 (:shape-name
                                  "DescribeOperatingSystemsResponse"))

(smithy/sdk/shapes:define-input describe-permissions-request common-lisp:nil
                                ((iam-user-arn :target-type string :member-name
                                  "IamUserArn")
                                 (stack-id :target-type string :member-name
                                  "StackId"))
                                (:shape-name "DescribePermissionsRequest"))

(smithy/sdk/shapes:define-output describe-permissions-result common-lisp:nil
                                 ((permissions :target-type permissions
                                   :member-name "Permissions"))
                                 (:shape-name "DescribePermissionsResult"))

(smithy/sdk/shapes:define-input describe-raid-arrays-request common-lisp:nil
                                ((instance-id :target-type string :member-name
                                  "InstanceId")
                                 (stack-id :target-type string :member-name
                                  "StackId")
                                 (raid-array-ids :target-type strings
                                  :member-name "RaidArrayIds"))
                                (:shape-name "DescribeRaidArraysRequest"))

(smithy/sdk/shapes:define-output describe-raid-arrays-result common-lisp:nil
                                 ((raid-arrays :target-type raid-arrays
                                   :member-name "RaidArrays"))
                                 (:shape-name "DescribeRaidArraysResult"))

(smithy/sdk/shapes:define-input describe-rds-db-instances-request
                                common-lisp:nil
                                ((stack-id :target-type string :required
                                  common-lisp:t :member-name "StackId")
                                 (rds-db-instance-arns :target-type strings
                                  :member-name "RdsDbInstanceArns"))
                                (:shape-name "DescribeRdsDbInstancesRequest"))

(smithy/sdk/shapes:define-output describe-rds-db-instances-result
                                 common-lisp:nil
                                 ((rds-db-instances :target-type
                                   rds-db-instances :member-name
                                   "RdsDbInstances"))
                                 (:shape-name "DescribeRdsDbInstancesResult"))

(smithy/sdk/shapes:define-input describe-service-errors-request common-lisp:nil
                                ((stack-id :target-type string :member-name
                                  "StackId")
                                 (instance-id :target-type string :member-name
                                  "InstanceId")
                                 (service-error-ids :target-type strings
                                  :member-name "ServiceErrorIds"))
                                (:shape-name "DescribeServiceErrorsRequest"))

(smithy/sdk/shapes:define-output describe-service-errors-result common-lisp:nil
                                 ((service-errors :target-type service-errors
                                   :member-name "ServiceErrors"))
                                 (:shape-name "DescribeServiceErrorsResult"))

(smithy/sdk/shapes:define-input describe-stack-provisioning-parameters-request
                                common-lisp:nil
                                ((stack-id :target-type string :required
                                  common-lisp:t :member-name "StackId"))
                                (:shape-name
                                 "DescribeStackProvisioningParametersRequest"))

(smithy/sdk/shapes:define-output describe-stack-provisioning-parameters-result
                                 common-lisp:nil
                                 ((agent-installer-url :target-type string
                                   :member-name "AgentInstallerUrl")
                                  (parameters :target-type parameters
                                   :member-name "Parameters"))
                                 (:shape-name
                                  "DescribeStackProvisioningParametersResult"))

(smithy/sdk/shapes:define-input describe-stack-summary-request common-lisp:nil
                                ((stack-id :target-type string :required
                                  common-lisp:t :member-name "StackId"))
                                (:shape-name "DescribeStackSummaryRequest"))

(smithy/sdk/shapes:define-output describe-stack-summary-result common-lisp:nil
                                 ((stack-summary :target-type stack-summary
                                   :member-name "StackSummary"))
                                 (:shape-name "DescribeStackSummaryResult"))

(smithy/sdk/shapes:define-input describe-stacks-request common-lisp:nil
                                ((stack-ids :target-type strings :member-name
                                  "StackIds"))
                                (:shape-name "DescribeStacksRequest"))

(smithy/sdk/shapes:define-output describe-stacks-result common-lisp:nil
                                 ((stacks :target-type stacks :member-name
                                   "Stacks"))
                                 (:shape-name "DescribeStacksResult"))

(smithy/sdk/shapes:define-input describe-time-based-auto-scaling-request
                                common-lisp:nil
                                ((instance-ids :target-type strings :required
                                  common-lisp:t :member-name "InstanceIds"))
                                (:shape-name
                                 "DescribeTimeBasedAutoScalingRequest"))

(smithy/sdk/shapes:define-output describe-time-based-auto-scaling-result
                                 common-lisp:nil
                                 ((time-based-auto-scaling-configurations
                                   :target-type
                                   time-based-auto-scaling-configurations
                                   :member-name
                                   "TimeBasedAutoScalingConfigurations"))
                                 (:shape-name
                                  "DescribeTimeBasedAutoScalingResult"))

(smithy/sdk/shapes:define-input describe-user-profiles-request common-lisp:nil
                                ((iam-user-arns :target-type strings
                                  :member-name "IamUserArns"))
                                (:shape-name "DescribeUserProfilesRequest"))

(smithy/sdk/shapes:define-output describe-user-profiles-result common-lisp:nil
                                 ((user-profiles :target-type user-profiles
                                   :member-name "UserProfiles"))
                                 (:shape-name "DescribeUserProfilesResult"))

(smithy/sdk/shapes:define-input describe-volumes-request common-lisp:nil
                                ((instance-id :target-type string :member-name
                                  "InstanceId")
                                 (stack-id :target-type string :member-name
                                  "StackId")
                                 (raid-array-id :target-type string
                                  :member-name "RaidArrayId")
                                 (volume-ids :target-type strings :member-name
                                  "VolumeIds"))
                                (:shape-name "DescribeVolumesRequest"))

(smithy/sdk/shapes:define-output describe-volumes-result common-lisp:nil
                                 ((volumes :target-type volumes :member-name
                                   "Volumes"))
                                 (:shape-name "DescribeVolumesResult"))

(smithy/sdk/shapes:define-input detach-elastic-load-balancer-request
                                common-lisp:nil
                                ((elastic-load-balancer-name :target-type
                                  string :required common-lisp:t :member-name
                                  "ElasticLoadBalancerName")
                                 (layer-id :target-type string :required
                                  common-lisp:t :member-name "LayerId"))
                                (:shape-name
                                 "DetachElasticLoadBalancerRequest"))

(smithy/sdk/shapes:define-input disassociate-elastic-ip-request common-lisp:nil
                                ((elastic-ip :target-type string :required
                                  common-lisp:t :member-name "ElasticIp"))
                                (:shape-name "DisassociateElasticIpRequest"))

(smithy/sdk/shapes:define-type double smithy/sdk/smithy-types:double)

(smithy/sdk/shapes:define-structure ebs-block-device common-lisp:nil
                                    ((snapshot-id :target-type string
                                      :member-name "SnapshotId")
                                     (iops :target-type integer :member-name
                                      "Iops")
                                     (volume-size :target-type integer
                                      :member-name "VolumeSize")
                                     (volume-type :target-type volume-type
                                      :member-name "VolumeType")
                                     (delete-on-termination :target-type
                                      boolean :member-name
                                      "DeleteOnTermination"))
                                    (:shape-name "EbsBlockDevice"))

(smithy/sdk/shapes:define-structure ecs-cluster common-lisp:nil
                                    ((ecs-cluster-arn :target-type string
                                      :member-name "EcsClusterArn")
                                     (ecs-cluster-name :target-type string
                                      :member-name "EcsClusterName")
                                     (stack-id :target-type string :member-name
                                      "StackId")
                                     (registered-at :target-type date-time
                                      :member-name "RegisteredAt"))
                                    (:shape-name "EcsCluster"))

(smithy/sdk/shapes:define-list ecs-clusters :member ecs-cluster)

(smithy/sdk/shapes:define-structure elastic-ip common-lisp:nil
                                    ((ip :target-type string :member-name "Ip")
                                     (name :target-type string :member-name
                                      "Name")
                                     (domain :target-type string :member-name
                                      "Domain")
                                     (region :target-type string :member-name
                                      "Region")
                                     (instance-id :target-type string
                                      :member-name "InstanceId"))
                                    (:shape-name "ElasticIp"))

(smithy/sdk/shapes:define-list elastic-ips :member elastic-ip)

(smithy/sdk/shapes:define-structure elastic-load-balancer common-lisp:nil
                                    ((elastic-load-balancer-name :target-type
                                      string :member-name
                                      "ElasticLoadBalancerName")
                                     (region :target-type string :member-name
                                      "Region")
                                     (dns-name :target-type string :member-name
                                      "DnsName")
                                     (stack-id :target-type string :member-name
                                      "StackId")
                                     (layer-id :target-type string :member-name
                                      "LayerId")
                                     (vpc-id :target-type string :member-name
                                      "VpcId")
                                     (availability-zones :target-type strings
                                      :member-name "AvailabilityZones")
                                     (subnet-ids :target-type strings
                                      :member-name "SubnetIds")
                                     (ec2instance-ids :target-type strings
                                      :member-name "Ec2InstanceIds"))
                                    (:shape-name "ElasticLoadBalancer"))

(smithy/sdk/shapes:define-list elastic-load-balancers :member
                               elastic-load-balancer)

(smithy/sdk/shapes:define-structure environment-variable common-lisp:nil
                                    ((key :target-type string :required
                                      common-lisp:t :member-name "Key")
                                     (value :target-type string :required
                                      common-lisp:t :member-name "Value")
                                     (secure :target-type boolean :member-name
                                      "Secure"))
                                    (:shape-name "EnvironmentVariable"))

(smithy/sdk/shapes:define-list environment-variables :member
                               environment-variable)

(smithy/sdk/shapes:define-input get-hostname-suggestion-request common-lisp:nil
                                ((layer-id :target-type string :required
                                  common-lisp:t :member-name "LayerId"))
                                (:shape-name "GetHostnameSuggestionRequest"))

(smithy/sdk/shapes:define-output get-hostname-suggestion-result common-lisp:nil
                                 ((layer-id :target-type string :member-name
                                   "LayerId")
                                  (hostname :target-type string :member-name
                                   "Hostname"))
                                 (:shape-name "GetHostnameSuggestionResult"))

(smithy/sdk/shapes:define-input grant-access-request common-lisp:nil
                                ((instance-id :target-type string :required
                                  common-lisp:t :member-name "InstanceId")
                                 (valid-for-in-minutes :target-type
                                  valid-for-in-minutes :member-name
                                  "ValidForInMinutes"))
                                (:shape-name "GrantAccessRequest"))

(smithy/sdk/shapes:define-output grant-access-result common-lisp:nil
                                 ((temporary-credential :target-type
                                   temporary-credential :member-name
                                   "TemporaryCredential"))
                                 (:shape-name "GrantAccessResult"))

(smithy/sdk/shapes:define-type hour smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure instance common-lisp:nil
                                    ((agent-version :target-type string
                                      :member-name "AgentVersion")
                                     (ami-id :target-type string :member-name
                                      "AmiId")
                                     (architecture :target-type architecture
                                      :member-name "Architecture")
                                     (arn :target-type string :member-name
                                      "Arn")
                                     (auto-scaling-type :target-type
                                      auto-scaling-type :member-name
                                      "AutoScalingType")
                                     (availability-zone :target-type string
                                      :member-name "AvailabilityZone")
                                     (block-device-mappings :target-type
                                      block-device-mappings :member-name
                                      "BlockDeviceMappings")
                                     (created-at :target-type date-time
                                      :member-name "CreatedAt")
                                     (ebs-optimized :target-type boolean
                                      :member-name "EbsOptimized")
                                     (ec2instance-id :target-type string
                                      :member-name "Ec2InstanceId")
                                     (ecs-cluster-arn :target-type string
                                      :member-name "EcsClusterArn")
                                     (ecs-container-instance-arn :target-type
                                      string :member-name
                                      "EcsContainerInstanceArn")
                                     (elastic-ip :target-type string
                                      :member-name "ElasticIp")
                                     (hostname :target-type string :member-name
                                      "Hostname")
                                     (infrastructure-class :target-type string
                                      :member-name "InfrastructureClass")
                                     (install-updates-on-boot :target-type
                                      boolean :member-name
                                      "InstallUpdatesOnBoot")
                                     (instance-id :target-type string
                                      :member-name "InstanceId")
                                     (instance-profile-arn :target-type string
                                      :member-name "InstanceProfileArn")
                                     (instance-type :target-type string
                                      :member-name "InstanceType")
                                     (last-service-error-id :target-type string
                                      :member-name "LastServiceErrorId")
                                     (layer-ids :target-type strings
                                      :member-name "LayerIds")
                                     (os :target-type string :member-name "Os")
                                     (platform :target-type string :member-name
                                      "Platform")
                                     (private-dns :target-type string
                                      :member-name "PrivateDns")
                                     (private-ip :target-type string
                                      :member-name "PrivateIp")
                                     (public-dns :target-type string
                                      :member-name "PublicDns")
                                     (public-ip :target-type string
                                      :member-name "PublicIp")
                                     (registered-by :target-type string
                                      :member-name "RegisteredBy")
                                     (reported-agent-version :target-type
                                      string :member-name
                                      "ReportedAgentVersion")
                                     (reported-os :target-type reported-os
                                      :member-name "ReportedOs")
                                     (root-device-type :target-type
                                      root-device-type :member-name
                                      "RootDeviceType")
                                     (root-device-volume-id :target-type string
                                      :member-name "RootDeviceVolumeId")
                                     (security-group-ids :target-type strings
                                      :member-name "SecurityGroupIds")
                                     (ssh-host-dsa-key-fingerprint :target-type
                                      string :member-name
                                      "SshHostDsaKeyFingerprint")
                                     (ssh-host-rsa-key-fingerprint :target-type
                                      string :member-name
                                      "SshHostRsaKeyFingerprint")
                                     (ssh-key-name :target-type string
                                      :member-name "SshKeyName")
                                     (stack-id :target-type string :member-name
                                      "StackId")
                                     (status :target-type string :member-name
                                      "Status")
                                     (subnet-id :target-type string
                                      :member-name "SubnetId")
                                     (tenancy :target-type string :member-name
                                      "Tenancy")
                                     (virtualization-type :target-type
                                      virtualization-type :member-name
                                      "VirtualizationType"))
                                    (:shape-name "Instance"))

(smithy/sdk/shapes:define-structure instance-identity common-lisp:nil
                                    ((document :target-type string :member-name
                                      "Document")
                                     (signature :target-type string
                                      :member-name "Signature"))
                                    (:shape-name "InstanceIdentity"))

(smithy/sdk/shapes:define-list instances :member instance)

(smithy/sdk/shapes:define-structure instances-count common-lisp:nil
                                    ((assigning :target-type integer
                                      :member-name "Assigning")
                                     (booting :target-type integer :member-name
                                      "Booting")
                                     (connection-lost :target-type integer
                                      :member-name "ConnectionLost")
                                     (deregistering :target-type integer
                                      :member-name "Deregistering")
                                     (online :target-type integer :member-name
                                      "Online")
                                     (pending :target-type integer :member-name
                                      "Pending")
                                     (rebooting :target-type integer
                                      :member-name "Rebooting")
                                     (registered :target-type integer
                                      :member-name "Registered")
                                     (registering :target-type integer
                                      :member-name "Registering")
                                     (requested :target-type integer
                                      :member-name "Requested")
                                     (running-setup :target-type integer
                                      :member-name "RunningSetup")
                                     (setup-failed :target-type integer
                                      :member-name "SetupFailed")
                                     (shutting-down :target-type integer
                                      :member-name "ShuttingDown")
                                     (start-failed :target-type integer
                                      :member-name "StartFailed")
                                     (stop-failed :target-type integer
                                      :member-name "StopFailed")
                                     (stopped :target-type integer :member-name
                                      "Stopped")
                                     (stopping :target-type integer
                                      :member-name "Stopping")
                                     (terminated :target-type integer
                                      :member-name "Terminated")
                                     (terminating :target-type integer
                                      :member-name "Terminating")
                                     (unassigning :target-type integer
                                      :member-name "Unassigning"))
                                    (:shape-name "InstancesCount"))

(smithy/sdk/shapes:define-type integer smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-structure layer common-lisp:nil
                                    ((arn :target-type string :member-name
                                      "Arn")
                                     (stack-id :target-type string :member-name
                                      "StackId")
                                     (layer-id :target-type string :member-name
                                      "LayerId")
                                     (type :target-type layer-type :member-name
                                      "Type")
                                     (name :target-type string :member-name
                                      "Name")
                                     (shortname :target-type string
                                      :member-name "Shortname")
                                     (attributes :target-type layer-attributes
                                      :member-name "Attributes")
                                     (cloud-watch-logs-configuration
                                      :target-type
                                      cloud-watch-logs-configuration
                                      :member-name
                                      "CloudWatchLogsConfiguration")
                                     (custom-instance-profile-arn :target-type
                                      string :member-name
                                      "CustomInstanceProfileArn")
                                     (custom-json :target-type string
                                      :member-name "CustomJson")
                                     (custom-security-group-ids :target-type
                                      strings :member-name
                                      "CustomSecurityGroupIds")
                                     (default-security-group-names :target-type
                                      strings :member-name
                                      "DefaultSecurityGroupNames")
                                     (packages :target-type strings
                                      :member-name "Packages")
                                     (volume-configurations :target-type
                                      volume-configurations :member-name
                                      "VolumeConfigurations")
                                     (enable-auto-healing :target-type boolean
                                      :member-name "EnableAutoHealing")
                                     (auto-assign-elastic-ips :target-type
                                      boolean :member-name
                                      "AutoAssignElasticIps")
                                     (auto-assign-public-ips :target-type
                                      boolean :member-name
                                      "AutoAssignPublicIps")
                                     (default-recipes :target-type recipes
                                      :member-name "DefaultRecipes")
                                     (custom-recipes :target-type recipes
                                      :member-name "CustomRecipes")
                                     (created-at :target-type date-time
                                      :member-name "CreatedAt")
                                     (install-updates-on-boot :target-type
                                      boolean :member-name
                                      "InstallUpdatesOnBoot")
                                     (use-ebs-optimized-instances :target-type
                                      boolean :member-name
                                      "UseEbsOptimizedInstances")
                                     (lifecycle-event-configuration
                                      :target-type
                                      lifecycle-event-configuration
                                      :member-name
                                      "LifecycleEventConfiguration"))
                                    (:shape-name "Layer"))

(smithy/sdk/shapes:define-map layer-attributes :key layer-attributes-keys
                              :value string)

(smithy/sdk/shapes:define-enum layer-attributes-keys
    common-lisp:nil
  (:ecs-cluster-arn "EcsClusterArn")
  (:enable-haproxy-stats "EnableHaproxyStats")
  (:haproxy-stats-url "HaproxyStatsUrl")
  (:haproxy-stats-user "HaproxyStatsUser")
  (:haproxy-stats-password "HaproxyStatsPassword")
  (:haproxy-health-check-url "HaproxyHealthCheckUrl")
  (:haproxy-health-check-method "HaproxyHealthCheckMethod")
  (:mysql-root-password "MysqlRootPassword")
  (:mysql-root-password-ubiquitous "MysqlRootPasswordUbiquitous")
  (:ganglia-url "GangliaUrl")
  (:ganglia-user "GangliaUser")
  (:ganglia-password "GangliaPassword")
  (:memcached-memory "MemcachedMemory")
  (:nodejs-version "NodejsVersion")
  (:ruby-version "RubyVersion")
  (:rubygems-version "RubygemsVersion")
  (:manage-bundler "ManageBundler")
  (:bundler-version "BundlerVersion")
  (:rails-stack "RailsStack")
  (:passenger-version "PassengerVersion")
  (:jvm "Jvm")
  (:jvm-version "JvmVersion")
  (:jvm-options "JvmOptions")
  (:java-app-server "JavaAppServer")
  (:java-app-server-version "JavaAppServerVersion"))

(smithy/sdk/shapes:define-enum layer-type
    common-lisp:nil
  (:aws-flow-ruby "aws-flow-ruby")
  (:ecs-cluster "ecs-cluster")
  (:java-app "java-app")
  (:lb "lb")
  (:web "web")
  (:php-app "php-app")
  (:rails-app "rails-app")
  (:nodejs-app "nodejs-app")
  (:memcached "memcached")
  (:db-master "db-master")
  (:monitoring-master "monitoring-master")
  (:custom "custom"))

(smithy/sdk/shapes:define-list layers :member layer)

(smithy/sdk/shapes:define-structure lifecycle-event-configuration
                                    common-lisp:nil
                                    ((shutdown :target-type
                                      shutdown-event-configuration :member-name
                                      "Shutdown"))
                                    (:shape-name "LifecycleEventConfiguration"))

(smithy/sdk/shapes:define-input list-tags-request common-lisp:nil
                                ((resource-arn :target-type resource-arn
                                  :required common-lisp:t :member-name
                                  "ResourceArn")
                                 (max-results :target-type max-results
                                  :member-name "MaxResults")
                                 (next-token :target-type next-token
                                  :member-name "NextToken"))
                                (:shape-name "ListTagsRequest"))

(smithy/sdk/shapes:define-output list-tags-result common-lisp:nil
                                 ((tags :target-type tags :member-name "Tags")
                                  (next-token :target-type next-token
                                   :member-name "NextToken"))
                                 (:shape-name "ListTagsResult"))

(smithy/sdk/shapes:define-structure load-based-auto-scaling-configuration
                                    common-lisp:nil
                                    ((layer-id :target-type string :member-name
                                      "LayerId")
                                     (enable :target-type boolean :member-name
                                      "Enable")
                                     (up-scaling :target-type
                                      auto-scaling-thresholds :member-name
                                      "UpScaling")
                                     (down-scaling :target-type
                                      auto-scaling-thresholds :member-name
                                      "DownScaling"))
                                    (:shape-name
                                     "LoadBasedAutoScalingConfiguration"))

(smithy/sdk/shapes:define-list load-based-auto-scaling-configurations :member
                               load-based-auto-scaling-configuration)

(smithy/sdk/shapes:define-type max-results smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type minute smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type next-token smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure operating-system common-lisp:nil
                                    ((name :target-type string :member-name
                                      "Name")
                                     (id :target-type string :member-name "Id")
                                     (type :target-type string :member-name
                                      "Type")
                                     (configuration-managers :target-type
                                      operating-system-configuration-managers
                                      :member-name "ConfigurationManagers")
                                     (reported-name :target-type string
                                      :member-name "ReportedName")
                                     (reported-version :target-type string
                                      :member-name "ReportedVersion")
                                     (supported :target-type boolean
                                      :member-name "Supported"))
                                    (:shape-name "OperatingSystem"))

(smithy/sdk/shapes:define-structure operating-system-configuration-manager
                                    common-lisp:nil
                                    ((name :target-type string :member-name
                                      "Name")
                                     (version :target-type string :member-name
                                      "Version"))
                                    (:shape-name
                                     "OperatingSystemConfigurationManager"))

(smithy/sdk/shapes:define-list operating-system-configuration-managers :member
                               operating-system-configuration-manager)

(smithy/sdk/shapes:define-list operating-systems :member operating-system)

(smithy/sdk/shapes:define-map parameters :key string :value string)

(smithy/sdk/shapes:define-structure permission common-lisp:nil
                                    ((stack-id :target-type string :member-name
                                      "StackId")
                                     (iam-user-arn :target-type string
                                      :member-name "IamUserArn")
                                     (allow-ssh :target-type boolean
                                      :member-name "AllowSsh")
                                     (allow-sudo :target-type boolean
                                      :member-name "AllowSudo")
                                     (level :target-type string :member-name
                                      "Level"))
                                    (:shape-name "Permission"))

(smithy/sdk/shapes:define-list permissions :member permission)

(smithy/sdk/shapes:define-structure raid-array common-lisp:nil
                                    ((raid-array-id :target-type string
                                      :member-name "RaidArrayId")
                                     (instance-id :target-type string
                                      :member-name "InstanceId")
                                     (name :target-type string :member-name
                                      "Name")
                                     (raid-level :target-type integer
                                      :member-name "RaidLevel")
                                     (number-of-disks :target-type integer
                                      :member-name "NumberOfDisks")
                                     (size :target-type integer :member-name
                                      "Size")
                                     (device :target-type string :member-name
                                      "Device")
                                     (mount-point :target-type string
                                      :member-name "MountPoint")
                                     (availability-zone :target-type string
                                      :member-name "AvailabilityZone")
                                     (created-at :target-type date-time
                                      :member-name "CreatedAt")
                                     (stack-id :target-type string :member-name
                                      "StackId")
                                     (volume-type :target-type string
                                      :member-name "VolumeType")
                                     (iops :target-type integer :member-name
                                      "Iops"))
                                    (:shape-name "RaidArray"))

(smithy/sdk/shapes:define-list raid-arrays :member raid-array)

(smithy/sdk/shapes:define-structure rds-db-instance common-lisp:nil
                                    ((rds-db-instance-arn :target-type string
                                      :member-name "RdsDbInstanceArn")
                                     (db-instance-identifier :target-type
                                      string :member-name
                                      "DbInstanceIdentifier")
                                     (db-user :target-type string :member-name
                                      "DbUser")
                                     (db-password :target-type string
                                      :member-name "DbPassword")
                                     (region :target-type string :member-name
                                      "Region")
                                     (address :target-type string :member-name
                                      "Address")
                                     (engine :target-type string :member-name
                                      "Engine")
                                     (stack-id :target-type string :member-name
                                      "StackId")
                                     (missing-on-rds :target-type boolean
                                      :member-name "MissingOnRds"))
                                    (:shape-name "RdsDbInstance"))

(smithy/sdk/shapes:define-list rds-db-instances :member rds-db-instance)

(smithy/sdk/shapes:define-input reboot-instance-request common-lisp:nil
                                ((instance-id :target-type string :required
                                  common-lisp:t :member-name "InstanceId"))
                                (:shape-name "RebootInstanceRequest"))

(smithy/sdk/shapes:define-structure recipes common-lisp:nil
                                    ((setup :target-type strings :member-name
                                      "Setup")
                                     (configure :target-type strings
                                      :member-name "Configure")
                                     (deploy :target-type strings :member-name
                                      "Deploy")
                                     (undeploy :target-type strings
                                      :member-name "Undeploy")
                                     (shutdown :target-type strings
                                      :member-name "Shutdown"))
                                    (:shape-name "Recipes"))

(smithy/sdk/shapes:define-input register-ecs-cluster-request common-lisp:nil
                                ((ecs-cluster-arn :target-type string :required
                                  common-lisp:t :member-name "EcsClusterArn")
                                 (stack-id :target-type string :required
                                  common-lisp:t :member-name "StackId"))
                                (:shape-name "RegisterEcsClusterRequest"))

(smithy/sdk/shapes:define-output register-ecs-cluster-result common-lisp:nil
                                 ((ecs-cluster-arn :target-type string
                                   :member-name "EcsClusterArn"))
                                 (:shape-name "RegisterEcsClusterResult"))

(smithy/sdk/shapes:define-input register-elastic-ip-request common-lisp:nil
                                ((elastic-ip :target-type string :required
                                  common-lisp:t :member-name "ElasticIp")
                                 (stack-id :target-type string :required
                                  common-lisp:t :member-name "StackId"))
                                (:shape-name "RegisterElasticIpRequest"))

(smithy/sdk/shapes:define-output register-elastic-ip-result common-lisp:nil
                                 ((elastic-ip :target-type string :member-name
                                   "ElasticIp"))
                                 (:shape-name "RegisterElasticIpResult"))

(smithy/sdk/shapes:define-input register-instance-request common-lisp:nil
                                ((stack-id :target-type string :required
                                  common-lisp:t :member-name "StackId")
                                 (hostname :target-type string :member-name
                                  "Hostname")
                                 (public-ip :target-type string :member-name
                                  "PublicIp")
                                 (private-ip :target-type string :member-name
                                  "PrivateIp")
                                 (rsa-public-key :target-type string
                                  :member-name "RsaPublicKey")
                                 (rsa-public-key-fingerprint :target-type
                                  string :member-name
                                  "RsaPublicKeyFingerprint")
                                 (instance-identity :target-type
                                  instance-identity :member-name
                                  "InstanceIdentity"))
                                (:shape-name "RegisterInstanceRequest"))

(smithy/sdk/shapes:define-output register-instance-result common-lisp:nil
                                 ((instance-id :target-type string :member-name
                                   "InstanceId"))
                                 (:shape-name "RegisterInstanceResult"))

(smithy/sdk/shapes:define-input register-rds-db-instance-request
                                common-lisp:nil
                                ((stack-id :target-type string :required
                                  common-lisp:t :member-name "StackId")
                                 (rds-db-instance-arn :target-type string
                                  :required common-lisp:t :member-name
                                  "RdsDbInstanceArn")
                                 (db-user :target-type string :required
                                  common-lisp:t :member-name "DbUser")
                                 (db-password :target-type string :required
                                  common-lisp:t :member-name "DbPassword"))
                                (:shape-name "RegisterRdsDbInstanceRequest"))

(smithy/sdk/shapes:define-input register-volume-request common-lisp:nil
                                ((ec2volume-id :target-type string :member-name
                                  "Ec2VolumeId")
                                 (stack-id :target-type string :required
                                  common-lisp:t :member-name "StackId"))
                                (:shape-name "RegisterVolumeRequest"))

(smithy/sdk/shapes:define-output register-volume-result common-lisp:nil
                                 ((volume-id :target-type string :member-name
                                   "VolumeId"))
                                 (:shape-name "RegisterVolumeResult"))

(smithy/sdk/shapes:define-structure reported-os common-lisp:nil
                                    ((family :target-type string :member-name
                                      "Family")
                                     (name :target-type string :member-name
                                      "Name")
                                     (version :target-type string :member-name
                                      "Version"))
                                    (:shape-name "ReportedOs"))

(smithy/sdk/shapes:define-type resource-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error resource-not-found-exception common-lisp:nil
                                ((message :target-type string :member-name
                                  "message"))
                                (:shape-name "ResourceNotFoundException")
                                (:error-code 400))

(smithy/sdk/shapes:define-enum root-device-type
    common-lisp:nil
  (:ebs "ebs")
  (:instance-store "instance-store"))

(smithy/sdk/shapes:define-structure self-user-profile common-lisp:nil
                                    ((iam-user-arn :target-type string
                                      :member-name "IamUserArn")
                                     (name :target-type string :member-name
                                      "Name")
                                     (ssh-username :target-type string
                                      :member-name "SshUsername")
                                     (ssh-public-key :target-type string
                                      :member-name "SshPublicKey"))
                                    (:shape-name "SelfUserProfile"))

(smithy/sdk/shapes:define-structure service-error common-lisp:nil
                                    ((service-error-id :target-type string
                                      :member-name "ServiceErrorId")
                                     (stack-id :target-type string :member-name
                                      "StackId")
                                     (instance-id :target-type string
                                      :member-name "InstanceId")
                                     (type :target-type string :member-name
                                      "Type")
                                     (message :target-type string :member-name
                                      "Message")
                                     (created-at :target-type date-time
                                      :member-name "CreatedAt"))
                                    (:shape-name "ServiceError"))

(smithy/sdk/shapes:define-list service-errors :member service-error)

(smithy/sdk/shapes:define-input set-load-based-auto-scaling-request
                                common-lisp:nil
                                ((layer-id :target-type string :required
                                  common-lisp:t :member-name "LayerId")
                                 (enable :target-type boolean :member-name
                                  "Enable")
                                 (up-scaling :target-type
                                  auto-scaling-thresholds :member-name
                                  "UpScaling")
                                 (down-scaling :target-type
                                  auto-scaling-thresholds :member-name
                                  "DownScaling"))
                                (:shape-name "SetLoadBasedAutoScalingRequest"))

(smithy/sdk/shapes:define-input set-permission-request common-lisp:nil
                                ((stack-id :target-type string :required
                                  common-lisp:t :member-name "StackId")
                                 (iam-user-arn :target-type string :required
                                  common-lisp:t :member-name "IamUserArn")
                                 (allow-ssh :target-type boolean :member-name
                                  "AllowSsh")
                                 (allow-sudo :target-type boolean :member-name
                                  "AllowSudo")
                                 (level :target-type string :member-name
                                  "Level"))
                                (:shape-name "SetPermissionRequest"))

(smithy/sdk/shapes:define-input set-time-based-auto-scaling-request
                                common-lisp:nil
                                ((instance-id :target-type string :required
                                  common-lisp:t :member-name "InstanceId")
                                 (auto-scaling-schedule :target-type
                                  weekly-auto-scaling-schedule :member-name
                                  "AutoScalingSchedule"))
                                (:shape-name "SetTimeBasedAutoScalingRequest"))

(smithy/sdk/shapes:define-structure shutdown-event-configuration
                                    common-lisp:nil
                                    ((execution-timeout :target-type integer
                                      :member-name "ExecutionTimeout")
                                     (delay-until-elb-connections-drained
                                      :target-type boolean :member-name
                                      "DelayUntilElbConnectionsDrained"))
                                    (:shape-name "ShutdownEventConfiguration"))

(smithy/sdk/shapes:define-structure source common-lisp:nil
                                    ((type :target-type source-type
                                      :member-name "Type")
                                     (url :target-type string :member-name
                                      "Url")
                                     (username :target-type string :member-name
                                      "Username")
                                     (password :target-type string :member-name
                                      "Password")
                                     (ssh-key :target-type string :member-name
                                      "SshKey")
                                     (revision :target-type string :member-name
                                      "Revision"))
                                    (:shape-name "Source"))

(smithy/sdk/shapes:define-enum source-type
    common-lisp:nil
  (:git "git")
  (:svn "svn")
  (:archive "archive")
  (:s3 "s3"))

(smithy/sdk/shapes:define-structure ssl-configuration common-lisp:nil
                                    ((certificate :target-type string :required
                                      common-lisp:t :member-name "Certificate")
                                     (private-key :target-type string :required
                                      common-lisp:t :member-name "PrivateKey")
                                     (chain :target-type string :member-name
                                      "Chain"))
                                    (:shape-name "SslConfiguration"))

(smithy/sdk/shapes:define-structure stack common-lisp:nil
                                    ((stack-id :target-type string :member-name
                                      "StackId")
                                     (name :target-type string :member-name
                                      "Name")
                                     (arn :target-type string :member-name
                                      "Arn")
                                     (region :target-type string :member-name
                                      "Region")
                                     (vpc-id :target-type string :member-name
                                      "VpcId")
                                     (attributes :target-type stack-attributes
                                      :member-name "Attributes")
                                     (service-role-arn :target-type string
                                      :member-name "ServiceRoleArn")
                                     (default-instance-profile-arn :target-type
                                      string :member-name
                                      "DefaultInstanceProfileArn")
                                     (default-os :target-type string
                                      :member-name "DefaultOs")
                                     (hostname-theme :target-type string
                                      :member-name "HostnameTheme")
                                     (default-availability-zone :target-type
                                      string :member-name
                                      "DefaultAvailabilityZone")
                                     (default-subnet-id :target-type string
                                      :member-name "DefaultSubnetId")
                                     (custom-json :target-type string
                                      :member-name "CustomJson")
                                     (configuration-manager :target-type
                                      stack-configuration-manager :member-name
                                      "ConfigurationManager")
                                     (chef-configuration :target-type
                                      chef-configuration :member-name
                                      "ChefConfiguration")
                                     (use-custom-cookbooks :target-type boolean
                                      :member-name "UseCustomCookbooks")
                                     (use-opsworks-security-groups :target-type
                                      boolean :member-name
                                      "UseOpsworksSecurityGroups")
                                     (custom-cookbooks-source :target-type
                                      source :member-name
                                      "CustomCookbooksSource")
                                     (default-ssh-key-name :target-type string
                                      :member-name "DefaultSshKeyName")
                                     (created-at :target-type date-time
                                      :member-name "CreatedAt")
                                     (default-root-device-type :target-type
                                      root-device-type :member-name
                                      "DefaultRootDeviceType")
                                     (agent-version :target-type string
                                      :member-name "AgentVersion"))
                                    (:shape-name "Stack"))

(smithy/sdk/shapes:define-map stack-attributes :key stack-attributes-keys
                              :value string)

(smithy/sdk/shapes:define-enum stack-attributes-keys
    common-lisp:nil
  (:color "Color"))

(smithy/sdk/shapes:define-structure stack-configuration-manager common-lisp:nil
                                    ((name :target-type string :member-name
                                      "Name")
                                     (version :target-type string :member-name
                                      "Version"))
                                    (:shape-name "StackConfigurationManager"))

(smithy/sdk/shapes:define-structure stack-summary common-lisp:nil
                                    ((stack-id :target-type string :member-name
                                      "StackId")
                                     (name :target-type string :member-name
                                      "Name")
                                     (arn :target-type string :member-name
                                      "Arn")
                                     (layers-count :target-type integer
                                      :member-name "LayersCount")
                                     (apps-count :target-type integer
                                      :member-name "AppsCount")
                                     (instances-count :target-type
                                      instances-count :member-name
                                      "InstancesCount"))
                                    (:shape-name "StackSummary"))

(smithy/sdk/shapes:define-list stacks :member stack)

(smithy/sdk/shapes:define-input start-instance-request common-lisp:nil
                                ((instance-id :target-type string :required
                                  common-lisp:t :member-name "InstanceId"))
                                (:shape-name "StartInstanceRequest"))

(smithy/sdk/shapes:define-input start-stack-request common-lisp:nil
                                ((stack-id :target-type string :required
                                  common-lisp:t :member-name "StackId"))
                                (:shape-name "StartStackRequest"))

(smithy/sdk/shapes:define-input stop-instance-request common-lisp:nil
                                ((instance-id :target-type string :required
                                  common-lisp:t :member-name "InstanceId")
                                 (force :target-type boolean :member-name
                                  "Force"))
                                (:shape-name "StopInstanceRequest"))

(smithy/sdk/shapes:define-input stop-stack-request common-lisp:nil
                                ((stack-id :target-type string :required
                                  common-lisp:t :member-name "StackId"))
                                (:shape-name "StopStackRequest"))

(smithy/sdk/shapes:define-type string smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list strings :member string)

(smithy/sdk/shapes:define-type switch smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type tag-key smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list tag-keys :member tag-key)

(smithy/sdk/shapes:define-input tag-resource-request common-lisp:nil
                                ((resource-arn :target-type resource-arn
                                  :required common-lisp:t :member-name
                                  "ResourceArn")
                                 (tags :target-type tags :required
                                  common-lisp:t :member-name "Tags"))
                                (:shape-name "TagResourceRequest"))

(smithy/sdk/shapes:define-type tag-value smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-map tags :key tag-key :value tag-value)

(smithy/sdk/shapes:define-structure temporary-credential common-lisp:nil
                                    ((username :target-type string :member-name
                                      "Username")
                                     (password :target-type string :member-name
                                      "Password")
                                     (valid-for-in-minutes :target-type integer
                                      :member-name "ValidForInMinutes")
                                     (instance-id :target-type string
                                      :member-name "InstanceId"))
                                    (:shape-name "TemporaryCredential"))

(smithy/sdk/shapes:define-structure time-based-auto-scaling-configuration
                                    common-lisp:nil
                                    ((instance-id :target-type string
                                      :member-name "InstanceId")
                                     (auto-scaling-schedule :target-type
                                      weekly-auto-scaling-schedule :member-name
                                      "AutoScalingSchedule"))
                                    (:shape-name
                                     "TimeBasedAutoScalingConfiguration"))

(smithy/sdk/shapes:define-list time-based-auto-scaling-configurations :member
                               time-based-auto-scaling-configuration)

(smithy/sdk/shapes:define-input unassign-instance-request common-lisp:nil
                                ((instance-id :target-type string :required
                                  common-lisp:t :member-name "InstanceId"))
                                (:shape-name "UnassignInstanceRequest"))

(smithy/sdk/shapes:define-input unassign-volume-request common-lisp:nil
                                ((volume-id :target-type string :required
                                  common-lisp:t :member-name "VolumeId"))
                                (:shape-name "UnassignVolumeRequest"))

(smithy/sdk/shapes:define-input untag-resource-request common-lisp:nil
                                ((resource-arn :target-type resource-arn
                                  :required common-lisp:t :member-name
                                  "ResourceArn")
                                 (tag-keys :target-type tag-keys :required
                                  common-lisp:t :member-name "TagKeys"))
                                (:shape-name "UntagResourceRequest"))

(smithy/sdk/shapes:define-input update-app-request common-lisp:nil
                                ((app-id :target-type string :required
                                  common-lisp:t :member-name "AppId")
                                 (name :target-type string :member-name "Name")
                                 (description :target-type string :member-name
                                  "Description")
                                 (data-sources :target-type data-sources
                                  :member-name "DataSources")
                                 (type :target-type app-type :member-name
                                  "Type")
                                 (app-source :target-type source :member-name
                                  "AppSource")
                                 (domains :target-type strings :member-name
                                  "Domains")
                                 (enable-ssl :target-type boolean :member-name
                                  "EnableSsl")
                                 (ssl-configuration :target-type
                                  ssl-configuration :member-name
                                  "SslConfiguration")
                                 (attributes :target-type app-attributes
                                  :member-name "Attributes")
                                 (environment :target-type
                                  environment-variables :member-name
                                  "Environment"))
                                (:shape-name "UpdateAppRequest"))

(smithy/sdk/shapes:define-input update-elastic-ip-request common-lisp:nil
                                ((elastic-ip :target-type string :required
                                  common-lisp:t :member-name "ElasticIp")
                                 (name :target-type string :member-name
                                  "Name"))
                                (:shape-name "UpdateElasticIpRequest"))

(smithy/sdk/shapes:define-input update-instance-request common-lisp:nil
                                ((instance-id :target-type string :required
                                  common-lisp:t :member-name "InstanceId")
                                 (layer-ids :target-type strings :member-name
                                  "LayerIds")
                                 (instance-type :target-type string
                                  :member-name "InstanceType")
                                 (auto-scaling-type :target-type
                                  auto-scaling-type :member-name
                                  "AutoScalingType")
                                 (hostname :target-type string :member-name
                                  "Hostname")
                                 (os :target-type string :member-name "Os")
                                 (ami-id :target-type string :member-name
                                  "AmiId")
                                 (ssh-key-name :target-type string :member-name
                                  "SshKeyName")
                                 (architecture :target-type architecture
                                  :member-name "Architecture")
                                 (install-updates-on-boot :target-type boolean
                                  :member-name "InstallUpdatesOnBoot")
                                 (ebs-optimized :target-type boolean
                                  :member-name "EbsOptimized")
                                 (agent-version :target-type string
                                  :member-name "AgentVersion"))
                                (:shape-name "UpdateInstanceRequest"))

(smithy/sdk/shapes:define-input update-layer-request common-lisp:nil
                                ((layer-id :target-type string :required
                                  common-lisp:t :member-name "LayerId")
                                 (name :target-type string :member-name "Name")
                                 (shortname :target-type string :member-name
                                  "Shortname")
                                 (attributes :target-type layer-attributes
                                  :member-name "Attributes")
                                 (cloud-watch-logs-configuration :target-type
                                  cloud-watch-logs-configuration :member-name
                                  "CloudWatchLogsConfiguration")
                                 (custom-instance-profile-arn :target-type
                                  string :member-name
                                  "CustomInstanceProfileArn")
                                 (custom-json :target-type string :member-name
                                  "CustomJson")
                                 (custom-security-group-ids :target-type
                                  strings :member-name
                                  "CustomSecurityGroupIds")
                                 (packages :target-type strings :member-name
                                  "Packages")
                                 (volume-configurations :target-type
                                  volume-configurations :member-name
                                  "VolumeConfigurations")
                                 (enable-auto-healing :target-type boolean
                                  :member-name "EnableAutoHealing")
                                 (auto-assign-elastic-ips :target-type boolean
                                  :member-name "AutoAssignElasticIps")
                                 (auto-assign-public-ips :target-type boolean
                                  :member-name "AutoAssignPublicIps")
                                 (custom-recipes :target-type recipes
                                  :member-name "CustomRecipes")
                                 (install-updates-on-boot :target-type boolean
                                  :member-name "InstallUpdatesOnBoot")
                                 (use-ebs-optimized-instances :target-type
                                  boolean :member-name
                                  "UseEbsOptimizedInstances")
                                 (lifecycle-event-configuration :target-type
                                  lifecycle-event-configuration :member-name
                                  "LifecycleEventConfiguration"))
                                (:shape-name "UpdateLayerRequest"))

(smithy/sdk/shapes:define-input update-my-user-profile-request common-lisp:nil
                                ((ssh-public-key :target-type string
                                  :member-name "SshPublicKey"))
                                (:shape-name "UpdateMyUserProfileRequest"))

(smithy/sdk/shapes:define-input update-rds-db-instance-request common-lisp:nil
                                ((rds-db-instance-arn :target-type string
                                  :required common-lisp:t :member-name
                                  "RdsDbInstanceArn")
                                 (db-user :target-type string :member-name
                                  "DbUser")
                                 (db-password :target-type string :member-name
                                  "DbPassword"))
                                (:shape-name "UpdateRdsDbInstanceRequest"))

(smithy/sdk/shapes:define-input update-stack-request common-lisp:nil
                                ((stack-id :target-type string :required
                                  common-lisp:t :member-name "StackId")
                                 (name :target-type string :member-name "Name")
                                 (attributes :target-type stack-attributes
                                  :member-name "Attributes")
                                 (service-role-arn :target-type string
                                  :member-name "ServiceRoleArn")
                                 (default-instance-profile-arn :target-type
                                  string :member-name
                                  "DefaultInstanceProfileArn")
                                 (default-os :target-type string :member-name
                                  "DefaultOs")
                                 (hostname-theme :target-type string
                                  :member-name "HostnameTheme")
                                 (default-availability-zone :target-type string
                                  :member-name "DefaultAvailabilityZone")
                                 (default-subnet-id :target-type string
                                  :member-name "DefaultSubnetId")
                                 (custom-json :target-type string :member-name
                                  "CustomJson")
                                 (configuration-manager :target-type
                                  stack-configuration-manager :member-name
                                  "ConfigurationManager")
                                 (chef-configuration :target-type
                                  chef-configuration :member-name
                                  "ChefConfiguration")
                                 (use-custom-cookbooks :target-type boolean
                                  :member-name "UseCustomCookbooks")
                                 (custom-cookbooks-source :target-type source
                                  :member-name "CustomCookbooksSource")
                                 (default-ssh-key-name :target-type string
                                  :member-name "DefaultSshKeyName")
                                 (default-root-device-type :target-type
                                  root-device-type :member-name
                                  "DefaultRootDeviceType")
                                 (use-opsworks-security-groups :target-type
                                  boolean :member-name
                                  "UseOpsworksSecurityGroups")
                                 (agent-version :target-type string
                                  :member-name "AgentVersion"))
                                (:shape-name "UpdateStackRequest"))

(smithy/sdk/shapes:define-input update-user-profile-request common-lisp:nil
                                ((iam-user-arn :target-type string :required
                                  common-lisp:t :member-name "IamUserArn")
                                 (ssh-username :target-type string :member-name
                                  "SshUsername")
                                 (ssh-public-key :target-type string
                                  :member-name "SshPublicKey")
                                 (allow-self-management :target-type boolean
                                  :member-name "AllowSelfManagement"))
                                (:shape-name "UpdateUserProfileRequest"))

(smithy/sdk/shapes:define-input update-volume-request common-lisp:nil
                                ((volume-id :target-type string :required
                                  common-lisp:t :member-name "VolumeId")
                                 (name :target-type string :member-name "Name")
                                 (mount-point :target-type string :member-name
                                  "MountPoint"))
                                (:shape-name "UpdateVolumeRequest"))

(smithy/sdk/shapes:define-structure user-profile common-lisp:nil
                                    ((iam-user-arn :target-type string
                                      :member-name "IamUserArn")
                                     (name :target-type string :member-name
                                      "Name")
                                     (ssh-username :target-type string
                                      :member-name "SshUsername")
                                     (ssh-public-key :target-type string
                                      :member-name "SshPublicKey")
                                     (allow-self-management :target-type
                                      boolean :member-name
                                      "AllowSelfManagement"))
                                    (:shape-name "UserProfile"))

(smithy/sdk/shapes:define-list user-profiles :member user-profile)

(smithy/sdk/shapes:define-type valid-for-in-minutes
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-error validation-exception common-lisp:nil
                                ((message :target-type string :member-name
                                  "message"))
                                (:shape-name "ValidationException")
                                (:error-code 400))

(smithy/sdk/shapes:define-enum virtualization-type
    common-lisp:nil
  (:paravirtual "paravirtual")
  (:hvm "hvm"))

(smithy/sdk/shapes:define-structure volume common-lisp:nil
                                    ((volume-id :target-type string
                                      :member-name "VolumeId")
                                     (ec2volume-id :target-type string
                                      :member-name "Ec2VolumeId")
                                     (name :target-type string :member-name
                                      "Name")
                                     (raid-array-id :target-type string
                                      :member-name "RaidArrayId")
                                     (instance-id :target-type string
                                      :member-name "InstanceId")
                                     (status :target-type string :member-name
                                      "Status")
                                     (size :target-type integer :member-name
                                      "Size")
                                     (device :target-type string :member-name
                                      "Device")
                                     (mount-point :target-type string
                                      :member-name "MountPoint")
                                     (region :target-type string :member-name
                                      "Region")
                                     (availability-zone :target-type string
                                      :member-name "AvailabilityZone")
                                     (volume-type :target-type string
                                      :member-name "VolumeType")
                                     (iops :target-type integer :member-name
                                      "Iops")
                                     (encrypted :target-type boolean
                                      :member-name "Encrypted"))
                                    (:shape-name "Volume"))

(smithy/sdk/shapes:define-structure volume-configuration common-lisp:nil
                                    ((mount-point :target-type string :required
                                      common-lisp:t :member-name "MountPoint")
                                     (raid-level :target-type integer
                                      :member-name "RaidLevel")
                                     (number-of-disks :target-type integer
                                      :required common-lisp:t :member-name
                                      "NumberOfDisks")
                                     (size :target-type integer :required
                                      common-lisp:t :member-name "Size")
                                     (volume-type :target-type string
                                      :member-name "VolumeType")
                                     (iops :target-type integer :member-name
                                      "Iops")
                                     (encrypted :target-type boolean
                                      :member-name "Encrypted"))
                                    (:shape-name "VolumeConfiguration"))

(smithy/sdk/shapes:define-list volume-configurations :member
                               volume-configuration)

(smithy/sdk/shapes:define-enum volume-type
    common-lisp:nil
  (:gp2 "gp2")
  (:io1 "io1")
  (:standard "standard"))

(smithy/sdk/shapes:define-list volumes :member volume)

(smithy/sdk/shapes:define-structure weekly-auto-scaling-schedule
                                    common-lisp:nil
                                    ((monday :target-type
                                      daily-auto-scaling-schedule :member-name
                                      "Monday")
                                     (tuesday :target-type
                                      daily-auto-scaling-schedule :member-name
                                      "Tuesday")
                                     (wednesday :target-type
                                      daily-auto-scaling-schedule :member-name
                                      "Wednesday")
                                     (thursday :target-type
                                      daily-auto-scaling-schedule :member-name
                                      "Thursday")
                                     (friday :target-type
                                      daily-auto-scaling-schedule :member-name
                                      "Friday")
                                     (saturday :target-type
                                      daily-auto-scaling-schedule :member-name
                                      "Saturday")
                                     (sunday :target-type
                                      daily-auto-scaling-schedule :member-name
                                      "Sunday"))
                                    (:shape-name "WeeklyAutoScalingSchedule"))

(smithy/sdk/operation:define-operation assign-instance :shape-name
                                       "AssignInstance" :input
                                       assign-instance-request :output
                                       common-lisp:null :errors
                                       (resource-not-found-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation assign-volume :shape-name "AssignVolume"
                                       :input assign-volume-request :output
                                       common-lisp:null :errors
                                       (resource-not-found-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation associate-elastic-ip :shape-name
                                       "AssociateElasticIp" :input
                                       associate-elastic-ip-request :output
                                       common-lisp:null :errors
                                       (resource-not-found-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation attach-elastic-load-balancer :shape-name
                                       "AttachElasticLoadBalancer" :input
                                       attach-elastic-load-balancer-request
                                       :output common-lisp:null :errors
                                       (resource-not-found-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation clone-stack :shape-name "CloneStack"
                                       :input clone-stack-request :output
                                       clone-stack-result :errors
                                       (resource-not-found-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation create-app :shape-name "CreateApp"
                                       :input create-app-request :output
                                       create-app-result :errors
                                       (resource-not-found-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation create-deployment :shape-name
                                       "CreateDeployment" :input
                                       create-deployment-request :output
                                       create-deployment-result :errors
                                       (resource-not-found-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation create-instance :shape-name
                                       "CreateInstance" :input
                                       create-instance-request :output
                                       create-instance-result :errors
                                       (resource-not-found-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation create-layer :shape-name "CreateLayer"
                                       :input create-layer-request :output
                                       create-layer-result :errors
                                       (resource-not-found-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation create-stack :shape-name "CreateStack"
                                       :input create-stack-request :output
                                       create-stack-result :errors
                                       (validation-exception))

(smithy/sdk/operation:define-operation create-user-profile :shape-name
                                       "CreateUserProfile" :input
                                       create-user-profile-request :output
                                       create-user-profile-result :errors
                                       (validation-exception))

(smithy/sdk/operation:define-operation delete-app :shape-name "DeleteApp"
                                       :input delete-app-request :output
                                       common-lisp:null :errors
                                       (resource-not-found-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation delete-instance :shape-name
                                       "DeleteInstance" :input
                                       delete-instance-request :output
                                       common-lisp:null :errors
                                       (resource-not-found-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation delete-layer :shape-name "DeleteLayer"
                                       :input delete-layer-request :output
                                       common-lisp:null :errors
                                       (resource-not-found-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation delete-stack :shape-name "DeleteStack"
                                       :input delete-stack-request :output
                                       common-lisp:null :errors
                                       (resource-not-found-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation delete-user-profile :shape-name
                                       "DeleteUserProfile" :input
                                       delete-user-profile-request :output
                                       common-lisp:null :errors
                                       (resource-not-found-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation deregister-ecs-cluster :shape-name
                                       "DeregisterEcsCluster" :input
                                       deregister-ecs-cluster-request :output
                                       common-lisp:null :errors
                                       (resource-not-found-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation deregister-elastic-ip :shape-name
                                       "DeregisterElasticIp" :input
                                       deregister-elastic-ip-request :output
                                       common-lisp:null :errors
                                       (resource-not-found-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation deregister-instance :shape-name
                                       "DeregisterInstance" :input
                                       deregister-instance-request :output
                                       common-lisp:null :errors
                                       (resource-not-found-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation deregister-rds-db-instance :shape-name
                                       "DeregisterRdsDbInstance" :input
                                       deregister-rds-db-instance-request
                                       :output common-lisp:null :errors
                                       (resource-not-found-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation deregister-volume :shape-name
                                       "DeregisterVolume" :input
                                       deregister-volume-request :output
                                       common-lisp:null :errors
                                       (resource-not-found-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation describe-agent-versions :shape-name
                                       "DescribeAgentVersions" :input
                                       describe-agent-versions-request :output
                                       describe-agent-versions-result :errors
                                       (resource-not-found-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation describe-apps :shape-name "DescribeApps"
                                       :input describe-apps-request :output
                                       describe-apps-result :errors
                                       (resource-not-found-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation describe-commands :shape-name
                                       "DescribeCommands" :input
                                       describe-commands-request :output
                                       describe-commands-result :errors
                                       (resource-not-found-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation describe-deployments :shape-name
                                       "DescribeDeployments" :input
                                       describe-deployments-request :output
                                       describe-deployments-result :errors
                                       (resource-not-found-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation describe-ecs-clusters :shape-name
                                       "DescribeEcsClusters" :input
                                       describe-ecs-clusters-request :output
                                       describe-ecs-clusters-result :errors
                                       (resource-not-found-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation describe-elastic-ips :shape-name
                                       "DescribeElasticIps" :input
                                       describe-elastic-ips-request :output
                                       describe-elastic-ips-result :errors
                                       (resource-not-found-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation describe-elastic-load-balancers
                                       :shape-name
                                       "DescribeElasticLoadBalancers" :input
                                       describe-elastic-load-balancers-request
                                       :output
                                       describe-elastic-load-balancers-result
                                       :errors
                                       (resource-not-found-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation describe-instances :shape-name
                                       "DescribeInstances" :input
                                       describe-instances-request :output
                                       describe-instances-result :errors
                                       (resource-not-found-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation describe-layers :shape-name
                                       "DescribeLayers" :input
                                       describe-layers-request :output
                                       describe-layers-result :errors
                                       (resource-not-found-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation describe-load-based-auto-scaling
                                       :shape-name
                                       "DescribeLoadBasedAutoScaling" :input
                                       describe-load-based-auto-scaling-request
                                       :output
                                       describe-load-based-auto-scaling-result
                                       :errors
                                       (resource-not-found-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation describe-my-user-profile :shape-name
                                       "DescribeMyUserProfile" :input
                                       common-lisp:null :output
                                       describe-my-user-profile-result :errors
                                       common-lisp:nil)

(smithy/sdk/operation:define-operation describe-operating-systems :shape-name
                                       "DescribeOperatingSystems" :input
                                       common-lisp:null :output
                                       describe-operating-systems-response
                                       :errors common-lisp:nil)

(smithy/sdk/operation:define-operation describe-permissions :shape-name
                                       "DescribePermissions" :input
                                       describe-permissions-request :output
                                       describe-permissions-result :errors
                                       (resource-not-found-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation describe-raid-arrays :shape-name
                                       "DescribeRaidArrays" :input
                                       describe-raid-arrays-request :output
                                       describe-raid-arrays-result :errors
                                       (resource-not-found-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation describe-rds-db-instances :shape-name
                                       "DescribeRdsDbInstances" :input
                                       describe-rds-db-instances-request
                                       :output describe-rds-db-instances-result
                                       :errors
                                       (resource-not-found-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation describe-service-errors :shape-name
                                       "DescribeServiceErrors" :input
                                       describe-service-errors-request :output
                                       describe-service-errors-result :errors
                                       (resource-not-found-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation describe-stack-provisioning-parameters
                                       :shape-name
                                       "DescribeStackProvisioningParameters"
                                       :input
                                       describe-stack-provisioning-parameters-request
                                       :output
                                       describe-stack-provisioning-parameters-result
                                       :errors
                                       (resource-not-found-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation describe-stack-summary :shape-name
                                       "DescribeStackSummary" :input
                                       describe-stack-summary-request :output
                                       describe-stack-summary-result :errors
                                       (resource-not-found-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation describe-stacks :shape-name
                                       "DescribeStacks" :input
                                       describe-stacks-request :output
                                       describe-stacks-result :errors
                                       (resource-not-found-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation describe-time-based-auto-scaling
                                       :shape-name
                                       "DescribeTimeBasedAutoScaling" :input
                                       describe-time-based-auto-scaling-request
                                       :output
                                       describe-time-based-auto-scaling-result
                                       :errors
                                       (resource-not-found-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation describe-user-profiles :shape-name
                                       "DescribeUserProfiles" :input
                                       describe-user-profiles-request :output
                                       describe-user-profiles-result :errors
                                       (resource-not-found-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation describe-volumes :shape-name
                                       "DescribeVolumes" :input
                                       describe-volumes-request :output
                                       describe-volumes-result :errors
                                       (resource-not-found-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation detach-elastic-load-balancer :shape-name
                                       "DetachElasticLoadBalancer" :input
                                       detach-elastic-load-balancer-request
                                       :output common-lisp:null :errors
                                       (resource-not-found-exception))

(smithy/sdk/operation:define-operation disassociate-elastic-ip :shape-name
                                       "DisassociateElasticIp" :input
                                       disassociate-elastic-ip-request :output
                                       common-lisp:null :errors
                                       (resource-not-found-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation get-hostname-suggestion :shape-name
                                       "GetHostnameSuggestion" :input
                                       get-hostname-suggestion-request :output
                                       get-hostname-suggestion-result :errors
                                       (resource-not-found-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation grant-access :shape-name "GrantAccess"
                                       :input grant-access-request :output
                                       grant-access-result :errors
                                       (resource-not-found-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation list-tags :shape-name "ListTags" :input
                                       list-tags-request :output
                                       list-tags-result :errors
                                       (resource-not-found-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation reboot-instance :shape-name
                                       "RebootInstance" :input
                                       reboot-instance-request :output
                                       common-lisp:null :errors
                                       (resource-not-found-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation register-ecs-cluster :shape-name
                                       "RegisterEcsCluster" :input
                                       register-ecs-cluster-request :output
                                       register-ecs-cluster-result :errors
                                       (resource-not-found-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation register-elastic-ip :shape-name
                                       "RegisterElasticIp" :input
                                       register-elastic-ip-request :output
                                       register-elastic-ip-result :errors
                                       (resource-not-found-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation register-instance :shape-name
                                       "RegisterInstance" :input
                                       register-instance-request :output
                                       register-instance-result :errors
                                       (resource-not-found-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation register-rds-db-instance :shape-name
                                       "RegisterRdsDbInstance" :input
                                       register-rds-db-instance-request :output
                                       common-lisp:null :errors
                                       (resource-not-found-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation register-volume :shape-name
                                       "RegisterVolume" :input
                                       register-volume-request :output
                                       register-volume-result :errors
                                       (resource-not-found-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation set-load-based-auto-scaling :shape-name
                                       "SetLoadBasedAutoScaling" :input
                                       set-load-based-auto-scaling-request
                                       :output common-lisp:null :errors
                                       (resource-not-found-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation set-permission :shape-name
                                       "SetPermission" :input
                                       set-permission-request :output
                                       common-lisp:null :errors
                                       (resource-not-found-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation set-time-based-auto-scaling :shape-name
                                       "SetTimeBasedAutoScaling" :input
                                       set-time-based-auto-scaling-request
                                       :output common-lisp:null :errors
                                       (resource-not-found-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation start-instance :shape-name
                                       "StartInstance" :input
                                       start-instance-request :output
                                       common-lisp:null :errors
                                       (resource-not-found-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation start-stack :shape-name "StartStack"
                                       :input start-stack-request :output
                                       common-lisp:null :errors
                                       (resource-not-found-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation stop-instance :shape-name "StopInstance"
                                       :input stop-instance-request :output
                                       common-lisp:null :errors
                                       (resource-not-found-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation stop-stack :shape-name "StopStack"
                                       :input stop-stack-request :output
                                       common-lisp:null :errors
                                       (resource-not-found-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation tag-resource :shape-name "TagResource"
                                       :input tag-resource-request :output
                                       common-lisp:null :errors
                                       (resource-not-found-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation unassign-instance :shape-name
                                       "UnassignInstance" :input
                                       unassign-instance-request :output
                                       common-lisp:null :errors
                                       (resource-not-found-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation unassign-volume :shape-name
                                       "UnassignVolume" :input
                                       unassign-volume-request :output
                                       common-lisp:null :errors
                                       (resource-not-found-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation untag-resource :shape-name
                                       "UntagResource" :input
                                       untag-resource-request :output
                                       common-lisp:null :errors
                                       (resource-not-found-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation update-app :shape-name "UpdateApp"
                                       :input update-app-request :output
                                       common-lisp:null :errors
                                       (resource-not-found-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation update-elastic-ip :shape-name
                                       "UpdateElasticIp" :input
                                       update-elastic-ip-request :output
                                       common-lisp:null :errors
                                       (resource-not-found-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation update-instance :shape-name
                                       "UpdateInstance" :input
                                       update-instance-request :output
                                       common-lisp:null :errors
                                       (resource-not-found-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation update-layer :shape-name "UpdateLayer"
                                       :input update-layer-request :output
                                       common-lisp:null :errors
                                       (resource-not-found-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation update-my-user-profile :shape-name
                                       "UpdateMyUserProfile" :input
                                       update-my-user-profile-request :output
                                       common-lisp:null :errors
                                       (validation-exception))

(smithy/sdk/operation:define-operation update-rds-db-instance :shape-name
                                       "UpdateRdsDbInstance" :input
                                       update-rds-db-instance-request :output
                                       common-lisp:null :errors
                                       (resource-not-found-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation update-stack :shape-name "UpdateStack"
                                       :input update-stack-request :output
                                       common-lisp:null :errors
                                       (resource-not-found-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation update-user-profile :shape-name
                                       "UpdateUserProfile" :input
                                       update-user-profile-request :output
                                       common-lisp:null :errors
                                       (resource-not-found-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation update-volume :shape-name "UpdateVolume"
                                       :input update-volume-request :output
                                       common-lisp:null :errors
                                       (resource-not-found-exception
                                        validation-exception))
