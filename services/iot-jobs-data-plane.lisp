(uiop/package:define-package #:pira/iot-jobs-data-plane (:use)
                             (:export #:approximate-seconds-before-timed-out
                              #:binary-blob #:binary-parameter-value
                              #:boolean-parameter-value
                              #:client-request-token-v2 #:command-arn
                              #:command-execution-id
                              #:command-execution-parameter-map
                              #:command-execution-timeout-in-seconds
                              #:command-parameter-name
                              #:command-parameter-value
                              #:describe-job-execution
                              #:describe-job-execution-job-id #:details-key
                              #:details-map #:details-value
                              #:double-parameter-value #:execution-number
                              #:expected-version #:get-pending-job-executions
                              #:include-execution-state #:include-job-document
                              #:integer-parameter-value
                              #:iot-laser-thing-job-manager-external-service
                              #:job-document #:job-execution
                              #:job-execution-state #:job-execution-status
                              #:job-execution-summary
                              #:job-execution-summary-list #:job-id
                              #:last-updated-at #:long-parameter-value
                              #:queued-at #:start-command-execution
                              #:start-next-pending-job-execution #:started-at
                              #:step-timeout-in-minutes
                              #:string-parameter-value #:target-arn
                              #:thing-name #:unsigned-long-parameter-value
                              #:update-job-execution #:version-number
                              #:error-message #:resource-id))
(common-lisp:in-package #:pira/iot-jobs-data-plane)

(smithy/sdk/service:define-service iot-laser-thing-job-manager-external-service
                                   :shape-name
                                   "IotLaserThingJobManagerExternalService"
                                   :version "2017-09-29" :title
                                   "AWS IoT Jobs Data Plane" :operations
                                   '(describe-job-execution
                                     get-pending-job-executions
                                     start-command-execution
                                     start-next-pending-job-execution
                                     update-job-execution)
                                   :traits
                                   '(("aws.api#service"
                                      ("sdkId" . "IoT Jobs Data Plane")
                                      ("arnNamespace" . "iot-jobs-data")
                                      ("cloudFormationName"
                                       . "IoTJobsDataPlane")
                                      ("cloudTrailEventSource"
                                       . "iotjobsdataplane.amazonaws.com")
                                      ("docId" . "iot-jobs-data-2017-09-29")
                                      ("endpointPrefix" . "data.jobs.iot"))
                                     ("aws.auth#sigv4"
                                      ("name" . "iot-jobs-data"))
                                     ("aws.protocols#restJson1")))

(smithy/sdk/shapes:define-type approximate-seconds-before-timed-out
                               smithy/sdk/smithy-types:long)

(smithy/sdk/shapes:define-type binary-blob smithy/sdk/smithy-types:blob)

(smithy/sdk/shapes:define-type binary-parameter-value
                               smithy/sdk/smithy-types:blob)

(smithy/sdk/shapes:define-type boolean-parameter-value
                               smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-error certificate-validation-exception
                                common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message"))
                                (:shape-name "CertificateValidationException")
                                (:error-code 400))

(smithy/sdk/shapes:define-type client-request-token-v2
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type command-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type command-execution-id
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-map command-execution-parameter-map :key
                              command-parameter-name :value
                              command-parameter-value)

(smithy/sdk/shapes:define-type command-execution-timeout-in-seconds
                               smithy/sdk/smithy-types:long)

(smithy/sdk/shapes:define-type command-parameter-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure command-parameter-value common-lisp:nil
                                    ((s :target-type string-parameter-value
                                      :member-name "S")
                                     (b :target-type boolean-parameter-value
                                      :member-name "B")
                                     (i :target-type integer-parameter-value
                                      :member-name "I")
                                     (l :target-type long-parameter-value
                                      :member-name "L")
                                     (d :target-type double-parameter-value
                                      :member-name "D")
                                     (bin :target-type binary-parameter-value
                                      :member-name "BIN")
                                     (ul :target-type
                                      unsigned-long-parameter-value
                                      :member-name "UL"))
                                    (:shape-name "CommandParameterValue"))

(smithy/sdk/shapes:define-error conflict-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message")
                                 (resource-id :target-type resource-id
                                  :member-name "resourceId"))
                                (:shape-name "ConflictException")
                                (:error-code 409))

(smithy/sdk/shapes:define-type describe-job-execution-job-id
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input describe-job-execution-request common-lisp:nil
                                ((job-id :target-type
                                  describe-job-execution-job-id :required
                                  common-lisp:t :member-name "jobId"
                                  :http-label common-lisp:t)
                                 (thing-name :target-type thing-name :required
                                  common-lisp:t :member-name "thingName"
                                  :http-label common-lisp:t)
                                 (include-job-document :target-type
                                  include-job-document :member-name
                                  "includeJobDocument" :http-query
                                  "includeJobDocument")
                                 (execution-number :target-type
                                  execution-number :member-name
                                  "executionNumber" :http-query
                                  "executionNumber"))
                                (:shape-name "DescribeJobExecutionRequest"))

(smithy/sdk/shapes:define-output describe-job-execution-response
                                 common-lisp:nil
                                 ((execution :target-type job-execution
                                   :member-name "execution"))
                                 (:shape-name "DescribeJobExecutionResponse"))

(smithy/sdk/shapes:define-type details-key smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-map details-map :key details-key :value details-value)

(smithy/sdk/shapes:define-type details-value smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type double-parameter-value
                               smithy/sdk/smithy-types:double)

(smithy/sdk/shapes:define-type execution-number smithy/sdk/smithy-types:long)

(smithy/sdk/shapes:define-type expected-version smithy/sdk/smithy-types:long)

(smithy/sdk/shapes:define-input get-pending-job-executions-request
                                common-lisp:nil
                                ((thing-name :target-type thing-name :required
                                  common-lisp:t :member-name "thingName"
                                  :http-label common-lisp:t))
                                (:shape-name "GetPendingJobExecutionsRequest"))

(smithy/sdk/shapes:define-output get-pending-job-executions-response
                                 common-lisp:nil
                                 ((in-progress-jobs :target-type
                                   job-execution-summary-list :member-name
                                   "inProgressJobs")
                                  (queued-jobs :target-type
                                   job-execution-summary-list :member-name
                                   "queuedJobs"))
                                 (:shape-name
                                  "GetPendingJobExecutionsResponse"))

(smithy/sdk/shapes:define-type include-execution-state
                               smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-type include-job-document
                               smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-type integer-parameter-value
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-error internal-server-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message"))
                                (:shape-name "InternalServerException")
                                (:error-code 500))

(smithy/sdk/shapes:define-error invalid-request-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message"))
                                (:shape-name "InvalidRequestException")
                                (:error-code 400))

(smithy/sdk/shapes:define-error invalid-state-transition-exception
                                common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message"))
                                (:shape-name "InvalidStateTransitionException")
                                (:error-code 409))

(smithy/sdk/shapes:define-type job-document smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure job-execution common-lisp:nil
                                    ((job-id :target-type job-id :member-name
                                      "jobId")
                                     (thing-name :target-type thing-name
                                      :member-name "thingName")
                                     (status :target-type job-execution-status
                                      :member-name "status")
                                     (status-details :target-type details-map
                                      :member-name "statusDetails")
                                     (queued-at :target-type queued-at
                                      :member-name "queuedAt")
                                     (started-at :target-type started-at
                                      :member-name "startedAt")
                                     (last-updated-at :target-type
                                      last-updated-at :member-name
                                      "lastUpdatedAt")
                                     (approximate-seconds-before-timed-out
                                      :target-type
                                      approximate-seconds-before-timed-out
                                      :member-name
                                      "approximateSecondsBeforeTimedOut")
                                     (version-number :target-type
                                      version-number :member-name
                                      "versionNumber")
                                     (execution-number :target-type
                                      execution-number :member-name
                                      "executionNumber")
                                     (job-document :target-type job-document
                                      :member-name "jobDocument"))
                                    (:shape-name "JobExecution"))

(smithy/sdk/shapes:define-structure job-execution-state common-lisp:nil
                                    ((status :target-type job-execution-status
                                      :member-name "status")
                                     (status-details :target-type details-map
                                      :member-name "statusDetails")
                                     (version-number :target-type
                                      version-number :member-name
                                      "versionNumber"))
                                    (:shape-name "JobExecutionState"))

(smithy/sdk/shapes:define-enum job-execution-status
    common-lisp:nil
  (:queued "QUEUED")
  (:in-progress "IN_PROGRESS")
  (:succeeded "SUCCEEDED")
  (:failed "FAILED")
  (:timed-out "TIMED_OUT")
  (:rejected "REJECTED")
  (:removed "REMOVED")
  (:canceled "CANCELED"))

(smithy/sdk/shapes:define-structure job-execution-summary common-lisp:nil
                                    ((job-id :target-type job-id :member-name
                                      "jobId")
                                     (queued-at :target-type queued-at
                                      :member-name "queuedAt")
                                     (started-at :target-type started-at
                                      :member-name "startedAt")
                                     (last-updated-at :target-type
                                      last-updated-at :member-name
                                      "lastUpdatedAt")
                                     (version-number :target-type
                                      version-number :member-name
                                      "versionNumber")
                                     (execution-number :target-type
                                      execution-number :member-name
                                      "executionNumber"))
                                    (:shape-name "JobExecutionSummary"))

(smithy/sdk/shapes:define-list job-execution-summary-list :member
                               job-execution-summary)

(smithy/sdk/shapes:define-type job-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type last-updated-at smithy/sdk/smithy-types:long)

(smithy/sdk/shapes:define-type long-parameter-value
                               smithy/sdk/smithy-types:long)

(smithy/sdk/shapes:define-type queued-at smithy/sdk/smithy-types:long)

(smithy/sdk/shapes:define-error resource-not-found-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message"))
                                (:shape-name "ResourceNotFoundException")
                                (:error-code 404))

(smithy/sdk/shapes:define-error service-quota-exceeded-exception
                                common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message"))
                                (:shape-name "ServiceQuotaExceededException")
                                (:error-code 402))

(smithy/sdk/shapes:define-error service-unavailable-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message"))
                                (:shape-name "ServiceUnavailableException")
                                (:error-code 503))

(smithy/sdk/shapes:define-input start-command-execution-request common-lisp:nil
                                ((target-arn :target-type target-arn :required
                                  common-lisp:t :member-name "targetArn")
                                 (command-arn :target-type command-arn
                                  :required common-lisp:t :member-name
                                  "commandArn")
                                 (parameters :target-type
                                  command-execution-parameter-map :member-name
                                  "parameters")
                                 (execution-timeout-seconds :target-type
                                  command-execution-timeout-in-seconds
                                  :member-name "executionTimeoutSeconds")
                                 (client-token :target-type
                                  client-request-token-v2 :member-name
                                  "clientToken"))
                                (:shape-name "StartCommandExecutionRequest"))

(smithy/sdk/shapes:define-output start-command-execution-response
                                 common-lisp:nil
                                 ((execution-id :target-type
                                   command-execution-id :member-name
                                   "executionId"))
                                 (:shape-name "StartCommandExecutionResponse"))

(smithy/sdk/shapes:define-input start-next-pending-job-execution-request
                                common-lisp:nil
                                ((thing-name :target-type thing-name :required
                                  common-lisp:t :member-name "thingName"
                                  :http-label common-lisp:t)
                                 (status-details :target-type details-map
                                  :member-name "statusDetails")
                                 (step-timeout-in-minutes :target-type
                                  step-timeout-in-minutes :member-name
                                  "stepTimeoutInMinutes"))
                                (:shape-name
                                 "StartNextPendingJobExecutionRequest"))

(smithy/sdk/shapes:define-output start-next-pending-job-execution-response
                                 common-lisp:nil
                                 ((execution :target-type job-execution
                                   :member-name "execution"))
                                 (:shape-name
                                  "StartNextPendingJobExecutionResponse"))

(smithy/sdk/shapes:define-type started-at smithy/sdk/smithy-types:long)

(smithy/sdk/shapes:define-type step-timeout-in-minutes
                               smithy/sdk/smithy-types:long)

(smithy/sdk/shapes:define-type string-parameter-value
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type target-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error terminal-state-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message"))
                                (:shape-name "TerminalStateException")
                                (:error-code 410))

(smithy/sdk/shapes:define-type thing-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error throttling-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message")
                                 (payload :target-type binary-blob :member-name
                                  "payload"))
                                (:shape-name "ThrottlingException")
                                (:error-code 429))

(smithy/sdk/shapes:define-type unsigned-long-parameter-value
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input update-job-execution-request common-lisp:nil
                                ((job-id :target-type job-id :required
                                  common-lisp:t :member-name "jobId"
                                  :http-label common-lisp:t)
                                 (thing-name :target-type thing-name :required
                                  common-lisp:t :member-name "thingName"
                                  :http-label common-lisp:t)
                                 (status :target-type job-execution-status
                                  :required common-lisp:t :member-name
                                  "status")
                                 (status-details :target-type details-map
                                  :member-name "statusDetails")
                                 (step-timeout-in-minutes :target-type
                                  step-timeout-in-minutes :member-name
                                  "stepTimeoutInMinutes")
                                 (expected-version :target-type
                                  expected-version :member-name
                                  "expectedVersion")
                                 (include-job-execution-state :target-type
                                  include-execution-state :member-name
                                  "includeJobExecutionState")
                                 (include-job-document :target-type
                                  include-job-document :member-name
                                  "includeJobDocument")
                                 (execution-number :target-type
                                  execution-number :member-name
                                  "executionNumber"))
                                (:shape-name "UpdateJobExecutionRequest"))

(smithy/sdk/shapes:define-output update-job-execution-response common-lisp:nil
                                 ((execution-state :target-type
                                   job-execution-state :member-name
                                   "executionState")
                                  (job-document :target-type job-document
                                   :member-name "jobDocument"))
                                 (:shape-name "UpdateJobExecutionResponse"))

(smithy/sdk/shapes:define-error validation-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message"))
                                (:shape-name "ValidationException")
                                (:error-code 400))

(smithy/sdk/shapes:define-type version-number smithy/sdk/smithy-types:long)

(smithy/sdk/shapes:define-type error-message smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type resource-id smithy/sdk/smithy-types:string)

(smithy/sdk/operation:define-operation describe-job-execution :shape-name
                                       "DescribeJobExecution" :input
                                       describe-job-execution-request :output
                                       describe-job-execution-response :errors
                                       (certificate-validation-exception
                                        invalid-request-exception
                                        resource-not-found-exception
                                        service-unavailable-exception
                                        terminal-state-exception
                                        throttling-exception)
                                       :method "GET" :uri
                                       "/things/{thingName}/jobs/{jobId}" :code
                                       200)

(smithy/sdk/operation:define-operation get-pending-job-executions :shape-name
                                       "GetPendingJobExecutions" :input
                                       get-pending-job-executions-request
                                       :output
                                       get-pending-job-executions-response
                                       :errors
                                       (certificate-validation-exception
                                        invalid-request-exception
                                        resource-not-found-exception
                                        service-unavailable-exception
                                        throttling-exception)
                                       :method "GET" :uri
                                       "/things/{thingName}/jobs" :code 200)

(smithy/sdk/operation:define-operation start-command-execution :shape-name
                                       "StartCommandExecution" :input
                                       start-command-execution-request :output
                                       start-command-execution-response :errors
                                       (conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/command-executions" :code 200)

(smithy/sdk/operation:define-operation start-next-pending-job-execution
                                       :shape-name
                                       "StartNextPendingJobExecution" :input
                                       start-next-pending-job-execution-request
                                       :output
                                       start-next-pending-job-execution-response
                                       :errors
                                       (certificate-validation-exception
                                        invalid-request-exception
                                        resource-not-found-exception
                                        service-unavailable-exception
                                        throttling-exception)
                                       :method "PUT" :uri
                                       "/things/{thingName}/jobs/$next" :code
                                       200)

(smithy/sdk/operation:define-operation update-job-execution :shape-name
                                       "UpdateJobExecution" :input
                                       update-job-execution-request :output
                                       update-job-execution-response :errors
                                       (certificate-validation-exception
                                        invalid-request-exception
                                        invalid-state-transition-exception
                                        resource-not-found-exception
                                        service-unavailable-exception
                                        throttling-exception)
                                       :method "POST" :uri
                                       "/things/{thingName}/jobs/{jobId}" :code
                                       200)
