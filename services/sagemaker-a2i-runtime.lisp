(uiop/package:define-package #:pira/sagemaker-a2i-runtime (:use)
                             (:export #:amazon-sage-maker-a2iruntime
                              #:content-classifier #:content-classifiers
                              #:delete-human-loop #:describe-human-loop
                              #:failure-reason #:flow-definition-arn
                              #:human-loop-arn #:human-loop-data-attributes
                              #:human-loop-input #:human-loop-name
                              #:human-loop-output #:human-loop-status
                              #:human-loop-summaries #:human-loop-summary
                              #:input-content #:list-human-loops #:max-results
                              #:next-token #:sort-order #:start-human-loop
                              #:stop-human-loop #:string #:timestamp))
(common-lisp:in-package #:pira/sagemaker-a2i-runtime)

(smithy/sdk/service:define-service amazon-sage-maker-a2iruntime :shape-name
                                   "AmazonSageMakerA2IRuntime" :version
                                   "2019-11-07" :title
                                   "Amazon Augmented AI Runtime" :operations
                                   '(delete-human-loop describe-human-loop
                                     list-human-loops start-human-loop
                                     stop-human-loop)
                                   :traits
                                   '(("aws.api#service"
                                      ("sdkId" . "SageMaker A2I Runtime")
                                      ("arnNamespace" . "sagemaker")
                                      ("cloudFormationName"
                                       . "SageMakerA2IRuntime")
                                      ("cloudTrailEventSource"
                                       . "sagemakera2iruntime.amazonaws.com")
                                      ("endpointPrefix"
                                       . "a2i-runtime.sagemaker"))
                                     ("aws.auth#sigv4" ("name" . "sagemaker"))
                                     ("aws.protocols#restJson1")))

(smithy/sdk/shapes:define-error conflict-exception common-lisp:nil
                                ((message :target-type failure-reason
                                  :member-name "Message"))
                                (:shape-name "ConflictException")
                                (:error-code 409))

(smithy/sdk/shapes:define-enum content-classifier
    common-lisp:nil
  (:free-of-personally-identifiable-information
   "FreeOfPersonallyIdentifiableInformation")
  (:free-of-adult-content "FreeOfAdultContent"))

(smithy/sdk/shapes:define-list content-classifiers :member content-classifier)

(smithy/sdk/shapes:define-input delete-human-loop-request common-lisp:nil
                                ((human-loop-name :target-type human-loop-name
                                  :required common-lisp:t :member-name
                                  "HumanLoopName" :http-label common-lisp:t))
                                (:shape-name "DeleteHumanLoopRequest"))

(smithy/sdk/shapes:define-output delete-human-loop-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "DeleteHumanLoopResponse"))

(smithy/sdk/shapes:define-input describe-human-loop-request common-lisp:nil
                                ((human-loop-name :target-type human-loop-name
                                  :required common-lisp:t :member-name
                                  "HumanLoopName" :http-label common-lisp:t))
                                (:shape-name "DescribeHumanLoopRequest"))

(smithy/sdk/shapes:define-output describe-human-loop-response common-lisp:nil
                                 ((creation-time :target-type timestamp
                                   :required common-lisp:t :member-name
                                   "CreationTime")
                                  (failure-reason :target-type string
                                   :member-name "FailureReason")
                                  (failure-code :target-type string
                                   :member-name "FailureCode")
                                  (human-loop-status :target-type
                                   human-loop-status :required common-lisp:t
                                   :member-name "HumanLoopStatus")
                                  (human-loop-name :target-type human-loop-name
                                   :required common-lisp:t :member-name
                                   "HumanLoopName")
                                  (human-loop-arn :target-type human-loop-arn
                                   :required common-lisp:t :member-name
                                   "HumanLoopArn")
                                  (flow-definition-arn :target-type
                                   flow-definition-arn :required common-lisp:t
                                   :member-name "FlowDefinitionArn")
                                  (human-loop-output :target-type
                                   human-loop-output :member-name
                                   "HumanLoopOutput"))
                                 (:shape-name "DescribeHumanLoopResponse"))

(smithy/sdk/shapes:define-type failure-reason smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type flow-definition-arn
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type human-loop-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure human-loop-data-attributes common-lisp:nil
                                    ((content-classifiers :target-type
                                      content-classifiers :required
                                      common-lisp:t :member-name
                                      "ContentClassifiers"))
                                    (:shape-name "HumanLoopDataAttributes"))

(smithy/sdk/shapes:define-structure human-loop-input common-lisp:nil
                                    ((input-content :target-type input-content
                                      :required common-lisp:t :member-name
                                      "InputContent"))
                                    (:shape-name "HumanLoopInput"))

(smithy/sdk/shapes:define-type human-loop-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure human-loop-output common-lisp:nil
                                    ((output-s3uri :target-type string
                                      :required common-lisp:t :member-name
                                      "OutputS3Uri"))
                                    (:shape-name "HumanLoopOutput"))

(smithy/sdk/shapes:define-enum human-loop-status
    common-lisp:nil
  (:in-progress "InProgress")
  (:failed "Failed")
  (:completed "Completed")
  (:stopped "Stopped")
  (:stopping "Stopping"))

(smithy/sdk/shapes:define-list human-loop-summaries :member human-loop-summary)

(smithy/sdk/shapes:define-structure human-loop-summary common-lisp:nil
                                    ((human-loop-name :target-type
                                      human-loop-name :member-name
                                      "HumanLoopName")
                                     (human-loop-status :target-type
                                      human-loop-status :member-name
                                      "HumanLoopStatus")
                                     (creation-time :target-type timestamp
                                      :member-name "CreationTime")
                                     (failure-reason :target-type
                                      failure-reason :member-name
                                      "FailureReason")
                                     (flow-definition-arn :target-type
                                      flow-definition-arn :member-name
                                      "FlowDefinitionArn"))
                                    (:shape-name "HumanLoopSummary"))

(smithy/sdk/shapes:define-type input-content smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error internal-server-exception common-lisp:nil
                                ((message :target-type failure-reason
                                  :member-name "Message"))
                                (:shape-name "InternalServerException")
                                (:error-code 500))

(smithy/sdk/shapes:define-input list-human-loops-request common-lisp:nil
                                ((creation-time-after :target-type timestamp
                                  :member-name "CreationTimeAfter" :http-query
                                  "CreationTimeAfter")
                                 (creation-time-before :target-type timestamp
                                  :member-name "CreationTimeBefore" :http-query
                                  "CreationTimeBefore")
                                 (flow-definition-arn :target-type
                                  flow-definition-arn :required common-lisp:t
                                  :member-name "FlowDefinitionArn" :http-query
                                  "FlowDefinitionArn")
                                 (sort-order :target-type sort-order
                                  :member-name "SortOrder" :http-query
                                  "SortOrder")
                                 (next-token :target-type next-token
                                  :member-name "NextToken" :http-query
                                  "NextToken")
                                 (max-results :target-type max-results
                                  :member-name "MaxResults" :http-query
                                  "MaxResults"))
                                (:shape-name "ListHumanLoopsRequest"))

(smithy/sdk/shapes:define-output list-human-loops-response common-lisp:nil
                                 ((human-loop-summaries :target-type
                                   human-loop-summaries :required common-lisp:t
                                   :member-name "HumanLoopSummaries")
                                  (next-token :target-type next-token
                                   :member-name "NextToken"))
                                 (:shape-name "ListHumanLoopsResponse"))

(smithy/sdk/shapes:define-type max-results smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type next-token smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error resource-not-found-exception common-lisp:nil
                                ((message :target-type failure-reason
                                  :member-name "Message"))
                                (:shape-name "ResourceNotFoundException")
                                (:error-code 404))

(smithy/sdk/shapes:define-error service-quota-exceeded-exception
                                common-lisp:nil
                                ((message :target-type failure-reason
                                  :member-name "Message"))
                                (:shape-name "ServiceQuotaExceededException")
                                (:error-code 402))

(smithy/sdk/shapes:define-enum sort-order
    common-lisp:nil
  (:ascending "Ascending")
  (:descending "Descending"))

(smithy/sdk/shapes:define-input start-human-loop-request common-lisp:nil
                                ((human-loop-name :target-type human-loop-name
                                  :required common-lisp:t :member-name
                                  "HumanLoopName")
                                 (flow-definition-arn :target-type
                                  flow-definition-arn :required common-lisp:t
                                  :member-name "FlowDefinitionArn")
                                 (human-loop-input :target-type
                                  human-loop-input :required common-lisp:t
                                  :member-name "HumanLoopInput")
                                 (data-attributes :target-type
                                  human-loop-data-attributes :member-name
                                  "DataAttributes"))
                                (:shape-name "StartHumanLoopRequest"))

(smithy/sdk/shapes:define-output start-human-loop-response common-lisp:nil
                                 ((human-loop-arn :target-type human-loop-arn
                                   :member-name "HumanLoopArn"))
                                 (:shape-name "StartHumanLoopResponse"))

(smithy/sdk/shapes:define-input stop-human-loop-request common-lisp:nil
                                ((human-loop-name :target-type human-loop-name
                                  :required common-lisp:t :member-name
                                  "HumanLoopName"))
                                (:shape-name "StopHumanLoopRequest"))

(smithy/sdk/shapes:define-output stop-human-loop-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "StopHumanLoopResponse"))

(smithy/sdk/shapes:define-type string smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error throttling-exception common-lisp:nil
                                ((message :target-type failure-reason
                                  :member-name "Message"))
                                (:shape-name "ThrottlingException")
                                (:error-code 429))

(smithy/sdk/shapes:define-type timestamp smithy/sdk/smithy-types:timestamp
                               :timestamp-format "date-time")

(smithy/sdk/shapes:define-error validation-exception common-lisp:nil
                                ((message :target-type failure-reason
                                  :member-name "Message"))
                                (:shape-name "ValidationException")
                                (:error-code 400))

(smithy/sdk/operation:define-operation delete-human-loop :shape-name
                                       "DeleteHumanLoop" :input
                                       delete-human-loop-request :output
                                       delete-human-loop-response :errors
                                       (internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "DELETE" :uri
                                       "/human-loops/{HumanLoopName}" :code 200)

(smithy/sdk/operation:define-operation describe-human-loop :shape-name
                                       "DescribeHumanLoop" :input
                                       describe-human-loop-request :output
                                       describe-human-loop-response :errors
                                       (internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/human-loops/{HumanLoopName}" :code 200)

(smithy/sdk/operation:define-operation list-human-loops :shape-name
                                       "ListHumanLoops" :input
                                       list-human-loops-request :output
                                       list-human-loops-response :errors
                                       (internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri "/human-loops" :code
                                       200)

(smithy/sdk/operation:define-operation start-human-loop :shape-name
                                       "StartHumanLoop" :input
                                       start-human-loop-request :output
                                       start-human-loop-response :errors
                                       (conflict-exception
                                        internal-server-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri "/human-loops" :code
                                       200)

(smithy/sdk/operation:define-operation stop-human-loop :shape-name
                                       "StopHumanLoop" :input
                                       stop-human-loop-request :output
                                       stop-human-loop-response :errors
                                       (internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri "/human-loops/stop"
                                       :code 200)
