(uiop/package:define-package #:pira/bedrock-data-automation-runtime (:use)
                             (:export #:amazon-bedrock-keystone-runtime-service
                              #:asset-processing-configuration
                              #:automation-job-resource #:automation-job-status
                              #:blueprint #:blueprint-arn #:blueprint-list
                              #:blueprint-stage #:blueprint-version
                              #:data-automation-arn
                              #:data-automation-configuration
                              #:data-automation-profile-arn
                              #:data-automation-stage
                              #:encryption-configuration
                              #:encryption-context-key #:encryption-context-map
                              #:encryption-context-value
                              #:event-bridge-configuration
                              #:get-data-automation-status #:idempotency-token
                              #:input-configuration #:invocation-arn
                              #:invoke-data-automation-async #:kmskey-id
                              #:list-tags-for-resource #:non-blank-string
                              #:notification-configuration
                              #:output-configuration #:s3uri #:tag #:tag-key
                              #:tag-key-list #:tag-list #:tag-resource
                              #:tag-value #:taggable-resource-arn
                              #:timestamp-segment #:untag-resource
                              #:video-asset-processing-configuration
                              #:video-segment-configuration))
(common-lisp:in-package #:pira/bedrock-data-automation-runtime)

(smithy/sdk/service:define-service amazon-bedrock-keystone-runtime-service
                                   :shape-name
                                   "AmazonBedrockKeystoneRuntimeService"
                                   :version "2024-06-13" :title
                                   "Runtime for Amazon Bedrock Data Automation"
                                   :traits
                                   '(("aws.api#service"
                                      ("sdkId"
                                       . "Bedrock Data Automation Runtime")
                                      ("arnNamespace" . "bedrock")
                                      ("endpointPrefix"
                                       . "bedrock-data-automation-runtime")
                                      ("cloudTrailEventSource"
                                       . "bedrock.amazonaws.com"))
                                     ("aws.auth#sigv4" ("name" . "bedrock"))
                                     ("aws.protocols#awsJson1_1")))

(smithy/sdk/shapes:define-error access-denied-exception common-lisp:nil
                                ((message :target-type non-blank-string
                                  :member-name "message"))
                                (:shape-name "AccessDeniedException")
                                (:error-code 403))

(smithy/sdk/shapes:define-structure asset-processing-configuration
                                    common-lisp:nil
                                    ((video :target-type
                                      video-asset-processing-configuration
                                      :member-name "video"))
                                    (:shape-name
                                     "AssetProcessingConfiguration"))

common-lisp:nil

(smithy/sdk/shapes:define-enum automation-job-status
    common-lisp:nil
  (:created "Created")
  (:in-progress "InProgress")
  (:success "Success")
  (:service-error "ServiceError")
  (:client-error "ClientError"))

(smithy/sdk/shapes:define-structure blueprint common-lisp:nil
                                    ((blueprint-arn :target-type blueprint-arn
                                      :required common-lisp:t :member-name
                                      "blueprintArn")
                                     (version :target-type blueprint-version
                                      :member-name "version")
                                     (stage :target-type blueprint-stage
                                      :member-name "stage"))
                                    (:shape-name "Blueprint"))

(smithy/sdk/shapes:define-type blueprint-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list blueprint-list :member blueprint)

(smithy/sdk/shapes:define-enum blueprint-stage
    common-lisp:nil
  (:development "DEVELOPMENT")
  (:live "LIVE"))

(smithy/sdk/shapes:define-type blueprint-version smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type data-automation-arn
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure data-automation-configuration
                                    common-lisp:nil
                                    ((data-automation-project-arn :target-type
                                      data-automation-arn :required
                                      common-lisp:t :member-name
                                      "dataAutomationProjectArn")
                                     (stage :target-type data-automation-stage
                                      :member-name "stage"))
                                    (:shape-name "DataAutomationConfiguration"))

(smithy/sdk/shapes:define-type data-automation-profile-arn
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum data-automation-stage
    common-lisp:nil
  (:live "LIVE")
  (:development "DEVELOPMENT"))

(smithy/sdk/shapes:define-structure encryption-configuration common-lisp:nil
                                    ((kms-key-id :target-type kmskey-id
                                      :required common-lisp:t :member-name
                                      "kmsKeyId")
                                     (kms-encryption-context :target-type
                                      encryption-context-map :member-name
                                      "kmsEncryptionContext"))
                                    (:shape-name "EncryptionConfiguration"))

(smithy/sdk/shapes:define-type encryption-context-key
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-map encryption-context-map :key
                              encryption-context-key :value
                              encryption-context-value)

(smithy/sdk/shapes:define-type encryption-context-value
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure event-bridge-configuration common-lisp:nil
                                    ((event-bridge-enabled :target-type
                                      smithy/sdk/smithy-types:boolean :required
                                      common-lisp:t :member-name
                                      "eventBridgeEnabled"))
                                    (:shape-name "EventBridgeConfiguration"))

(smithy/sdk/shapes:define-input get-data-automation-status-request
                                common-lisp:nil
                                ((invocation-arn :target-type invocation-arn
                                  :required common-lisp:t :member-name
                                  "invocationArn" :http-label common-lisp:t))
                                (:shape-name "GetDataAutomationStatusRequest"))

(smithy/sdk/shapes:define-output get-data-automation-status-response
                                 common-lisp:nil
                                 ((status :target-type automation-job-status
                                   :member-name "status")
                                  (error-type :target-type
                                   smithy/sdk/smithy-types:string :member-name
                                   "errorType")
                                  (error-message :target-type
                                   smithy/sdk/smithy-types:string :member-name
                                   "errorMessage")
                                  (output-configuration :target-type
                                   output-configuration :member-name
                                   "outputConfiguration"))
                                 (:shape-name
                                  "GetDataAutomationStatusResponse"))

(smithy/sdk/shapes:define-type idempotency-token smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure input-configuration common-lisp:nil
                                    ((s3uri :target-type s3uri :required
                                      common-lisp:t :member-name "s3Uri")
                                     (asset-processing-configuration
                                      :target-type
                                      asset-processing-configuration
                                      :member-name
                                      "assetProcessingConfiguration"))
                                    (:shape-name "InputConfiguration"))

(smithy/sdk/shapes:define-error internal-server-exception common-lisp:nil
                                ((message :target-type non-blank-string
                                  :member-name "message"))
                                (:shape-name "InternalServerException")
                                (:error-code 500))

(smithy/sdk/shapes:define-type invocation-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input invoke-data-automation-async-request
                                common-lisp:nil
                                ((client-token :target-type idempotency-token
                                  :member-name "clientToken")
                                 (input-configuration :target-type
                                  input-configuration :required common-lisp:t
                                  :member-name "inputConfiguration")
                                 (output-configuration :target-type
                                  output-configuration :required common-lisp:t
                                  :member-name "outputConfiguration")
                                 (data-automation-configuration :target-type
                                  data-automation-configuration :member-name
                                  "dataAutomationConfiguration")
                                 (encryption-configuration :target-type
                                  encryption-configuration :member-name
                                  "encryptionConfiguration")
                                 (notification-configuration :target-type
                                  notification-configuration :member-name
                                  "notificationConfiguration")
                                 (blueprints :target-type blueprint-list
                                  :member-name "blueprints")
                                 (data-automation-profile-arn :target-type
                                  data-automation-profile-arn :required
                                  common-lisp:t :member-name
                                  "dataAutomationProfileArn")
                                 (tags :target-type tag-list :member-name
                                  "tags"))
                                (:shape-name
                                 "InvokeDataAutomationAsyncRequest"))

(smithy/sdk/shapes:define-output invoke-data-automation-async-response
                                 common-lisp:nil
                                 ((invocation-arn :target-type invocation-arn
                                   :required common-lisp:t :member-name
                                   "invocationArn"))
                                 (:shape-name
                                  "InvokeDataAutomationAsyncResponse"))

(smithy/sdk/shapes:define-type kmskey-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input list-tags-for-resource-request common-lisp:nil
                                ((resource-arn :target-type
                                  taggable-resource-arn :required common-lisp:t
                                  :member-name "resourceARN"))
                                (:shape-name "ListTagsForResourceRequest"))

(smithy/sdk/shapes:define-output list-tags-for-resource-response
                                 common-lisp:nil
                                 ((tags :target-type tag-list :member-name
                                   "tags"))
                                 (:shape-name "ListTagsForResourceResponse"))

(smithy/sdk/shapes:define-type non-blank-string smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure notification-configuration common-lisp:nil
                                    ((event-bridge-configuration :target-type
                                      event-bridge-configuration :required
                                      common-lisp:t :member-name
                                      "eventBridgeConfiguration"))
                                    (:shape-name "NotificationConfiguration"))

(smithy/sdk/shapes:define-structure output-configuration common-lisp:nil
                                    ((s3uri :target-type s3uri :required
                                      common-lisp:t :member-name "s3Uri"))
                                    (:shape-name "OutputConfiguration"))

(smithy/sdk/shapes:define-error resource-not-found-exception common-lisp:nil
                                ((message :target-type non-blank-string
                                  :member-name "message"))
                                (:shape-name "ResourceNotFoundException")
                                (:error-code 404))

(smithy/sdk/shapes:define-type s3uri smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error service-quota-exceeded-exception
                                common-lisp:nil
                                ((message :target-type non-blank-string
                                  :member-name "message"))
                                (:shape-name "ServiceQuotaExceededException")
                                (:error-code 402))

(smithy/sdk/shapes:define-structure tag common-lisp:nil
                                    ((key :target-type tag-key :required
                                      common-lisp:t :member-name "key")
                                     (value :target-type tag-value :required
                                      common-lisp:t :member-name "value"))
                                    (:shape-name "Tag"))

(smithy/sdk/shapes:define-type tag-key smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list tag-key-list :member tag-key)

(smithy/sdk/shapes:define-list tag-list :member tag)

(smithy/sdk/shapes:define-input tag-resource-request common-lisp:nil
                                ((resource-arn :target-type
                                  taggable-resource-arn :required common-lisp:t
                                  :member-name "resourceARN")
                                 (tags :target-type tag-list :required
                                  common-lisp:t :member-name "tags"))
                                (:shape-name "TagResourceRequest"))

(smithy/sdk/shapes:define-output tag-resource-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "TagResourceResponse"))

(smithy/sdk/shapes:define-type tag-value smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type taggable-resource-arn
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error throttling-exception common-lisp:nil
                                ((message :target-type non-blank-string
                                  :member-name "message"))
                                (:shape-name "ThrottlingException")
                                (:error-code 429))

(smithy/sdk/shapes:define-structure timestamp-segment common-lisp:nil
                                    ((start-time-millis :target-type
                                      smithy/sdk/smithy-types:long :required
                                      common-lisp:t :member-name
                                      "startTimeMillis")
                                     (end-time-millis :target-type
                                      smithy/sdk/smithy-types:long :required
                                      common-lisp:t :member-name
                                      "endTimeMillis"))
                                    (:shape-name "TimestampSegment"))

(smithy/sdk/shapes:define-input untag-resource-request common-lisp:nil
                                ((resource-arn :target-type
                                  taggable-resource-arn :required common-lisp:t
                                  :member-name "resourceARN")
                                 (tag-keys :target-type tag-key-list :required
                                  common-lisp:t :member-name "tagKeys"))
                                (:shape-name "UntagResourceRequest"))

(smithy/sdk/shapes:define-output untag-resource-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "UntagResourceResponse"))

(smithy/sdk/shapes:define-error validation-exception common-lisp:nil
                                ((message :target-type non-blank-string
                                  :member-name "message"))
                                (:shape-name "ValidationException")
                                (:error-code 400))

(smithy/sdk/shapes:define-structure video-asset-processing-configuration
                                    common-lisp:nil
                                    ((segment-configuration :target-type
                                      video-segment-configuration :member-name
                                      "segmentConfiguration"))
                                    (:shape-name
                                     "VideoAssetProcessingConfiguration"))

(smithy/sdk/shapes:define-union video-segment-configuration common-lisp:nil
                                ((timestamp-segment :target-type
                                  timestamp-segment :member-name
                                  "timestampSegment"))
                                (:shape-name "VideoSegmentConfiguration"))

(smithy/sdk/operation:define-operation get-data-automation-status :shape-name
                                       "GetDataAutomationStatus" :input
                                       get-data-automation-status-request
                                       :output
                                       get-data-automation-status-response
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation invoke-data-automation-async :shape-name
                                       "InvokeDataAutomationAsync" :input
                                       invoke-data-automation-async-request
                                       :output
                                       invoke-data-automation-async-response
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation list-tags-for-resource :shape-name
                                       "ListTagsForResource" :input
                                       list-tags-for-resource-request :output
                                       list-tags-for-resource-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation tag-resource :shape-name "TagResource"
                                       :input tag-resource-request :output
                                       tag-resource-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation untag-resource :shape-name
                                       "UntagResource" :input
                                       untag-resource-request :output
                                       untag-resource-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception))
