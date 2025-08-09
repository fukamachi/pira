(uiop/package:define-package #:pira/iotfleethub (:use)
                             (:export #:awsio-tfleet-hub #:application-state
                              #:application-summaries #:application-summary
                              #:arn #:client-request-token #:conflict-exception
                              #:create-application #:create-application-request
                              #:create-application-response
                              #:delete-application #:delete-application-request
                              #:delete-application-response
                              #:describe-application
                              #:describe-application-request
                              #:describe-application-response #:description
                              #:error-message #:id #:internal-failure-exception
                              #:invalid-request-exception
                              #:limit-exceeded-exception #:list-applications
                              #:list-applications-request
                              #:list-applications-response
                              #:list-tags-for-resource
                              #:list-tags-for-resource-request
                              #:list-tags-for-resource-response #:name
                              #:next-token #:resource-arn
                              #:resource-not-found-exception #:sso-client-id
                              #:tag-key #:tag-key-list #:tag-map #:tag-resource
                              #:tag-resource-request #:tag-resource-response
                              #:tag-value #:throttling-exception #:timestamp
                              #:untag-resource #:untag-resource-request
                              #:untag-resource-response #:update-application
                              #:update-application-request
                              #:update-application-response #:url))
(common-lisp:in-package #:pira/iotfleethub)

(smithy/sdk/service:define-service awsio-tfleet-hub :shape-name
                                   "AWSIoTFleetHub" :version "2020-11-03"
                                   :title "AWS IoT Fleet Hub" :traits
                                   '(("aws.api#service"
                                      ("sdkId" . "IoTFleetHub")
                                      ("arnNamespace" . "iotfleethub")
                                      ("cloudFormationName" . "IoTFleetHub")
                                      ("cloudTrailEventSource"
                                       . "iotfleethub.amazonaws.com")
                                      ("endpointPrefix" . "api.fleethub.iot"))
                                     ("aws.auth#sigv4"
                                      ("name" . "iotfleethub"))
                                     ("aws.protocols#restJson1")))

(smithy/sdk/shapes:define-enum application-state
    common-lisp:nil
  (:creating "CREATING")
  (:deleting "DELETING")
  (:active "ACTIVE")
  (:create-failed "CREATE_FAILED")
  (:delete-failed "DELETE_FAILED"))

(smithy/sdk/shapes:define-list application-summaries :member
                               application-summary)

(smithy/sdk/shapes:define-structure application-summary common-lisp:nil
                                    ((application-id :target-type id :required
                                      common-lisp:t :member-name
                                      "applicationId")
                                     (application-name :target-type name
                                      :required common-lisp:t :member-name
                                      "applicationName")
                                     (application-description :target-type
                                      description :member-name
                                      "applicationDescription")
                                     (application-url :target-type url
                                      :required common-lisp:t :member-name
                                      "applicationUrl")
                                     (application-creation-date :target-type
                                      timestamp :member-name
                                      "applicationCreationDate")
                                     (application-last-update-date :target-type
                                      timestamp :member-name
                                      "applicationLastUpdateDate")
                                     (application-state :target-type
                                      application-state :member-name
                                      "applicationState"))
                                    (:shape-name "ApplicationSummary"))

(smithy/sdk/shapes:define-type arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type client-request-token
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error conflict-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message"))
                                (:shape-name "ConflictException")
                                (:error-code 409))

(smithy/sdk/shapes:define-input create-application-request common-lisp:nil
                                ((application-name :target-type name :required
                                  common-lisp:t :member-name "applicationName")
                                 (application-description :target-type
                                  description :member-name
                                  "applicationDescription")
                                 (client-token :target-type
                                  client-request-token :member-name
                                  "clientToken")
                                 (role-arn :target-type arn :required
                                  common-lisp:t :member-name "roleArn")
                                 (tags :target-type tag-map :member-name
                                  "tags"))
                                (:shape-name "CreateApplicationRequest"))

(smithy/sdk/shapes:define-output create-application-response common-lisp:nil
                                 ((application-id :target-type id :required
                                   common-lisp:t :member-name "applicationId")
                                  (application-arn :target-type arn :required
                                   common-lisp:t :member-name
                                   "applicationArn"))
                                 (:shape-name "CreateApplicationResponse"))

(smithy/sdk/shapes:define-input delete-application-request common-lisp:nil
                                ((application-id :target-type id :required
                                  common-lisp:t :member-name "applicationId"
                                  :http-label common-lisp:t)
                                 (client-token :target-type
                                  client-request-token :member-name
                                  "clientToken" :http-query "clientToken"))
                                (:shape-name "DeleteApplicationRequest"))

(smithy/sdk/shapes:define-output delete-application-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "DeleteApplicationResponse"))

(smithy/sdk/shapes:define-input describe-application-request common-lisp:nil
                                ((application-id :target-type id :required
                                  common-lisp:t :member-name "applicationId"
                                  :http-label common-lisp:t))
                                (:shape-name "DescribeApplicationRequest"))

(smithy/sdk/shapes:define-output describe-application-response common-lisp:nil
                                 ((application-id :target-type id :required
                                   common-lisp:t :member-name "applicationId")
                                  (application-arn :target-type arn :required
                                   common-lisp:t :member-name "applicationArn")
                                  (application-name :target-type name :required
                                   common-lisp:t :member-name
                                   "applicationName")
                                  (application-description :target-type
                                   description :member-name
                                   "applicationDescription")
                                  (application-url :target-type url :required
                                   common-lisp:t :member-name "applicationUrl")
                                  (application-state :target-type
                                   application-state :required common-lisp:t
                                   :member-name "applicationState")
                                  (application-creation-date :target-type
                                   timestamp :required common-lisp:t
                                   :member-name "applicationCreationDate")
                                  (application-last-update-date :target-type
                                   timestamp :required common-lisp:t
                                   :member-name "applicationLastUpdateDate")
                                  (role-arn :target-type arn :required
                                   common-lisp:t :member-name "roleArn")
                                  (sso-client-id :target-type sso-client-id
                                   :member-name "ssoClientId")
                                  (error-message :target-type error-message
                                   :member-name "errorMessage")
                                  (tags :target-type tag-map :member-name
                                   "tags"))
                                 (:shape-name "DescribeApplicationResponse"))

(smithy/sdk/shapes:define-type description smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type error-message smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error internal-failure-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message"))
                                (:shape-name "InternalFailureException")
                                (:error-code 500))

(smithy/sdk/shapes:define-error invalid-request-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message"))
                                (:shape-name "InvalidRequestException")
                                (:error-code 400))

(smithy/sdk/shapes:define-error limit-exceeded-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message"))
                                (:shape-name "LimitExceededException")
                                (:error-code 410))

(smithy/sdk/shapes:define-input list-applications-request common-lisp:nil
                                ((next-token :target-type next-token
                                  :member-name "nextToken" :http-query
                                  "nextToken"))
                                (:shape-name "ListApplicationsRequest"))

(smithy/sdk/shapes:define-output list-applications-response common-lisp:nil
                                 ((application-summaries :target-type
                                   application-summaries :member-name
                                   "applicationSummaries")
                                  (next-token :target-type next-token
                                   :member-name "nextToken"))
                                 (:shape-name "ListApplicationsResponse"))

(smithy/sdk/shapes:define-input list-tags-for-resource-request common-lisp:nil
                                ((resource-arn :target-type resource-arn
                                  :required common-lisp:t :member-name
                                  "resourceArn" :http-label common-lisp:t))
                                (:shape-name "ListTagsForResourceRequest"))

(smithy/sdk/shapes:define-output list-tags-for-resource-response
                                 common-lisp:nil
                                 ((tags :target-type tag-map :member-name
                                   "tags"))
                                 (:shape-name "ListTagsForResourceResponse"))

(smithy/sdk/shapes:define-type name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type next-token smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type resource-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error resource-not-found-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message"))
                                (:shape-name "ResourceNotFoundException")
                                (:error-code 404))

(smithy/sdk/shapes:define-type sso-client-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type tag-key smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list tag-key-list :member tag-key)

(smithy/sdk/shapes:define-map tag-map :key tag-key :value tag-value)

(smithy/sdk/shapes:define-input tag-resource-request common-lisp:nil
                                ((resource-arn :target-type resource-arn
                                  :required common-lisp:t :member-name
                                  "resourceArn" :http-label common-lisp:t)
                                 (tags :target-type tag-map :required
                                  common-lisp:t :member-name "tags"))
                                (:shape-name "TagResourceRequest"))

(smithy/sdk/shapes:define-output tag-resource-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "TagResourceResponse"))

(smithy/sdk/shapes:define-type tag-value smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error throttling-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message"))
                                (:shape-name "ThrottlingException")
                                (:error-code 400))

(smithy/sdk/shapes:define-type timestamp smithy/sdk/smithy-types:long)

(smithy/sdk/shapes:define-input untag-resource-request common-lisp:nil
                                ((resource-arn :target-type resource-arn
                                  :required common-lisp:t :member-name
                                  "resourceArn" :http-label common-lisp:t)
                                 (tag-keys :target-type tag-key-list :required
                                  common-lisp:t :member-name "tagKeys"
                                  :http-query "tagKeys"))
                                (:shape-name "UntagResourceRequest"))

(smithy/sdk/shapes:define-output untag-resource-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "UntagResourceResponse"))

(smithy/sdk/shapes:define-input update-application-request common-lisp:nil
                                ((application-id :target-type id :required
                                  common-lisp:t :member-name "applicationId"
                                  :http-label common-lisp:t)
                                 (application-name :target-type name
                                  :member-name "applicationName")
                                 (application-description :target-type
                                  description :member-name
                                  "applicationDescription")
                                 (client-token :target-type
                                  client-request-token :member-name
                                  "clientToken"))
                                (:shape-name "UpdateApplicationRequest"))

(smithy/sdk/shapes:define-output update-application-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "UpdateApplicationResponse"))

(smithy/sdk/shapes:define-type url smithy/sdk/smithy-types:string)

(smithy/sdk/operation:define-operation create-application :shape-name
                                       "CreateApplication" :input
                                       create-application-request :output
                                       create-application-response :errors
                                       (internal-failure-exception
                                        invalid-request-exception
                                        limit-exceeded-exception
                                        throttling-exception)
                                       :method "POST" :uri "/applications"
                                       :code 201)

(smithy/sdk/operation:define-operation delete-application :shape-name
                                       "DeleteApplication" :input
                                       delete-application-request :output
                                       delete-application-response :errors
                                       (internal-failure-exception
                                        invalid-request-exception
                                        resource-not-found-exception
                                        throttling-exception)
                                       :method "DELETE" :uri
                                       "/applications/{applicationId}" :code
                                       204)

(smithy/sdk/operation:define-operation describe-application :shape-name
                                       "DescribeApplication" :input
                                       describe-application-request :output
                                       describe-application-response :errors
                                       (internal-failure-exception
                                        invalid-request-exception
                                        resource-not-found-exception
                                        throttling-exception)
                                       :method "GET" :uri
                                       "/applications/{applicationId}" :code
                                       200)

(smithy/sdk/operation:define-operation list-applications :shape-name
                                       "ListApplications" :input
                                       list-applications-request :output
                                       list-applications-response :errors
                                       (internal-failure-exception
                                        invalid-request-exception
                                        throttling-exception)
                                       :method "GET" :uri "/applications" :code
                                       200)

(smithy/sdk/operation:define-operation list-tags-for-resource :shape-name
                                       "ListTagsForResource" :input
                                       list-tags-for-resource-request :output
                                       list-tags-for-resource-response :errors
                                       (internal-failure-exception
                                        invalid-request-exception
                                        resource-not-found-exception)
                                       :method "GET" :uri "/tags/{resourceArn}"
                                       :code 200)

(smithy/sdk/operation:define-operation tag-resource :shape-name "TagResource"
                                       :input tag-resource-request :output
                                       tag-resource-response :errors
                                       (internal-failure-exception
                                        invalid-request-exception
                                        resource-not-found-exception)
                                       :method "POST" :uri
                                       "/tags/{resourceArn}" :code 200)

(smithy/sdk/operation:define-operation untag-resource :shape-name
                                       "UntagResource" :input
                                       untag-resource-request :output
                                       untag-resource-response :errors
                                       (internal-failure-exception
                                        invalid-request-exception
                                        resource-not-found-exception)
                                       :method "DELETE" :uri
                                       "/tags/{resourceArn}" :code 200)

(smithy/sdk/operation:define-operation update-application :shape-name
                                       "UpdateApplication" :input
                                       update-application-request :output
                                       update-application-response :errors
                                       (conflict-exception
                                        internal-failure-exception
                                        invalid-request-exception
                                        resource-not-found-exception
                                        throttling-exception)
                                       :method "PATCH" :uri
                                       "/applications/{applicationId}" :code
                                       202)
