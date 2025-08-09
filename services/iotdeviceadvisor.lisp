(uiop/package:define-package #:pira/iotdeviceadvisor (:use)
                             (:export #:amazon-resource-name
                              #:authentication-method #:client-token
                              #:conflict-exception #:create-suite-definition
                              #:create-suite-definition-request
                              #:create-suite-definition-response
                              #:delete-suite-definition
                              #:delete-suite-definition-request
                              #:delete-suite-definition-response
                              #:device-under-test #:device-under-test-list
                              #:endpoint #:error-reason #:failure
                              #:get-endpoint #:get-endpoint-request
                              #:get-endpoint-response #:get-suite-definition
                              #:get-suite-definition-request
                              #:get-suite-definition-response #:get-suite-run
                              #:get-suite-run-report
                              #:get-suite-run-report-request
                              #:get-suite-run-report-response
                              #:get-suite-run-request #:get-suite-run-response
                              #:group-name #:group-result #:group-result-list
                              #:intended-for-qualification-boolean
                              #:internal-server-exception #:iot-senate-service
                              #:is-long-duration-test-boolean
                              #:list-suite-definitions
                              #:list-suite-definitions-request
                              #:list-suite-definitions-response
                              #:list-suite-runs #:list-suite-runs-request
                              #:list-suite-runs-response
                              #:list-tags-for-resource
                              #:list-tags-for-resource-request
                              #:list-tags-for-resource-response #:log-url
                              #:max-results #:message #:parallel-run #:protocol
                              #:qualification-report-download-url
                              #:resource-not-found-exception #:root-group
                              #:selected-test-list #:start-suite-run
                              #:start-suite-run-request
                              #:start-suite-run-response #:status
                              #:stop-suite-run #:stop-suite-run-request
                              #:stop-suite-run-response #:string128 #:string256
                              #:suite-definition-configuration
                              #:suite-definition-information
                              #:suite-definition-information-list
                              #:suite-definition-name
                              #:suite-definition-version
                              #:suite-run-configuration #:suite-run-information
                              #:suite-run-result-count #:suite-run-status
                              #:suite-runs-list #:system-message #:tag-key-list
                              #:tag-map #:tag-resource #:tag-resource-request
                              #:tag-resource-response
                              #:test-case-definition-name #:test-case-run
                              #:test-case-runs #:test-case-scenario
                              #:test-case-scenario-id
                              #:test-case-scenario-status
                              #:test-case-scenario-type
                              #:test-case-scenarios-list #:test-result
                              #:timestamp #:token #:uuid #:untag-resource
                              #:untag-resource-request
                              #:untag-resource-response
                              #:update-suite-definition
                              #:update-suite-definition-request
                              #:update-suite-definition-response
                              #:validation-exception #:warnings))
(common-lisp:in-package #:pira/iotdeviceadvisor)

(smithy/sdk/service:define-service iot-senate-service :shape-name
                                   "IotSenateService" :version "2020-09-18"
                                   :title "AWS IoT Core Device Advisor" :traits
                                   '(("aws.api#service"
                                      ("sdkId" . "IotDeviceAdvisor")
                                      ("arnNamespace" . "iotdeviceadvisor")
                                      ("cloudFormationName"
                                       . "IotDeviceAdvisor")
                                      ("cloudTrailEventSource"
                                       . "iotdeviceadvisor.amazonaws.com")
                                      ("endpointPrefix"
                                       . "api.iotdeviceadvisor"))
                                     ("aws.auth#sigv4"
                                      ("name" . "iotdeviceadvisor"))
                                     ("aws.protocols#restJson1")))

(smithy/sdk/shapes:define-type amazon-resource-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum authentication-method
    common-lisp:nil
  (:x509client-certificate "X509ClientCertificate")
  (:signature-version4 "SignatureVersion4"))

(smithy/sdk/shapes:define-type client-token smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error conflict-exception common-lisp:nil
                                ((message :target-type message :member-name
                                  "message"))
                                (:shape-name "ConflictException")
                                (:error-code 400))

(smithy/sdk/shapes:define-input create-suite-definition-request common-lisp:nil
                                ((suite-definition-configuration :target-type
                                  suite-definition-configuration :required
                                  common-lisp:t :member-name
                                  "suiteDefinitionConfiguration")
                                 (tags :target-type tag-map :member-name
                                  "tags")
                                 (client-token :target-type client-token
                                  :member-name "clientToken"))
                                (:shape-name "CreateSuiteDefinitionRequest"))

(smithy/sdk/shapes:define-output create-suite-definition-response
                                 common-lisp:nil
                                 ((suite-definition-id :target-type uuid
                                   :member-name "suiteDefinitionId")
                                  (suite-definition-arn :target-type
                                   amazon-resource-name :member-name
                                   "suiteDefinitionArn")
                                  (suite-definition-name :target-type
                                   suite-definition-name :member-name
                                   "suiteDefinitionName")
                                  (created-at :target-type timestamp
                                   :member-name "createdAt"))
                                 (:shape-name "CreateSuiteDefinitionResponse"))

(smithy/sdk/shapes:define-input delete-suite-definition-request common-lisp:nil
                                ((suite-definition-id :target-type uuid
                                  :required common-lisp:t :member-name
                                  "suiteDefinitionId" :http-label
                                  common-lisp:t))
                                (:shape-name "DeleteSuiteDefinitionRequest"))

(smithy/sdk/shapes:define-output delete-suite-definition-response
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name "DeleteSuiteDefinitionResponse"))

(smithy/sdk/shapes:define-structure device-under-test common-lisp:nil
                                    ((thing-arn :target-type
                                      amazon-resource-name :member-name
                                      "thingArn")
                                     (certificate-arn :target-type
                                      amazon-resource-name :member-name
                                      "certificateArn")
                                     (device-role-arn :target-type
                                      amazon-resource-name :member-name
                                      "deviceRoleArn"))
                                    (:shape-name "DeviceUnderTest"))

(smithy/sdk/shapes:define-list device-under-test-list :member device-under-test)

(smithy/sdk/shapes:define-type endpoint smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type error-reason smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type failure smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input get-endpoint-request common-lisp:nil
                                ((thing-arn :target-type amazon-resource-name
                                  :member-name "thingArn" :http-query
                                  "thingArn")
                                 (certificate-arn :target-type
                                  amazon-resource-name :member-name
                                  "certificateArn" :http-query
                                  "certificateArn")
                                 (device-role-arn :target-type
                                  amazon-resource-name :member-name
                                  "deviceRoleArn" :http-query "deviceRoleArn")
                                 (authentication-method :target-type
                                  authentication-method :member-name
                                  "authenticationMethod" :http-query
                                  "authenticationMethod"))
                                (:shape-name "GetEndpointRequest"))

(smithy/sdk/shapes:define-output get-endpoint-response common-lisp:nil
                                 ((endpoint :target-type endpoint :member-name
                                   "endpoint"))
                                 (:shape-name "GetEndpointResponse"))

(smithy/sdk/shapes:define-input get-suite-definition-request common-lisp:nil
                                ((suite-definition-id :target-type uuid
                                  :required common-lisp:t :member-name
                                  "suiteDefinitionId" :http-label
                                  common-lisp:t)
                                 (suite-definition-version :target-type
                                  suite-definition-version :member-name
                                  "suiteDefinitionVersion" :http-query
                                  "suiteDefinitionVersion"))
                                (:shape-name "GetSuiteDefinitionRequest"))

(smithy/sdk/shapes:define-output get-suite-definition-response common-lisp:nil
                                 ((suite-definition-id :target-type uuid
                                   :member-name "suiteDefinitionId")
                                  (suite-definition-arn :target-type
                                   amazon-resource-name :member-name
                                   "suiteDefinitionArn")
                                  (suite-definition-version :target-type
                                   suite-definition-version :member-name
                                   "suiteDefinitionVersion")
                                  (latest-version :target-type
                                   suite-definition-version :member-name
                                   "latestVersion")
                                  (suite-definition-configuration :target-type
                                   suite-definition-configuration :member-name
                                   "suiteDefinitionConfiguration")
                                  (created-at :target-type timestamp
                                   :member-name "createdAt")
                                  (last-modified-at :target-type timestamp
                                   :member-name "lastModifiedAt")
                                  (tags :target-type tag-map :member-name
                                   "tags"))
                                 (:shape-name "GetSuiteDefinitionResponse"))

(smithy/sdk/shapes:define-input get-suite-run-report-request common-lisp:nil
                                ((suite-definition-id :target-type uuid
                                  :required common-lisp:t :member-name
                                  "suiteDefinitionId" :http-label
                                  common-lisp:t)
                                 (suite-run-id :target-type uuid :required
                                  common-lisp:t :member-name "suiteRunId"
                                  :http-label common-lisp:t))
                                (:shape-name "GetSuiteRunReportRequest"))

(smithy/sdk/shapes:define-output get-suite-run-report-response common-lisp:nil
                                 ((qualification-report-download-url
                                   :target-type
                                   qualification-report-download-url
                                   :member-name
                                   "qualificationReportDownloadUrl"))
                                 (:shape-name "GetSuiteRunReportResponse"))

(smithy/sdk/shapes:define-input get-suite-run-request common-lisp:nil
                                ((suite-definition-id :target-type uuid
                                  :required common-lisp:t :member-name
                                  "suiteDefinitionId" :http-label
                                  common-lisp:t)
                                 (suite-run-id :target-type uuid :required
                                  common-lisp:t :member-name "suiteRunId"
                                  :http-label common-lisp:t))
                                (:shape-name "GetSuiteRunRequest"))

(smithy/sdk/shapes:define-output get-suite-run-response common-lisp:nil
                                 ((suite-definition-id :target-type uuid
                                   :member-name "suiteDefinitionId")
                                  (suite-definition-version :target-type
                                   suite-definition-version :member-name
                                   "suiteDefinitionVersion")
                                  (suite-run-id :target-type uuid :member-name
                                   "suiteRunId")
                                  (suite-run-arn :target-type
                                   amazon-resource-name :member-name
                                   "suiteRunArn")
                                  (suite-run-configuration :target-type
                                   suite-run-configuration :member-name
                                   "suiteRunConfiguration")
                                  (test-result :target-type test-result
                                   :member-name "testResult")
                                  (start-time :target-type timestamp
                                   :member-name "startTime")
                                  (end-time :target-type timestamp :member-name
                                   "endTime")
                                  (status :target-type suite-run-status
                                   :member-name "status")
                                  (error-reason :target-type error-reason
                                   :member-name "errorReason")
                                  (tags :target-type tag-map :member-name
                                   "tags"))
                                 (:shape-name "GetSuiteRunResponse"))

(smithy/sdk/shapes:define-type group-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure group-result common-lisp:nil
                                    ((group-id :target-type uuid :member-name
                                      "groupId")
                                     (group-name :target-type group-name
                                      :member-name "groupName")
                                     (tests :target-type test-case-runs
                                      :member-name "tests"))
                                    (:shape-name "GroupResult"))

(smithy/sdk/shapes:define-list group-result-list :member group-result)

(smithy/sdk/shapes:define-type intended-for-qualification-boolean
                               smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-error internal-server-exception common-lisp:nil
                                ((message :target-type message :member-name
                                  "message"))
                                (:shape-name "InternalServerException")
                                (:error-code 500))

(smithy/sdk/shapes:define-type is-long-duration-test-boolean
                               smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-input list-suite-definitions-request common-lisp:nil
                                ((max-results :target-type max-results
                                  :member-name "maxResults" :http-query
                                  "maxResults")
                                 (next-token :target-type token :member-name
                                  "nextToken" :http-query "nextToken"))
                                (:shape-name "ListSuiteDefinitionsRequest"))

(smithy/sdk/shapes:define-output list-suite-definitions-response
                                 common-lisp:nil
                                 ((suite-definition-information-list
                                   :target-type
                                   suite-definition-information-list
                                   :member-name
                                   "suiteDefinitionInformationList")
                                  (next-token :target-type token :member-name
                                   "nextToken"))
                                 (:shape-name "ListSuiteDefinitionsResponse"))

(smithy/sdk/shapes:define-input list-suite-runs-request common-lisp:nil
                                ((suite-definition-id :target-type uuid
                                  :member-name "suiteDefinitionId" :http-query
                                  "suiteDefinitionId")
                                 (suite-definition-version :target-type
                                  suite-definition-version :member-name
                                  "suiteDefinitionVersion" :http-query
                                  "suiteDefinitionVersion")
                                 (max-results :target-type max-results
                                  :member-name "maxResults" :http-query
                                  "maxResults")
                                 (next-token :target-type token :member-name
                                  "nextToken" :http-query "nextToken"))
                                (:shape-name "ListSuiteRunsRequest"))

(smithy/sdk/shapes:define-output list-suite-runs-response common-lisp:nil
                                 ((suite-runs-list :target-type suite-runs-list
                                   :member-name "suiteRunsList")
                                  (next-token :target-type token :member-name
                                   "nextToken"))
                                 (:shape-name "ListSuiteRunsResponse"))

(smithy/sdk/shapes:define-input list-tags-for-resource-request common-lisp:nil
                                ((resource-arn :target-type
                                  amazon-resource-name :required common-lisp:t
                                  :member-name "resourceArn" :http-label
                                  common-lisp:t))
                                (:shape-name "ListTagsForResourceRequest"))

(smithy/sdk/shapes:define-output list-tags-for-resource-response
                                 common-lisp:nil
                                 ((tags :target-type tag-map :member-name
                                   "tags"))
                                 (:shape-name "ListTagsForResourceResponse"))

(smithy/sdk/shapes:define-type log-url smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type max-results smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type message smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type parallel-run smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-enum protocol
    common-lisp:nil
  (:mqtt-v3-1-1 "MqttV3_1_1")
  (:mqtt-v5 "MqttV5")
  (:mqtt-v3-1-1-over-web-socket "MqttV3_1_1_OverWebSocket")
  (:mqtt-v5-over-web-socket "MqttV5_OverWebSocket"))

(smithy/sdk/shapes:define-type qualification-report-download-url
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error resource-not-found-exception common-lisp:nil
                                ((message :target-type message :member-name
                                  "message"))
                                (:shape-name "ResourceNotFoundException")
                                (:error-code 404))

(smithy/sdk/shapes:define-type root-group smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list selected-test-list :member uuid)

(smithy/sdk/shapes:define-input start-suite-run-request common-lisp:nil
                                ((suite-definition-id :target-type uuid
                                  :required common-lisp:t :member-name
                                  "suiteDefinitionId" :http-label
                                  common-lisp:t)
                                 (suite-definition-version :target-type
                                  suite-definition-version :member-name
                                  "suiteDefinitionVersion")
                                 (suite-run-configuration :target-type
                                  suite-run-configuration :required
                                  common-lisp:t :member-name
                                  "suiteRunConfiguration")
                                 (tags :target-type tag-map :member-name
                                  "tags"))
                                (:shape-name "StartSuiteRunRequest"))

(smithy/sdk/shapes:define-output start-suite-run-response common-lisp:nil
                                 ((suite-run-id :target-type uuid :member-name
                                   "suiteRunId")
                                  (suite-run-arn :target-type
                                   amazon-resource-name :member-name
                                   "suiteRunArn")
                                  (created-at :target-type timestamp
                                   :member-name "createdAt")
                                  (endpoint :target-type endpoint :member-name
                                   "endpoint"))
                                 (:shape-name "StartSuiteRunResponse"))

(smithy/sdk/shapes:define-enum status
    common-lisp:nil
  (:pass "PASS")
  (:fail "FAIL")
  (:canceled "CANCELED")
  (:pending "PENDING")
  (:running "RUNNING")
  (:stopping "STOPPING")
  (:stopped "STOPPED")
  (:pass-with-warnings "PASS_WITH_WARNINGS")
  (:error "ERROR"))

(smithy/sdk/shapes:define-input stop-suite-run-request common-lisp:nil
                                ((suite-definition-id :target-type uuid
                                  :required common-lisp:t :member-name
                                  "suiteDefinitionId" :http-label
                                  common-lisp:t)
                                 (suite-run-id :target-type uuid :required
                                  common-lisp:t :member-name "suiteRunId"
                                  :http-label common-lisp:t))
                                (:shape-name "StopSuiteRunRequest"))

(smithy/sdk/shapes:define-output stop-suite-run-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "StopSuiteRunResponse"))

(smithy/sdk/shapes:define-type string128 smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type string256 smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure suite-definition-configuration
                                    common-lisp:nil
                                    ((suite-definition-name :target-type
                                      suite-definition-name :required
                                      common-lisp:t :member-name
                                      "suiteDefinitionName")
                                     (devices :target-type
                                      device-under-test-list :member-name
                                      "devices")
                                     (intended-for-qualification :target-type
                                      intended-for-qualification-boolean
                                      :member-name "intendedForQualification")
                                     (is-long-duration-test :target-type
                                      is-long-duration-test-boolean
                                      :member-name "isLongDurationTest")
                                     (root-group :target-type root-group
                                      :required common-lisp:t :member-name
                                      "rootGroup")
                                     (device-permission-role-arn :target-type
                                      amazon-resource-name :required
                                      common-lisp:t :member-name
                                      "devicePermissionRoleArn")
                                     (protocol :target-type protocol
                                      :member-name "protocol"))
                                    (:shape-name
                                     "SuiteDefinitionConfiguration"))

(smithy/sdk/shapes:define-structure suite-definition-information
                                    common-lisp:nil
                                    ((suite-definition-id :target-type uuid
                                      :member-name "suiteDefinitionId")
                                     (suite-definition-name :target-type
                                      suite-definition-name :member-name
                                      "suiteDefinitionName")
                                     (default-devices :target-type
                                      device-under-test-list :member-name
                                      "defaultDevices")
                                     (intended-for-qualification :target-type
                                      intended-for-qualification-boolean
                                      :member-name "intendedForQualification")
                                     (is-long-duration-test :target-type
                                      is-long-duration-test-boolean
                                      :member-name "isLongDurationTest")
                                     (protocol :target-type protocol
                                      :member-name "protocol")
                                     (created-at :target-type timestamp
                                      :member-name "createdAt"))
                                    (:shape-name "SuiteDefinitionInformation"))

(smithy/sdk/shapes:define-list suite-definition-information-list :member
                               suite-definition-information)

(smithy/sdk/shapes:define-type suite-definition-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type suite-definition-version
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure suite-run-configuration common-lisp:nil
                                    ((primary-device :target-type
                                      device-under-test :required common-lisp:t
                                      :member-name "primaryDevice")
                                     (selected-test-list :target-type
                                      selected-test-list :member-name
                                      "selectedTestList")
                                     (parallel-run :target-type parallel-run
                                      :member-name "parallelRun"))
                                    (:shape-name "SuiteRunConfiguration"))

(smithy/sdk/shapes:define-structure suite-run-information common-lisp:nil
                                    ((suite-definition-id :target-type uuid
                                      :member-name "suiteDefinitionId")
                                     (suite-definition-version :target-type
                                      suite-definition-version :member-name
                                      "suiteDefinitionVersion")
                                     (suite-definition-name :target-type
                                      suite-definition-name :member-name
                                      "suiteDefinitionName")
                                     (suite-run-id :target-type uuid
                                      :member-name "suiteRunId")
                                     (created-at :target-type timestamp
                                      :member-name "createdAt")
                                     (started-at :target-type timestamp
                                      :member-name "startedAt")
                                     (end-at :target-type timestamp
                                      :member-name "endAt")
                                     (status :target-type suite-run-status
                                      :member-name "status")
                                     (passed :target-type
                                      suite-run-result-count :member-name
                                      "passed")
                                     (failed :target-type
                                      suite-run-result-count :member-name
                                      "failed"))
                                    (:shape-name "SuiteRunInformation"))

(smithy/sdk/shapes:define-type suite-run-result-count
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-enum suite-run-status
    common-lisp:nil
  (:pass "PASS")
  (:fail "FAIL")
  (:canceled "CANCELED")
  (:pending "PENDING")
  (:running "RUNNING")
  (:stopping "STOPPING")
  (:stopped "STOPPED")
  (:pass-with-warnings "PASS_WITH_WARNINGS")
  (:error "ERROR"))

(smithy/sdk/shapes:define-list suite-runs-list :member suite-run-information)

(smithy/sdk/shapes:define-type system-message smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list tag-key-list :member string128)

(smithy/sdk/shapes:define-map tag-map :key string128 :value string256)

(smithy/sdk/shapes:define-input tag-resource-request common-lisp:nil
                                ((resource-arn :target-type
                                  amazon-resource-name :required common-lisp:t
                                  :member-name "resourceArn" :http-label
                                  common-lisp:t)
                                 (tags :target-type tag-map :required
                                  common-lisp:t :member-name "tags"))
                                (:shape-name "TagResourceRequest"))

(smithy/sdk/shapes:define-output tag-resource-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "TagResourceResponse"))

(smithy/sdk/shapes:define-type test-case-definition-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure test-case-run common-lisp:nil
                                    ((test-case-run-id :target-type uuid
                                      :member-name "testCaseRunId")
                                     (test-case-definition-id :target-type uuid
                                      :member-name "testCaseDefinitionId")
                                     (test-case-definition-name :target-type
                                      test-case-definition-name :member-name
                                      "testCaseDefinitionName")
                                     (status :target-type status :member-name
                                      "status")
                                     (start-time :target-type timestamp
                                      :member-name "startTime")
                                     (end-time :target-type timestamp
                                      :member-name "endTime")
                                     (log-url :target-type log-url :member-name
                                      "logUrl")
                                     (warnings :target-type warnings
                                      :member-name "warnings")
                                     (failure :target-type failure :member-name
                                      "failure")
                                     (test-scenarios :target-type
                                      test-case-scenarios-list :member-name
                                      "testScenarios"))
                                    (:shape-name "TestCaseRun"))

(smithy/sdk/shapes:define-list test-case-runs :member test-case-run)

(smithy/sdk/shapes:define-structure test-case-scenario common-lisp:nil
                                    ((test-case-scenario-id :target-type
                                      test-case-scenario-id :member-name
                                      "testCaseScenarioId")
                                     (test-case-scenario-type :target-type
                                      test-case-scenario-type :member-name
                                      "testCaseScenarioType")
                                     (status :target-type
                                      test-case-scenario-status :member-name
                                      "status")
                                     (failure :target-type failure :member-name
                                      "failure")
                                     (system-message :target-type
                                      system-message :member-name
                                      "systemMessage"))
                                    (:shape-name "TestCaseScenario"))

(smithy/sdk/shapes:define-type test-case-scenario-id
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum test-case-scenario-status
    common-lisp:nil
  (:pass "PASS")
  (:fail "FAIL")
  (:canceled "CANCELED")
  (:pending "PENDING")
  (:running "RUNNING")
  (:stopping "STOPPING")
  (:stopped "STOPPED")
  (:pass-with-warnings "PASS_WITH_WARNINGS")
  (:error "ERROR"))

(smithy/sdk/shapes:define-enum test-case-scenario-type
    common-lisp:nil
  (:advanced "Advanced")
  (:basic "Basic"))

(smithy/sdk/shapes:define-list test-case-scenarios-list :member
                               test-case-scenario)

(smithy/sdk/shapes:define-structure test-result common-lisp:nil
                                    ((groups :target-type group-result-list
                                      :member-name "groups"))
                                    (:shape-name "TestResult"))

(smithy/sdk/shapes:define-type timestamp smithy/sdk/smithy-types:timestamp)

(smithy/sdk/shapes:define-type token smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type uuid smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input untag-resource-request common-lisp:nil
                                ((resource-arn :target-type
                                  amazon-resource-name :required common-lisp:t
                                  :member-name "resourceArn" :http-label
                                  common-lisp:t)
                                 (tag-keys :target-type tag-key-list :required
                                  common-lisp:t :member-name "tagKeys"
                                  :http-query "tagKeys"))
                                (:shape-name "UntagResourceRequest"))

(smithy/sdk/shapes:define-output untag-resource-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "UntagResourceResponse"))

(smithy/sdk/shapes:define-input update-suite-definition-request common-lisp:nil
                                ((suite-definition-id :target-type uuid
                                  :required common-lisp:t :member-name
                                  "suiteDefinitionId" :http-label
                                  common-lisp:t)
                                 (suite-definition-configuration :target-type
                                  suite-definition-configuration :required
                                  common-lisp:t :member-name
                                  "suiteDefinitionConfiguration"))
                                (:shape-name "UpdateSuiteDefinitionRequest"))

(smithy/sdk/shapes:define-output update-suite-definition-response
                                 common-lisp:nil
                                 ((suite-definition-id :target-type uuid
                                   :member-name "suiteDefinitionId")
                                  (suite-definition-arn :target-type
                                   amazon-resource-name :member-name
                                   "suiteDefinitionArn")
                                  (suite-definition-name :target-type
                                   suite-definition-name :member-name
                                   "suiteDefinitionName")
                                  (suite-definition-version :target-type
                                   suite-definition-version :member-name
                                   "suiteDefinitionVersion")
                                  (created-at :target-type timestamp
                                   :member-name "createdAt")
                                  (last-updated-at :target-type timestamp
                                   :member-name "lastUpdatedAt"))
                                 (:shape-name "UpdateSuiteDefinitionResponse"))

(smithy/sdk/shapes:define-error validation-exception common-lisp:nil
                                ((message :target-type message :member-name
                                  "message"))
                                (:shape-name "ValidationException")
                                (:error-code 400))

(smithy/sdk/shapes:define-type warnings smithy/sdk/smithy-types:string)

(smithy/sdk/operation:define-operation create-suite-definition :shape-name
                                       "CreateSuiteDefinition" :input
                                       create-suite-definition-request :output
                                       create-suite-definition-response :errors
                                       (internal-server-exception
                                        validation-exception)
                                       :method "POST" :uri "/suiteDefinitions"
                                       :code 200)

(smithy/sdk/operation:define-operation delete-suite-definition :shape-name
                                       "DeleteSuiteDefinition" :input
                                       delete-suite-definition-request :output
                                       delete-suite-definition-response :errors
                                       (internal-server-exception
                                        validation-exception)
                                       :method "DELETE" :uri
                                       "/suiteDefinitions/{suiteDefinitionId}"
                                       :code 200)

(smithy/sdk/operation:define-operation get-endpoint :shape-name "GetEndpoint"
                                       :input get-endpoint-request :output
                                       get-endpoint-response :errors
                                       (internal-server-exception
                                        resource-not-found-exception
                                        validation-exception)
                                       :method "GET" :uri "/endpoint" :code 200)

(smithy/sdk/operation:define-operation get-suite-definition :shape-name
                                       "GetSuiteDefinition" :input
                                       get-suite-definition-request :output
                                       get-suite-definition-response :errors
                                       (internal-server-exception
                                        resource-not-found-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/suiteDefinitions/{suiteDefinitionId}"
                                       :code 200)

(smithy/sdk/operation:define-operation get-suite-run :shape-name "GetSuiteRun"
                                       :input get-suite-run-request :output
                                       get-suite-run-response :errors
                                       (internal-server-exception
                                        resource-not-found-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/suiteDefinitions/{suiteDefinitionId}/suiteRuns/{suiteRunId}"
                                       :code 200)

(smithy/sdk/operation:define-operation get-suite-run-report :shape-name
                                       "GetSuiteRunReport" :input
                                       get-suite-run-report-request :output
                                       get-suite-run-report-response :errors
                                       (internal-server-exception
                                        resource-not-found-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/suiteDefinitions/{suiteDefinitionId}/suiteRuns/{suiteRunId}/report"
                                       :code 200)

(smithy/sdk/operation:define-operation list-suite-definitions :shape-name
                                       "ListSuiteDefinitions" :input
                                       list-suite-definitions-request :output
                                       list-suite-definitions-response :errors
                                       (internal-server-exception
                                        validation-exception)
                                       :method "GET" :uri "/suiteDefinitions"
                                       :code 200)

(smithy/sdk/operation:define-operation list-suite-runs :shape-name
                                       "ListSuiteRuns" :input
                                       list-suite-runs-request :output
                                       list-suite-runs-response :errors
                                       (internal-server-exception
                                        validation-exception)
                                       :method "GET" :uri "/suiteRuns" :code
                                       200)

(smithy/sdk/operation:define-operation list-tags-for-resource :shape-name
                                       "ListTagsForResource" :input
                                       list-tags-for-resource-request :output
                                       list-tags-for-resource-response :errors
                                       (internal-server-exception
                                        resource-not-found-exception
                                        validation-exception)
                                       :method "GET" :uri "/tags/{resourceArn}"
                                       :code 200)

(smithy/sdk/operation:define-operation start-suite-run :shape-name
                                       "StartSuiteRun" :input
                                       start-suite-run-request :output
                                       start-suite-run-response :errors
                                       (conflict-exception
                                        internal-server-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/suiteDefinitions/{suiteDefinitionId}/suiteRuns"
                                       :code 200)

(smithy/sdk/operation:define-operation stop-suite-run :shape-name
                                       "StopSuiteRun" :input
                                       stop-suite-run-request :output
                                       stop-suite-run-response :errors
                                       (internal-server-exception
                                        resource-not-found-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/suiteDefinitions/{suiteDefinitionId}/suiteRuns/{suiteRunId}/stop"
                                       :code 200)

(smithy/sdk/operation:define-operation tag-resource :shape-name "TagResource"
                                       :input tag-resource-request :output
                                       tag-resource-response :errors
                                       (internal-server-exception
                                        resource-not-found-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/tags/{resourceArn}" :code 200)

(smithy/sdk/operation:define-operation untag-resource :shape-name
                                       "UntagResource" :input
                                       untag-resource-request :output
                                       untag-resource-response :errors
                                       (internal-server-exception
                                        resource-not-found-exception
                                        validation-exception)
                                       :method "DELETE" :uri
                                       "/tags/{resourceArn}" :code 200)

(smithy/sdk/operation:define-operation update-suite-definition :shape-name
                                       "UpdateSuiteDefinition" :input
                                       update-suite-definition-request :output
                                       update-suite-definition-response :errors
                                       (internal-server-exception
                                        validation-exception)
                                       :method "PATCH" :uri
                                       "/suiteDefinitions/{suiteDefinitionId}"
                                       :code 200)
