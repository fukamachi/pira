(uiop/package:define-package #:pira/device-farm (:use)
                             (:export #:awsaccount-number #:account-settings
                              #:accounts-cleanup #:amazon-resource-name
                              #:amazon-resource-names #:android-paths
                              #:app-packages-cleanup #:artifact
                              #:artifact-category #:artifact-type #:artifacts
                              #:billing-method #:boolean #:cpu #:client-id
                              #:content-type #:counters #:create-device-pool
                              #:create-instance-profile
                              #:create-network-profile #:create-project
                              #:create-remote-access-session
                              #:create-remote-access-session-configuration
                              #:create-test-grid-project #:create-test-grid-url
                              #:create-upload #:create-vpceconfiguration
                              #:currency-code #:customer-artifact-paths
                              #:date-time #:delete-device-pool
                              #:delete-instance-profile
                              #:delete-network-profile #:delete-project
                              #:delete-remote-access-session #:delete-run
                              #:delete-test-grid-project #:delete-upload
                              #:delete-vpceconfiguration #:device
                              #:device-attribute #:device-availability
                              #:device-farm-arn #:device-farm-20150623
                              #:device-filter #:device-filter-attribute
                              #:device-filter-values #:device-filters
                              #:device-form-factor #:device-host-paths
                              #:device-instance #:device-instances
                              #:device-minutes #:device-platform #:device-pool
                              #:device-pool-compatibility-result
                              #:device-pool-compatibility-results
                              #:device-pool-type #:device-pools #:device-proxy
                              #:device-proxy-host #:device-proxy-port
                              #:device-selection-configuration
                              #:device-selection-result #:devices #:double
                              #:exception-message #:execution-configuration
                              #:execution-result #:execution-result-code
                              #:execution-status #:filter
                              #:get-account-settings #:get-device
                              #:get-device-instance #:get-device-pool
                              #:get-device-pool-compatibility
                              #:get-instance-profile #:get-job
                              #:get-network-profile #:get-offering-status
                              #:get-project #:get-remote-access-session
                              #:get-run #:get-suite #:get-test
                              #:get-test-grid-project #:get-test-grid-session
                              #:get-upload #:get-vpceconfiguration
                              #:host-address #:incompatibility-message
                              #:incompatibility-messages
                              #:install-to-remote-access-session
                              #:instance-labels #:instance-profile
                              #:instance-profiles #:instance-status #:integer
                              #:interaction-mode #:ios-paths #:job
                              #:job-timeout-minutes #:jobs #:list-artifacts
                              #:list-device-instances #:list-device-pools
                              #:list-devices #:list-instance-profiles
                              #:list-jobs #:list-network-profiles
                              #:list-offering-promotions
                              #:list-offering-transactions #:list-offerings
                              #:list-projects #:list-remote-access-sessions
                              #:list-runs #:list-samples #:list-suites
                              #:list-tags-for-resource
                              #:list-test-grid-projects
                              #:list-test-grid-session-actions
                              #:list-test-grid-session-artifacts
                              #:list-test-grid-sessions #:list-tests
                              #:list-unique-problems #:list-uploads
                              #:list-vpceconfigurations #:location #:long
                              #:max-page-size #:max-slot-map #:message
                              #:metadata #:monetary-amount #:name
                              #:network-profile #:network-profile-type
                              #:network-profiles #:non-empty-string #:offering
                              #:offering-identifier #:offering-promotion
                              #:offering-promotion-identifier
                              #:offering-promotions #:offering-status
                              #:offering-status-map #:offering-transaction
                              #:offering-transaction-type
                              #:offering-transactions #:offering-type
                              #:offerings #:package-ids #:pagination-token
                              #:percent-integer #:problem #:problem-detail
                              #:problems #:project #:projects
                              #:purchase-offering #:purchased-devices-map
                              #:radios #:recurring-charge
                              #:recurring-charge-frequency #:recurring-charges
                              #:remote-access-session #:remote-access-sessions
                              #:renew-offering #:resolution
                              #:resource-description #:resource-id
                              #:resource-name #:rule #:rule-operator #:rules
                              #:run #:runs #:sample #:sample-type #:samples
                              #:schedule-run #:schedule-run-configuration
                              #:schedule-run-test #:security-group-id
                              #:security-group-ids #:sensitive-string
                              #:sensitive-url #:service-dns-name
                              #:skip-app-resign #:ssh-public-key #:stop-job
                              #:stop-remote-access-session #:stop-run #:string
                              #:subnet-id #:subnet-ids #:suite #:suites #:tag
                              #:tag-key #:tag-key-list #:tag-list
                              #:tag-resource #:tag-value #:test
                              #:test-grid-project #:test-grid-projects
                              #:test-grid-session #:test-grid-session-action
                              #:test-grid-session-actions
                              #:test-grid-session-artifact
                              #:test-grid-session-artifact-category
                              #:test-grid-session-artifact-type
                              #:test-grid-session-artifacts
                              #:test-grid-session-status #:test-grid-sessions
                              #:test-grid-url-expires-in-seconds-input
                              #:test-grid-vpc-config #:test-parameters
                              #:test-type #:tests #:transaction-identifier
                              #:trial-minutes #:url #:unique-problem
                              #:unique-problems
                              #:unique-problems-by-execution-result-map
                              #:untag-resource #:update-device-instance
                              #:update-device-pool #:update-instance-profile
                              #:update-network-profile #:update-project
                              #:update-test-grid-project #:update-upload
                              #:update-vpceconfiguration #:upload
                              #:upload-category #:upload-status #:upload-type
                              #:uploads #:vpceconfiguration
                              #:vpceconfiguration-description
                              #:vpceconfiguration-name #:vpceconfigurations
                              #:vpceservice-name #:video-capture #:vpc-config
                              #:vpc-security-group-ids #:vpc-subnet-ids))
(common-lisp:in-package #:pira/device-farm)

(smithy/sdk/service:define-service device-farm-20150623 :shape-name
                                   "DeviceFarm_20150623" :version "2015-06-23"
                                   :title "AWS Device Farm" :operations
                                   '(create-device-pool create-instance-profile
                                     create-network-profile create-project
                                     create-remote-access-session
                                     create-test-grid-project
                                     create-test-grid-url create-upload
                                     create-vpceconfiguration
                                     delete-device-pool delete-instance-profile
                                     delete-network-profile delete-project
                                     delete-remote-access-session delete-run
                                     delete-test-grid-project delete-upload
                                     delete-vpceconfiguration
                                     get-account-settings get-device
                                     get-device-instance get-device-pool
                                     get-device-pool-compatibility
                                     get-instance-profile get-job
                                     get-network-profile get-offering-status
                                     get-project get-remote-access-session
                                     get-run get-suite get-test
                                     get-test-grid-project
                                     get-test-grid-session get-upload
                                     get-vpceconfiguration
                                     install-to-remote-access-session
                                     list-artifacts list-device-instances
                                     list-device-pools list-devices
                                     list-instance-profiles list-jobs
                                     list-network-profiles
                                     list-offering-promotions list-offerings
                                     list-offering-transactions list-projects
                                     list-remote-access-sessions list-runs
                                     list-samples list-suites
                                     list-tags-for-resource
                                     list-test-grid-projects
                                     list-test-grid-session-actions
                                     list-test-grid-session-artifacts
                                     list-test-grid-sessions list-tests
                                     list-unique-problems list-uploads
                                     list-vpceconfigurations purchase-offering
                                     renew-offering schedule-run stop-job
                                     stop-remote-access-session stop-run
                                     tag-resource untag-resource
                                     update-device-instance update-device-pool
                                     update-instance-profile
                                     update-network-profile update-project
                                     update-test-grid-project update-upload
                                     update-vpceconfiguration)
                                   :xml-namespace
                                   '(:uri
                                     "http://devicefarm.amazonaws.com/doc/2015-06-23/"
                                     :prefix common-lisp:nil)
                                   :traits
                                   '(("aws.api#service"
                                      ("sdkId" . "Device Farm")
                                      ("arnNamespace" . "devicefarm")
                                      ("cloudFormationName" . "DeviceFarm")
                                      ("cloudTrailEventSource"
                                       . "devicefarm.amazonaws.com")
                                      ("docId" . "devicefarm-2015-06-23")
                                      ("endpointPrefix" . "devicefarm"))
                                     ("aws.auth#sigv4" ("name" . "devicefarm"))
                                     ("aws.protocols#awsJson1_1")))

(smithy/sdk/shapes:define-type awsaccount-number smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure account-settings common-lisp:nil
                                    ((aws-account-number :target-type
                                      awsaccount-number :member-name
                                      "awsAccountNumber")
                                     (unmetered-devices :target-type
                                      purchased-devices-map :member-name
                                      "unmeteredDevices")
                                     (unmetered-remote-access-devices
                                      :target-type purchased-devices-map
                                      :member-name
                                      "unmeteredRemoteAccessDevices")
                                     (max-job-timeout-minutes :target-type
                                      job-timeout-minutes :member-name
                                      "maxJobTimeoutMinutes")
                                     (trial-minutes :target-type trial-minutes
                                      :member-name "trialMinutes")
                                     (max-slots :target-type max-slot-map
                                      :member-name "maxSlots")
                                     (default-job-timeout-minutes :target-type
                                      job-timeout-minutes :member-name
                                      "defaultJobTimeoutMinutes")
                                     (skip-app-resign :target-type
                                      skip-app-resign :member-name
                                      "skipAppResign"))
                                    (:shape-name "AccountSettings"))

(smithy/sdk/shapes:define-type accounts-cleanup smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-type amazon-resource-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list amazon-resource-names :member
                               amazon-resource-name)

(smithy/sdk/shapes:define-list android-paths :member string)

(smithy/sdk/shapes:define-type app-packages-cleanup
                               smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-error argument-exception common-lisp:nil
                                ((message :target-type message :member-name
                                  "message"))
                                (:shape-name "ArgumentException")
                                (:error-code 400))

(smithy/sdk/shapes:define-structure artifact common-lisp:nil
                                    ((arn :target-type amazon-resource-name
                                      :member-name "arn")
                                     (name :target-type name :member-name
                                      "name")
                                     (type :target-type artifact-type
                                      :member-name "type")
                                     (extension :target-type string
                                      :member-name "extension")
                                     (url :target-type url :member-name "url"))
                                    (:shape-name "Artifact"))

(smithy/sdk/shapes:define-enum artifact-category
    common-lisp:nil
  (:screenshot "SCREENSHOT")
  (:file "FILE")
  (:log "LOG"))

(smithy/sdk/shapes:define-enum artifact-type
    common-lisp:nil
  (:unknown "UNKNOWN")
  (:screenshot "SCREENSHOT")
  (:device-log "DEVICE_LOG")
  (:message-log "MESSAGE_LOG")
  (:video-log "VIDEO_LOG")
  (:result-log "RESULT_LOG")
  (:service-log "SERVICE_LOG")
  (:webkit-log "WEBKIT_LOG")
  (:instrumentation-output "INSTRUMENTATION_OUTPUT")
  (:exerciser-monkey-output "EXERCISER_MONKEY_OUTPUT")
  (:calabash-json-output "CALABASH_JSON_OUTPUT")
  (:calabash-pretty-output "CALABASH_PRETTY_OUTPUT")
  (:calabash-standard-output "CALABASH_STANDARD_OUTPUT")
  (:calabash-java-xml-output "CALABASH_JAVA_XML_OUTPUT")
  (:automation-output "AUTOMATION_OUTPUT")
  (:appium-server-output "APPIUM_SERVER_OUTPUT")
  (:appium-java-output "APPIUM_JAVA_OUTPUT")
  (:appium-java-xml-output "APPIUM_JAVA_XML_OUTPUT")
  (:appium-python-output "APPIUM_PYTHON_OUTPUT")
  (:appium-python-xml-output "APPIUM_PYTHON_XML_OUTPUT")
  (:explorer-event-log "EXPLORER_EVENT_LOG")
  (:explorer-summary-log "EXPLORER_SUMMARY_LOG")
  (:application-crash-report "APPLICATION_CRASH_REPORT")
  (:xctest-log "XCTEST_LOG")
  (:video "VIDEO")
  (:customer-artifact "CUSTOMER_ARTIFACT")
  (:customer-artifact-log "CUSTOMER_ARTIFACT_LOG")
  (:testspec-output "TESTSPEC_OUTPUT"))

(smithy/sdk/shapes:define-list artifacts :member artifact)

(smithy/sdk/shapes:define-enum billing-method
    common-lisp:nil
  (:metered "METERED")
  (:unmetered "UNMETERED"))

(smithy/sdk/shapes:define-type boolean smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-structure cpu common-lisp:nil
                                    ((frequency :target-type string
                                      :member-name "frequency")
                                     (architecture :target-type string
                                      :member-name "architecture")
                                     (clock :target-type double :member-name
                                      "clock"))
                                    (:shape-name "CPU"))

(smithy/sdk/shapes:define-error cannot-delete-exception common-lisp:nil
                                ((message :target-type message :member-name
                                  "message"))
                                (:shape-name "CannotDeleteException")
                                (:error-code 409))

(smithy/sdk/shapes:define-type client-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type content-type smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure counters common-lisp:nil
                                    ((total :target-type integer :member-name
                                      "total")
                                     (passed :target-type integer :member-name
                                      "passed")
                                     (failed :target-type integer :member-name
                                      "failed")
                                     (warned :target-type integer :member-name
                                      "warned")
                                     (errored :target-type integer :member-name
                                      "errored")
                                     (stopped :target-type integer :member-name
                                      "stopped")
                                     (skipped :target-type integer :member-name
                                      "skipped"))
                                    (:shape-name "Counters"))

(smithy/sdk/shapes:define-input create-device-pool-request common-lisp:nil
                                ((project-arn :target-type amazon-resource-name
                                  :required common-lisp:t :member-name
                                  "projectArn")
                                 (name :target-type name :required
                                  common-lisp:t :member-name "name")
                                 (description :target-type message :member-name
                                  "description")
                                 (rules :target-type rules :required
                                  common-lisp:t :member-name "rules")
                                 (max-devices :target-type integer :member-name
                                  "maxDevices"))
                                (:shape-name "CreateDevicePoolRequest"))

(smithy/sdk/shapes:define-output create-device-pool-result common-lisp:nil
                                 ((device-pool :target-type device-pool
                                   :member-name "devicePool"))
                                 (:shape-name "CreateDevicePoolResult"))

(smithy/sdk/shapes:define-input create-instance-profile-request common-lisp:nil
                                ((name :target-type name :required
                                  common-lisp:t :member-name "name")
                                 (description :target-type message :member-name
                                  "description")
                                 (package-cleanup :target-type boolean
                                  :member-name "packageCleanup")
                                 (exclude-app-packages-from-cleanup
                                  :target-type package-ids :member-name
                                  "excludeAppPackagesFromCleanup")
                                 (reboot-after-use :target-type boolean
                                  :member-name "rebootAfterUse"))
                                (:shape-name "CreateInstanceProfileRequest"))

(smithy/sdk/shapes:define-output create-instance-profile-result common-lisp:nil
                                 ((instance-profile :target-type
                                   instance-profile :member-name
                                   "instanceProfile"))
                                 (:shape-name "CreateInstanceProfileResult"))

(smithy/sdk/shapes:define-input create-network-profile-request common-lisp:nil
                                ((project-arn :target-type amazon-resource-name
                                  :required common-lisp:t :member-name
                                  "projectArn")
                                 (name :target-type name :required
                                  common-lisp:t :member-name "name")
                                 (description :target-type message :member-name
                                  "description")
                                 (type :target-type network-profile-type
                                  :member-name "type")
                                 (uplink-bandwidth-bits :target-type long
                                  :member-name "uplinkBandwidthBits")
                                 (downlink-bandwidth-bits :target-type long
                                  :member-name "downlinkBandwidthBits")
                                 (uplink-delay-ms :target-type long
                                  :member-name "uplinkDelayMs")
                                 (downlink-delay-ms :target-type long
                                  :member-name "downlinkDelayMs")
                                 (uplink-jitter-ms :target-type long
                                  :member-name "uplinkJitterMs")
                                 (downlink-jitter-ms :target-type long
                                  :member-name "downlinkJitterMs")
                                 (uplink-loss-percent :target-type
                                  percent-integer :member-name
                                  "uplinkLossPercent")
                                 (downlink-loss-percent :target-type
                                  percent-integer :member-name
                                  "downlinkLossPercent"))
                                (:shape-name "CreateNetworkProfileRequest"))

(smithy/sdk/shapes:define-output create-network-profile-result common-lisp:nil
                                 ((network-profile :target-type network-profile
                                   :member-name "networkProfile"))
                                 (:shape-name "CreateNetworkProfileResult"))

(smithy/sdk/shapes:define-input create-project-request common-lisp:nil
                                ((name :target-type name :required
                                  common-lisp:t :member-name "name")
                                 (default-job-timeout-minutes :target-type
                                  job-timeout-minutes :member-name
                                  "defaultJobTimeoutMinutes")
                                 (vpc-config :target-type vpc-config
                                  :member-name "vpcConfig"))
                                (:shape-name "CreateProjectRequest"))

(smithy/sdk/shapes:define-output create-project-result common-lisp:nil
                                 ((project :target-type project :member-name
                                   "project"))
                                 (:shape-name "CreateProjectResult"))

(smithy/sdk/shapes:define-structure create-remote-access-session-configuration
                                    common-lisp:nil
                                    ((billing-method :target-type
                                      billing-method :member-name
                                      "billingMethod")
                                     (vpce-configuration-arns :target-type
                                      amazon-resource-names :member-name
                                      "vpceConfigurationArns")
                                     (device-proxy :target-type device-proxy
                                      :member-name "deviceProxy"))
                                    (:shape-name
                                     "CreateRemoteAccessSessionConfiguration"))

(smithy/sdk/shapes:define-input create-remote-access-session-request
                                common-lisp:nil
                                ((project-arn :target-type amazon-resource-name
                                  :required common-lisp:t :member-name
                                  "projectArn")
                                 (device-arn :target-type amazon-resource-name
                                  :required common-lisp:t :member-name
                                  "deviceArn")
                                 (instance-arn :target-type
                                  amazon-resource-name :member-name
                                  "instanceArn")
                                 (ssh-public-key :target-type ssh-public-key
                                  :member-name "sshPublicKey")
                                 (remote-debug-enabled :target-type boolean
                                  :member-name "remoteDebugEnabled")
                                 (remote-record-enabled :target-type boolean
                                  :member-name "remoteRecordEnabled")
                                 (remote-record-app-arn :target-type
                                  amazon-resource-name :member-name
                                  "remoteRecordAppArn")
                                 (name :target-type name :member-name "name")
                                 (client-id :target-type client-id :member-name
                                  "clientId")
                                 (configuration :target-type
                                  create-remote-access-session-configuration
                                  :member-name "configuration")
                                 (interaction-mode :target-type
                                  interaction-mode :member-name
                                  "interactionMode")
                                 (skip-app-resign :target-type boolean
                                  :member-name "skipAppResign"))
                                (:shape-name
                                 "CreateRemoteAccessSessionRequest"))

(smithy/sdk/shapes:define-output create-remote-access-session-result
                                 common-lisp:nil
                                 ((remote-access-session :target-type
                                   remote-access-session :member-name
                                   "remoteAccessSession"))
                                 (:shape-name
                                  "CreateRemoteAccessSessionResult"))

(smithy/sdk/shapes:define-input create-test-grid-project-request
                                common-lisp:nil
                                ((name :target-type resource-name :required
                                  common-lisp:t :member-name "name")
                                 (description :target-type resource-description
                                  :member-name "description")
                                 (vpc-config :target-type test-grid-vpc-config
                                  :member-name "vpcConfig"))
                                (:shape-name "CreateTestGridProjectRequest"))

(smithy/sdk/shapes:define-output create-test-grid-project-result
                                 common-lisp:nil
                                 ((test-grid-project :target-type
                                   test-grid-project :member-name
                                   "testGridProject"))
                                 (:shape-name "CreateTestGridProjectResult"))

(smithy/sdk/shapes:define-input create-test-grid-url-request common-lisp:nil
                                ((project-arn :target-type device-farm-arn
                                  :required common-lisp:t :member-name
                                  "projectArn")
                                 (expires-in-seconds :target-type
                                  test-grid-url-expires-in-seconds-input
                                  :required common-lisp:t :member-name
                                  "expiresInSeconds"))
                                (:shape-name "CreateTestGridUrlRequest"))

(smithy/sdk/shapes:define-output create-test-grid-url-result common-lisp:nil
                                 ((url :target-type sensitive-string
                                   :member-name "url")
                                  (expires :target-type date-time :member-name
                                   "expires"))
                                 (:shape-name "CreateTestGridUrlResult"))

(smithy/sdk/shapes:define-input create-upload-request common-lisp:nil
                                ((project-arn :target-type amazon-resource-name
                                  :required common-lisp:t :member-name
                                  "projectArn")
                                 (name :target-type name :required
                                  common-lisp:t :member-name "name")
                                 (type :target-type upload-type :required
                                  common-lisp:t :member-name "type")
                                 (content-type :target-type content-type
                                  :member-name "contentType"))
                                (:shape-name "CreateUploadRequest"))

(smithy/sdk/shapes:define-output create-upload-result common-lisp:nil
                                 ((upload :target-type upload :member-name
                                   "upload"))
                                 (:shape-name "CreateUploadResult"))

(smithy/sdk/shapes:define-input create-vpceconfiguration-request
                                common-lisp:nil
                                ((vpce-configuration-name :target-type
                                  vpceconfiguration-name :required
                                  common-lisp:t :member-name
                                  "vpceConfigurationName")
                                 (vpce-service-name :target-type
                                  vpceservice-name :required common-lisp:t
                                  :member-name "vpceServiceName")
                                 (service-dns-name :target-type
                                  service-dns-name :required common-lisp:t
                                  :member-name "serviceDnsName")
                                 (vpce-configuration-description :target-type
                                  vpceconfiguration-description :member-name
                                  "vpceConfigurationDescription"))
                                (:shape-name "CreateVPCEConfigurationRequest"))

(smithy/sdk/shapes:define-output create-vpceconfiguration-result
                                 common-lisp:nil
                                 ((vpce-configuration :target-type
                                   vpceconfiguration :member-name
                                   "vpceConfiguration"))
                                 (:shape-name "CreateVPCEConfigurationResult"))

(smithy/sdk/shapes:define-enum currency-code
    common-lisp:nil
  (:usd "USD"))

(smithy/sdk/shapes:define-structure customer-artifact-paths common-lisp:nil
                                    ((ios-paths :target-type ios-paths
                                      :member-name "iosPaths")
                                     (android-paths :target-type android-paths
                                      :member-name "androidPaths")
                                     (device-host-paths :target-type
                                      device-host-paths :member-name
                                      "deviceHostPaths"))
                                    (:shape-name "CustomerArtifactPaths"))

(smithy/sdk/shapes:define-type date-time smithy/sdk/smithy-types:timestamp)

(smithy/sdk/shapes:define-input delete-device-pool-request common-lisp:nil
                                ((arn :target-type amazon-resource-name
                                  :required common-lisp:t :member-name "arn"))
                                (:shape-name "DeleteDevicePoolRequest"))

(smithy/sdk/shapes:define-output delete-device-pool-result common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "DeleteDevicePoolResult"))

(smithy/sdk/shapes:define-input delete-instance-profile-request common-lisp:nil
                                ((arn :target-type amazon-resource-name
                                  :required common-lisp:t :member-name "arn"))
                                (:shape-name "DeleteInstanceProfileRequest"))

(smithy/sdk/shapes:define-output delete-instance-profile-result common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "DeleteInstanceProfileResult"))

(smithy/sdk/shapes:define-input delete-network-profile-request common-lisp:nil
                                ((arn :target-type amazon-resource-name
                                  :required common-lisp:t :member-name "arn"))
                                (:shape-name "DeleteNetworkProfileRequest"))

(smithy/sdk/shapes:define-output delete-network-profile-result common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "DeleteNetworkProfileResult"))

(smithy/sdk/shapes:define-input delete-project-request common-lisp:nil
                                ((arn :target-type amazon-resource-name
                                  :required common-lisp:t :member-name "arn"))
                                (:shape-name "DeleteProjectRequest"))

(smithy/sdk/shapes:define-output delete-project-result common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "DeleteProjectResult"))

(smithy/sdk/shapes:define-input delete-remote-access-session-request
                                common-lisp:nil
                                ((arn :target-type amazon-resource-name
                                  :required common-lisp:t :member-name "arn"))
                                (:shape-name
                                 "DeleteRemoteAccessSessionRequest"))

(smithy/sdk/shapes:define-output delete-remote-access-session-result
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name
                                  "DeleteRemoteAccessSessionResult"))

(smithy/sdk/shapes:define-input delete-run-request common-lisp:nil
                                ((arn :target-type amazon-resource-name
                                  :required common-lisp:t :member-name "arn"))
                                (:shape-name "DeleteRunRequest"))

(smithy/sdk/shapes:define-output delete-run-result common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "DeleteRunResult"))

(smithy/sdk/shapes:define-input delete-test-grid-project-request
                                common-lisp:nil
                                ((project-arn :target-type device-farm-arn
                                  :required common-lisp:t :member-name
                                  "projectArn"))
                                (:shape-name "DeleteTestGridProjectRequest"))

(smithy/sdk/shapes:define-output delete-test-grid-project-result
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name "DeleteTestGridProjectResult"))

(smithy/sdk/shapes:define-input delete-upload-request common-lisp:nil
                                ((arn :target-type amazon-resource-name
                                  :required common-lisp:t :member-name "arn"))
                                (:shape-name "DeleteUploadRequest"))

(smithy/sdk/shapes:define-output delete-upload-result common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "DeleteUploadResult"))

(smithy/sdk/shapes:define-input delete-vpceconfiguration-request
                                common-lisp:nil
                                ((arn :target-type amazon-resource-name
                                  :required common-lisp:t :member-name "arn"))
                                (:shape-name "DeleteVPCEConfigurationRequest"))

(smithy/sdk/shapes:define-output delete-vpceconfiguration-result
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name "DeleteVPCEConfigurationResult"))

(smithy/sdk/shapes:define-structure device common-lisp:nil
                                    ((arn :target-type amazon-resource-name
                                      :member-name "arn")
                                     (name :target-type name :member-name
                                      "name")
                                     (manufacturer :target-type string
                                      :member-name "manufacturer")
                                     (model :target-type string :member-name
                                      "model")
                                     (model-id :target-type string :member-name
                                      "modelId")
                                     (form-factor :target-type
                                      device-form-factor :member-name
                                      "formFactor")
                                     (platform :target-type device-platform
                                      :member-name "platform")
                                     (os :target-type string :member-name "os")
                                     (cpu :target-type cpu :member-name "cpu")
                                     (resolution :target-type resolution
                                      :member-name "resolution")
                                     (heap-size :target-type long :member-name
                                      "heapSize")
                                     (memory :target-type long :member-name
                                      "memory")
                                     (image :target-type string :member-name
                                      "image")
                                     (carrier :target-type string :member-name
                                      "carrier")
                                     (radio :target-type string :member-name
                                      "radio")
                                     (remote-access-enabled :target-type
                                      boolean :member-name
                                      "remoteAccessEnabled")
                                     (remote-debug-enabled :target-type boolean
                                      :member-name "remoteDebugEnabled")
                                     (fleet-type :target-type string
                                      :member-name "fleetType")
                                     (fleet-name :target-type string
                                      :member-name "fleetName")
                                     (instances :target-type device-instances
                                      :member-name "instances")
                                     (availability :target-type
                                      device-availability :member-name
                                      "availability"))
                                    (:shape-name "Device"))

(smithy/sdk/shapes:define-enum device-attribute
    common-lisp:nil
  (:arn "ARN")
  (:platform "PLATFORM")
  (:form-factor "FORM_FACTOR")
  (:manufacturer "MANUFACTURER")
  (:remote-access-enabled "REMOTE_ACCESS_ENABLED")
  (:remote-debug-enabled "REMOTE_DEBUG_ENABLED")
  (:appium-version "APPIUM_VERSION")
  (:instance-arn "INSTANCE_ARN")
  (:instance-labels "INSTANCE_LABELS")
  (:fleet-type "FLEET_TYPE")
  (:os-version "OS_VERSION")
  (:model "MODEL")
  (:availability "AVAILABILITY"))

(smithy/sdk/shapes:define-enum device-availability
    common-lisp:nil
  (:temporary-not-available "TEMPORARY_NOT_AVAILABLE")
  (:busy "BUSY")
  (:available "AVAILABLE")
  (:highly-available "HIGHLY_AVAILABLE"))

(smithy/sdk/shapes:define-type device-farm-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure device-filter common-lisp:nil
                                    ((attribute :target-type
                                      device-filter-attribute :required
                                      common-lisp:t :member-name "attribute")
                                     (operator :target-type rule-operator
                                      :required common-lisp:t :member-name
                                      "operator")
                                     (values :target-type device-filter-values
                                      :required common-lisp:t :member-name
                                      "values"))
                                    (:shape-name "DeviceFilter"))

(smithy/sdk/shapes:define-enum device-filter-attribute
    common-lisp:nil
  (:arn "ARN")
  (:platform "PLATFORM")
  (:os-version "OS_VERSION")
  (:model "MODEL")
  (:availability "AVAILABILITY")
  (:form-factor "FORM_FACTOR")
  (:manufacturer "MANUFACTURER")
  (:remote-access-enabled "REMOTE_ACCESS_ENABLED")
  (:remote-debug-enabled "REMOTE_DEBUG_ENABLED")
  (:instance-arn "INSTANCE_ARN")
  (:instance-labels "INSTANCE_LABELS")
  (:fleet-type "FLEET_TYPE"))

(smithy/sdk/shapes:define-list device-filter-values :member string)

(smithy/sdk/shapes:define-list device-filters :member device-filter)

(smithy/sdk/shapes:define-enum device-form-factor
    common-lisp:nil
  (:phone "PHONE")
  (:tablet "TABLET"))

(smithy/sdk/shapes:define-list device-host-paths :member string)

(smithy/sdk/shapes:define-structure device-instance common-lisp:nil
                                    ((arn :target-type amazon-resource-name
                                      :member-name "arn")
                                     (device-arn :target-type
                                      amazon-resource-name :member-name
                                      "deviceArn")
                                     (labels :target-type instance-labels
                                      :member-name "labels")
                                     (status :target-type instance-status
                                      :member-name "status")
                                     (udid :target-type string :member-name
                                      "udid")
                                     (instance-profile :target-type
                                      instance-profile :member-name
                                      "instanceProfile"))
                                    (:shape-name "DeviceInstance"))

(smithy/sdk/shapes:define-list device-instances :member device-instance)

(smithy/sdk/shapes:define-structure device-minutes common-lisp:nil
                                    ((total :target-type double :member-name
                                      "total")
                                     (metered :target-type double :member-name
                                      "metered")
                                     (unmetered :target-type double
                                      :member-name "unmetered"))
                                    (:shape-name "DeviceMinutes"))

(smithy/sdk/shapes:define-enum device-platform
    common-lisp:nil
  (:android "ANDROID")
  (:ios "IOS"))

(smithy/sdk/shapes:define-structure device-pool common-lisp:nil
                                    ((arn :target-type amazon-resource-name
                                      :member-name "arn")
                                     (name :target-type name :member-name
                                      "name")
                                     (description :target-type message
                                      :member-name "description")
                                     (type :target-type device-pool-type
                                      :member-name "type")
                                     (rules :target-type rules :member-name
                                      "rules")
                                     (max-devices :target-type integer
                                      :member-name "maxDevices"))
                                    (:shape-name "DevicePool"))

(smithy/sdk/shapes:define-structure device-pool-compatibility-result
                                    common-lisp:nil
                                    ((device :target-type device :member-name
                                      "device")
                                     (compatible :target-type boolean
                                      :member-name "compatible")
                                     (incompatibility-messages :target-type
                                      incompatibility-messages :member-name
                                      "incompatibilityMessages"))
                                    (:shape-name
                                     "DevicePoolCompatibilityResult"))

(smithy/sdk/shapes:define-list device-pool-compatibility-results :member
                               device-pool-compatibility-result)

(smithy/sdk/shapes:define-enum device-pool-type
    common-lisp:nil
  (:curated "CURATED")
  (:private "PRIVATE"))

(smithy/sdk/shapes:define-list device-pools :member device-pool)

(smithy/sdk/shapes:define-structure device-proxy common-lisp:nil
                                    ((host :target-type device-proxy-host
                                      :required common-lisp:t :member-name
                                      "host")
                                     (port :target-type device-proxy-port
                                      :required common-lisp:t :member-name
                                      "port"))
                                    (:shape-name "DeviceProxy"))

(smithy/sdk/shapes:define-type device-proxy-host smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type device-proxy-port
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-structure device-selection-configuration
                                    common-lisp:nil
                                    ((filters :target-type device-filters
                                      :required common-lisp:t :member-name
                                      "filters")
                                     (max-devices :target-type integer
                                      :required common-lisp:t :member-name
                                      "maxDevices"))
                                    (:shape-name
                                     "DeviceSelectionConfiguration"))

(smithy/sdk/shapes:define-structure device-selection-result common-lisp:nil
                                    ((filters :target-type device-filters
                                      :member-name "filters")
                                     (matched-devices-count :target-type
                                      integer :member-name
                                      "matchedDevicesCount")
                                     (max-devices :target-type integer
                                      :member-name "maxDevices"))
                                    (:shape-name "DeviceSelectionResult"))

(smithy/sdk/shapes:define-list devices :member device)

(smithy/sdk/shapes:define-type double smithy/sdk/smithy-types:double)

(smithy/sdk/shapes:define-type exception-message smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure execution-configuration common-lisp:nil
                                    ((job-timeout-minutes :target-type
                                      job-timeout-minutes :member-name
                                      "jobTimeoutMinutes")
                                     (accounts-cleanup :target-type
                                      accounts-cleanup :member-name
                                      "accountsCleanup")
                                     (app-packages-cleanup :target-type
                                      app-packages-cleanup :member-name
                                      "appPackagesCleanup")
                                     (video-capture :target-type video-capture
                                      :member-name "videoCapture")
                                     (skip-app-resign :target-type
                                      skip-app-resign :member-name
                                      "skipAppResign"))
                                    (:shape-name "ExecutionConfiguration"))

(smithy/sdk/shapes:define-enum execution-result
    common-lisp:nil
  (:pending "PENDING")
  (:passed "PASSED")
  (:warned "WARNED")
  (:failed "FAILED")
  (:skipped "SKIPPED")
  (:errored "ERRORED")
  (:stopped "STOPPED"))

(smithy/sdk/shapes:define-enum execution-result-code
    common-lisp:nil
  (:parsing-failed "PARSING_FAILED")
  (:vpc-endpoint-setup-failed "VPC_ENDPOINT_SETUP_FAILED"))

(smithy/sdk/shapes:define-enum execution-status
    common-lisp:nil
  (:pending "PENDING")
  (:pending-concurrnecy "PENDING_CONCURRENCY")
  (:pending-device "PENDING_DEVICE")
  (:processing "PROCESSING")
  (:scheduling "SCHEDULING")
  (:preparing "PREPARING")
  (:running "RUNNING")
  (:completed "COMPLETED")
  (:stopping "STOPPING"))

(smithy/sdk/shapes:define-type filter smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input get-account-settings-request common-lisp:nil
                                common-lisp:nil
                                (:shape-name "GetAccountSettingsRequest"))

(smithy/sdk/shapes:define-output get-account-settings-result common-lisp:nil
                                 ((account-settings :target-type
                                   account-settings :member-name
                                   "accountSettings"))
                                 (:shape-name "GetAccountSettingsResult"))

(smithy/sdk/shapes:define-input get-device-instance-request common-lisp:nil
                                ((arn :target-type amazon-resource-name
                                  :required common-lisp:t :member-name "arn"))
                                (:shape-name "GetDeviceInstanceRequest"))

(smithy/sdk/shapes:define-output get-device-instance-result common-lisp:nil
                                 ((device-instance :target-type device-instance
                                   :member-name "deviceInstance"))
                                 (:shape-name "GetDeviceInstanceResult"))

(smithy/sdk/shapes:define-input get-device-pool-compatibility-request
                                common-lisp:nil
                                ((device-pool-arn :target-type
                                  amazon-resource-name :required common-lisp:t
                                  :member-name "devicePoolArn")
                                 (app-arn :target-type amazon-resource-name
                                  :member-name "appArn")
                                 (test-type :target-type test-type :member-name
                                  "testType")
                                 (test :target-type schedule-run-test
                                  :member-name "test")
                                 (configuration :target-type
                                  schedule-run-configuration :member-name
                                  "configuration")
                                 (project-arn :target-type amazon-resource-name
                                  :member-name "projectArn"))
                                (:shape-name
                                 "GetDevicePoolCompatibilityRequest"))

(smithy/sdk/shapes:define-output get-device-pool-compatibility-result
                                 common-lisp:nil
                                 ((compatible-devices :target-type
                                   device-pool-compatibility-results
                                   :member-name "compatibleDevices")
                                  (incompatible-devices :target-type
                                   device-pool-compatibility-results
                                   :member-name "incompatibleDevices"))
                                 (:shape-name
                                  "GetDevicePoolCompatibilityResult"))

(smithy/sdk/shapes:define-input get-device-pool-request common-lisp:nil
                                ((arn :target-type amazon-resource-name
                                  :required common-lisp:t :member-name "arn"))
                                (:shape-name "GetDevicePoolRequest"))

(smithy/sdk/shapes:define-output get-device-pool-result common-lisp:nil
                                 ((device-pool :target-type device-pool
                                   :member-name "devicePool"))
                                 (:shape-name "GetDevicePoolResult"))

(smithy/sdk/shapes:define-input get-device-request common-lisp:nil
                                ((arn :target-type amazon-resource-name
                                  :required common-lisp:t :member-name "arn"))
                                (:shape-name "GetDeviceRequest"))

(smithy/sdk/shapes:define-output get-device-result common-lisp:nil
                                 ((device :target-type device :member-name
                                   "device"))
                                 (:shape-name "GetDeviceResult"))

(smithy/sdk/shapes:define-input get-instance-profile-request common-lisp:nil
                                ((arn :target-type amazon-resource-name
                                  :required common-lisp:t :member-name "arn"))
                                (:shape-name "GetInstanceProfileRequest"))

(smithy/sdk/shapes:define-output get-instance-profile-result common-lisp:nil
                                 ((instance-profile :target-type
                                   instance-profile :member-name
                                   "instanceProfile"))
                                 (:shape-name "GetInstanceProfileResult"))

(smithy/sdk/shapes:define-input get-job-request common-lisp:nil
                                ((arn :target-type amazon-resource-name
                                  :required common-lisp:t :member-name "arn"))
                                (:shape-name "GetJobRequest"))

(smithy/sdk/shapes:define-output get-job-result common-lisp:nil
                                 ((job :target-type job :member-name "job"))
                                 (:shape-name "GetJobResult"))

(smithy/sdk/shapes:define-input get-network-profile-request common-lisp:nil
                                ((arn :target-type amazon-resource-name
                                  :required common-lisp:t :member-name "arn"))
                                (:shape-name "GetNetworkProfileRequest"))

(smithy/sdk/shapes:define-output get-network-profile-result common-lisp:nil
                                 ((network-profile :target-type network-profile
                                   :member-name "networkProfile"))
                                 (:shape-name "GetNetworkProfileResult"))

(smithy/sdk/shapes:define-input get-offering-status-request common-lisp:nil
                                ((next-token :target-type pagination-token
                                  :member-name "nextToken"))
                                (:shape-name "GetOfferingStatusRequest"))

(smithy/sdk/shapes:define-output get-offering-status-result common-lisp:nil
                                 ((current :target-type offering-status-map
                                   :member-name "current")
                                  (next-period :target-type offering-status-map
                                   :member-name "nextPeriod")
                                  (next-token :target-type pagination-token
                                   :member-name "nextToken"))
                                 (:shape-name "GetOfferingStatusResult"))

(smithy/sdk/shapes:define-input get-project-request common-lisp:nil
                                ((arn :target-type amazon-resource-name
                                  :required common-lisp:t :member-name "arn"))
                                (:shape-name "GetProjectRequest"))

(smithy/sdk/shapes:define-output get-project-result common-lisp:nil
                                 ((project :target-type project :member-name
                                   "project"))
                                 (:shape-name "GetProjectResult"))

(smithy/sdk/shapes:define-input get-remote-access-session-request
                                common-lisp:nil
                                ((arn :target-type amazon-resource-name
                                  :required common-lisp:t :member-name "arn"))
                                (:shape-name "GetRemoteAccessSessionRequest"))

(smithy/sdk/shapes:define-output get-remote-access-session-result
                                 common-lisp:nil
                                 ((remote-access-session :target-type
                                   remote-access-session :member-name
                                   "remoteAccessSession"))
                                 (:shape-name "GetRemoteAccessSessionResult"))

(smithy/sdk/shapes:define-input get-run-request common-lisp:nil
                                ((arn :target-type amazon-resource-name
                                  :required common-lisp:t :member-name "arn"))
                                (:shape-name "GetRunRequest"))

(smithy/sdk/shapes:define-output get-run-result common-lisp:nil
                                 ((run :target-type run :member-name "run"))
                                 (:shape-name "GetRunResult"))

(smithy/sdk/shapes:define-input get-suite-request common-lisp:nil
                                ((arn :target-type amazon-resource-name
                                  :required common-lisp:t :member-name "arn"))
                                (:shape-name "GetSuiteRequest"))

(smithy/sdk/shapes:define-output get-suite-result common-lisp:nil
                                 ((suite :target-type suite :member-name
                                   "suite"))
                                 (:shape-name "GetSuiteResult"))

(smithy/sdk/shapes:define-input get-test-grid-project-request common-lisp:nil
                                ((project-arn :target-type device-farm-arn
                                  :required common-lisp:t :member-name
                                  "projectArn"))
                                (:shape-name "GetTestGridProjectRequest"))

(smithy/sdk/shapes:define-output get-test-grid-project-result common-lisp:nil
                                 ((test-grid-project :target-type
                                   test-grid-project :member-name
                                   "testGridProject"))
                                 (:shape-name "GetTestGridProjectResult"))

(smithy/sdk/shapes:define-input get-test-grid-session-request common-lisp:nil
                                ((project-arn :target-type device-farm-arn
                                  :member-name "projectArn")
                                 (session-id :target-type resource-id
                                  :member-name "sessionId")
                                 (session-arn :target-type device-farm-arn
                                  :member-name "sessionArn"))
                                (:shape-name "GetTestGridSessionRequest"))

(smithy/sdk/shapes:define-output get-test-grid-session-result common-lisp:nil
                                 ((test-grid-session :target-type
                                   test-grid-session :member-name
                                   "testGridSession"))
                                 (:shape-name "GetTestGridSessionResult"))

(smithy/sdk/shapes:define-input get-test-request common-lisp:nil
                                ((arn :target-type amazon-resource-name
                                  :required common-lisp:t :member-name "arn"))
                                (:shape-name "GetTestRequest"))

(smithy/sdk/shapes:define-output get-test-result common-lisp:nil
                                 ((test :target-type test :member-name "test"))
                                 (:shape-name "GetTestResult"))

(smithy/sdk/shapes:define-input get-upload-request common-lisp:nil
                                ((arn :target-type amazon-resource-name
                                  :required common-lisp:t :member-name "arn"))
                                (:shape-name "GetUploadRequest"))

(smithy/sdk/shapes:define-output get-upload-result common-lisp:nil
                                 ((upload :target-type upload :member-name
                                   "upload"))
                                 (:shape-name "GetUploadResult"))

(smithy/sdk/shapes:define-input get-vpceconfiguration-request common-lisp:nil
                                ((arn :target-type amazon-resource-name
                                  :required common-lisp:t :member-name "arn"))
                                (:shape-name "GetVPCEConfigurationRequest"))

(smithy/sdk/shapes:define-output get-vpceconfiguration-result common-lisp:nil
                                 ((vpce-configuration :target-type
                                   vpceconfiguration :member-name
                                   "vpceConfiguration"))
                                 (:shape-name "GetVPCEConfigurationResult"))

(smithy/sdk/shapes:define-type host-address smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error idempotency-exception common-lisp:nil
                                ((message :target-type message :member-name
                                  "message"))
                                (:shape-name "IdempotencyException")
                                (:error-code 400))

(smithy/sdk/shapes:define-structure incompatibility-message common-lisp:nil
                                    ((message :target-type message :member-name
                                      "message")
                                     (type :target-type device-attribute
                                      :member-name "type"))
                                    (:shape-name "IncompatibilityMessage"))

(smithy/sdk/shapes:define-list incompatibility-messages :member
                               incompatibility-message)

(smithy/sdk/shapes:define-input install-to-remote-access-session-request
                                common-lisp:nil
                                ((remote-access-session-arn :target-type
                                  amazon-resource-name :required common-lisp:t
                                  :member-name "remoteAccessSessionArn")
                                 (app-arn :target-type amazon-resource-name
                                  :required common-lisp:t :member-name
                                  "appArn"))
                                (:shape-name
                                 "InstallToRemoteAccessSessionRequest"))

(smithy/sdk/shapes:define-output install-to-remote-access-session-result
                                 common-lisp:nil
                                 ((app-upload :target-type upload :member-name
                                   "appUpload"))
                                 (:shape-name
                                  "InstallToRemoteAccessSessionResult"))

(smithy/sdk/shapes:define-list instance-labels :member string)

(smithy/sdk/shapes:define-structure instance-profile common-lisp:nil
                                    ((arn :target-type amazon-resource-name
                                      :member-name "arn")
                                     (package-cleanup :target-type boolean
                                      :member-name "packageCleanup")
                                     (exclude-app-packages-from-cleanup
                                      :target-type package-ids :member-name
                                      "excludeAppPackagesFromCleanup")
                                     (reboot-after-use :target-type boolean
                                      :member-name "rebootAfterUse")
                                     (name :target-type name :member-name
                                      "name")
                                     (description :target-type message
                                      :member-name "description"))
                                    (:shape-name "InstanceProfile"))

(smithy/sdk/shapes:define-list instance-profiles :member instance-profile)

(smithy/sdk/shapes:define-enum instance-status
    common-lisp:nil
  (:in-use "IN_USE")
  (:preparing "PREPARING")
  (:available "AVAILABLE")
  (:not-available "NOT_AVAILABLE"))

(smithy/sdk/shapes:define-type integer smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-enum interaction-mode
    common-lisp:nil
  (:interactive "INTERACTIVE")
  (:no-video "NO_VIDEO")
  (:video-only "VIDEO_ONLY"))

(smithy/sdk/shapes:define-error internal-service-exception common-lisp:nil
                                ((message :target-type message :member-name
                                  "message"))
                                (:shape-name "InternalServiceException")
                                (:error-code 500))

(smithy/sdk/shapes:define-error invalid-operation-exception common-lisp:nil
                                ((message :target-type message :member-name
                                  "message"))
                                (:shape-name "InvalidOperationException")
                                (:error-code 400))

(smithy/sdk/shapes:define-list ios-paths :member string)

(smithy/sdk/shapes:define-structure job common-lisp:nil
                                    ((arn :target-type amazon-resource-name
                                      :member-name "arn")
                                     (name :target-type name :member-name
                                      "name")
                                     (type :target-type test-type :member-name
                                      "type")
                                     (created :target-type date-time
                                      :member-name "created")
                                     (status :target-type execution-status
                                      :member-name "status")
                                     (result :target-type execution-result
                                      :member-name "result")
                                     (started :target-type date-time
                                      :member-name "started")
                                     (stopped :target-type date-time
                                      :member-name "stopped")
                                     (counters :target-type counters
                                      :member-name "counters")
                                     (message :target-type message :member-name
                                      "message")
                                     (device :target-type device :member-name
                                      "device")
                                     (instance-arn :target-type
                                      amazon-resource-name :member-name
                                      "instanceArn")
                                     (device-minutes :target-type
                                      device-minutes :member-name
                                      "deviceMinutes")
                                     (video-endpoint :target-type string
                                      :member-name "videoEndpoint")
                                     (video-capture :target-type video-capture
                                      :member-name "videoCapture"))
                                    (:shape-name "Job"))

(smithy/sdk/shapes:define-type job-timeout-minutes
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-list jobs :member job)

(smithy/sdk/shapes:define-error limit-exceeded-exception common-lisp:nil
                                ((message :target-type message :member-name
                                  "message"))
                                (:shape-name "LimitExceededException")
                                (:error-code 400))

(smithy/sdk/shapes:define-input list-artifacts-request common-lisp:nil
                                ((arn :target-type amazon-resource-name
                                  :required common-lisp:t :member-name "arn")
                                 (type :target-type artifact-category :required
                                  common-lisp:t :member-name "type")
                                 (next-token :target-type pagination-token
                                  :member-name "nextToken"))
                                (:shape-name "ListArtifactsRequest"))

(smithy/sdk/shapes:define-output list-artifacts-result common-lisp:nil
                                 ((artifacts :target-type artifacts
                                   :member-name "artifacts")
                                  (next-token :target-type pagination-token
                                   :member-name "nextToken"))
                                 (:shape-name "ListArtifactsResult"))

(smithy/sdk/shapes:define-input list-device-instances-request common-lisp:nil
                                ((max-results :target-type integer :member-name
                                  "maxResults")
                                 (next-token :target-type pagination-token
                                  :member-name "nextToken"))
                                (:shape-name "ListDeviceInstancesRequest"))

(smithy/sdk/shapes:define-output list-device-instances-result common-lisp:nil
                                 ((device-instances :target-type
                                   device-instances :member-name
                                   "deviceInstances")
                                  (next-token :target-type pagination-token
                                   :member-name "nextToken"))
                                 (:shape-name "ListDeviceInstancesResult"))

(smithy/sdk/shapes:define-input list-device-pools-request common-lisp:nil
                                ((arn :target-type amazon-resource-name
                                  :required common-lisp:t :member-name "arn")
                                 (type :target-type device-pool-type
                                  :member-name "type")
                                 (next-token :target-type pagination-token
                                  :member-name "nextToken"))
                                (:shape-name "ListDevicePoolsRequest"))

(smithy/sdk/shapes:define-output list-device-pools-result common-lisp:nil
                                 ((device-pools :target-type device-pools
                                   :member-name "devicePools")
                                  (next-token :target-type pagination-token
                                   :member-name "nextToken"))
                                 (:shape-name "ListDevicePoolsResult"))

(smithy/sdk/shapes:define-input list-devices-request common-lisp:nil
                                ((arn :target-type amazon-resource-name
                                  :member-name "arn")
                                 (next-token :target-type pagination-token
                                  :member-name "nextToken")
                                 (filters :target-type device-filters
                                  :member-name "filters"))
                                (:shape-name "ListDevicesRequest"))

(smithy/sdk/shapes:define-output list-devices-result common-lisp:nil
                                 ((devices :target-type devices :member-name
                                   "devices")
                                  (next-token :target-type pagination-token
                                   :member-name "nextToken"))
                                 (:shape-name "ListDevicesResult"))

(smithy/sdk/shapes:define-input list-instance-profiles-request common-lisp:nil
                                ((max-results :target-type integer :member-name
                                  "maxResults")
                                 (next-token :target-type pagination-token
                                  :member-name "nextToken"))
                                (:shape-name "ListInstanceProfilesRequest"))

(smithy/sdk/shapes:define-output list-instance-profiles-result common-lisp:nil
                                 ((instance-profiles :target-type
                                   instance-profiles :member-name
                                   "instanceProfiles")
                                  (next-token :target-type pagination-token
                                   :member-name "nextToken"))
                                 (:shape-name "ListInstanceProfilesResult"))

(smithy/sdk/shapes:define-input list-jobs-request common-lisp:nil
                                ((arn :target-type amazon-resource-name
                                  :required common-lisp:t :member-name "arn")
                                 (next-token :target-type pagination-token
                                  :member-name "nextToken"))
                                (:shape-name "ListJobsRequest"))

(smithy/sdk/shapes:define-output list-jobs-result common-lisp:nil
                                 ((jobs :target-type jobs :member-name "jobs")
                                  (next-token :target-type pagination-token
                                   :member-name "nextToken"))
                                 (:shape-name "ListJobsResult"))

(smithy/sdk/shapes:define-input list-network-profiles-request common-lisp:nil
                                ((arn :target-type amazon-resource-name
                                  :required common-lisp:t :member-name "arn")
                                 (type :target-type network-profile-type
                                  :member-name "type")
                                 (next-token :target-type pagination-token
                                  :member-name "nextToken"))
                                (:shape-name "ListNetworkProfilesRequest"))

(smithy/sdk/shapes:define-output list-network-profiles-result common-lisp:nil
                                 ((network-profiles :target-type
                                   network-profiles :member-name
                                   "networkProfiles")
                                  (next-token :target-type pagination-token
                                   :member-name "nextToken"))
                                 (:shape-name "ListNetworkProfilesResult"))

(smithy/sdk/shapes:define-input list-offering-promotions-request
                                common-lisp:nil
                                ((next-token :target-type pagination-token
                                  :member-name "nextToken"))
                                (:shape-name "ListOfferingPromotionsRequest"))

(smithy/sdk/shapes:define-output list-offering-promotions-result
                                 common-lisp:nil
                                 ((offering-promotions :target-type
                                   offering-promotions :member-name
                                   "offeringPromotions")
                                  (next-token :target-type pagination-token
                                   :member-name "nextToken"))
                                 (:shape-name "ListOfferingPromotionsResult"))

(smithy/sdk/shapes:define-input list-offering-transactions-request
                                common-lisp:nil
                                ((next-token :target-type pagination-token
                                  :member-name "nextToken"))
                                (:shape-name "ListOfferingTransactionsRequest"))

(smithy/sdk/shapes:define-output list-offering-transactions-result
                                 common-lisp:nil
                                 ((offering-transactions :target-type
                                   offering-transactions :member-name
                                   "offeringTransactions")
                                  (next-token :target-type pagination-token
                                   :member-name "nextToken"))
                                 (:shape-name "ListOfferingTransactionsResult"))

(smithy/sdk/shapes:define-input list-offerings-request common-lisp:nil
                                ((next-token :target-type pagination-token
                                  :member-name "nextToken"))
                                (:shape-name "ListOfferingsRequest"))

(smithy/sdk/shapes:define-output list-offerings-result common-lisp:nil
                                 ((offerings :target-type offerings
                                   :member-name "offerings")
                                  (next-token :target-type pagination-token
                                   :member-name "nextToken"))
                                 (:shape-name "ListOfferingsResult"))

(smithy/sdk/shapes:define-input list-projects-request common-lisp:nil
                                ((arn :target-type amazon-resource-name
                                  :member-name "arn")
                                 (next-token :target-type pagination-token
                                  :member-name "nextToken"))
                                (:shape-name "ListProjectsRequest"))

(smithy/sdk/shapes:define-output list-projects-result common-lisp:nil
                                 ((projects :target-type projects :member-name
                                   "projects")
                                  (next-token :target-type pagination-token
                                   :member-name "nextToken"))
                                 (:shape-name "ListProjectsResult"))

(smithy/sdk/shapes:define-input list-remote-access-sessions-request
                                common-lisp:nil
                                ((arn :target-type amazon-resource-name
                                  :required common-lisp:t :member-name "arn")
                                 (next-token :target-type pagination-token
                                  :member-name "nextToken"))
                                (:shape-name "ListRemoteAccessSessionsRequest"))

(smithy/sdk/shapes:define-output list-remote-access-sessions-result
                                 common-lisp:nil
                                 ((remote-access-sessions :target-type
                                   remote-access-sessions :member-name
                                   "remoteAccessSessions")
                                  (next-token :target-type pagination-token
                                   :member-name "nextToken"))
                                 (:shape-name "ListRemoteAccessSessionsResult"))

(smithy/sdk/shapes:define-input list-runs-request common-lisp:nil
                                ((arn :target-type amazon-resource-name
                                  :required common-lisp:t :member-name "arn")
                                 (next-token :target-type pagination-token
                                  :member-name "nextToken"))
                                (:shape-name "ListRunsRequest"))

(smithy/sdk/shapes:define-output list-runs-result common-lisp:nil
                                 ((runs :target-type runs :member-name "runs")
                                  (next-token :target-type pagination-token
                                   :member-name "nextToken"))
                                 (:shape-name "ListRunsResult"))

(smithy/sdk/shapes:define-input list-samples-request common-lisp:nil
                                ((arn :target-type amazon-resource-name
                                  :required common-lisp:t :member-name "arn")
                                 (next-token :target-type pagination-token
                                  :member-name "nextToken"))
                                (:shape-name "ListSamplesRequest"))

(smithy/sdk/shapes:define-output list-samples-result common-lisp:nil
                                 ((samples :target-type samples :member-name
                                   "samples")
                                  (next-token :target-type pagination-token
                                   :member-name "nextToken"))
                                 (:shape-name "ListSamplesResult"))

(smithy/sdk/shapes:define-input list-suites-request common-lisp:nil
                                ((arn :target-type amazon-resource-name
                                  :required common-lisp:t :member-name "arn")
                                 (next-token :target-type pagination-token
                                  :member-name "nextToken"))
                                (:shape-name "ListSuitesRequest"))

(smithy/sdk/shapes:define-output list-suites-result common-lisp:nil
                                 ((suites :target-type suites :member-name
                                   "suites")
                                  (next-token :target-type pagination-token
                                   :member-name "nextToken"))
                                 (:shape-name "ListSuitesResult"))

(smithy/sdk/shapes:define-input list-tags-for-resource-request common-lisp:nil
                                ((resource-arn :target-type device-farm-arn
                                  :required common-lisp:t :member-name
                                  "ResourceARN"))
                                (:shape-name "ListTagsForResourceRequest"))

(smithy/sdk/shapes:define-output list-tags-for-resource-response
                                 common-lisp:nil
                                 ((tags :target-type tag-list :member-name
                                   "Tags"))
                                 (:shape-name "ListTagsForResourceResponse"))

(smithy/sdk/shapes:define-input list-test-grid-projects-request common-lisp:nil
                                ((max-result :target-type max-page-size
                                  :member-name "maxResult")
                                 (next-token :target-type pagination-token
                                  :member-name "nextToken"))
                                (:shape-name "ListTestGridProjectsRequest"))

(smithy/sdk/shapes:define-output list-test-grid-projects-result common-lisp:nil
                                 ((test-grid-projects :target-type
                                   test-grid-projects :member-name
                                   "testGridProjects")
                                  (next-token :target-type pagination-token
                                   :member-name "nextToken"))
                                 (:shape-name "ListTestGridProjectsResult"))

(smithy/sdk/shapes:define-input list-test-grid-session-actions-request
                                common-lisp:nil
                                ((session-arn :target-type device-farm-arn
                                  :required common-lisp:t :member-name
                                  "sessionArn")
                                 (max-result :target-type max-page-size
                                  :member-name "maxResult")
                                 (next-token :target-type pagination-token
                                  :member-name "nextToken"))
                                (:shape-name
                                 "ListTestGridSessionActionsRequest"))

(smithy/sdk/shapes:define-output list-test-grid-session-actions-result
                                 common-lisp:nil
                                 ((actions :target-type
                                   test-grid-session-actions :member-name
                                   "actions")
                                  (next-token :target-type pagination-token
                                   :member-name "nextToken"))
                                 (:shape-name
                                  "ListTestGridSessionActionsResult"))

(smithy/sdk/shapes:define-input list-test-grid-session-artifacts-request
                                common-lisp:nil
                                ((session-arn :target-type device-farm-arn
                                  :required common-lisp:t :member-name
                                  "sessionArn")
                                 (type :target-type
                                  test-grid-session-artifact-category
                                  :member-name "type")
                                 (max-result :target-type max-page-size
                                  :member-name "maxResult")
                                 (next-token :target-type pagination-token
                                  :member-name "nextToken"))
                                (:shape-name
                                 "ListTestGridSessionArtifactsRequest"))

(smithy/sdk/shapes:define-output list-test-grid-session-artifacts-result
                                 common-lisp:nil
                                 ((artifacts :target-type
                                   test-grid-session-artifacts :member-name
                                   "artifacts")
                                  (next-token :target-type pagination-token
                                   :member-name "nextToken"))
                                 (:shape-name
                                  "ListTestGridSessionArtifactsResult"))

(smithy/sdk/shapes:define-input list-test-grid-sessions-request common-lisp:nil
                                ((project-arn :target-type device-farm-arn
                                  :required common-lisp:t :member-name
                                  "projectArn")
                                 (status :target-type test-grid-session-status
                                  :member-name "status")
                                 (creation-time-after :target-type date-time
                                  :member-name "creationTimeAfter")
                                 (creation-time-before :target-type date-time
                                  :member-name "creationTimeBefore")
                                 (end-time-after :target-type date-time
                                  :member-name "endTimeAfter")
                                 (end-time-before :target-type date-time
                                  :member-name "endTimeBefore")
                                 (max-result :target-type max-page-size
                                  :member-name "maxResult")
                                 (next-token :target-type pagination-token
                                  :member-name "nextToken"))
                                (:shape-name "ListTestGridSessionsRequest"))

(smithy/sdk/shapes:define-output list-test-grid-sessions-result common-lisp:nil
                                 ((test-grid-sessions :target-type
                                   test-grid-sessions :member-name
                                   "testGridSessions")
                                  (next-token :target-type pagination-token
                                   :member-name "nextToken"))
                                 (:shape-name "ListTestGridSessionsResult"))

(smithy/sdk/shapes:define-input list-tests-request common-lisp:nil
                                ((arn :target-type amazon-resource-name
                                  :required common-lisp:t :member-name "arn")
                                 (next-token :target-type pagination-token
                                  :member-name "nextToken"))
                                (:shape-name "ListTestsRequest"))

(smithy/sdk/shapes:define-output list-tests-result common-lisp:nil
                                 ((tests :target-type tests :member-name
                                   "tests")
                                  (next-token :target-type pagination-token
                                   :member-name "nextToken"))
                                 (:shape-name "ListTestsResult"))

(smithy/sdk/shapes:define-input list-unique-problems-request common-lisp:nil
                                ((arn :target-type amazon-resource-name
                                  :required common-lisp:t :member-name "arn")
                                 (next-token :target-type pagination-token
                                  :member-name "nextToken"))
                                (:shape-name "ListUniqueProblemsRequest"))

(smithy/sdk/shapes:define-output list-unique-problems-result common-lisp:nil
                                 ((unique-problems :target-type
                                   unique-problems-by-execution-result-map
                                   :member-name "uniqueProblems")
                                  (next-token :target-type pagination-token
                                   :member-name "nextToken"))
                                 (:shape-name "ListUniqueProblemsResult"))

(smithy/sdk/shapes:define-input list-uploads-request common-lisp:nil
                                ((arn :target-type amazon-resource-name
                                  :required common-lisp:t :member-name "arn")
                                 (type :target-type upload-type :member-name
                                  "type")
                                 (next-token :target-type pagination-token
                                  :member-name "nextToken"))
                                (:shape-name "ListUploadsRequest"))

(smithy/sdk/shapes:define-output list-uploads-result common-lisp:nil
                                 ((uploads :target-type uploads :member-name
                                   "uploads")
                                  (next-token :target-type pagination-token
                                   :member-name "nextToken"))
                                 (:shape-name "ListUploadsResult"))

(smithy/sdk/shapes:define-input list-vpceconfigurations-request common-lisp:nil
                                ((max-results :target-type integer :member-name
                                  "maxResults")
                                 (next-token :target-type pagination-token
                                  :member-name "nextToken"))
                                (:shape-name "ListVPCEConfigurationsRequest"))

(smithy/sdk/shapes:define-output list-vpceconfigurations-result common-lisp:nil
                                 ((vpce-configurations :target-type
                                   vpceconfigurations :member-name
                                   "vpceConfigurations")
                                  (next-token :target-type pagination-token
                                   :member-name "nextToken"))
                                 (:shape-name "ListVPCEConfigurationsResult"))

(smithy/sdk/shapes:define-structure location common-lisp:nil
                                    ((latitude :target-type double :required
                                      common-lisp:t :member-name "latitude")
                                     (longitude :target-type double :required
                                      common-lisp:t :member-name "longitude"))
                                    (:shape-name "Location"))

(smithy/sdk/shapes:define-type long smithy/sdk/smithy-types:long)

(smithy/sdk/shapes:define-type max-page-size smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-map max-slot-map :key string :value integer)

(smithy/sdk/shapes:define-type message smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type metadata smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure monetary-amount common-lisp:nil
                                    ((amount :target-type double :member-name
                                      "amount")
                                     (currency-code :target-type currency-code
                                      :member-name "currencyCode"))
                                    (:shape-name "MonetaryAmount"))

(smithy/sdk/shapes:define-type name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure network-profile common-lisp:nil
                                    ((arn :target-type amazon-resource-name
                                      :member-name "arn")
                                     (name :target-type name :member-name
                                      "name")
                                     (description :target-type message
                                      :member-name "description")
                                     (type :target-type network-profile-type
                                      :member-name "type")
                                     (uplink-bandwidth-bits :target-type long
                                      :member-name "uplinkBandwidthBits")
                                     (downlink-bandwidth-bits :target-type long
                                      :member-name "downlinkBandwidthBits")
                                     (uplink-delay-ms :target-type long
                                      :member-name "uplinkDelayMs")
                                     (downlink-delay-ms :target-type long
                                      :member-name "downlinkDelayMs")
                                     (uplink-jitter-ms :target-type long
                                      :member-name "uplinkJitterMs")
                                     (downlink-jitter-ms :target-type long
                                      :member-name "downlinkJitterMs")
                                     (uplink-loss-percent :target-type
                                      percent-integer :member-name
                                      "uplinkLossPercent")
                                     (downlink-loss-percent :target-type
                                      percent-integer :member-name
                                      "downlinkLossPercent"))
                                    (:shape-name "NetworkProfile"))

(smithy/sdk/shapes:define-enum network-profile-type
    common-lisp:nil
  (:curated "CURATED")
  (:private "PRIVATE"))

(smithy/sdk/shapes:define-list network-profiles :member network-profile)

(smithy/sdk/shapes:define-type non-empty-string smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error not-eligible-exception common-lisp:nil
                                ((message :target-type message :member-name
                                  "message"))
                                (:shape-name "NotEligibleException")
                                (:error-code 400))

(smithy/sdk/shapes:define-error not-found-exception common-lisp:nil
                                ((message :target-type message :member-name
                                  "message"))
                                (:shape-name "NotFoundException")
                                (:error-code 400))

(smithy/sdk/shapes:define-structure offering common-lisp:nil
                                    ((id :target-type offering-identifier
                                      :member-name "id")
                                     (description :target-type message
                                      :member-name "description")
                                     (type :target-type offering-type
                                      :member-name "type")
                                     (platform :target-type device-platform
                                      :member-name "platform")
                                     (recurring-charges :target-type
                                      recurring-charges :member-name
                                      "recurringCharges"))
                                    (:shape-name "Offering"))

(smithy/sdk/shapes:define-type offering-identifier
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure offering-promotion common-lisp:nil
                                    ((id :target-type
                                      offering-promotion-identifier
                                      :member-name "id")
                                     (description :target-type message
                                      :member-name "description"))
                                    (:shape-name "OfferingPromotion"))

(smithy/sdk/shapes:define-type offering-promotion-identifier
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list offering-promotions :member offering-promotion)

(smithy/sdk/shapes:define-structure offering-status common-lisp:nil
                                    ((type :target-type
                                      offering-transaction-type :member-name
                                      "type")
                                     (offering :target-type offering
                                      :member-name "offering")
                                     (quantity :target-type integer
                                      :member-name "quantity")
                                     (effective-on :target-type date-time
                                      :member-name "effectiveOn"))
                                    (:shape-name "OfferingStatus"))

(smithy/sdk/shapes:define-map offering-status-map :key offering-identifier
                              :value offering-status)

(smithy/sdk/shapes:define-structure offering-transaction common-lisp:nil
                                    ((offering-status :target-type
                                      offering-status :member-name
                                      "offeringStatus")
                                     (transaction-id :target-type
                                      transaction-identifier :member-name
                                      "transactionId")
                                     (offering-promotion-id :target-type
                                      offering-promotion-identifier
                                      :member-name "offeringPromotionId")
                                     (created-on :target-type date-time
                                      :member-name "createdOn")
                                     (cost :target-type monetary-amount
                                      :member-name "cost"))
                                    (:shape-name "OfferingTransaction"))

(smithy/sdk/shapes:define-enum offering-transaction-type
    common-lisp:nil
  (:purchase "PURCHASE")
  (:renew "RENEW")
  (:system "SYSTEM"))

(smithy/sdk/shapes:define-list offering-transactions :member
                               offering-transaction)

(smithy/sdk/shapes:define-enum offering-type
    common-lisp:nil
  (:recurring "RECURRING"))

(smithy/sdk/shapes:define-list offerings :member offering)

(smithy/sdk/shapes:define-list package-ids :member string)

(smithy/sdk/shapes:define-type pagination-token smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type percent-integer smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-structure problem common-lisp:nil
                                    ((run :target-type problem-detail
                                      :member-name "run")
                                     (job :target-type problem-detail
                                      :member-name "job")
                                     (suite :target-type problem-detail
                                      :member-name "suite")
                                     (test :target-type problem-detail
                                      :member-name "test")
                                     (device :target-type device :member-name
                                      "device")
                                     (result :target-type execution-result
                                      :member-name "result")
                                     (message :target-type message :member-name
                                      "message"))
                                    (:shape-name "Problem"))

(smithy/sdk/shapes:define-structure problem-detail common-lisp:nil
                                    ((arn :target-type amazon-resource-name
                                      :member-name "arn")
                                     (name :target-type name :member-name
                                      "name"))
                                    (:shape-name "ProblemDetail"))

(smithy/sdk/shapes:define-list problems :member problem)

(smithy/sdk/shapes:define-structure project common-lisp:nil
                                    ((arn :target-type amazon-resource-name
                                      :member-name "arn")
                                     (name :target-type name :member-name
                                      "name")
                                     (default-job-timeout-minutes :target-type
                                      job-timeout-minutes :member-name
                                      "defaultJobTimeoutMinutes")
                                     (created :target-type date-time
                                      :member-name "created")
                                     (vpc-config :target-type vpc-config
                                      :member-name "vpcConfig"))
                                    (:shape-name "Project"))

(smithy/sdk/shapes:define-list projects :member project)

(smithy/sdk/shapes:define-input purchase-offering-request common-lisp:nil
                                ((offering-id :target-type offering-identifier
                                  :required common-lisp:t :member-name
                                  "offeringId")
                                 (quantity :target-type integer :required
                                  common-lisp:t :member-name "quantity")
                                 (offering-promotion-id :target-type
                                  offering-promotion-identifier :member-name
                                  "offeringPromotionId"))
                                (:shape-name "PurchaseOfferingRequest"))

(smithy/sdk/shapes:define-output purchase-offering-result common-lisp:nil
                                 ((offering-transaction :target-type
                                   offering-transaction :member-name
                                   "offeringTransaction"))
                                 (:shape-name "PurchaseOfferingResult"))

(smithy/sdk/shapes:define-map purchased-devices-map :key device-platform :value
                              integer)

(smithy/sdk/shapes:define-structure radios common-lisp:nil
                                    ((wifi :target-type boolean :member-name
                                      "wifi")
                                     (bluetooth :target-type boolean
                                      :member-name "bluetooth")
                                     (nfc :target-type boolean :member-name
                                      "nfc")
                                     (gps :target-type boolean :member-name
                                      "gps"))
                                    (:shape-name "Radios"))

(smithy/sdk/shapes:define-structure recurring-charge common-lisp:nil
                                    ((cost :target-type monetary-amount
                                      :member-name "cost")
                                     (frequency :target-type
                                      recurring-charge-frequency :member-name
                                      "frequency"))
                                    (:shape-name "RecurringCharge"))

(smithy/sdk/shapes:define-enum recurring-charge-frequency
    common-lisp:nil
  (:monthly "MONTHLY"))

(smithy/sdk/shapes:define-list recurring-charges :member recurring-charge)

(smithy/sdk/shapes:define-structure remote-access-session common-lisp:nil
                                    ((arn :target-type amazon-resource-name
                                      :member-name "arn")
                                     (name :target-type name :member-name
                                      "name")
                                     (created :target-type date-time
                                      :member-name "created")
                                     (status :target-type execution-status
                                      :member-name "status")
                                     (result :target-type execution-result
                                      :member-name "result")
                                     (message :target-type message :member-name
                                      "message")
                                     (started :target-type date-time
                                      :member-name "started")
                                     (stopped :target-type date-time
                                      :member-name "stopped")
                                     (device :target-type device :member-name
                                      "device")
                                     (instance-arn :target-type
                                      amazon-resource-name :member-name
                                      "instanceArn")
                                     (remote-debug-enabled :target-type boolean
                                      :member-name "remoteDebugEnabled")
                                     (remote-record-enabled :target-type
                                      boolean :member-name
                                      "remoteRecordEnabled")
                                     (remote-record-app-arn :target-type
                                      amazon-resource-name :member-name
                                      "remoteRecordAppArn")
                                     (host-address :target-type host-address
                                      :member-name "hostAddress")
                                     (client-id :target-type client-id
                                      :member-name "clientId")
                                     (billing-method :target-type
                                      billing-method :member-name
                                      "billingMethod")
                                     (device-minutes :target-type
                                      device-minutes :member-name
                                      "deviceMinutes")
                                     (endpoint :target-type string :member-name
                                      "endpoint")
                                     (device-udid :target-type string
                                      :member-name "deviceUdid")
                                     (interaction-mode :target-type
                                      interaction-mode :member-name
                                      "interactionMode")
                                     (skip-app-resign :target-type
                                      skip-app-resign :member-name
                                      "skipAppResign")
                                     (vpc-config :target-type vpc-config
                                      :member-name "vpcConfig")
                                     (device-proxy :target-type device-proxy
                                      :member-name "deviceProxy"))
                                    (:shape-name "RemoteAccessSession"))

(smithy/sdk/shapes:define-list remote-access-sessions :member
                               remote-access-session)

(smithy/sdk/shapes:define-input renew-offering-request common-lisp:nil
                                ((offering-id :target-type offering-identifier
                                  :required common-lisp:t :member-name
                                  "offeringId")
                                 (quantity :target-type integer :required
                                  common-lisp:t :member-name "quantity"))
                                (:shape-name "RenewOfferingRequest"))

(smithy/sdk/shapes:define-output renew-offering-result common-lisp:nil
                                 ((offering-transaction :target-type
                                   offering-transaction :member-name
                                   "offeringTransaction"))
                                 (:shape-name "RenewOfferingResult"))

(smithy/sdk/shapes:define-structure resolution common-lisp:nil
                                    ((width :target-type integer :member-name
                                      "width")
                                     (height :target-type integer :member-name
                                      "height"))
                                    (:shape-name "Resolution"))

(smithy/sdk/shapes:define-type resource-description
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type resource-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type resource-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure rule common-lisp:nil
                                    ((attribute :target-type device-attribute
                                      :member-name "attribute")
                                     (operator :target-type rule-operator
                                      :member-name "operator")
                                     (value :target-type string :member-name
                                      "value"))
                                    (:shape-name "Rule"))

(smithy/sdk/shapes:define-enum rule-operator
    common-lisp:nil
  (:equals "EQUALS")
  (:less-than "LESS_THAN")
  (:less-than-or-equals "LESS_THAN_OR_EQUALS")
  (:greater-than "GREATER_THAN")
  (:greater-than-or-equals "GREATER_THAN_OR_EQUALS")
  (:in "IN")
  (:not-in "NOT_IN")
  (:contains "CONTAINS"))

(smithy/sdk/shapes:define-list rules :member rule)

(smithy/sdk/shapes:define-structure run common-lisp:nil
                                    ((arn :target-type amazon-resource-name
                                      :member-name "arn")
                                     (name :target-type name :member-name
                                      "name")
                                     (type :target-type test-type :member-name
                                      "type")
                                     (platform :target-type device-platform
                                      :member-name "platform")
                                     (created :target-type date-time
                                      :member-name "created")
                                     (status :target-type execution-status
                                      :member-name "status")
                                     (result :target-type execution-result
                                      :member-name "result")
                                     (started :target-type date-time
                                      :member-name "started")
                                     (stopped :target-type date-time
                                      :member-name "stopped")
                                     (counters :target-type counters
                                      :member-name "counters")
                                     (message :target-type message :member-name
                                      "message")
                                     (total-jobs :target-type integer
                                      :member-name "totalJobs")
                                     (completed-jobs :target-type integer
                                      :member-name "completedJobs")
                                     (billing-method :target-type
                                      billing-method :member-name
                                      "billingMethod")
                                     (device-minutes :target-type
                                      device-minutes :member-name
                                      "deviceMinutes")
                                     (network-profile :target-type
                                      network-profile :member-name
                                      "networkProfile")
                                     (device-proxy :target-type device-proxy
                                      :member-name "deviceProxy")
                                     (parsing-result-url :target-type string
                                      :member-name "parsingResultUrl")
                                     (result-code :target-type
                                      execution-result-code :member-name
                                      "resultCode")
                                     (seed :target-type integer :member-name
                                      "seed")
                                     (app-upload :target-type
                                      amazon-resource-name :member-name
                                      "appUpload")
                                     (event-count :target-type integer
                                      :member-name "eventCount")
                                     (job-timeout-minutes :target-type
                                      job-timeout-minutes :member-name
                                      "jobTimeoutMinutes")
                                     (device-pool-arn :target-type
                                      amazon-resource-name :member-name
                                      "devicePoolArn")
                                     (locale :target-type string :member-name
                                      "locale")
                                     (radios :target-type radios :member-name
                                      "radios")
                                     (location :target-type location
                                      :member-name "location")
                                     (customer-artifact-paths :target-type
                                      customer-artifact-paths :member-name
                                      "customerArtifactPaths")
                                     (web-url :target-type string :member-name
                                      "webUrl")
                                     (skip-app-resign :target-type
                                      skip-app-resign :member-name
                                      "skipAppResign")
                                     (test-spec-arn :target-type
                                      amazon-resource-name :member-name
                                      "testSpecArn")
                                     (device-selection-result :target-type
                                      device-selection-result :member-name
                                      "deviceSelectionResult")
                                     (vpc-config :target-type vpc-config
                                      :member-name "vpcConfig"))
                                    (:shape-name "Run"))

(smithy/sdk/shapes:define-list runs :member run)

(smithy/sdk/shapes:define-structure sample common-lisp:nil
                                    ((arn :target-type amazon-resource-name
                                      :member-name "arn")
                                     (type :target-type sample-type
                                      :member-name "type")
                                     (url :target-type url :member-name "url"))
                                    (:shape-name "Sample"))

(smithy/sdk/shapes:define-enum sample-type
    common-lisp:nil
  (:cpu "CPU")
  (:memory "MEMORY")
  (:threads "THREADS")
  (:rx-rate "RX_RATE")
  (:tx-rate "TX_RATE")
  (:rx "RX")
  (:tx "TX")
  (:native-frames "NATIVE_FRAMES")
  (:native-fps "NATIVE_FPS")
  (:native-min-drawtime "NATIVE_MIN_DRAWTIME")
  (:native-avg-drawtime "NATIVE_AVG_DRAWTIME")
  (:native-max-drawtime "NATIVE_MAX_DRAWTIME")
  (:opengl-frames "OPENGL_FRAMES")
  (:opengl-fps "OPENGL_FPS")
  (:opengl-min-drawtime "OPENGL_MIN_DRAWTIME")
  (:opengl-avg-drawtime "OPENGL_AVG_DRAWTIME")
  (:opengl-max-drawtime "OPENGL_MAX_DRAWTIME"))

(smithy/sdk/shapes:define-list samples :member sample)

(smithy/sdk/shapes:define-structure schedule-run-configuration common-lisp:nil
                                    ((extra-data-package-arn :target-type
                                      amazon-resource-name :member-name
                                      "extraDataPackageArn")
                                     (network-profile-arn :target-type
                                      amazon-resource-name :member-name
                                      "networkProfileArn")
                                     (locale :target-type string :member-name
                                      "locale")
                                     (location :target-type location
                                      :member-name "location")
                                     (vpce-configuration-arns :target-type
                                      amazon-resource-names :member-name
                                      "vpceConfigurationArns")
                                     (device-proxy :target-type device-proxy
                                      :member-name "deviceProxy")
                                     (customer-artifact-paths :target-type
                                      customer-artifact-paths :member-name
                                      "customerArtifactPaths")
                                     (radios :target-type radios :member-name
                                      "radios")
                                     (auxiliary-apps :target-type
                                      amazon-resource-names :member-name
                                      "auxiliaryApps")
                                     (billing-method :target-type
                                      billing-method :member-name
                                      "billingMethod"))
                                    (:shape-name "ScheduleRunConfiguration"))

(smithy/sdk/shapes:define-input schedule-run-request common-lisp:nil
                                ((project-arn :target-type amazon-resource-name
                                  :required common-lisp:t :member-name
                                  "projectArn")
                                 (app-arn :target-type amazon-resource-name
                                  :member-name "appArn")
                                 (device-pool-arn :target-type
                                  amazon-resource-name :member-name
                                  "devicePoolArn")
                                 (device-selection-configuration :target-type
                                  device-selection-configuration :member-name
                                  "deviceSelectionConfiguration")
                                 (name :target-type name :member-name "name")
                                 (test :target-type schedule-run-test :required
                                  common-lisp:t :member-name "test")
                                 (configuration :target-type
                                  schedule-run-configuration :member-name
                                  "configuration")
                                 (execution-configuration :target-type
                                  execution-configuration :member-name
                                  "executionConfiguration"))
                                (:shape-name "ScheduleRunRequest"))

(smithy/sdk/shapes:define-output schedule-run-result common-lisp:nil
                                 ((run :target-type run :member-name "run"))
                                 (:shape-name "ScheduleRunResult"))

(smithy/sdk/shapes:define-structure schedule-run-test common-lisp:nil
                                    ((type :target-type test-type :required
                                      common-lisp:t :member-name "type")
                                     (test-package-arn :target-type
                                      amazon-resource-name :member-name
                                      "testPackageArn")
                                     (test-spec-arn :target-type
                                      amazon-resource-name :member-name
                                      "testSpecArn")
                                     (filter :target-type filter :member-name
                                      "filter")
                                     (parameters :target-type test-parameters
                                      :member-name "parameters"))
                                    (:shape-name "ScheduleRunTest"))

(smithy/sdk/shapes:define-type security-group-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list security-group-ids :member non-empty-string)

(smithy/sdk/shapes:define-type sensitive-string smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type sensitive-url smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error service-account-exception common-lisp:nil
                                ((message :target-type message :member-name
                                  "message"))
                                (:shape-name "ServiceAccountException")
                                (:error-code 400))

(smithy/sdk/shapes:define-type service-dns-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type skip-app-resign smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-type ssh-public-key smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input stop-job-request common-lisp:nil
                                ((arn :target-type amazon-resource-name
                                  :required common-lisp:t :member-name "arn"))
                                (:shape-name "StopJobRequest"))

(smithy/sdk/shapes:define-output stop-job-result common-lisp:nil
                                 ((job :target-type job :member-name "job"))
                                 (:shape-name "StopJobResult"))

(smithy/sdk/shapes:define-input stop-remote-access-session-request
                                common-lisp:nil
                                ((arn :target-type amazon-resource-name
                                  :required common-lisp:t :member-name "arn"))
                                (:shape-name "StopRemoteAccessSessionRequest"))

(smithy/sdk/shapes:define-output stop-remote-access-session-result
                                 common-lisp:nil
                                 ((remote-access-session :target-type
                                   remote-access-session :member-name
                                   "remoteAccessSession"))
                                 (:shape-name "StopRemoteAccessSessionResult"))

(smithy/sdk/shapes:define-input stop-run-request common-lisp:nil
                                ((arn :target-type amazon-resource-name
                                  :required common-lisp:t :member-name "arn"))
                                (:shape-name "StopRunRequest"))

(smithy/sdk/shapes:define-output stop-run-result common-lisp:nil
                                 ((run :target-type run :member-name "run"))
                                 (:shape-name "StopRunResult"))

(smithy/sdk/shapes:define-type string smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type subnet-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list subnet-ids :member non-empty-string)

(smithy/sdk/shapes:define-structure suite common-lisp:nil
                                    ((arn :target-type amazon-resource-name
                                      :member-name "arn")
                                     (name :target-type name :member-name
                                      "name")
                                     (type :target-type test-type :member-name
                                      "type")
                                     (created :target-type date-time
                                      :member-name "created")
                                     (status :target-type execution-status
                                      :member-name "status")
                                     (result :target-type execution-result
                                      :member-name "result")
                                     (started :target-type date-time
                                      :member-name "started")
                                     (stopped :target-type date-time
                                      :member-name "stopped")
                                     (counters :target-type counters
                                      :member-name "counters")
                                     (message :target-type message :member-name
                                      "message")
                                     (device-minutes :target-type
                                      device-minutes :member-name
                                      "deviceMinutes"))
                                    (:shape-name "Suite"))

(smithy/sdk/shapes:define-list suites :member suite)

(smithy/sdk/shapes:define-structure tag common-lisp:nil
                                    ((key :target-type tag-key :required
                                      common-lisp:t :member-name "Key")
                                     (value :target-type tag-value :required
                                      common-lisp:t :member-name "Value"))
                                    (:shape-name "Tag"))

(smithy/sdk/shapes:define-type tag-key smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list tag-key-list :member tag-key)

(smithy/sdk/shapes:define-list tag-list :member tag)

(smithy/sdk/shapes:define-error tag-operation-exception common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message")
                                 (resource-name :target-type
                                  amazon-resource-name :member-name
                                  "resourceName"))
                                (:shape-name "TagOperationException")
                                (:error-code 400))

(smithy/sdk/shapes:define-error tag-policy-exception common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message")
                                 (resource-name :target-type
                                  amazon-resource-name :member-name
                                  "resourceName"))
                                (:shape-name "TagPolicyException")
                                (:error-code 400))

(smithy/sdk/shapes:define-input tag-resource-request common-lisp:nil
                                ((resource-arn :target-type device-farm-arn
                                  :required common-lisp:t :member-name
                                  "ResourceARN")
                                 (tags :target-type tag-list :required
                                  common-lisp:t :member-name "Tags"))
                                (:shape-name "TagResourceRequest"))

(smithy/sdk/shapes:define-output tag-resource-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "TagResourceResponse"))

(smithy/sdk/shapes:define-type tag-value smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure test common-lisp:nil
                                    ((arn :target-type amazon-resource-name
                                      :member-name "arn")
                                     (name :target-type name :member-name
                                      "name")
                                     (type :target-type test-type :member-name
                                      "type")
                                     (created :target-type date-time
                                      :member-name "created")
                                     (status :target-type execution-status
                                      :member-name "status")
                                     (result :target-type execution-result
                                      :member-name "result")
                                     (started :target-type date-time
                                      :member-name "started")
                                     (stopped :target-type date-time
                                      :member-name "stopped")
                                     (counters :target-type counters
                                      :member-name "counters")
                                     (message :target-type message :member-name
                                      "message")
                                     (device-minutes :target-type
                                      device-minutes :member-name
                                      "deviceMinutes"))
                                    (:shape-name "Test"))

(smithy/sdk/shapes:define-structure test-grid-project common-lisp:nil
                                    ((arn :target-type device-farm-arn
                                      :member-name "arn")
                                     (name :target-type string :member-name
                                      "name")
                                     (description :target-type string
                                      :member-name "description")
                                     (vpc-config :target-type
                                      test-grid-vpc-config :member-name
                                      "vpcConfig")
                                     (created :target-type date-time
                                      :member-name "created"))
                                    (:shape-name "TestGridProject"))

(smithy/sdk/shapes:define-list test-grid-projects :member test-grid-project)

(smithy/sdk/shapes:define-structure test-grid-session common-lisp:nil
                                    ((arn :target-type device-farm-arn
                                      :member-name "arn")
                                     (status :target-type
                                      test-grid-session-status :member-name
                                      "status")
                                     (created :target-type date-time
                                      :member-name "created")
                                     (ended :target-type date-time :member-name
                                      "ended")
                                     (billing-minutes :target-type double
                                      :member-name "billingMinutes")
                                     (selenium-properties :target-type string
                                      :member-name "seleniumProperties"))
                                    (:shape-name "TestGridSession"))

(smithy/sdk/shapes:define-structure test-grid-session-action common-lisp:nil
                                    ((action :target-type string :member-name
                                      "action")
                                     (started :target-type date-time
                                      :member-name "started")
                                     (duration :target-type long :member-name
                                      "duration")
                                     (status-code :target-type string
                                      :member-name "statusCode")
                                     (request-method :target-type string
                                      :member-name "requestMethod"))
                                    (:shape-name "TestGridSessionAction"))

(smithy/sdk/shapes:define-list test-grid-session-actions :member
                               test-grid-session-action)

(smithy/sdk/shapes:define-structure test-grid-session-artifact common-lisp:nil
                                    ((filename :target-type string :member-name
                                      "filename")
                                     (type :target-type
                                      test-grid-session-artifact-type
                                      :member-name "type")
                                     (url :target-type sensitive-string
                                      :member-name "url"))
                                    (:shape-name "TestGridSessionArtifact"))

(smithy/sdk/shapes:define-enum test-grid-session-artifact-category
    common-lisp:nil
  (:video "VIDEO")
  (:log "LOG"))

(smithy/sdk/shapes:define-enum test-grid-session-artifact-type
    common-lisp:nil
  (:unknown "UNKNOWN")
  (:video "VIDEO")
  (:selenium-log "SELENIUM_LOG"))

(smithy/sdk/shapes:define-list test-grid-session-artifacts :member
                               test-grid-session-artifact)

(smithy/sdk/shapes:define-enum test-grid-session-status
    common-lisp:nil
  (:active "ACTIVE")
  (:closed "CLOSED")
  (:errored "ERRORED"))

(smithy/sdk/shapes:define-list test-grid-sessions :member test-grid-session)

(smithy/sdk/shapes:define-type test-grid-url-expires-in-seconds-input
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-structure test-grid-vpc-config common-lisp:nil
                                    ((security-group-ids :target-type
                                      security-group-ids :required
                                      common-lisp:t :member-name
                                      "securityGroupIds")
                                     (subnet-ids :target-type subnet-ids
                                      :required common-lisp:t :member-name
                                      "subnetIds")
                                     (vpc-id :target-type non-empty-string
                                      :required common-lisp:t :member-name
                                      "vpcId"))
                                    (:shape-name "TestGridVpcConfig"))

(smithy/sdk/shapes:define-map test-parameters :key string :value string)

(smithy/sdk/shapes:define-enum test-type
    common-lisp:nil
  (:builtin-fuzz "BUILTIN_FUZZ")
  (:appium-java-junit "APPIUM_JAVA_JUNIT")
  (:appium-java-testng "APPIUM_JAVA_TESTNG")
  (:appium-python "APPIUM_PYTHON")
  (:appium-node "APPIUM_NODE")
  (:appium-ruby "APPIUM_RUBY")
  (:appium-web-java-junit "APPIUM_WEB_JAVA_JUNIT")
  (:appium-web-java-testng "APPIUM_WEB_JAVA_TESTNG")
  (:appium-web-python "APPIUM_WEB_PYTHON")
  (:appium-web-node "APPIUM_WEB_NODE")
  (:appium-web-ruby "APPIUM_WEB_RUBY")
  (:instrumentation "INSTRUMENTATION")
  (:xctest "XCTEST")
  (:xctest-ui "XCTEST_UI"))

(smithy/sdk/shapes:define-list tests :member test)

(smithy/sdk/shapes:define-error too-many-tags-exception common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message")
                                 (resource-name :target-type
                                  amazon-resource-name :member-name
                                  "resourceName"))
                                (:shape-name "TooManyTagsException")
                                (:error-code 400))

(smithy/sdk/shapes:define-type transaction-identifier
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure trial-minutes common-lisp:nil
                                    ((total :target-type double :member-name
                                      "total")
                                     (remaining :target-type double
                                      :member-name "remaining"))
                                    (:shape-name "TrialMinutes"))

(smithy/sdk/shapes:define-type url smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure unique-problem common-lisp:nil
                                    ((message :target-type message :member-name
                                      "message")
                                     (problems :target-type problems
                                      :member-name "problems"))
                                    (:shape-name "UniqueProblem"))

(smithy/sdk/shapes:define-list unique-problems :member unique-problem)

(smithy/sdk/shapes:define-map unique-problems-by-execution-result-map :key
                              execution-result :value unique-problems)

(smithy/sdk/shapes:define-input untag-resource-request common-lisp:nil
                                ((resource-arn :target-type device-farm-arn
                                  :required common-lisp:t :member-name
                                  "ResourceARN")
                                 (tag-keys :target-type tag-key-list :required
                                  common-lisp:t :member-name "TagKeys"))
                                (:shape-name "UntagResourceRequest"))

(smithy/sdk/shapes:define-output untag-resource-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "UntagResourceResponse"))

(smithy/sdk/shapes:define-input update-device-instance-request common-lisp:nil
                                ((arn :target-type amazon-resource-name
                                  :required common-lisp:t :member-name "arn")
                                 (profile-arn :target-type amazon-resource-name
                                  :member-name "profileArn")
                                 (labels :target-type instance-labels
                                  :member-name "labels"))
                                (:shape-name "UpdateDeviceInstanceRequest"))

(smithy/sdk/shapes:define-output update-device-instance-result common-lisp:nil
                                 ((device-instance :target-type device-instance
                                   :member-name "deviceInstance"))
                                 (:shape-name "UpdateDeviceInstanceResult"))

(smithy/sdk/shapes:define-input update-device-pool-request common-lisp:nil
                                ((arn :target-type amazon-resource-name
                                  :required common-lisp:t :member-name "arn")
                                 (name :target-type name :member-name "name")
                                 (description :target-type message :member-name
                                  "description")
                                 (rules :target-type rules :member-name
                                  "rules")
                                 (max-devices :target-type integer :member-name
                                  "maxDevices")
                                 (clear-max-devices :target-type boolean
                                  :member-name "clearMaxDevices"))
                                (:shape-name "UpdateDevicePoolRequest"))

(smithy/sdk/shapes:define-output update-device-pool-result common-lisp:nil
                                 ((device-pool :target-type device-pool
                                   :member-name "devicePool"))
                                 (:shape-name "UpdateDevicePoolResult"))

(smithy/sdk/shapes:define-input update-instance-profile-request common-lisp:nil
                                ((arn :target-type amazon-resource-name
                                  :required common-lisp:t :member-name "arn")
                                 (name :target-type name :member-name "name")
                                 (description :target-type message :member-name
                                  "description")
                                 (package-cleanup :target-type boolean
                                  :member-name "packageCleanup")
                                 (exclude-app-packages-from-cleanup
                                  :target-type package-ids :member-name
                                  "excludeAppPackagesFromCleanup")
                                 (reboot-after-use :target-type boolean
                                  :member-name "rebootAfterUse"))
                                (:shape-name "UpdateInstanceProfileRequest"))

(smithy/sdk/shapes:define-output update-instance-profile-result common-lisp:nil
                                 ((instance-profile :target-type
                                   instance-profile :member-name
                                   "instanceProfile"))
                                 (:shape-name "UpdateInstanceProfileResult"))

(smithy/sdk/shapes:define-input update-network-profile-request common-lisp:nil
                                ((arn :target-type amazon-resource-name
                                  :required common-lisp:t :member-name "arn")
                                 (name :target-type name :member-name "name")
                                 (description :target-type message :member-name
                                  "description")
                                 (type :target-type network-profile-type
                                  :member-name "type")
                                 (uplink-bandwidth-bits :target-type long
                                  :member-name "uplinkBandwidthBits")
                                 (downlink-bandwidth-bits :target-type long
                                  :member-name "downlinkBandwidthBits")
                                 (uplink-delay-ms :target-type long
                                  :member-name "uplinkDelayMs")
                                 (downlink-delay-ms :target-type long
                                  :member-name "downlinkDelayMs")
                                 (uplink-jitter-ms :target-type long
                                  :member-name "uplinkJitterMs")
                                 (downlink-jitter-ms :target-type long
                                  :member-name "downlinkJitterMs")
                                 (uplink-loss-percent :target-type
                                  percent-integer :member-name
                                  "uplinkLossPercent")
                                 (downlink-loss-percent :target-type
                                  percent-integer :member-name
                                  "downlinkLossPercent"))
                                (:shape-name "UpdateNetworkProfileRequest"))

(smithy/sdk/shapes:define-output update-network-profile-result common-lisp:nil
                                 ((network-profile :target-type network-profile
                                   :member-name "networkProfile"))
                                 (:shape-name "UpdateNetworkProfileResult"))

(smithy/sdk/shapes:define-input update-project-request common-lisp:nil
                                ((arn :target-type amazon-resource-name
                                  :required common-lisp:t :member-name "arn")
                                 (name :target-type name :member-name "name")
                                 (default-job-timeout-minutes :target-type
                                  job-timeout-minutes :member-name
                                  "defaultJobTimeoutMinutes")
                                 (vpc-config :target-type vpc-config
                                  :member-name "vpcConfig"))
                                (:shape-name "UpdateProjectRequest"))

(smithy/sdk/shapes:define-output update-project-result common-lisp:nil
                                 ((project :target-type project :member-name
                                   "project"))
                                 (:shape-name "UpdateProjectResult"))

(smithy/sdk/shapes:define-input update-test-grid-project-request
                                common-lisp:nil
                                ((project-arn :target-type device-farm-arn
                                  :required common-lisp:t :member-name
                                  "projectArn")
                                 (name :target-type resource-name :member-name
                                  "name")
                                 (description :target-type resource-description
                                  :member-name "description")
                                 (vpc-config :target-type test-grid-vpc-config
                                  :member-name "vpcConfig"))
                                (:shape-name "UpdateTestGridProjectRequest"))

(smithy/sdk/shapes:define-output update-test-grid-project-result
                                 common-lisp:nil
                                 ((test-grid-project :target-type
                                   test-grid-project :member-name
                                   "testGridProject"))
                                 (:shape-name "UpdateTestGridProjectResult"))

(smithy/sdk/shapes:define-input update-upload-request common-lisp:nil
                                ((arn :target-type amazon-resource-name
                                  :required common-lisp:t :member-name "arn")
                                 (name :target-type name :member-name "name")
                                 (content-type :target-type content-type
                                  :member-name "contentType")
                                 (edit-content :target-type boolean
                                  :member-name "editContent"))
                                (:shape-name "UpdateUploadRequest"))

(smithy/sdk/shapes:define-output update-upload-result common-lisp:nil
                                 ((upload :target-type upload :member-name
                                   "upload"))
                                 (:shape-name "UpdateUploadResult"))

(smithy/sdk/shapes:define-input update-vpceconfiguration-request
                                common-lisp:nil
                                ((arn :target-type amazon-resource-name
                                  :required common-lisp:t :member-name "arn")
                                 (vpce-configuration-name :target-type
                                  vpceconfiguration-name :member-name
                                  "vpceConfigurationName")
                                 (vpce-service-name :target-type
                                  vpceservice-name :member-name
                                  "vpceServiceName")
                                 (service-dns-name :target-type
                                  service-dns-name :member-name
                                  "serviceDnsName")
                                 (vpce-configuration-description :target-type
                                  vpceconfiguration-description :member-name
                                  "vpceConfigurationDescription"))
                                (:shape-name "UpdateVPCEConfigurationRequest"))

(smithy/sdk/shapes:define-output update-vpceconfiguration-result
                                 common-lisp:nil
                                 ((vpce-configuration :target-type
                                   vpceconfiguration :member-name
                                   "vpceConfiguration"))
                                 (:shape-name "UpdateVPCEConfigurationResult"))

(smithy/sdk/shapes:define-structure upload common-lisp:nil
                                    ((arn :target-type amazon-resource-name
                                      :member-name "arn")
                                     (name :target-type name :member-name
                                      "name")
                                     (created :target-type date-time
                                      :member-name "created")
                                     (type :target-type upload-type
                                      :member-name "type")
                                     (status :target-type upload-status
                                      :member-name "status")
                                     (url :target-type sensitive-url
                                      :member-name "url")
                                     (metadata :target-type metadata
                                      :member-name "metadata")
                                     (content-type :target-type content-type
                                      :member-name "contentType")
                                     (message :target-type message :member-name
                                      "message")
                                     (category :target-type upload-category
                                      :member-name "category"))
                                    (:shape-name "Upload"))

(smithy/sdk/shapes:define-enum upload-category
    common-lisp:nil
  (:curated "CURATED")
  (:private "PRIVATE"))

(smithy/sdk/shapes:define-enum upload-status
    common-lisp:nil
  (:initialized "INITIALIZED")
  (:processing "PROCESSING")
  (:succeeded "SUCCEEDED")
  (:failed "FAILED"))

(smithy/sdk/shapes:define-enum upload-type
    common-lisp:nil
  (:android-app "ANDROID_APP")
  (:ios-app "IOS_APP")
  (:web-app "WEB_APP")
  (:external-data "EXTERNAL_DATA")
  (:appium-java-junit-test-package "APPIUM_JAVA_JUNIT_TEST_PACKAGE")
  (:appium-java-testng-test-package "APPIUM_JAVA_TESTNG_TEST_PACKAGE")
  (:appium-python-test-package "APPIUM_PYTHON_TEST_PACKAGE")
  (:appium-node-test-package "APPIUM_NODE_TEST_PACKAGE")
  (:appium-ruby-test-package "APPIUM_RUBY_TEST_PACKAGE")
  (:appium-web-java-junit-test-package "APPIUM_WEB_JAVA_JUNIT_TEST_PACKAGE")
  (:appium-web-java-testng-test-package "APPIUM_WEB_JAVA_TESTNG_TEST_PACKAGE")
  (:appium-web-python-test-package "APPIUM_WEB_PYTHON_TEST_PACKAGE")
  (:appium-web-node-test-package "APPIUM_WEB_NODE_TEST_PACKAGE")
  (:appium-web-ruby-test-package "APPIUM_WEB_RUBY_TEST_PACKAGE")
  (:calabash-test-package "CALABASH_TEST_PACKAGE")
  (:instrumentation-test-package "INSTRUMENTATION_TEST_PACKAGE")
  (:uiautomation-test-package "UIAUTOMATION_TEST_PACKAGE")
  (:uiautomator-test-package "UIAUTOMATOR_TEST_PACKAGE")
  (:xctest-test-package "XCTEST_TEST_PACKAGE")
  (:xctest-ui-test-package "XCTEST_UI_TEST_PACKAGE")
  (:appium-java-junit-test-spec "APPIUM_JAVA_JUNIT_TEST_SPEC")
  (:appium-java-testng-test-spec "APPIUM_JAVA_TESTNG_TEST_SPEC")
  (:appium-python-test-spec "APPIUM_PYTHON_TEST_SPEC")
  (:appium-node-test-spec "APPIUM_NODE_TEST_SPEC")
  (:appium-ruby-test-spec "APPIUM_RUBY_TEST_SPEC")
  (:appium-web-java-junit-test-spec "APPIUM_WEB_JAVA_JUNIT_TEST_SPEC")
  (:appium-web-java-testng-test-spec "APPIUM_WEB_JAVA_TESTNG_TEST_SPEC")
  (:appium-web-python-test-spec "APPIUM_WEB_PYTHON_TEST_SPEC")
  (:appium-web-node-test-spec "APPIUM_WEB_NODE_TEST_SPEC")
  (:appium-web-ruby-test-spec "APPIUM_WEB_RUBY_TEST_SPEC")
  (:instrumentation-test-spec "INSTRUMENTATION_TEST_SPEC")
  (:xctest-ui-test-spec "XCTEST_UI_TEST_SPEC"))

(smithy/sdk/shapes:define-list uploads :member upload)

(smithy/sdk/shapes:define-structure vpceconfiguration common-lisp:nil
                                    ((arn :target-type amazon-resource-name
                                      :member-name "arn")
                                     (vpce-configuration-name :target-type
                                      vpceconfiguration-name :member-name
                                      "vpceConfigurationName")
                                     (vpce-service-name :target-type
                                      vpceservice-name :member-name
                                      "vpceServiceName")
                                     (service-dns-name :target-type
                                      service-dns-name :member-name
                                      "serviceDnsName")
                                     (vpce-configuration-description
                                      :target-type
                                      vpceconfiguration-description
                                      :member-name
                                      "vpceConfigurationDescription"))
                                    (:shape-name "VPCEConfiguration"))

(smithy/sdk/shapes:define-type vpceconfiguration-description
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type vpceconfiguration-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list vpceconfigurations :member vpceconfiguration)

(smithy/sdk/shapes:define-type vpceservice-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type video-capture smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-structure vpc-config common-lisp:nil
                                    ((security-group-ids :target-type
                                      vpc-security-group-ids :required
                                      common-lisp:t :member-name
                                      "securityGroupIds")
                                     (subnet-ids :target-type vpc-subnet-ids
                                      :required common-lisp:t :member-name
                                      "subnetIds")
                                     (vpc-id :target-type non-empty-string
                                      :required common-lisp:t :member-name
                                      "vpcId"))
                                    (:shape-name "VpcConfig"))

(smithy/sdk/shapes:define-list vpc-security-group-ids :member security-group-id)

(smithy/sdk/shapes:define-list vpc-subnet-ids :member subnet-id)

(smithy/sdk/operation:define-operation create-device-pool :shape-name
                                       "CreateDevicePool" :input
                                       create-device-pool-request :output
                                       create-device-pool-result :errors
                                       (argument-exception
                                        limit-exceeded-exception
                                        not-found-exception
                                        service-account-exception))

(smithy/sdk/operation:define-operation create-instance-profile :shape-name
                                       "CreateInstanceProfile" :input
                                       create-instance-profile-request :output
                                       create-instance-profile-result :errors
                                       (argument-exception
                                        limit-exceeded-exception
                                        not-found-exception
                                        service-account-exception))

(smithy/sdk/operation:define-operation create-network-profile :shape-name
                                       "CreateNetworkProfile" :input
                                       create-network-profile-request :output
                                       create-network-profile-result :errors
                                       (argument-exception
                                        limit-exceeded-exception
                                        not-found-exception
                                        service-account-exception))

(smithy/sdk/operation:define-operation create-project :shape-name
                                       "CreateProject" :input
                                       create-project-request :output
                                       create-project-result :errors
                                       (argument-exception
                                        limit-exceeded-exception
                                        not-found-exception
                                        service-account-exception
                                        tag-operation-exception))

(smithy/sdk/operation:define-operation create-remote-access-session :shape-name
                                       "CreateRemoteAccessSession" :input
                                       create-remote-access-session-request
                                       :output
                                       create-remote-access-session-result
                                       :errors
                                       (argument-exception
                                        limit-exceeded-exception
                                        not-found-exception
                                        service-account-exception))

(smithy/sdk/operation:define-operation create-test-grid-project :shape-name
                                       "CreateTestGridProject" :input
                                       create-test-grid-project-request :output
                                       create-test-grid-project-result :errors
                                       (argument-exception
                                        internal-service-exception
                                        limit-exceeded-exception))

(smithy/sdk/operation:define-operation create-test-grid-url :shape-name
                                       "CreateTestGridUrl" :input
                                       create-test-grid-url-request :output
                                       create-test-grid-url-result :errors
                                       (argument-exception
                                        internal-service-exception
                                        not-found-exception))

(smithy/sdk/operation:define-operation create-upload :shape-name "CreateUpload"
                                       :input create-upload-request :output
                                       create-upload-result :errors
                                       (argument-exception
                                        limit-exceeded-exception
                                        not-found-exception
                                        service-account-exception))

(smithy/sdk/operation:define-operation create-vpceconfiguration :shape-name
                                       "CreateVPCEConfiguration" :input
                                       create-vpceconfiguration-request :output
                                       create-vpceconfiguration-result :errors
                                       (argument-exception
                                        limit-exceeded-exception
                                        service-account-exception))

(smithy/sdk/operation:define-operation delete-device-pool :shape-name
                                       "DeleteDevicePool" :input
                                       delete-device-pool-request :output
                                       delete-device-pool-result :errors
                                       (argument-exception
                                        limit-exceeded-exception
                                        not-found-exception
                                        service-account-exception))

(smithy/sdk/operation:define-operation delete-instance-profile :shape-name
                                       "DeleteInstanceProfile" :input
                                       delete-instance-profile-request :output
                                       delete-instance-profile-result :errors
                                       (argument-exception
                                        limit-exceeded-exception
                                        not-found-exception
                                        service-account-exception))

(smithy/sdk/operation:define-operation delete-network-profile :shape-name
                                       "DeleteNetworkProfile" :input
                                       delete-network-profile-request :output
                                       delete-network-profile-result :errors
                                       (argument-exception
                                        limit-exceeded-exception
                                        not-found-exception
                                        service-account-exception))

(smithy/sdk/operation:define-operation delete-project :shape-name
                                       "DeleteProject" :input
                                       delete-project-request :output
                                       delete-project-result :errors
                                       (argument-exception
                                        limit-exceeded-exception
                                        not-found-exception
                                        service-account-exception))

(smithy/sdk/operation:define-operation delete-remote-access-session :shape-name
                                       "DeleteRemoteAccessSession" :input
                                       delete-remote-access-session-request
                                       :output
                                       delete-remote-access-session-result
                                       :errors
                                       (argument-exception
                                        limit-exceeded-exception
                                        not-found-exception
                                        service-account-exception))

(smithy/sdk/operation:define-operation delete-run :shape-name "DeleteRun"
                                       :input delete-run-request :output
                                       delete-run-result :errors
                                       (argument-exception
                                        limit-exceeded-exception
                                        not-found-exception
                                        service-account-exception))

(smithy/sdk/operation:define-operation delete-test-grid-project :shape-name
                                       "DeleteTestGridProject" :input
                                       delete-test-grid-project-request :output
                                       delete-test-grid-project-result :errors
                                       (argument-exception
                                        cannot-delete-exception
                                        internal-service-exception
                                        not-found-exception))

(smithy/sdk/operation:define-operation delete-upload :shape-name "DeleteUpload"
                                       :input delete-upload-request :output
                                       delete-upload-result :errors
                                       (argument-exception
                                        limit-exceeded-exception
                                        not-found-exception
                                        service-account-exception))

(smithy/sdk/operation:define-operation delete-vpceconfiguration :shape-name
                                       "DeleteVPCEConfiguration" :input
                                       delete-vpceconfiguration-request :output
                                       delete-vpceconfiguration-result :errors
                                       (argument-exception
                                        invalid-operation-exception
                                        not-found-exception
                                        service-account-exception))

(smithy/sdk/operation:define-operation get-account-settings :shape-name
                                       "GetAccountSettings" :input
                                       get-account-settings-request :output
                                       get-account-settings-result :errors
                                       (argument-exception
                                        limit-exceeded-exception
                                        not-found-exception
                                        service-account-exception))

(smithy/sdk/operation:define-operation get-device :shape-name "GetDevice"
                                       :input get-device-request :output
                                       get-device-result :errors
                                       (argument-exception
                                        limit-exceeded-exception
                                        not-found-exception
                                        service-account-exception))

(smithy/sdk/operation:define-operation get-device-instance :shape-name
                                       "GetDeviceInstance" :input
                                       get-device-instance-request :output
                                       get-device-instance-result :errors
                                       (argument-exception
                                        limit-exceeded-exception
                                        not-found-exception
                                        service-account-exception))

(smithy/sdk/operation:define-operation get-device-pool :shape-name
                                       "GetDevicePool" :input
                                       get-device-pool-request :output
                                       get-device-pool-result :errors
                                       (argument-exception
                                        limit-exceeded-exception
                                        not-found-exception
                                        service-account-exception))

(smithy/sdk/operation:define-operation get-device-pool-compatibility
                                       :shape-name "GetDevicePoolCompatibility"
                                       :input
                                       get-device-pool-compatibility-request
                                       :output
                                       get-device-pool-compatibility-result
                                       :errors
                                       (argument-exception
                                        limit-exceeded-exception
                                        not-found-exception
                                        service-account-exception))

(smithy/sdk/operation:define-operation get-instance-profile :shape-name
                                       "GetInstanceProfile" :input
                                       get-instance-profile-request :output
                                       get-instance-profile-result :errors
                                       (argument-exception
                                        limit-exceeded-exception
                                        not-found-exception
                                        service-account-exception))

(smithy/sdk/operation:define-operation get-job :shape-name "GetJob" :input
                                       get-job-request :output get-job-result
                                       :errors
                                       (argument-exception
                                        limit-exceeded-exception
                                        not-found-exception
                                        service-account-exception))

(smithy/sdk/operation:define-operation get-network-profile :shape-name
                                       "GetNetworkProfile" :input
                                       get-network-profile-request :output
                                       get-network-profile-result :errors
                                       (argument-exception
                                        limit-exceeded-exception
                                        not-found-exception
                                        service-account-exception))

(smithy/sdk/operation:define-operation get-offering-status :shape-name
                                       "GetOfferingStatus" :input
                                       get-offering-status-request :output
                                       get-offering-status-result :errors
                                       (argument-exception
                                        limit-exceeded-exception
                                        not-eligible-exception
                                        not-found-exception
                                        service-account-exception))

(smithy/sdk/operation:define-operation get-project :shape-name "GetProject"
                                       :input get-project-request :output
                                       get-project-result :errors
                                       (argument-exception
                                        limit-exceeded-exception
                                        not-found-exception
                                        service-account-exception))

(smithy/sdk/operation:define-operation get-remote-access-session :shape-name
                                       "GetRemoteAccessSession" :input
                                       get-remote-access-session-request
                                       :output get-remote-access-session-result
                                       :errors
                                       (argument-exception
                                        limit-exceeded-exception
                                        not-found-exception
                                        service-account-exception))

(smithy/sdk/operation:define-operation get-run :shape-name "GetRun" :input
                                       get-run-request :output get-run-result
                                       :errors
                                       (argument-exception
                                        limit-exceeded-exception
                                        not-found-exception
                                        service-account-exception))

(smithy/sdk/operation:define-operation get-suite :shape-name "GetSuite" :input
                                       get-suite-request :output
                                       get-suite-result :errors
                                       (argument-exception
                                        limit-exceeded-exception
                                        not-found-exception
                                        service-account-exception))

(smithy/sdk/operation:define-operation get-test :shape-name "GetTest" :input
                                       get-test-request :output get-test-result
                                       :errors
                                       (argument-exception
                                        limit-exceeded-exception
                                        not-found-exception
                                        service-account-exception))

(smithy/sdk/operation:define-operation get-test-grid-project :shape-name
                                       "GetTestGridProject" :input
                                       get-test-grid-project-request :output
                                       get-test-grid-project-result :errors
                                       (argument-exception
                                        internal-service-exception
                                        not-found-exception))

(smithy/sdk/operation:define-operation get-test-grid-session :shape-name
                                       "GetTestGridSession" :input
                                       get-test-grid-session-request :output
                                       get-test-grid-session-result :errors
                                       (argument-exception
                                        internal-service-exception
                                        not-found-exception))

(smithy/sdk/operation:define-operation get-upload :shape-name "GetUpload"
                                       :input get-upload-request :output
                                       get-upload-result :errors
                                       (argument-exception
                                        limit-exceeded-exception
                                        not-found-exception
                                        service-account-exception))

(smithy/sdk/operation:define-operation get-vpceconfiguration :shape-name
                                       "GetVPCEConfiguration" :input
                                       get-vpceconfiguration-request :output
                                       get-vpceconfiguration-result :errors
                                       (argument-exception not-found-exception
                                        service-account-exception))

(smithy/sdk/operation:define-operation install-to-remote-access-session
                                       :shape-name
                                       "InstallToRemoteAccessSession" :input
                                       install-to-remote-access-session-request
                                       :output
                                       install-to-remote-access-session-result
                                       :errors
                                       (argument-exception
                                        limit-exceeded-exception
                                        not-found-exception
                                        service-account-exception))

(smithy/sdk/operation:define-operation list-artifacts :shape-name
                                       "ListArtifacts" :input
                                       list-artifacts-request :output
                                       list-artifacts-result :errors
                                       (argument-exception
                                        limit-exceeded-exception
                                        not-found-exception
                                        service-account-exception))

(smithy/sdk/operation:define-operation list-device-instances :shape-name
                                       "ListDeviceInstances" :input
                                       list-device-instances-request :output
                                       list-device-instances-result :errors
                                       (argument-exception
                                        limit-exceeded-exception
                                        not-found-exception
                                        service-account-exception))

(smithy/sdk/operation:define-operation list-device-pools :shape-name
                                       "ListDevicePools" :input
                                       list-device-pools-request :output
                                       list-device-pools-result :errors
                                       (argument-exception
                                        limit-exceeded-exception
                                        not-found-exception
                                        service-account-exception))

(smithy/sdk/operation:define-operation list-devices :shape-name "ListDevices"
                                       :input list-devices-request :output
                                       list-devices-result :errors
                                       (argument-exception
                                        limit-exceeded-exception
                                        not-found-exception
                                        service-account-exception))

(smithy/sdk/operation:define-operation list-instance-profiles :shape-name
                                       "ListInstanceProfiles" :input
                                       list-instance-profiles-request :output
                                       list-instance-profiles-result :errors
                                       (argument-exception
                                        limit-exceeded-exception
                                        not-found-exception
                                        service-account-exception))

(smithy/sdk/operation:define-operation list-jobs :shape-name "ListJobs" :input
                                       list-jobs-request :output
                                       list-jobs-result :errors
                                       (argument-exception
                                        limit-exceeded-exception
                                        not-found-exception
                                        service-account-exception))

(smithy/sdk/operation:define-operation list-network-profiles :shape-name
                                       "ListNetworkProfiles" :input
                                       list-network-profiles-request :output
                                       list-network-profiles-result :errors
                                       (argument-exception
                                        limit-exceeded-exception
                                        not-found-exception
                                        service-account-exception))

(smithy/sdk/operation:define-operation list-offering-promotions :shape-name
                                       "ListOfferingPromotions" :input
                                       list-offering-promotions-request :output
                                       list-offering-promotions-result :errors
                                       (argument-exception
                                        limit-exceeded-exception
                                        not-eligible-exception
                                        not-found-exception
                                        service-account-exception))

(smithy/sdk/operation:define-operation list-offering-transactions :shape-name
                                       "ListOfferingTransactions" :input
                                       list-offering-transactions-request
                                       :output
                                       list-offering-transactions-result
                                       :errors
                                       (argument-exception
                                        limit-exceeded-exception
                                        not-eligible-exception
                                        not-found-exception
                                        service-account-exception))

(smithy/sdk/operation:define-operation list-offerings :shape-name
                                       "ListOfferings" :input
                                       list-offerings-request :output
                                       list-offerings-result :errors
                                       (argument-exception
                                        limit-exceeded-exception
                                        not-eligible-exception
                                        not-found-exception
                                        service-account-exception))

(smithy/sdk/operation:define-operation list-projects :shape-name "ListProjects"
                                       :input list-projects-request :output
                                       list-projects-result :errors
                                       (argument-exception
                                        limit-exceeded-exception
                                        not-found-exception
                                        service-account-exception))

(smithy/sdk/operation:define-operation list-remote-access-sessions :shape-name
                                       "ListRemoteAccessSessions" :input
                                       list-remote-access-sessions-request
                                       :output
                                       list-remote-access-sessions-result
                                       :errors
                                       (argument-exception
                                        limit-exceeded-exception
                                        not-found-exception
                                        service-account-exception))

(smithy/sdk/operation:define-operation list-runs :shape-name "ListRuns" :input
                                       list-runs-request :output
                                       list-runs-result :errors
                                       (argument-exception
                                        limit-exceeded-exception
                                        not-found-exception
                                        service-account-exception))

(smithy/sdk/operation:define-operation list-samples :shape-name "ListSamples"
                                       :input list-samples-request :output
                                       list-samples-result :errors
                                       (argument-exception
                                        limit-exceeded-exception
                                        not-found-exception
                                        service-account-exception))

(smithy/sdk/operation:define-operation list-suites :shape-name "ListSuites"
                                       :input list-suites-request :output
                                       list-suites-result :errors
                                       (argument-exception
                                        limit-exceeded-exception
                                        not-found-exception
                                        service-account-exception))

(smithy/sdk/operation:define-operation list-tags-for-resource :shape-name
                                       "ListTagsForResource" :input
                                       list-tags-for-resource-request :output
                                       list-tags-for-resource-response :errors
                                       (argument-exception not-found-exception
                                        tag-operation-exception))

(smithy/sdk/operation:define-operation list-test-grid-projects :shape-name
                                       "ListTestGridProjects" :input
                                       list-test-grid-projects-request :output
                                       list-test-grid-projects-result :errors
                                       (argument-exception
                                        internal-service-exception))

(smithy/sdk/operation:define-operation list-test-grid-session-actions
                                       :shape-name "ListTestGridSessionActions"
                                       :input
                                       list-test-grid-session-actions-request
                                       :output
                                       list-test-grid-session-actions-result
                                       :errors
                                       (argument-exception
                                        internal-service-exception
                                        not-found-exception))

(smithy/sdk/operation:define-operation list-test-grid-session-artifacts
                                       :shape-name
                                       "ListTestGridSessionArtifacts" :input
                                       list-test-grid-session-artifacts-request
                                       :output
                                       list-test-grid-session-artifacts-result
                                       :errors
                                       (argument-exception
                                        internal-service-exception
                                        not-found-exception))

(smithy/sdk/operation:define-operation list-test-grid-sessions :shape-name
                                       "ListTestGridSessions" :input
                                       list-test-grid-sessions-request :output
                                       list-test-grid-sessions-result :errors
                                       (argument-exception
                                        internal-service-exception
                                        not-found-exception))

(smithy/sdk/operation:define-operation list-tests :shape-name "ListTests"
                                       :input list-tests-request :output
                                       list-tests-result :errors
                                       (argument-exception
                                        limit-exceeded-exception
                                        not-found-exception
                                        service-account-exception))

(smithy/sdk/operation:define-operation list-unique-problems :shape-name
                                       "ListUniqueProblems" :input
                                       list-unique-problems-request :output
                                       list-unique-problems-result :errors
                                       (argument-exception
                                        limit-exceeded-exception
                                        not-found-exception
                                        service-account-exception))

(smithy/sdk/operation:define-operation list-uploads :shape-name "ListUploads"
                                       :input list-uploads-request :output
                                       list-uploads-result :errors
                                       (argument-exception
                                        limit-exceeded-exception
                                        not-found-exception
                                        service-account-exception))

(smithy/sdk/operation:define-operation list-vpceconfigurations :shape-name
                                       "ListVPCEConfigurations" :input
                                       list-vpceconfigurations-request :output
                                       list-vpceconfigurations-result :errors
                                       (argument-exception
                                        service-account-exception))

(smithy/sdk/operation:define-operation purchase-offering :shape-name
                                       "PurchaseOffering" :input
                                       purchase-offering-request :output
                                       purchase-offering-result :errors
                                       (argument-exception
                                        limit-exceeded-exception
                                        not-eligible-exception
                                        not-found-exception
                                        service-account-exception))

(smithy/sdk/operation:define-operation renew-offering :shape-name
                                       "RenewOffering" :input
                                       renew-offering-request :output
                                       renew-offering-result :errors
                                       (argument-exception
                                        limit-exceeded-exception
                                        not-eligible-exception
                                        not-found-exception
                                        service-account-exception))

(smithy/sdk/operation:define-operation schedule-run :shape-name "ScheduleRun"
                                       :input schedule-run-request :output
                                       schedule-run-result :errors
                                       (argument-exception
                                        idempotency-exception
                                        limit-exceeded-exception
                                        not-found-exception
                                        service-account-exception))

(smithy/sdk/operation:define-operation stop-job :shape-name "StopJob" :input
                                       stop-job-request :output stop-job-result
                                       :errors
                                       (argument-exception
                                        limit-exceeded-exception
                                        not-found-exception
                                        service-account-exception))

(smithy/sdk/operation:define-operation stop-remote-access-session :shape-name
                                       "StopRemoteAccessSession" :input
                                       stop-remote-access-session-request
                                       :output
                                       stop-remote-access-session-result
                                       :errors
                                       (argument-exception
                                        limit-exceeded-exception
                                        not-found-exception
                                        service-account-exception))

(smithy/sdk/operation:define-operation stop-run :shape-name "StopRun" :input
                                       stop-run-request :output stop-run-result
                                       :errors
                                       (argument-exception
                                        limit-exceeded-exception
                                        not-found-exception
                                        service-account-exception))

(smithy/sdk/operation:define-operation tag-resource :shape-name "TagResource"
                                       :input tag-resource-request :output
                                       tag-resource-response :errors
                                       (argument-exception not-found-exception
                                        tag-operation-exception
                                        tag-policy-exception
                                        too-many-tags-exception))

(smithy/sdk/operation:define-operation untag-resource :shape-name
                                       "UntagResource" :input
                                       untag-resource-request :output
                                       untag-resource-response :errors
                                       (argument-exception not-found-exception
                                        tag-operation-exception))

(smithy/sdk/operation:define-operation update-device-instance :shape-name
                                       "UpdateDeviceInstance" :input
                                       update-device-instance-request :output
                                       update-device-instance-result :errors
                                       (argument-exception
                                        limit-exceeded-exception
                                        not-found-exception
                                        service-account-exception))

(smithy/sdk/operation:define-operation update-device-pool :shape-name
                                       "UpdateDevicePool" :input
                                       update-device-pool-request :output
                                       update-device-pool-result :errors
                                       (argument-exception
                                        limit-exceeded-exception
                                        not-found-exception
                                        service-account-exception))

(smithy/sdk/operation:define-operation update-instance-profile :shape-name
                                       "UpdateInstanceProfile" :input
                                       update-instance-profile-request :output
                                       update-instance-profile-result :errors
                                       (argument-exception
                                        limit-exceeded-exception
                                        not-found-exception
                                        service-account-exception))

(smithy/sdk/operation:define-operation update-network-profile :shape-name
                                       "UpdateNetworkProfile" :input
                                       update-network-profile-request :output
                                       update-network-profile-result :errors
                                       (argument-exception
                                        limit-exceeded-exception
                                        not-found-exception
                                        service-account-exception))

(smithy/sdk/operation:define-operation update-project :shape-name
                                       "UpdateProject" :input
                                       update-project-request :output
                                       update-project-result :errors
                                       (argument-exception
                                        limit-exceeded-exception
                                        not-found-exception
                                        service-account-exception))

(smithy/sdk/operation:define-operation update-test-grid-project :shape-name
                                       "UpdateTestGridProject" :input
                                       update-test-grid-project-request :output
                                       update-test-grid-project-result :errors
                                       (argument-exception
                                        internal-service-exception
                                        limit-exceeded-exception
                                        not-found-exception))

(smithy/sdk/operation:define-operation update-upload :shape-name "UpdateUpload"
                                       :input update-upload-request :output
                                       update-upload-result :errors
                                       (argument-exception
                                        limit-exceeded-exception
                                        not-found-exception
                                        service-account-exception))

(smithy/sdk/operation:define-operation update-vpceconfiguration :shape-name
                                       "UpdateVPCEConfiguration" :input
                                       update-vpceconfiguration-request :output
                                       update-vpceconfiguration-result :errors
                                       (argument-exception
                                        invalid-operation-exception
                                        not-found-exception
                                        service-account-exception))
