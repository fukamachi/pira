(uiop/package:define-package #:pira/mediastore (:use)
                             (:export #:allowed-headers #:allowed-methods
                              #:allowed-origins #:container #:container-arn
                              #:container-access-logging-enabled
                              #:container-level-metrics #:container-list
                              #:container-list-limit #:container-name
                              #:container-policy #:container-status
                              #:cors-policy #:cors-rule #:create-container
                              #:delete-container #:delete-container-policy
                              #:delete-cors-policy #:delete-lifecycle-policy
                              #:delete-metric-policy #:describe-container
                              #:endpoint #:error-message #:expose-headers
                              #:get-container-policy #:get-cors-policy
                              #:get-lifecycle-policy #:get-metric-policy
                              #:header #:lifecycle-policy #:list-containers
                              #:list-tags-for-resource #:max-age-seconds
                              #:media-store-20170901 #:method-name
                              #:metric-policy #:metric-policy-rule
                              #:metric-policy-rules #:object-group
                              #:object-group-name #:origin #:pagination-token
                              #:put-container-policy #:put-cors-policy
                              #:put-lifecycle-policy #:put-metric-policy
                              #:start-access-logging #:stop-access-logging
                              #:tag #:tag-key #:tag-key-list #:tag-list
                              #:tag-resource #:tag-value #:time-stamp
                              #:untag-resource))
(common-lisp:in-package #:pira/mediastore)

(smithy/sdk/service:define-service media-store-20170901 :shape-name
                                   "MediaStore_20170901" :version "2017-09-01"
                                   :title "AWS Elemental MediaStore"
                                   :operations
                                   '(create-container delete-container
                                     delete-container-policy delete-cors-policy
                                     delete-lifecycle-policy
                                     delete-metric-policy describe-container
                                     get-container-policy get-cors-policy
                                     get-lifecycle-policy get-metric-policy
                                     list-containers list-tags-for-resource
                                     put-container-policy put-cors-policy
                                     put-lifecycle-policy put-metric-policy
                                     start-access-logging stop-access-logging
                                     tag-resource untag-resource)
                                   :xml-namespace
                                   (:uri
                                    "https://mediastore.amazonaws.com/doc/2017-09-01"
                                    :prefix common-lisp:nil)
                                   :traits
                                   '(("aws.api#service"
                                      ("sdkId" . "MediaStore")
                                      ("arnNamespace" . "mediastore")
                                      ("cloudFormationName" . "MediaStore")
                                      ("cloudTrailEventSource"
                                       . "mediastore.amazonaws.com")
                                      ("endpointPrefix" . "mediastore"))
                                     ("aws.auth#sigv4" ("name" . "mediastore"))
                                     ("aws.protocols#awsJson1_1")))

(smithy/sdk/shapes:define-list allowed-headers :member header)

(smithy/sdk/shapes:define-list allowed-methods :member method-name)

(smithy/sdk/shapes:define-list allowed-origins :member origin)

(smithy/sdk/shapes:define-structure container common-lisp:nil
                                    ((endpoint :target-type endpoint
                                      :member-name "Endpoint")
                                     (creation-time :target-type time-stamp
                                      :member-name "CreationTime")
                                     (arn :target-type container-arn
                                      :member-name "ARN")
                                     (name :target-type container-name
                                      :member-name "Name")
                                     (status :target-type container-status
                                      :member-name "Status")
                                     (access-logging-enabled :target-type
                                      container-access-logging-enabled
                                      :member-name "AccessLoggingEnabled"))
                                    (:shape-name "Container"))

(smithy/sdk/shapes:define-type container-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type container-access-logging-enabled
                               smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-error container-in-use-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name "ContainerInUseException")
                                (:error-code 400))

(smithy/sdk/shapes:define-enum container-level-metrics
    common-lisp:nil
  (:enabled "ENABLED")
  (:disabled "DISABLED"))

(smithy/sdk/shapes:define-list container-list :member container)

(smithy/sdk/shapes:define-type container-list-limit
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type container-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error container-not-found-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name "ContainerNotFoundException")
                                (:error-code 400))

(smithy/sdk/shapes:define-type container-policy smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum container-status
    common-lisp:nil
  (:active "ACTIVE")
  (:creating "CREATING")
  (:deleting "DELETING"))

(smithy/sdk/shapes:define-list cors-policy :member cors-rule)

(smithy/sdk/shapes:define-error cors-policy-not-found-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name "CorsPolicyNotFoundException")
                                (:error-code 400))

(smithy/sdk/shapes:define-structure cors-rule common-lisp:nil
                                    ((allowed-origins :target-type
                                      allowed-origins :required common-lisp:t
                                      :member-name "AllowedOrigins")
                                     (allowed-methods :target-type
                                      allowed-methods :member-name
                                      "AllowedMethods")
                                     (allowed-headers :target-type
                                      allowed-headers :required common-lisp:t
                                      :member-name "AllowedHeaders")
                                     (max-age-seconds :target-type
                                      max-age-seconds :member-name
                                      "MaxAgeSeconds")
                                     (expose-headers :target-type
                                      expose-headers :member-name
                                      "ExposeHeaders"))
                                    (:shape-name "CorsRule"))

(smithy/sdk/shapes:define-input create-container-input common-lisp:nil
                                ((container-name :target-type container-name
                                  :required common-lisp:t :member-name
                                  "ContainerName")
                                 (tags :target-type tag-list :member-name
                                  "Tags"))
                                (:shape-name "CreateContainerInput"))

(smithy/sdk/shapes:define-output create-container-output common-lisp:nil
                                 ((container :target-type container :required
                                   common-lisp:t :member-name "Container"))
                                 (:shape-name "CreateContainerOutput"))

(smithy/sdk/shapes:define-input delete-container-input common-lisp:nil
                                ((container-name :target-type container-name
                                  :required common-lisp:t :member-name
                                  "ContainerName"))
                                (:shape-name "DeleteContainerInput"))

(smithy/sdk/shapes:define-output delete-container-output common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "DeleteContainerOutput"))

(smithy/sdk/shapes:define-input delete-container-policy-input common-lisp:nil
                                ((container-name :target-type container-name
                                  :required common-lisp:t :member-name
                                  "ContainerName"))
                                (:shape-name "DeleteContainerPolicyInput"))

(smithy/sdk/shapes:define-output delete-container-policy-output common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "DeleteContainerPolicyOutput"))

(smithy/sdk/shapes:define-input delete-cors-policy-input common-lisp:nil
                                ((container-name :target-type container-name
                                  :required common-lisp:t :member-name
                                  "ContainerName"))
                                (:shape-name "DeleteCorsPolicyInput"))

(smithy/sdk/shapes:define-output delete-cors-policy-output common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "DeleteCorsPolicyOutput"))

(smithy/sdk/shapes:define-input delete-lifecycle-policy-input common-lisp:nil
                                ((container-name :target-type container-name
                                  :required common-lisp:t :member-name
                                  "ContainerName"))
                                (:shape-name "DeleteLifecyclePolicyInput"))

(smithy/sdk/shapes:define-output delete-lifecycle-policy-output common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "DeleteLifecyclePolicyOutput"))

(smithy/sdk/shapes:define-input delete-metric-policy-input common-lisp:nil
                                ((container-name :target-type container-name
                                  :required common-lisp:t :member-name
                                  "ContainerName"))
                                (:shape-name "DeleteMetricPolicyInput"))

(smithy/sdk/shapes:define-output delete-metric-policy-output common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "DeleteMetricPolicyOutput"))

(smithy/sdk/shapes:define-input describe-container-input common-lisp:nil
                                ((container-name :target-type container-name
                                  :member-name "ContainerName"))
                                (:shape-name "DescribeContainerInput"))

(smithy/sdk/shapes:define-output describe-container-output common-lisp:nil
                                 ((container :target-type container
                                   :member-name "Container"))
                                 (:shape-name "DescribeContainerOutput"))

(smithy/sdk/shapes:define-type endpoint smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type error-message smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list expose-headers :member header)

(smithy/sdk/shapes:define-input get-container-policy-input common-lisp:nil
                                ((container-name :target-type container-name
                                  :required common-lisp:t :member-name
                                  "ContainerName"))
                                (:shape-name "GetContainerPolicyInput"))

(smithy/sdk/shapes:define-output get-container-policy-output common-lisp:nil
                                 ((policy :target-type container-policy
                                   :required common-lisp:t :member-name
                                   "Policy"))
                                 (:shape-name "GetContainerPolicyOutput"))

(smithy/sdk/shapes:define-input get-cors-policy-input common-lisp:nil
                                ((container-name :target-type container-name
                                  :required common-lisp:t :member-name
                                  "ContainerName"))
                                (:shape-name "GetCorsPolicyInput"))

(smithy/sdk/shapes:define-output get-cors-policy-output common-lisp:nil
                                 ((cors-policy :target-type cors-policy
                                   :required common-lisp:t :member-name
                                   "CorsPolicy"))
                                 (:shape-name "GetCorsPolicyOutput"))

(smithy/sdk/shapes:define-input get-lifecycle-policy-input common-lisp:nil
                                ((container-name :target-type container-name
                                  :required common-lisp:t :member-name
                                  "ContainerName"))
                                (:shape-name "GetLifecyclePolicyInput"))

(smithy/sdk/shapes:define-output get-lifecycle-policy-output common-lisp:nil
                                 ((lifecycle-policy :target-type
                                   lifecycle-policy :required common-lisp:t
                                   :member-name "LifecyclePolicy"))
                                 (:shape-name "GetLifecyclePolicyOutput"))

(smithy/sdk/shapes:define-input get-metric-policy-input common-lisp:nil
                                ((container-name :target-type container-name
                                  :required common-lisp:t :member-name
                                  "ContainerName"))
                                (:shape-name "GetMetricPolicyInput"))

(smithy/sdk/shapes:define-output get-metric-policy-output common-lisp:nil
                                 ((metric-policy :target-type metric-policy
                                   :required common-lisp:t :member-name
                                   "MetricPolicy"))
                                 (:shape-name "GetMetricPolicyOutput"))

(smithy/sdk/shapes:define-type header smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error internal-server-error common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name "InternalServerError")
                                (:error-code 500))

(smithy/sdk/shapes:define-type lifecycle-policy smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error limit-exceeded-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name "LimitExceededException")
                                (:error-code 400))

(smithy/sdk/shapes:define-input list-containers-input common-lisp:nil
                                ((next-token :target-type pagination-token
                                  :member-name "NextToken")
                                 (max-results :target-type container-list-limit
                                  :member-name "MaxResults"))
                                (:shape-name "ListContainersInput"))

(smithy/sdk/shapes:define-output list-containers-output common-lisp:nil
                                 ((containers :target-type container-list
                                   :required common-lisp:t :member-name
                                   "Containers")
                                  (next-token :target-type pagination-token
                                   :member-name "NextToken"))
                                 (:shape-name "ListContainersOutput"))

(smithy/sdk/shapes:define-input list-tags-for-resource-input common-lisp:nil
                                ((resource :target-type container-arn :required
                                  common-lisp:t :member-name "Resource"))
                                (:shape-name "ListTagsForResourceInput"))

(smithy/sdk/shapes:define-output list-tags-for-resource-output common-lisp:nil
                                 ((tags :target-type tag-list :member-name
                                   "Tags"))
                                 (:shape-name "ListTagsForResourceOutput"))

(smithy/sdk/shapes:define-type max-age-seconds smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-enum method-name
    common-lisp:nil
  (:put "PUT")
  (:get "GET")
  (:delete "DELETE")
  (:head "HEAD"))

(smithy/sdk/shapes:define-structure metric-policy common-lisp:nil
                                    ((container-level-metrics :target-type
                                      container-level-metrics :required
                                      common-lisp:t :member-name
                                      "ContainerLevelMetrics")
                                     (metric-policy-rules :target-type
                                      metric-policy-rules :member-name
                                      "MetricPolicyRules"))
                                    (:shape-name "MetricPolicy"))

(smithy/sdk/shapes:define-structure metric-policy-rule common-lisp:nil
                                    ((object-group :target-type object-group
                                      :required common-lisp:t :member-name
                                      "ObjectGroup")
                                     (object-group-name :target-type
                                      object-group-name :required common-lisp:t
                                      :member-name "ObjectGroupName"))
                                    (:shape-name "MetricPolicyRule"))

(smithy/sdk/shapes:define-list metric-policy-rules :member metric-policy-rule)

(smithy/sdk/shapes:define-type object-group smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type object-group-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type origin smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type pagination-token smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error policy-not-found-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name "PolicyNotFoundException")
                                (:error-code 400))

(smithy/sdk/shapes:define-input put-container-policy-input common-lisp:nil
                                ((container-name :target-type container-name
                                  :required common-lisp:t :member-name
                                  "ContainerName")
                                 (policy :target-type container-policy
                                  :required common-lisp:t :member-name
                                  "Policy"))
                                (:shape-name "PutContainerPolicyInput"))

(smithy/sdk/shapes:define-output put-container-policy-output common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "PutContainerPolicyOutput"))

(smithy/sdk/shapes:define-input put-cors-policy-input common-lisp:nil
                                ((container-name :target-type container-name
                                  :required common-lisp:t :member-name
                                  "ContainerName")
                                 (cors-policy :target-type cors-policy
                                  :required common-lisp:t :member-name
                                  "CorsPolicy"))
                                (:shape-name "PutCorsPolicyInput"))

(smithy/sdk/shapes:define-output put-cors-policy-output common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "PutCorsPolicyOutput"))

(smithy/sdk/shapes:define-input put-lifecycle-policy-input common-lisp:nil
                                ((container-name :target-type container-name
                                  :required common-lisp:t :member-name
                                  "ContainerName")
                                 (lifecycle-policy :target-type
                                  lifecycle-policy :required common-lisp:t
                                  :member-name "LifecyclePolicy"))
                                (:shape-name "PutLifecyclePolicyInput"))

(smithy/sdk/shapes:define-output put-lifecycle-policy-output common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "PutLifecyclePolicyOutput"))

(smithy/sdk/shapes:define-input put-metric-policy-input common-lisp:nil
                                ((container-name :target-type container-name
                                  :required common-lisp:t :member-name
                                  "ContainerName")
                                 (metric-policy :target-type metric-policy
                                  :required common-lisp:t :member-name
                                  "MetricPolicy"))
                                (:shape-name "PutMetricPolicyInput"))

(smithy/sdk/shapes:define-output put-metric-policy-output common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "PutMetricPolicyOutput"))

(smithy/sdk/shapes:define-input start-access-logging-input common-lisp:nil
                                ((container-name :target-type container-name
                                  :required common-lisp:t :member-name
                                  "ContainerName"))
                                (:shape-name "StartAccessLoggingInput"))

(smithy/sdk/shapes:define-output start-access-logging-output common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "StartAccessLoggingOutput"))

(smithy/sdk/shapes:define-input stop-access-logging-input common-lisp:nil
                                ((container-name :target-type container-name
                                  :required common-lisp:t :member-name
                                  "ContainerName"))
                                (:shape-name "StopAccessLoggingInput"))

(smithy/sdk/shapes:define-output stop-access-logging-output common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "StopAccessLoggingOutput"))

(smithy/sdk/shapes:define-structure tag common-lisp:nil
                                    ((key :target-type tag-key :required
                                      common-lisp:t :member-name "Key")
                                     (value :target-type tag-value :member-name
                                      "Value"))
                                    (:shape-name "Tag"))

(smithy/sdk/shapes:define-type tag-key smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list tag-key-list :member tag-key)

(smithy/sdk/shapes:define-list tag-list :member tag)

(smithy/sdk/shapes:define-input tag-resource-input common-lisp:nil
                                ((resource :target-type container-arn :required
                                  common-lisp:t :member-name "Resource")
                                 (tags :target-type tag-list :required
                                  common-lisp:t :member-name "Tags"))
                                (:shape-name "TagResourceInput"))

(smithy/sdk/shapes:define-output tag-resource-output common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "TagResourceOutput"))

(smithy/sdk/shapes:define-type tag-value smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type time-stamp smithy/sdk/smithy-types:timestamp)

(smithy/sdk/shapes:define-input untag-resource-input common-lisp:nil
                                ((resource :target-type container-arn :required
                                  common-lisp:t :member-name "Resource")
                                 (tag-keys :target-type tag-key-list :required
                                  common-lisp:t :member-name "TagKeys"))
                                (:shape-name "UntagResourceInput"))

(smithy/sdk/shapes:define-output untag-resource-output common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "UntagResourceOutput"))

(smithy/sdk/operation:define-operation create-container :shape-name
                                       "CreateContainer" :input
                                       create-container-input :output
                                       create-container-output :errors
                                       (container-in-use-exception
                                        internal-server-error
                                        limit-exceeded-exception))

(smithy/sdk/operation:define-operation delete-container :shape-name
                                       "DeleteContainer" :input
                                       delete-container-input :output
                                       delete-container-output :errors
                                       (container-in-use-exception
                                        container-not-found-exception
                                        internal-server-error))

(smithy/sdk/operation:define-operation delete-container-policy :shape-name
                                       "DeleteContainerPolicy" :input
                                       delete-container-policy-input :output
                                       delete-container-policy-output :errors
                                       (container-in-use-exception
                                        container-not-found-exception
                                        internal-server-error
                                        policy-not-found-exception))

(smithy/sdk/operation:define-operation delete-cors-policy :shape-name
                                       "DeleteCorsPolicy" :input
                                       delete-cors-policy-input :output
                                       delete-cors-policy-output :errors
                                       (container-in-use-exception
                                        container-not-found-exception
                                        cors-policy-not-found-exception
                                        internal-server-error))

(smithy/sdk/operation:define-operation delete-lifecycle-policy :shape-name
                                       "DeleteLifecyclePolicy" :input
                                       delete-lifecycle-policy-input :output
                                       delete-lifecycle-policy-output :errors
                                       (container-in-use-exception
                                        container-not-found-exception
                                        internal-server-error
                                        policy-not-found-exception))

(smithy/sdk/operation:define-operation delete-metric-policy :shape-name
                                       "DeleteMetricPolicy" :input
                                       delete-metric-policy-input :output
                                       delete-metric-policy-output :errors
                                       (container-in-use-exception
                                        container-not-found-exception
                                        internal-server-error
                                        policy-not-found-exception))

(smithy/sdk/operation:define-operation describe-container :shape-name
                                       "DescribeContainer" :input
                                       describe-container-input :output
                                       describe-container-output :errors
                                       (container-not-found-exception
                                        internal-server-error))

(smithy/sdk/operation:define-operation get-container-policy :shape-name
                                       "GetContainerPolicy" :input
                                       get-container-policy-input :output
                                       get-container-policy-output :errors
                                       (container-in-use-exception
                                        container-not-found-exception
                                        internal-server-error
                                        policy-not-found-exception))

(smithy/sdk/operation:define-operation get-cors-policy :shape-name
                                       "GetCorsPolicy" :input
                                       get-cors-policy-input :output
                                       get-cors-policy-output :errors
                                       (container-in-use-exception
                                        container-not-found-exception
                                        cors-policy-not-found-exception
                                        internal-server-error))

(smithy/sdk/operation:define-operation get-lifecycle-policy :shape-name
                                       "GetLifecyclePolicy" :input
                                       get-lifecycle-policy-input :output
                                       get-lifecycle-policy-output :errors
                                       (container-in-use-exception
                                        container-not-found-exception
                                        internal-server-error
                                        policy-not-found-exception))

(smithy/sdk/operation:define-operation get-metric-policy :shape-name
                                       "GetMetricPolicy" :input
                                       get-metric-policy-input :output
                                       get-metric-policy-output :errors
                                       (container-in-use-exception
                                        container-not-found-exception
                                        internal-server-error
                                        policy-not-found-exception))

(smithy/sdk/operation:define-operation list-containers :shape-name
                                       "ListContainers" :input
                                       list-containers-input :output
                                       list-containers-output :errors
                                       (internal-server-error))

(smithy/sdk/operation:define-operation list-tags-for-resource :shape-name
                                       "ListTagsForResource" :input
                                       list-tags-for-resource-input :output
                                       list-tags-for-resource-output :errors
                                       (container-in-use-exception
                                        container-not-found-exception
                                        internal-server-error))

(smithy/sdk/operation:define-operation put-container-policy :shape-name
                                       "PutContainerPolicy" :input
                                       put-container-policy-input :output
                                       put-container-policy-output :errors
                                       (container-in-use-exception
                                        container-not-found-exception
                                        internal-server-error))

(smithy/sdk/operation:define-operation put-cors-policy :shape-name
                                       "PutCorsPolicy" :input
                                       put-cors-policy-input :output
                                       put-cors-policy-output :errors
                                       (container-in-use-exception
                                        container-not-found-exception
                                        internal-server-error))

(smithy/sdk/operation:define-operation put-lifecycle-policy :shape-name
                                       "PutLifecyclePolicy" :input
                                       put-lifecycle-policy-input :output
                                       put-lifecycle-policy-output :errors
                                       (container-in-use-exception
                                        container-not-found-exception
                                        internal-server-error))

(smithy/sdk/operation:define-operation put-metric-policy :shape-name
                                       "PutMetricPolicy" :input
                                       put-metric-policy-input :output
                                       put-metric-policy-output :errors
                                       (container-in-use-exception
                                        container-not-found-exception
                                        internal-server-error))

(smithy/sdk/operation:define-operation start-access-logging :shape-name
                                       "StartAccessLogging" :input
                                       start-access-logging-input :output
                                       start-access-logging-output :errors
                                       (container-in-use-exception
                                        container-not-found-exception
                                        internal-server-error))

(smithy/sdk/operation:define-operation stop-access-logging :shape-name
                                       "StopAccessLogging" :input
                                       stop-access-logging-input :output
                                       stop-access-logging-output :errors
                                       (container-in-use-exception
                                        container-not-found-exception
                                        internal-server-error))

(smithy/sdk/operation:define-operation tag-resource :shape-name "TagResource"
                                       :input tag-resource-input :output
                                       tag-resource-output :errors
                                       (container-in-use-exception
                                        container-not-found-exception
                                        internal-server-error))

(smithy/sdk/operation:define-operation untag-resource :shape-name
                                       "UntagResource" :input
                                       untag-resource-input :output
                                       untag-resource-output :errors
                                       (container-in-use-exception
                                        container-not-found-exception
                                        internal-server-error))
