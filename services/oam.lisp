(uiop/package:define-package #:pira/oam (:use)
                             (:export #:arn #:create-link #:create-sink
                              #:delete-link #:delete-sink #:get-link #:get-sink
                              #:get-sink-policy #:include-tags #:label-template
                              #:link-configuration #:list-attached-links
                              #:list-attached-links-item
                              #:list-attached-links-items
                              #:list-attached-links-max-results #:list-links
                              #:list-links-item #:list-links-items
                              #:list-links-max-results #:list-sinks
                              #:list-sinks-item #:list-sinks-items
                              #:list-sinks-max-results #:list-tags-for-resource
                              #:log-group-configuration #:logs-filter
                              #:metric-configuration #:metrics-filter
                              #:next-token #:put-sink-policy
                              #:resource-identifier #:resource-type
                              #:resource-types-input #:resource-types-output
                              #:sink-name #:sink-policy #:tag-key #:tag-keys
                              #:tag-map-input #:tag-map-output #:tag-resource
                              #:tag-value #:untag-resource #:update-link
                              #:oamservice))
(common-lisp:in-package #:pira/oam)

(smithy/sdk/service:define-service oamservice :shape-name "oamservice" :version
                                   "2022-06-10" :title
                                   "CloudWatch Observability Access Manager"
                                   :operations
                                   '(create-link create-sink delete-link
                                     delete-sink get-link get-sink
                                     get-sink-policy list-attached-links
                                     list-links list-sinks
                                     list-tags-for-resource put-sink-policy
                                     tag-resource untag-resource update-link)
                                   :traits
                                   '(("aws.api#service" ("sdkId" . "OAM")
                                      ("arnNamespace" . "oam")
                                      ("cloudTrailEventSource"
                                       . "{{CLOUD_TRAIL_EVENT_SOURCE}}"))
                                     ("aws.auth#sigv4" ("name" . "oam"))
                                     ("aws.iam#defineConditionKeys"
                                      ("aws:ResourceTag/${TagKey}"
                                       ("type" . "String")
                                       ("documentation"
                                        . "Filters access by tag key-value pairs attached to the resource")
                                       ("externalDocumentation"
                                        . "${DocHomeURL}IAM/latest/UserGuide/reference_policies_condition-keys.html#condition-keys-resourcetag"))
                                      ("aws:TagKeys" ("type" . "ArrayOfString")
                                       ("documentation"
                                        . "Filters access by the presence of tag keys in the request")
                                       ("externalDocumentation"
                                        . "${DocHomeURL}IAM/latest/UserGuide/reference_policies_condition-keys.html#condition-keys-tagkeys"))
                                      ("aws:RequestTag/${TagKey}"
                                       ("type" . "String")
                                       ("documentation"
                                        . "Filters access by the presence of tag key-value pairs in the request")
                                       ("externalDocumentation"
                                        . "${DocHomeURL}IAM/latest/UserGuide/reference_policies_condition-keys.html#condition-keys-requesttag"))
                                      ("oam:ResourceTypes"
                                       ("type" . "ArrayOfString")
                                       ("documentation"
                                        . "Filters access by the presence of resource types in the request")
                                       ("externalDocumentation"
                                        . "${DocHomeURL}oam/latest/apireference/api_createlink.html#api_createlink_requestsyntax")))
                                     ("aws.iam#supportedPrincipalTypes"
                                      . #("Root" "IAMUser" "IAMRole"
                                          "FederatedUser"))
                                     ("aws.protocols#restJson1")))

(smithy/sdk/shapes:define-type arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error conflict-exception common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "Message")
                                 (amzn-error-type :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "amznErrorType" :http-header
                                  "x-amzn-ErrorType"))
                                (:shape-name "ConflictException")
                                (:error-code 409))

(smithy/sdk/shapes:define-input create-link-input common-lisp:nil
                                ((label-template :target-type label-template
                                  :required common-lisp:t :member-name
                                  "LabelTemplate")
                                 (resource-types :target-type
                                  resource-types-input :required common-lisp:t
                                  :member-name "ResourceTypes")
                                 (sink-identifier :target-type
                                  resource-identifier :required common-lisp:t
                                  :member-name "SinkIdentifier")
                                 (tags :target-type tag-map-input :member-name
                                  "Tags")
                                 (link-configuration :target-type
                                  link-configuration :member-name
                                  "LinkConfiguration"))
                                (:shape-name "CreateLinkInput"))

(smithy/sdk/shapes:define-output create-link-output common-lisp:nil
                                 ((arn :target-type
                                   smithy/sdk/smithy-types:string :member-name
                                   "Arn")
                                  (id :target-type
                                   smithy/sdk/smithy-types:string :member-name
                                   "Id")
                                  (label :target-type
                                   smithy/sdk/smithy-types:string :member-name
                                   "Label")
                                  (label-template :target-type
                                   smithy/sdk/smithy-types:string :member-name
                                   "LabelTemplate")
                                  (resource-types :target-type
                                   resource-types-output :member-name
                                   "ResourceTypes")
                                  (sink-arn :target-type
                                   smithy/sdk/smithy-types:string :member-name
                                   "SinkArn")
                                  (tags :target-type tag-map-output
                                   :member-name "Tags")
                                  (link-configuration :target-type
                                   link-configuration :member-name
                                   "LinkConfiguration"))
                                 (:shape-name "CreateLinkOutput"))

(smithy/sdk/shapes:define-input create-sink-input common-lisp:nil
                                ((name :target-type sink-name :required
                                  common-lisp:t :member-name "Name")
                                 (tags :target-type tag-map-input :member-name
                                  "Tags"))
                                (:shape-name "CreateSinkInput"))

(smithy/sdk/shapes:define-output create-sink-output common-lisp:nil
                                 ((arn :target-type
                                   smithy/sdk/smithy-types:string :member-name
                                   "Arn")
                                  (id :target-type
                                   smithy/sdk/smithy-types:string :member-name
                                   "Id")
                                  (name :target-type
                                   smithy/sdk/smithy-types:string :member-name
                                   "Name")
                                  (tags :target-type tag-map-output
                                   :member-name "Tags"))
                                 (:shape-name "CreateSinkOutput"))

(smithy/sdk/shapes:define-input delete-link-input common-lisp:nil
                                ((identifier :target-type resource-identifier
                                  :required common-lisp:t :member-name
                                  "Identifier"))
                                (:shape-name "DeleteLinkInput"))

(smithy/sdk/shapes:define-output delete-link-output common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "DeleteLinkOutput"))

(smithy/sdk/shapes:define-input delete-sink-input common-lisp:nil
                                ((identifier :target-type resource-identifier
                                  :required common-lisp:t :member-name
                                  "Identifier"))
                                (:shape-name "DeleteSinkInput"))

(smithy/sdk/shapes:define-output delete-sink-output common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "DeleteSinkOutput"))

(smithy/sdk/shapes:define-input get-link-input common-lisp:nil
                                ((identifier :target-type resource-identifier
                                  :required common-lisp:t :member-name
                                  "Identifier")
                                 (include-tags :target-type include-tags
                                  :member-name "IncludeTags"))
                                (:shape-name "GetLinkInput"))

(smithy/sdk/shapes:define-output get-link-output common-lisp:nil
                                 ((arn :target-type
                                   smithy/sdk/smithy-types:string :member-name
                                   "Arn")
                                  (id :target-type
                                   smithy/sdk/smithy-types:string :member-name
                                   "Id")
                                  (label :target-type
                                   smithy/sdk/smithy-types:string :member-name
                                   "Label")
                                  (label-template :target-type
                                   smithy/sdk/smithy-types:string :member-name
                                   "LabelTemplate")
                                  (resource-types :target-type
                                   resource-types-output :member-name
                                   "ResourceTypes")
                                  (sink-arn :target-type
                                   smithy/sdk/smithy-types:string :member-name
                                   "SinkArn")
                                  (tags :target-type tag-map-output
                                   :member-name "Tags")
                                  (link-configuration :target-type
                                   link-configuration :member-name
                                   "LinkConfiguration"))
                                 (:shape-name "GetLinkOutput"))

(smithy/sdk/shapes:define-input get-sink-input common-lisp:nil
                                ((identifier :target-type resource-identifier
                                  :required common-lisp:t :member-name
                                  "Identifier")
                                 (include-tags :target-type include-tags
                                  :member-name "IncludeTags"))
                                (:shape-name "GetSinkInput"))

(smithy/sdk/shapes:define-output get-sink-output common-lisp:nil
                                 ((arn :target-type
                                   smithy/sdk/smithy-types:string :member-name
                                   "Arn")
                                  (id :target-type
                                   smithy/sdk/smithy-types:string :member-name
                                   "Id")
                                  (name :target-type
                                   smithy/sdk/smithy-types:string :member-name
                                   "Name")
                                  (tags :target-type tag-map-output
                                   :member-name "Tags"))
                                 (:shape-name "GetSinkOutput"))

(smithy/sdk/shapes:define-input get-sink-policy-input common-lisp:nil
                                ((sink-identifier :target-type
                                  resource-identifier :required common-lisp:t
                                  :member-name "SinkIdentifier"))
                                (:shape-name "GetSinkPolicyInput"))

(smithy/sdk/shapes:define-output get-sink-policy-output common-lisp:nil
                                 ((sink-arn :target-type
                                   smithy/sdk/smithy-types:string :member-name
                                   "SinkArn")
                                  (sink-id :target-type
                                   smithy/sdk/smithy-types:string :member-name
                                   "SinkId")
                                  (policy :target-type
                                   smithy/sdk/smithy-types:string :member-name
                                   "Policy"))
                                 (:shape-name "GetSinkPolicyOutput"))

(smithy/sdk/shapes:define-type include-tags smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-error internal-service-fault common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "Message")
                                 (amzn-error-type :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "amznErrorType" :http-header
                                  "x-amzn-ErrorType"))
                                (:shape-name "InternalServiceFault")
                                (:error-code 500))

(smithy/sdk/shapes:define-error invalid-parameter-exception common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "message")
                                 (amzn-error-type :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "amznErrorType" :http-header
                                  "x-amzn-ErrorType"))
                                (:shape-name "InvalidParameterException")
                                (:error-code 400))

(smithy/sdk/shapes:define-type label-template smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure link-configuration common-lisp:nil
                                    ((log-group-configuration :target-type
                                      log-group-configuration :member-name
                                      "LogGroupConfiguration")
                                     (metric-configuration :target-type
                                      metric-configuration :member-name
                                      "MetricConfiguration"))
                                    (:shape-name "LinkConfiguration"))

(smithy/sdk/shapes:define-input list-attached-links-input common-lisp:nil
                                ((max-results :target-type
                                  list-attached-links-max-results :member-name
                                  "MaxResults")
                                 (next-token :target-type next-token
                                  :member-name "NextToken")
                                 (sink-identifier :target-type
                                  resource-identifier :required common-lisp:t
                                  :member-name "SinkIdentifier"))
                                (:shape-name "ListAttachedLinksInput"))

(smithy/sdk/shapes:define-structure list-attached-links-item common-lisp:nil
                                    ((label :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "Label")
                                     (link-arn :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "LinkArn")
                                     (resource-types :target-type
                                      resource-types-output :member-name
                                      "ResourceTypes"))
                                    (:shape-name "ListAttachedLinksItem"))

(smithy/sdk/shapes:define-list list-attached-links-items :member
                               list-attached-links-item)

(smithy/sdk/shapes:define-type list-attached-links-max-results
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-output list-attached-links-output common-lisp:nil
                                 ((items :target-type list-attached-links-items
                                   :required common-lisp:t :member-name
                                   "Items")
                                  (next-token :target-type
                                   smithy/sdk/smithy-types:string :member-name
                                   "NextToken"))
                                 (:shape-name "ListAttachedLinksOutput"))

(smithy/sdk/shapes:define-input list-links-input common-lisp:nil
                                ((max-results :target-type
                                  list-links-max-results :member-name
                                  "MaxResults")
                                 (next-token :target-type next-token
                                  :member-name "NextToken"))
                                (:shape-name "ListLinksInput"))

(smithy/sdk/shapes:define-structure list-links-item common-lisp:nil
                                    ((arn :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "Arn")
                                     (id :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "Id")
                                     (label :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "Label")
                                     (resource-types :target-type
                                      resource-types-output :member-name
                                      "ResourceTypes")
                                     (sink-arn :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "SinkArn"))
                                    (:shape-name "ListLinksItem"))

(smithy/sdk/shapes:define-list list-links-items :member list-links-item)

(smithy/sdk/shapes:define-type list-links-max-results
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-output list-links-output common-lisp:nil
                                 ((items :target-type list-links-items
                                   :required common-lisp:t :member-name
                                   "Items")
                                  (next-token :target-type
                                   smithy/sdk/smithy-types:string :member-name
                                   "NextToken"))
                                 (:shape-name "ListLinksOutput"))

(smithy/sdk/shapes:define-input list-sinks-input common-lisp:nil
                                ((max-results :target-type
                                  list-sinks-max-results :member-name
                                  "MaxResults")
                                 (next-token :target-type next-token
                                  :member-name "NextToken"))
                                (:shape-name "ListSinksInput"))

(smithy/sdk/shapes:define-structure list-sinks-item common-lisp:nil
                                    ((arn :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "Arn")
                                     (id :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "Id")
                                     (name :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "Name"))
                                    (:shape-name "ListSinksItem"))

(smithy/sdk/shapes:define-list list-sinks-items :member list-sinks-item)

(smithy/sdk/shapes:define-type list-sinks-max-results
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-output list-sinks-output common-lisp:nil
                                 ((items :target-type list-sinks-items
                                   :required common-lisp:t :member-name
                                   "Items")
                                  (next-token :target-type
                                   smithy/sdk/smithy-types:string :member-name
                                   "NextToken"))
                                 (:shape-name "ListSinksOutput"))

(smithy/sdk/shapes:define-input list-tags-for-resource-input common-lisp:nil
                                ((resource-arn :target-type arn :required
                                  common-lisp:t :member-name "ResourceArn"
                                  :http-label common-lisp:t))
                                (:shape-name "ListTagsForResourceInput"))

(smithy/sdk/shapes:define-output list-tags-for-resource-output common-lisp:nil
                                 ((tags :target-type tag-map-output
                                   :member-name "Tags"))
                                 (:shape-name "ListTagsForResourceOutput"))

(smithy/sdk/shapes:define-structure log-group-configuration common-lisp:nil
                                    ((filter :target-type logs-filter :required
                                      common-lisp:t :member-name "Filter"))
                                    (:shape-name "LogGroupConfiguration"))

(smithy/sdk/shapes:define-type logs-filter smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure metric-configuration common-lisp:nil
                                    ((filter :target-type metrics-filter
                                      :required common-lisp:t :member-name
                                      "Filter"))
                                    (:shape-name "MetricConfiguration"))

(smithy/sdk/shapes:define-type metrics-filter smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error missing-required-parameter-exception
                                common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "message")
                                 (amzn-error-type :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "amznErrorType" :http-header
                                  "x-amzn-ErrorType"))
                                (:shape-name
                                 "MissingRequiredParameterException")
                                (:error-code 400))

(smithy/sdk/shapes:define-type next-token smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input put-sink-policy-input common-lisp:nil
                                ((sink-identifier :target-type
                                  resource-identifier :required common-lisp:t
                                  :member-name "SinkIdentifier")
                                 (policy :target-type sink-policy :required
                                  common-lisp:t :member-name "Policy"))
                                (:shape-name "PutSinkPolicyInput"))

(smithy/sdk/shapes:define-output put-sink-policy-output common-lisp:nil
                                 ((sink-arn :target-type
                                   smithy/sdk/smithy-types:string :member-name
                                   "SinkArn")
                                  (sink-id :target-type
                                   smithy/sdk/smithy-types:string :member-name
                                   "SinkId")
                                  (policy :target-type
                                   smithy/sdk/smithy-types:string :member-name
                                   "Policy"))
                                 (:shape-name "PutSinkPolicyOutput"))

(smithy/sdk/shapes:define-type resource-identifier
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error resource-not-found-exception common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "Message")
                                 (amzn-error-type :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "amznErrorType" :http-header
                                  "x-amzn-ErrorType"))
                                (:shape-name "ResourceNotFoundException")
                                (:error-code 404))

(smithy/sdk/shapes:define-enum resource-type
    common-lisp:nil
  (:aws-cloudwatch-metric "AWS::CloudWatch::Metric")
  (:aws-logs-loggroup "AWS::Logs::LogGroup")
  (:aws-xray-trace "AWS::XRay::Trace")
  (:aws-applicationinsights-application "AWS::ApplicationInsights::Application")
  (:aws-internetmonitor-monitor "AWS::InternetMonitor::Monitor")
  (:aws-application-signals-service "AWS::ApplicationSignals::Service")
  (:aws-application-signals-slo
   "AWS::ApplicationSignals::ServiceLevelObjective"))

(smithy/sdk/shapes:define-list resource-types-input :member resource-type)

(smithy/sdk/shapes:define-list resource-types-output :member
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error service-quota-exceeded-exception
                                common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "Message")
                                 (amzn-error-type :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "amznErrorType" :http-header
                                  "x-amzn-ErrorType"))
                                (:shape-name "ServiceQuotaExceededException")
                                (:error-code 429))

(smithy/sdk/shapes:define-type sink-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type sink-policy smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type tag-key smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list tag-keys :member tag-key)

(smithy/sdk/shapes:define-map tag-map-input :key tag-key :value tag-value)

(smithy/sdk/shapes:define-map tag-map-output :key
                              smithy/sdk/smithy-types:string :value
                              smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input tag-resource-input common-lisp:nil
                                ((resource-arn :target-type arn :required
                                  common-lisp:t :member-name "ResourceArn"
                                  :http-label common-lisp:t)
                                 (tags :target-type tag-map-input :required
                                  common-lisp:t :member-name "Tags"))
                                (:shape-name "TagResourceInput"))

(smithy/sdk/shapes:define-output tag-resource-output common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "TagResourceOutput"))

(smithy/sdk/shapes:define-type tag-value smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error too-many-tags-exception common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "Message"))
                                (:shape-name "TooManyTagsException")
                                (:error-code 400))

(smithy/sdk/shapes:define-input untag-resource-input common-lisp:nil
                                ((resource-arn :target-type arn :required
                                  common-lisp:t :member-name "ResourceArn"
                                  :http-label common-lisp:t)
                                 (tag-keys :target-type tag-keys :required
                                  common-lisp:t :member-name "TagKeys"
                                  :http-query "tagKeys"))
                                (:shape-name "UntagResourceInput"))

(smithy/sdk/shapes:define-output untag-resource-output common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "UntagResourceOutput"))

(smithy/sdk/shapes:define-input update-link-input common-lisp:nil
                                ((identifier :target-type resource-identifier
                                  :required common-lisp:t :member-name
                                  "Identifier")
                                 (resource-types :target-type
                                  resource-types-input :required common-lisp:t
                                  :member-name "ResourceTypes")
                                 (link-configuration :target-type
                                  link-configuration :member-name
                                  "LinkConfiguration")
                                 (include-tags :target-type include-tags
                                  :member-name "IncludeTags"))
                                (:shape-name "UpdateLinkInput"))

(smithy/sdk/shapes:define-output update-link-output common-lisp:nil
                                 ((arn :target-type
                                   smithy/sdk/smithy-types:string :member-name
                                   "Arn")
                                  (id :target-type
                                   smithy/sdk/smithy-types:string :member-name
                                   "Id")
                                  (label :target-type
                                   smithy/sdk/smithy-types:string :member-name
                                   "Label")
                                  (label-template :target-type label-template
                                   :member-name "LabelTemplate")
                                  (resource-types :target-type
                                   resource-types-output :member-name
                                   "ResourceTypes")
                                  (sink-arn :target-type
                                   smithy/sdk/smithy-types:string :member-name
                                   "SinkArn")
                                  (tags :target-type tag-map-output
                                   :member-name "Tags")
                                  (link-configuration :target-type
                                   link-configuration :member-name
                                   "LinkConfiguration"))
                                 (:shape-name "UpdateLinkOutput"))

(smithy/sdk/shapes:define-error validation-exception common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "Message"))
                                (:shape-name "ValidationException")
                                (:error-code 400))

(smithy/sdk/operation:define-operation create-link :shape-name "CreateLink"
                                       :input create-link-input :output
                                       create-link-output :errors
                                       (conflict-exception
                                        internal-service-fault
                                        invalid-parameter-exception
                                        missing-required-parameter-exception
                                        service-quota-exceeded-exception)
                                       :method "POST" :uri "/CreateLink")

(smithy/sdk/operation:define-operation create-sink :shape-name "CreateSink"
                                       :input create-sink-input :output
                                       create-sink-output :errors
                                       (conflict-exception
                                        internal-service-fault
                                        invalid-parameter-exception
                                        missing-required-parameter-exception
                                        service-quota-exceeded-exception)
                                       :method "POST" :uri "/CreateSink")

(smithy/sdk/operation:define-operation delete-link :shape-name "DeleteLink"
                                       :input delete-link-input :output
                                       delete-link-output :errors
                                       (internal-service-fault
                                        invalid-parameter-exception
                                        missing-required-parameter-exception
                                        resource-not-found-exception)
                                       :method "POST" :uri "/DeleteLink")

(smithy/sdk/operation:define-operation delete-sink :shape-name "DeleteSink"
                                       :input delete-sink-input :output
                                       delete-sink-output :errors
                                       (conflict-exception
                                        internal-service-fault
                                        invalid-parameter-exception
                                        missing-required-parameter-exception
                                        resource-not-found-exception)
                                       :method "POST" :uri "/DeleteSink")

(smithy/sdk/operation:define-operation get-link :shape-name "GetLink" :input
                                       get-link-input :output get-link-output
                                       :errors
                                       (internal-service-fault
                                        invalid-parameter-exception
                                        missing-required-parameter-exception
                                        resource-not-found-exception)
                                       :method "POST" :uri "/GetLink")

(smithy/sdk/operation:define-operation get-sink :shape-name "GetSink" :input
                                       get-sink-input :output get-sink-output
                                       :errors
                                       (internal-service-fault
                                        invalid-parameter-exception
                                        missing-required-parameter-exception
                                        resource-not-found-exception)
                                       :method "POST" :uri "/GetSink")

(smithy/sdk/operation:define-operation get-sink-policy :shape-name
                                       "GetSinkPolicy" :input
                                       get-sink-policy-input :output
                                       get-sink-policy-output :errors
                                       (internal-service-fault
                                        invalid-parameter-exception
                                        missing-required-parameter-exception
                                        resource-not-found-exception)
                                       :method "POST" :uri "/GetSinkPolicy")

(smithy/sdk/operation:define-operation list-attached-links :shape-name
                                       "ListAttachedLinks" :input
                                       list-attached-links-input :output
                                       list-attached-links-output :errors
                                       (internal-service-fault
                                        invalid-parameter-exception
                                        missing-required-parameter-exception
                                        resource-not-found-exception)
                                       :method "POST" :uri "/ListAttachedLinks")

(smithy/sdk/operation:define-operation list-links :shape-name "ListLinks"
                                       :input list-links-input :output
                                       list-links-output :errors
                                       (internal-service-fault
                                        invalid-parameter-exception
                                        resource-not-found-exception)
                                       :method "POST" :uri "/ListLinks")

(smithy/sdk/operation:define-operation list-sinks :shape-name "ListSinks"
                                       :input list-sinks-input :output
                                       list-sinks-output :errors
                                       (internal-service-fault
                                        invalid-parameter-exception
                                        resource-not-found-exception)
                                       :method "POST" :uri "/ListSinks")

(smithy/sdk/operation:define-operation list-tags-for-resource :shape-name
                                       "ListTagsForResource" :input
                                       list-tags-for-resource-input :output
                                       list-tags-for-resource-output :errors
                                       (resource-not-found-exception
                                        validation-exception)
                                       :method "GET" :uri "/tags/{ResourceArn}"
                                       :code 200)

(smithy/sdk/operation:define-operation put-sink-policy :shape-name
                                       "PutSinkPolicy" :input
                                       put-sink-policy-input :output
                                       put-sink-policy-output :errors
                                       (internal-service-fault
                                        invalid-parameter-exception
                                        missing-required-parameter-exception
                                        resource-not-found-exception)
                                       :method "POST" :uri "/PutSinkPolicy")

(smithy/sdk/operation:define-operation tag-resource :shape-name "TagResource"
                                       :input tag-resource-input :output
                                       tag-resource-output :errors
                                       (resource-not-found-exception
                                        too-many-tags-exception
                                        validation-exception)
                                       :method "PUT" :uri "/tags/{ResourceArn}"
                                       :code 200)

(smithy/sdk/operation:define-operation untag-resource :shape-name
                                       "UntagResource" :input
                                       untag-resource-input :output
                                       untag-resource-output :errors
                                       (resource-not-found-exception
                                        validation-exception)
                                       :method "DELETE" :uri
                                       "/tags/{ResourceArn}" :code 200)

(smithy/sdk/operation:define-operation update-link :shape-name "UpdateLink"
                                       :input update-link-input :output
                                       update-link-output :errors
                                       (internal-service-fault
                                        invalid-parameter-exception
                                        missing-required-parameter-exception
                                        resource-not-found-exception)
                                       :method "POST" :uri "/UpdateLink")
