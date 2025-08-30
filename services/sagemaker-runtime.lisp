(uiop/package:define-package #:pira/sagemaker-runtime (:use)
                             (:export #:amazon-sage-maker-runtime #:body-blob
                              #:custom-attributes-header
                              #:enable-explanations-header #:endpoint-name
                              #:error-code #:header
                              #:inference-component-header #:inference-id
                              #:input-location-header
                              #:internal-dependency-exception
                              #:internal-failure #:internal-stream-failure
                              #:invocation-timeout-seconds-header
                              #:invoke-endpoint #:invoke-endpoint-async
                              #:invoke-endpoint-with-response-stream
                              #:log-stream-arn #:message #:model-error
                              #:model-not-ready-exception #:model-stream-error
                              #:new-session-response-header #:part-blob
                              #:payload-part #:request-ttlseconds-header
                              #:response-stream #:service-unavailable
                              #:session-id-header
                              #:session-id-or-new-session-constant-header
                              #:status-code #:target-container-hostname-header
                              #:target-model-header #:target-variant-header
                              #:validation-error #:sagemaker-runtime-error))
(common-lisp:in-package #:pira/sagemaker-runtime)

(common-lisp:define-condition sagemaker-runtime-error
    (pira/error:aws-error)
    common-lisp:nil)

(smithy/sdk/service:define-service amazon-sage-maker-runtime :shape-name
                                   "AmazonSageMakerRuntime" :version
                                   "2017-05-13" :title
                                   "Amazon SageMaker Runtime" :operations
                                   '(invoke-endpoint invoke-endpoint-async
                                     invoke-endpoint-with-response-stream)
                                   :traits
                                   '(("aws.api#service"
                                      ("sdkId" . "SageMaker Runtime")
                                      ("arnNamespace" . "sagemaker")
                                      ("cloudFormationName"
                                       . "SageMakerRuntime")
                                      ("cloudTrailEventSource"
                                       . "sagemakerruntime.amazonaws.com")
                                      ("docId"
                                       . "runtime.sagemaker-2017-05-13")
                                      ("endpointPrefix" . "runtime.sagemaker"))
                                     ("aws.auth#sigv4" ("name" . "sagemaker"))
                                     ("aws.protocols#restJson1")))

(smithy/sdk/shapes:define-type body-blob smithy/sdk/smithy-types:blob)

(smithy/sdk/shapes:define-type custom-attributes-header
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type enable-explanations-header
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type endpoint-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type error-code smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type header smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type inference-component-header
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type inference-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type input-location-header
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error internal-dependency-exception common-lisp:nil
                                ((message :target-type message :member-name
                                  "Message"))
                                (:shape-name "InternalDependencyException")
                                (:error-code 530)
                                (:base-class sagemaker-runtime-error))

(smithy/sdk/shapes:define-error internal-failure common-lisp:nil
                                ((message :target-type message :member-name
                                  "Message"))
                                (:shape-name "InternalFailure")
                                (:error-code 500)
                                (:base-class sagemaker-runtime-error))

(smithy/sdk/shapes:define-error internal-stream-failure common-lisp:nil
                                ((message :target-type message :member-name
                                  "Message"))
                                (:shape-name "InternalStreamFailure")
                                (:error-code 500)
                                (:base-class sagemaker-runtime-error))

(smithy/sdk/shapes:define-type invocation-timeout-seconds-header
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-input invoke-endpoint-async-input common-lisp:nil
                                ((endpoint-name :target-type endpoint-name
                                  :required common-lisp:t :member-name
                                  "EndpointName" :http-label common-lisp:t)
                                 (content-type :target-type header :member-name
                                  "ContentType" :http-header
                                  "X-Amzn-SageMaker-Content-Type")
                                 (accept :target-type header :member-name
                                  "Accept" :http-header
                                  "X-Amzn-SageMaker-Accept")
                                 (custom-attributes :target-type
                                  custom-attributes-header :member-name
                                  "CustomAttributes" :http-header
                                  "X-Amzn-SageMaker-Custom-Attributes")
                                 (inference-id :target-type inference-id
                                  :member-name "InferenceId" :http-header
                                  "X-Amzn-SageMaker-Inference-Id")
                                 (input-location :target-type
                                  input-location-header :required common-lisp:t
                                  :member-name "InputLocation" :http-header
                                  "X-Amzn-SageMaker-InputLocation")
                                 (request-ttlseconds :target-type
                                  request-ttlseconds-header :member-name
                                  "RequestTTLSeconds" :http-header
                                  "X-Amzn-SageMaker-RequestTTLSeconds")
                                 (invocation-timeout-seconds :target-type
                                  invocation-timeout-seconds-header
                                  :member-name "InvocationTimeoutSeconds"
                                  :http-header
                                  "X-Amzn-SageMaker-InvocationTimeoutSeconds"))
                                (:shape-name "InvokeEndpointAsyncInput"))

(smithy/sdk/shapes:define-output invoke-endpoint-async-output common-lisp:nil
                                 ((inference-id :target-type header
                                   :member-name "InferenceId")
                                  (output-location :target-type header
                                   :member-name "OutputLocation" :http-header
                                   "X-Amzn-SageMaker-OutputLocation")
                                  (failure-location :target-type header
                                   :member-name "FailureLocation" :http-header
                                   "X-Amzn-SageMaker-FailureLocation"))
                                 (:shape-name "InvokeEndpointAsyncOutput"))

(smithy/sdk/shapes:define-input invoke-endpoint-input common-lisp:nil
                                ((endpoint-name :target-type endpoint-name
                                  :required common-lisp:t :member-name
                                  "EndpointName" :http-label common-lisp:t)
                                 (body :target-type body-blob :required
                                  common-lisp:t :member-name "Body"
                                  :http-payload common-lisp:t)
                                 (content-type :target-type header :member-name
                                  "ContentType" :http-header "Content-Type")
                                 (accept :target-type header :member-name
                                  "Accept" :http-header "Accept")
                                 (custom-attributes :target-type
                                  custom-attributes-header :member-name
                                  "CustomAttributes" :http-header
                                  "X-Amzn-SageMaker-Custom-Attributes")
                                 (target-model :target-type target-model-header
                                  :member-name "TargetModel" :http-header
                                  "X-Amzn-SageMaker-Target-Model")
                                 (target-variant :target-type
                                  target-variant-header :member-name
                                  "TargetVariant" :http-header
                                  "X-Amzn-SageMaker-Target-Variant")
                                 (target-container-hostname :target-type
                                  target-container-hostname-header :member-name
                                  "TargetContainerHostname" :http-header
                                  "X-Amzn-SageMaker-Target-Container-Hostname")
                                 (inference-id :target-type inference-id
                                  :member-name "InferenceId" :http-header
                                  "X-Amzn-SageMaker-Inference-Id")
                                 (enable-explanations :target-type
                                  enable-explanations-header :member-name
                                  "EnableExplanations" :http-header
                                  "X-Amzn-SageMaker-Enable-Explanations")
                                 (inference-component-name :target-type
                                  inference-component-header :member-name
                                  "InferenceComponentName" :http-header
                                  "X-Amzn-SageMaker-Inference-Component")
                                 (session-id :target-type
                                  session-id-or-new-session-constant-header
                                  :member-name "SessionId" :http-header
                                  "X-Amzn-SageMaker-Session-Id"))
                                (:shape-name "InvokeEndpointInput"))

(smithy/sdk/shapes:define-output invoke-endpoint-output common-lisp:nil
                                 ((body :target-type body-blob :required
                                   common-lisp:t :member-name "Body"
                                   :http-payload common-lisp:t)
                                  (content-type :target-type header
                                   :member-name "ContentType" :http-header
                                   "Content-Type")
                                  (invoked-production-variant :target-type
                                   header :member-name
                                   "InvokedProductionVariant" :http-header
                                   "x-Amzn-Invoked-Production-Variant")
                                  (custom-attributes :target-type
                                   custom-attributes-header :member-name
                                   "CustomAttributes" :http-header
                                   "X-Amzn-SageMaker-Custom-Attributes")
                                  (new-session-id :target-type
                                   new-session-response-header :member-name
                                   "NewSessionId" :http-header
                                   "X-Amzn-SageMaker-New-Session-Id")
                                  (closed-session-id :target-type
                                   session-id-header :member-name
                                   "ClosedSessionId" :http-header
                                   "X-Amzn-SageMaker-Closed-Session-Id"))
                                 (:shape-name "InvokeEndpointOutput"))

(smithy/sdk/shapes:define-input invoke-endpoint-with-response-stream-input
                                common-lisp:nil
                                ((endpoint-name :target-type endpoint-name
                                  :required common-lisp:t :member-name
                                  "EndpointName" :http-label common-lisp:t)
                                 (body :target-type body-blob :required
                                  common-lisp:t :member-name "Body"
                                  :http-payload common-lisp:t)
                                 (content-type :target-type header :member-name
                                  "ContentType" :http-header "Content-Type")
                                 (accept :target-type header :member-name
                                  "Accept" :http-header
                                  "X-Amzn-SageMaker-Accept")
                                 (custom-attributes :target-type
                                  custom-attributes-header :member-name
                                  "CustomAttributes" :http-header
                                  "X-Amzn-SageMaker-Custom-Attributes")
                                 (target-variant :target-type
                                  target-variant-header :member-name
                                  "TargetVariant" :http-header
                                  "X-Amzn-SageMaker-Target-Variant")
                                 (target-container-hostname :target-type
                                  target-container-hostname-header :member-name
                                  "TargetContainerHostname" :http-header
                                  "X-Amzn-SageMaker-Target-Container-Hostname")
                                 (inference-id :target-type inference-id
                                  :member-name "InferenceId" :http-header
                                  "X-Amzn-SageMaker-Inference-Id")
                                 (inference-component-name :target-type
                                  inference-component-header :member-name
                                  "InferenceComponentName" :http-header
                                  "X-Amzn-SageMaker-Inference-Component")
                                 (session-id :target-type session-id-header
                                  :member-name "SessionId" :http-header
                                  "X-Amzn-SageMaker-Session-Id"))
                                (:shape-name
                                 "InvokeEndpointWithResponseStreamInput"))

(smithy/sdk/shapes:define-output invoke-endpoint-with-response-stream-output
                                 common-lisp:nil
                                 ((body :target-type response-stream :required
                                   common-lisp:t :member-name "Body"
                                   :http-payload common-lisp:t)
                                  (content-type :target-type header
                                   :member-name "ContentType" :http-header
                                   "X-Amzn-SageMaker-Content-Type")
                                  (invoked-production-variant :target-type
                                   header :member-name
                                   "InvokedProductionVariant" :http-header
                                   "x-Amzn-Invoked-Production-Variant")
                                  (custom-attributes :target-type
                                   custom-attributes-header :member-name
                                   "CustomAttributes" :http-header
                                   "X-Amzn-SageMaker-Custom-Attributes"))
                                 (:shape-name
                                  "InvokeEndpointWithResponseStreamOutput"))

(smithy/sdk/shapes:define-type log-stream-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type message smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error model-error common-lisp:nil
                                ((message :target-type message :member-name
                                  "Message")
                                 (original-status-code :target-type status-code
                                  :member-name "OriginalStatusCode")
                                 (original-message :target-type message
                                  :member-name "OriginalMessage")
                                 (log-stream-arn :target-type log-stream-arn
                                  :member-name "LogStreamArn"))
                                (:shape-name "ModelError") (:error-code 424)
                                (:base-class sagemaker-runtime-error))

(smithy/sdk/shapes:define-error model-not-ready-exception common-lisp:nil
                                ((message :target-type message :member-name
                                  "Message"))
                                (:shape-name "ModelNotReadyException")
                                (:error-name "ModelNotReadyException")
                                (:error-code 429)
                                (:base-class sagemaker-runtime-error))

(smithy/sdk/shapes:define-error model-stream-error common-lisp:nil
                                ((message :target-type message :member-name
                                  "Message")
                                 (error-code :target-type error-code
                                  :member-name "ErrorCode"))
                                (:shape-name "ModelStreamError")
                                (:error-code 400)
                                (:base-class sagemaker-runtime-error))

(smithy/sdk/shapes:define-type new-session-response-header
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type part-blob smithy/sdk/smithy-types:blob)

(smithy/sdk/shapes:define-structure payload-part common-lisp:nil
                                    ((bytes :target-type part-blob :member-name
                                      "Bytes"))
                                    (:shape-name "PayloadPart"))

(smithy/sdk/shapes:define-type request-ttlseconds-header
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-union response-stream common-lisp:nil
                                ((payload-part :target-type payload-part
                                  :member-name "PayloadPart")
                                 (model-stream-error :target-type
                                  model-stream-error :member-name
                                  "ModelStreamError")
                                 (internal-stream-failure :target-type
                                  internal-stream-failure :member-name
                                  "InternalStreamFailure"))
                                (:shape-name "ResponseStream"))

(smithy/sdk/shapes:define-error service-unavailable common-lisp:nil
                                ((message :target-type message :member-name
                                  "Message"))
                                (:shape-name "ServiceUnavailable")
                                (:error-code 503)
                                (:base-class sagemaker-runtime-error))

(smithy/sdk/shapes:define-type session-id-header smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type session-id-or-new-session-constant-header
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type status-code smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type target-container-hostname-header
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type target-model-header
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type target-variant-header
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error validation-error common-lisp:nil
                                ((message :target-type message :member-name
                                  "Message"))
                                (:shape-name "ValidationError")
                                (:error-code 400)
                                (:base-class sagemaker-runtime-error))

(smithy/sdk/operation:define-operation invoke-endpoint :shape-name
                                       "InvokeEndpoint" :input
                                       invoke-endpoint-input :output
                                       invoke-endpoint-output :errors
                                       (internal-dependency-exception
                                        internal-failure model-error
                                        model-not-ready-exception
                                        service-unavailable validation-error)
                                       :method "POST" :uri
                                       "/endpoints/{EndpointName}/invocations"
                                       :code 200)

(smithy/sdk/operation:define-operation invoke-endpoint-async :shape-name
                                       "InvokeEndpointAsync" :input
                                       invoke-endpoint-async-input :output
                                       invoke-endpoint-async-output :errors
                                       (internal-failure service-unavailable
                                        validation-error)
                                       :method "POST" :uri
                                       "/endpoints/{EndpointName}/async-invocations"
                                       :code 202)

(smithy/sdk/operation:define-operation invoke-endpoint-with-response-stream
                                       :shape-name
                                       "InvokeEndpointWithResponseStream"
                                       :input
                                       invoke-endpoint-with-response-stream-input
                                       :output
                                       invoke-endpoint-with-response-stream-output
                                       :errors
                                       (internal-failure
                                        internal-stream-failure model-error
                                        model-stream-error service-unavailable
                                        validation-error)
                                       :method "POST" :uri
                                       "/endpoints/{EndpointName}/invocations-response-stream"
                                       :code 200)
