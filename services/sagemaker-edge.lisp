(uiop/package:define-package #:pira/sagemaker-edge (:use)
                             (:export #:amazon-sage-maker-edge
                              #:cache-ttlseconds #:checksum #:checksum-string
                              #:checksum-type #:definition #:definitions
                              #:deployment-model #:deployment-models
                              #:deployment-result #:deployment-status
                              #:deployment-type #:device-fleet-name
                              #:device-name #:device-registration #:dimension
                              #:edge-deployment #:edge-deployments
                              #:edge-metric #:edge-metrics #:entity-name
                              #:error-message #:failure-handling-policy
                              #:get-deployments #:get-deployments-request
                              #:get-deployments-result
                              #:get-device-registration
                              #:get-device-registration-request
                              #:get-device-registration-result
                              #:internal-service-exception #:metric #:model
                              #:model-name #:model-state #:models #:s3uri
                              #:send-heartbeat #:send-heartbeat-request
                              #:string #:timestamp #:value #:version))
(common-lisp:in-package #:pira/sagemaker-edge)

(smithy/sdk/service:define-service amazon-sage-maker-edge :shape-name
                                   "AmazonSageMakerEdge" :version "2020-09-23"
                                   :title "Amazon Sagemaker Edge Manager"
                                   :traits
                                   '(("aws.api#service"
                                      ("sdkId" . "Sagemaker Edge")
                                      ("arnNamespace" . "sagemaker")
                                      ("cloudFormationName" . "SagemakerEdge")
                                      ("cloudTrailEventSource"
                                       . "sagemakeredge.amazonaws.com")
                                      ("endpointPrefix" . "edge.sagemaker"))
                                     ("aws.auth#sigv4" ("name" . "sagemaker"))
                                     ("aws.protocols#restJson1")))

(smithy/sdk/shapes:define-type cache-ttlseconds smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure checksum common-lisp:nil
                                    ((type :target-type checksum-type
                                      :member-name "Type")
                                     (sum :target-type checksum-string
                                      :member-name "Sum"))
                                    (:shape-name "Checksum"))

(smithy/sdk/shapes:define-type checksum-string smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum checksum-type
    common-lisp:nil
  (:sha1 "SHA1"))

(smithy/sdk/shapes:define-structure definition common-lisp:nil
                                    ((model-handle :target-type entity-name
                                      :member-name "ModelHandle")
                                     (s3url :target-type s3uri :member-name
                                      "S3Url")
                                     (checksum :target-type checksum
                                      :member-name "Checksum")
                                     (state :target-type model-state
                                      :member-name "State"))
                                    (:shape-name "Definition"))

(smithy/sdk/shapes:define-list definitions :member definition)

(smithy/sdk/shapes:define-structure deployment-model common-lisp:nil
                                    ((model-handle :target-type entity-name
                                      :member-name "ModelHandle")
                                     (model-name :target-type model-name
                                      :member-name "ModelName")
                                     (model-version :target-type version
                                      :member-name "ModelVersion")
                                     (desired-state :target-type model-state
                                      :member-name "DesiredState")
                                     (state :target-type model-state
                                      :member-name "State")
                                     (status :target-type deployment-status
                                      :member-name "Status")
                                     (status-reason :target-type string
                                      :member-name "StatusReason")
                                     (rollback-failure-reason :target-type
                                      string :member-name
                                      "RollbackFailureReason"))
                                    (:shape-name "DeploymentModel"))

(smithy/sdk/shapes:define-list deployment-models :member deployment-model)

(smithy/sdk/shapes:define-structure deployment-result common-lisp:nil
                                    ((deployment-name :target-type entity-name
                                      :member-name "DeploymentName")
                                     (deployment-status :target-type
                                      entity-name :member-name
                                      "DeploymentStatus")
                                     (deployment-status-message :target-type
                                      string :member-name
                                      "DeploymentStatusMessage")
                                     (deployment-start-time :target-type
                                      timestamp :member-name
                                      "DeploymentStartTime")
                                     (deployment-end-time :target-type
                                      timestamp :member-name
                                      "DeploymentEndTime")
                                     (deployment-models :target-type
                                      deployment-models :member-name
                                      "DeploymentModels"))
                                    (:shape-name "DeploymentResult"))

(smithy/sdk/shapes:define-enum deployment-status
    common-lisp:nil
  (:success "SUCCESS")
  (:fail "FAIL"))

(smithy/sdk/shapes:define-enum deployment-type
    common-lisp:nil
  (:model "Model"))

(smithy/sdk/shapes:define-type device-fleet-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type device-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type device-registration
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type dimension smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure edge-deployment common-lisp:nil
                                    ((deployment-name :target-type entity-name
                                      :member-name "DeploymentName")
                                     (type :target-type deployment-type
                                      :member-name "Type")
                                     (failure-handling-policy :target-type
                                      failure-handling-policy :member-name
                                      "FailureHandlingPolicy")
                                     (definitions :target-type definitions
                                      :member-name "Definitions"))
                                    (:shape-name "EdgeDeployment"))

(smithy/sdk/shapes:define-list edge-deployments :member edge-deployment)

(smithy/sdk/shapes:define-structure edge-metric common-lisp:nil
                                    ((dimension :target-type dimension
                                      :member-name "Dimension")
                                     (metric-name :target-type metric
                                      :member-name "MetricName")
                                     (value :target-type value :member-name
                                      "Value")
                                     (timestamp :target-type timestamp
                                      :member-name "Timestamp"))
                                    (:shape-name "EdgeMetric"))

(smithy/sdk/shapes:define-list edge-metrics :member edge-metric)

(smithy/sdk/shapes:define-type entity-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type error-message smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum failure-handling-policy
    common-lisp:nil
  (:rollback-on-failure "ROLLBACK_ON_FAILURE")
  (:do-nothing "DO_NOTHING"))

(smithy/sdk/shapes:define-input get-deployments-request common-lisp:nil
                                ((device-name :target-type device-name
                                  :required common-lisp:t :member-name
                                  "DeviceName")
                                 (device-fleet-name :target-type
                                  device-fleet-name :required common-lisp:t
                                  :member-name "DeviceFleetName"))
                                (:shape-name "GetDeploymentsRequest"))

(smithy/sdk/shapes:define-output get-deployments-result common-lisp:nil
                                 ((deployments :target-type edge-deployments
                                   :member-name "Deployments"))
                                 (:shape-name "GetDeploymentsResult"))

(smithy/sdk/shapes:define-input get-device-registration-request common-lisp:nil
                                ((device-name :target-type device-name
                                  :required common-lisp:t :member-name
                                  "DeviceName")
                                 (device-fleet-name :target-type
                                  device-fleet-name :required common-lisp:t
                                  :member-name "DeviceFleetName"))
                                (:shape-name "GetDeviceRegistrationRequest"))

(smithy/sdk/shapes:define-output get-device-registration-result common-lisp:nil
                                 ((device-registration :target-type
                                   device-registration :member-name
                                   "DeviceRegistration")
                                  (cache-ttl :target-type cache-ttlseconds
                                   :member-name "CacheTTL"))
                                 (:shape-name "GetDeviceRegistrationResult"))

(smithy/sdk/shapes:define-error internal-service-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name "InternalServiceException")
                                (:error-code 400))

(smithy/sdk/shapes:define-type metric smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure model common-lisp:nil
                                    ((model-name :target-type model-name
                                      :member-name "ModelName")
                                     (model-version :target-type version
                                      :member-name "ModelVersion")
                                     (latest-sample-time :target-type timestamp
                                      :member-name "LatestSampleTime")
                                     (latest-inference :target-type timestamp
                                      :member-name "LatestInference")
                                     (model-metrics :target-type edge-metrics
                                      :member-name "ModelMetrics"))
                                    (:shape-name "Model"))

(smithy/sdk/shapes:define-type model-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum model-state
    common-lisp:nil
  (:deploy "DEPLOY")
  (:undeploy "UNDEPLOY"))

(smithy/sdk/shapes:define-list models :member model)

(smithy/sdk/shapes:define-type s3uri smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input send-heartbeat-request common-lisp:nil
                                ((agent-metrics :target-type edge-metrics
                                  :member-name "AgentMetrics")
                                 (models :target-type models :member-name
                                  "Models")
                                 (agent-version :target-type version :required
                                  common-lisp:t :member-name "AgentVersion")
                                 (device-name :target-type device-name
                                  :required common-lisp:t :member-name
                                  "DeviceName")
                                 (device-fleet-name :target-type
                                  device-fleet-name :required common-lisp:t
                                  :member-name "DeviceFleetName")
                                 (deployment-result :target-type
                                  deployment-result :member-name
                                  "DeploymentResult"))
                                (:shape-name "SendHeartbeatRequest"))

(smithy/sdk/shapes:define-type string smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type timestamp smithy/sdk/smithy-types:timestamp)

(smithy/sdk/shapes:define-type value smithy/sdk/smithy-types:double)

(smithy/sdk/shapes:define-type version smithy/sdk/smithy-types:string)

(smithy/sdk/operation:define-operation get-deployments :shape-name
                                       "GetDeployments" :input
                                       get-deployments-request :output
                                       get-deployments-result :errors
                                       (internal-service-exception) :method
                                       "POST" :uri "/GetDeployments" :code 200)

(smithy/sdk/operation:define-operation get-device-registration :shape-name
                                       "GetDeviceRegistration" :input
                                       get-device-registration-request :output
                                       get-device-registration-result :errors
                                       (internal-service-exception) :method
                                       "POST" :uri "/GetDeviceRegistration"
                                       :code 200)

(smithy/sdk/operation:define-operation send-heartbeat :shape-name
                                       "SendHeartbeat" :input
                                       send-heartbeat-request :output
                                       common-lisp:null :errors
                                       (internal-service-exception) :method
                                       "POST" :uri "/SendHeartbeat" :code 200)
