(uiop/package:define-package #:pira/cloudcontrol (:use)
                             (:export #:cancel-resource-request
                              #:cancel-resource-request-input
                              #:cancel-resource-request-output #:client-token
                              #:cloud-api-service #:create-resource
                              #:create-resource-input #:create-resource-output
                              #:delete-resource #:delete-resource-input
                              #:delete-resource-output #:error-message
                              #:get-resource #:get-resource-input
                              #:get-resource-output
                              #:get-resource-request-status
                              #:get-resource-request-status-input
                              #:get-resource-request-status-output
                              #:handler-error-code #:handler-next-token
                              #:hook-failure-mode #:hook-invocation-point
                              #:hook-progress-event #:hook-status
                              #:hook-type-arn #:hooks-progress-event
                              #:identifier #:list-resource-requests
                              #:list-resource-requests-input #:list-resources
                              #:list-resources-input #:max-results #:next-token
                              #:operation #:operation-status
                              #:operation-statuses #:operations
                              #:patch-document #:progress-event #:properties
                              #:request-token #:resource-description
                              #:resource-descriptions
                              #:resource-request-status-filter
                              #:resource-request-status-summaries #:role-arn
                              #:status-message #:timestamp #:type-name
                              #:type-version-id #:update-resource
                              #:update-resource-input #:update-resource-output))
(common-lisp:in-package #:pira/cloudcontrol)

(smithy/sdk/service:define-service cloud-api-service :shape-name
                                   "CloudApiService" :version "2021-09-30"
                                   :title "AWS Cloud Control API" :traits
                                   '(("aws.api#service"
                                      ("sdkId" . "CloudControl")
                                      ("cloudTrailEventSource"
                                       . "cloudcontrolapi.amazonaws.com")
                                      ("endpointPrefix" . "cloudcontrolapi"))
                                     ("aws.auth#sigv4"
                                      ("name" . "cloudcontrolapi"))
                                     ("aws.protocols#awsJson1_0")))

(smithy/sdk/shapes:define-error already-exists-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name "AlreadyExistsException")
                                (:error-name "AlreadyExistsException")
                                (:error-code 400))

(smithy/sdk/shapes:define-structure cancel-resource-request-input
                                    common-lisp:nil
                                    ((request-token :target-type request-token
                                      :required common-lisp:t :member-name
                                      "RequestToken"))
                                    (:shape-name "CancelResourceRequestInput"))

(smithy/sdk/shapes:define-structure cancel-resource-request-output
                                    common-lisp:nil
                                    ((progress-event :target-type
                                      progress-event :member-name
                                      "ProgressEvent"))
                                    (:shape-name "CancelResourceRequestOutput"))

(smithy/sdk/shapes:define-type client-token smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error client-token-conflict-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name "ClientTokenConflictException")
                                (:error-name "ClientTokenConflictException")
                                (:error-code 409))

(smithy/sdk/shapes:define-error concurrent-modification-exception
                                common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name "ConcurrentModificationException")
                                (:error-name "ConcurrentModificationException")
                                (:error-code 500))

(smithy/sdk/shapes:define-error concurrent-operation-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name "ConcurrentOperationException")
                                (:error-name "ConcurrentOperationException")
                                (:error-code 409))

(smithy/sdk/shapes:define-structure create-resource-input common-lisp:nil
                                    ((type-name :target-type type-name
                                      :required common-lisp:t :member-name
                                      "TypeName")
                                     (type-version-id :target-type
                                      type-version-id :member-name
                                      "TypeVersionId")
                                     (role-arn :target-type role-arn
                                      :member-name "RoleArn")
                                     (client-token :target-type client-token
                                      :member-name "ClientToken")
                                     (desired-state :target-type properties
                                      :required common-lisp:t :member-name
                                      "DesiredState"))
                                    (:shape-name "CreateResourceInput"))

(smithy/sdk/shapes:define-structure create-resource-output common-lisp:nil
                                    ((progress-event :target-type
                                      progress-event :member-name
                                      "ProgressEvent"))
                                    (:shape-name "CreateResourceOutput"))

(smithy/sdk/shapes:define-structure delete-resource-input common-lisp:nil
                                    ((type-name :target-type type-name
                                      :required common-lisp:t :member-name
                                      "TypeName")
                                     (type-version-id :target-type
                                      type-version-id :member-name
                                      "TypeVersionId")
                                     (role-arn :target-type role-arn
                                      :member-name "RoleArn")
                                     (client-token :target-type client-token
                                      :member-name "ClientToken")
                                     (identifier :target-type identifier
                                      :required common-lisp:t :member-name
                                      "Identifier"))
                                    (:shape-name "DeleteResourceInput"))

(smithy/sdk/shapes:define-structure delete-resource-output common-lisp:nil
                                    ((progress-event :target-type
                                      progress-event :member-name
                                      "ProgressEvent"))
                                    (:shape-name "DeleteResourceOutput"))

(smithy/sdk/shapes:define-type error-message smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error general-service-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name "GeneralServiceException")
                                (:error-name "GeneralServiceException")
                                (:error-code 400))

(smithy/sdk/shapes:define-structure get-resource-input common-lisp:nil
                                    ((type-name :target-type type-name
                                      :required common-lisp:t :member-name
                                      "TypeName")
                                     (type-version-id :target-type
                                      type-version-id :member-name
                                      "TypeVersionId")
                                     (role-arn :target-type role-arn
                                      :member-name "RoleArn")
                                     (identifier :target-type identifier
                                      :required common-lisp:t :member-name
                                      "Identifier"))
                                    (:shape-name "GetResourceInput"))

(smithy/sdk/shapes:define-structure get-resource-output common-lisp:nil
                                    ((type-name :target-type type-name
                                      :member-name "TypeName")
                                     (resource-description :target-type
                                      resource-description :member-name
                                      "ResourceDescription"))
                                    (:shape-name "GetResourceOutput"))

(smithy/sdk/shapes:define-structure get-resource-request-status-input
                                    common-lisp:nil
                                    ((request-token :target-type request-token
                                      :required common-lisp:t :member-name
                                      "RequestToken"))
                                    (:shape-name
                                     "GetResourceRequestStatusInput"))

(smithy/sdk/shapes:define-structure get-resource-request-status-output
                                    common-lisp:nil
                                    ((progress-event :target-type
                                      progress-event :member-name
                                      "ProgressEvent")
                                     (hooks-progress-event :target-type
                                      hooks-progress-event :member-name
                                      "HooksProgressEvent"))
                                    (:shape-name
                                     "GetResourceRequestStatusOutput"))

(smithy/sdk/shapes:define-type handler-error-code
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error handler-failure-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name "HandlerFailureException")
                                (:error-name "HandlerFailureException")
                                (:error-code 502))

(smithy/sdk/shapes:define-error handler-internal-failure-exception
                                common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name "HandlerInternalFailureException")
                                (:error-name "HandlerInternalFailureException")
                                (:error-code 502))

(smithy/sdk/shapes:define-type handler-next-token
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type hook-failure-mode smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type hook-invocation-point
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure hook-progress-event common-lisp:nil
                                    ((hook-type-name :target-type type-name
                                      :member-name "HookTypeName")
                                     (hook-type-version-id :target-type
                                      type-version-id :member-name
                                      "HookTypeVersionId")
                                     (hook-type-arn :target-type hook-type-arn
                                      :member-name "HookTypeArn")
                                     (invocation-point :target-type
                                      hook-invocation-point :member-name
                                      "InvocationPoint")
                                     (hook-status :target-type hook-status
                                      :member-name "HookStatus")
                                     (hook-event-time :target-type timestamp
                                      :member-name "HookEventTime")
                                     (hook-status-message :target-type
                                      status-message :member-name
                                      "HookStatusMessage")
                                     (failure-mode :target-type
                                      hook-failure-mode :member-name
                                      "FailureMode"))
                                    (:shape-name "HookProgressEvent"))

(smithy/sdk/shapes:define-type hook-status smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type hook-type-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list hooks-progress-event :member hook-progress-event)

(smithy/sdk/shapes:define-type identifier smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error invalid-credentials-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name "InvalidCredentialsException")
                                (:error-name "InvalidCredentialsException")
                                (:error-code 401))

(smithy/sdk/shapes:define-error invalid-request-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name "InvalidRequestException")
                                (:error-name "InvalidRequestException")
                                (:error-code 400))

(smithy/sdk/shapes:define-structure list-resource-requests-input
                                    common-lisp:nil
                                    ((max-results :target-type max-results
                                      :member-name "MaxResults")
                                     (next-token :target-type next-token
                                      :member-name "NextToken")
                                     (resource-request-status-filter
                                      :target-type
                                      resource-request-status-filter
                                      :member-name
                                      "ResourceRequestStatusFilter"))
                                    (:shape-name "ListResourceRequestsInput"))

(smithy/sdk/shapes:define-output list-resource-requests-output common-lisp:nil
                                 ((resource-request-status-summaries
                                   :target-type
                                   resource-request-status-summaries
                                   :member-name
                                   "ResourceRequestStatusSummaries")
                                  (next-token :target-type next-token
                                   :member-name "NextToken"))
                                 (:shape-name "ListResourceRequestsOutput"))

(smithy/sdk/shapes:define-structure list-resources-input common-lisp:nil
                                    ((type-name :target-type type-name
                                      :required common-lisp:t :member-name
                                      "TypeName")
                                     (type-version-id :target-type
                                      type-version-id :member-name
                                      "TypeVersionId")
                                     (role-arn :target-type role-arn
                                      :member-name "RoleArn")
                                     (next-token :target-type
                                      handler-next-token :member-name
                                      "NextToken")
                                     (max-results :target-type max-results
                                      :member-name "MaxResults")
                                     (resource-model :target-type properties
                                      :member-name "ResourceModel"))
                                    (:shape-name "ListResourcesInput"))

(smithy/sdk/shapes:define-output list-resources-output common-lisp:nil
                                 ((type-name :target-type type-name
                                   :member-name "TypeName")
                                  (resource-descriptions :target-type
                                   resource-descriptions :member-name
                                   "ResourceDescriptions")
                                  (next-token :target-type handler-next-token
                                   :member-name "NextToken"))
                                 (:shape-name "ListResourcesOutput"))

(smithy/sdk/shapes:define-type max-results smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-error network-failure-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name "NetworkFailureException")
                                (:error-name "NetworkFailureException")
                                (:error-code 502))

(smithy/sdk/shapes:define-type next-token smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error not-stabilized-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name "NotStabilizedException")
                                (:error-name "NotStabilizedException")
                                (:error-code 400))

(smithy/sdk/shapes:define-error not-updatable-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name "NotUpdatableException")
                                (:error-name "NotUpdatableException")
                                (:error-code 400))

(smithy/sdk/shapes:define-type operation smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type operation-status smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list operation-statuses :member operation-status)

(smithy/sdk/shapes:define-list operations :member operation)

(smithy/sdk/shapes:define-type patch-document smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error private-type-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name "PrivateTypeException")
                                (:error-name "PrivateTypeException")
                                (:error-code 400))

(smithy/sdk/shapes:define-structure progress-event common-lisp:nil
                                    ((type-name :target-type type-name
                                      :member-name "TypeName")
                                     (identifier :target-type identifier
                                      :member-name "Identifier")
                                     (request-token :target-type request-token
                                      :member-name "RequestToken")
                                     (hooks-request-token :target-type
                                      request-token :member-name
                                      "HooksRequestToken")
                                     (operation :target-type operation
                                      :member-name "Operation")
                                     (operation-status :target-type
                                      operation-status :member-name
                                      "OperationStatus")
                                     (event-time :target-type timestamp
                                      :member-name "EventTime")
                                     (resource-model :target-type properties
                                      :member-name "ResourceModel")
                                     (status-message :target-type
                                      status-message :member-name
                                      "StatusMessage")
                                     (error-code :target-type
                                      handler-error-code :member-name
                                      "ErrorCode")
                                     (retry-after :target-type timestamp
                                      :member-name "RetryAfter"))
                                    (:shape-name "ProgressEvent"))

(smithy/sdk/shapes:define-type properties smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type request-token smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error request-token-not-found-exception
                                common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name "RequestTokenNotFoundException")
                                (:error-name "RequestTokenNotFoundException")
                                (:error-code 404))

(smithy/sdk/shapes:define-error resource-conflict-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name "ResourceConflictException")
                                (:error-name "ResourceConflictException")
                                (:error-code 409))

(smithy/sdk/shapes:define-structure resource-description common-lisp:nil
                                    ((identifier :target-type identifier
                                      :member-name "Identifier")
                                     (properties :target-type properties
                                      :member-name "Properties"))
                                    (:shape-name "ResourceDescription"))

(smithy/sdk/shapes:define-list resource-descriptions :member
                               resource-description)

(smithy/sdk/shapes:define-error resource-not-found-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name "ResourceNotFoundException")
                                (:error-name "ResourceNotFoundException")
                                (:error-code 404))

(smithy/sdk/shapes:define-structure resource-request-status-filter
                                    common-lisp:nil
                                    ((operations :target-type operations
                                      :member-name "Operations")
                                     (operation-statuses :target-type
                                      operation-statuses :member-name
                                      "OperationStatuses"))
                                    (:shape-name "ResourceRequestStatusFilter"))

(smithy/sdk/shapes:define-list resource-request-status-summaries :member
                               progress-event)

(smithy/sdk/shapes:define-type role-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error service-internal-error-exception
                                common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name "ServiceInternalErrorException")
                                (:error-name "ServiceInternalErrorException")
                                (:error-code 502))

(smithy/sdk/shapes:define-error service-limit-exceeded-exception
                                common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name "ServiceLimitExceededException")
                                (:error-name "ServiceLimitExceededException")
                                (:error-code 400))

(smithy/sdk/shapes:define-type status-message smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error throttling-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name "ThrottlingException")
                                (:error-name "ThrottlingException")
                                (:error-code 429))

(smithy/sdk/shapes:define-type timestamp smithy/sdk/smithy-types:timestamp)

(smithy/sdk/shapes:define-type type-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error type-not-found-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name "TypeNotFoundException")
                                (:error-name "TypeNotFoundException")
                                (:error-code 404))

(smithy/sdk/shapes:define-type type-version-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error unsupported-action-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name "UnsupportedActionException")
                                (:error-name "UnsupportedActionException")
                                (:error-code 405))

(smithy/sdk/shapes:define-structure update-resource-input common-lisp:nil
                                    ((type-name :target-type type-name
                                      :required common-lisp:t :member-name
                                      "TypeName")
                                     (type-version-id :target-type
                                      type-version-id :member-name
                                      "TypeVersionId")
                                     (role-arn :target-type role-arn
                                      :member-name "RoleArn")
                                     (client-token :target-type client-token
                                      :member-name "ClientToken")
                                     (identifier :target-type identifier
                                      :required common-lisp:t :member-name
                                      "Identifier")
                                     (patch-document :target-type
                                      patch-document :required common-lisp:t
                                      :member-name "PatchDocument"))
                                    (:shape-name "UpdateResourceInput"))

(smithy/sdk/shapes:define-structure update-resource-output common-lisp:nil
                                    ((progress-event :target-type
                                      progress-event :member-name
                                      "ProgressEvent"))
                                    (:shape-name "UpdateResourceOutput"))

(smithy/sdk/operation:define-operation cancel-resource-request :shape-name
                                       "CancelResourceRequest" :input
                                       cancel-resource-request-input :output
                                       cancel-resource-request-output :errors
                                       (concurrent-modification-exception
                                        request-token-not-found-exception))

(smithy/sdk/operation:define-operation create-resource :shape-name
                                       "CreateResource" :input
                                       create-resource-input :output
                                       create-resource-output :errors
                                       (already-exists-exception
                                        client-token-conflict-exception
                                        concurrent-operation-exception
                                        general-service-exception
                                        handler-failure-exception
                                        handler-internal-failure-exception
                                        invalid-credentials-exception
                                        invalid-request-exception
                                        network-failure-exception
                                        not-stabilized-exception
                                        not-updatable-exception
                                        private-type-exception
                                        resource-conflict-exception
                                        resource-not-found-exception
                                        service-internal-error-exception
                                        service-limit-exceeded-exception
                                        throttling-exception
                                        type-not-found-exception
                                        unsupported-action-exception))

(smithy/sdk/operation:define-operation delete-resource :shape-name
                                       "DeleteResource" :input
                                       delete-resource-input :output
                                       delete-resource-output :errors
                                       (already-exists-exception
                                        client-token-conflict-exception
                                        concurrent-operation-exception
                                        general-service-exception
                                        handler-failure-exception
                                        handler-internal-failure-exception
                                        invalid-credentials-exception
                                        invalid-request-exception
                                        network-failure-exception
                                        not-stabilized-exception
                                        not-updatable-exception
                                        private-type-exception
                                        resource-conflict-exception
                                        resource-not-found-exception
                                        service-internal-error-exception
                                        service-limit-exceeded-exception
                                        throttling-exception
                                        type-not-found-exception
                                        unsupported-action-exception))

(smithy/sdk/operation:define-operation get-resource :shape-name "GetResource"
                                       :input get-resource-input :output
                                       get-resource-output :errors
                                       (already-exists-exception
                                        general-service-exception
                                        handler-failure-exception
                                        handler-internal-failure-exception
                                        invalid-credentials-exception
                                        invalid-request-exception
                                        network-failure-exception
                                        not-stabilized-exception
                                        not-updatable-exception
                                        private-type-exception
                                        resource-conflict-exception
                                        resource-not-found-exception
                                        service-internal-error-exception
                                        service-limit-exceeded-exception
                                        throttling-exception
                                        type-not-found-exception
                                        unsupported-action-exception))

(smithy/sdk/operation:define-operation get-resource-request-status :shape-name
                                       "GetResourceRequestStatus" :input
                                       get-resource-request-status-input
                                       :output
                                       get-resource-request-status-output
                                       :errors
                                       (request-token-not-found-exception))

(smithy/sdk/operation:define-operation list-resource-requests :shape-name
                                       "ListResourceRequests" :input
                                       list-resource-requests-input :output
                                       list-resource-requests-output :errors
                                       common-lisp:nil)

(smithy/sdk/operation:define-operation list-resources :shape-name
                                       "ListResources" :input
                                       list-resources-input :output
                                       list-resources-output :errors
                                       (already-exists-exception
                                        general-service-exception
                                        handler-failure-exception
                                        handler-internal-failure-exception
                                        invalid-credentials-exception
                                        invalid-request-exception
                                        network-failure-exception
                                        not-stabilized-exception
                                        not-updatable-exception
                                        private-type-exception
                                        resource-conflict-exception
                                        resource-not-found-exception
                                        service-internal-error-exception
                                        service-limit-exceeded-exception
                                        throttling-exception
                                        type-not-found-exception
                                        unsupported-action-exception))

(smithy/sdk/operation:define-operation update-resource :shape-name
                                       "UpdateResource" :input
                                       update-resource-input :output
                                       update-resource-output :errors
                                       (already-exists-exception
                                        client-token-conflict-exception
                                        concurrent-operation-exception
                                        general-service-exception
                                        handler-failure-exception
                                        handler-internal-failure-exception
                                        invalid-credentials-exception
                                        invalid-request-exception
                                        network-failure-exception
                                        not-stabilized-exception
                                        not-updatable-exception
                                        private-type-exception
                                        resource-conflict-exception
                                        resource-not-found-exception
                                        service-internal-error-exception
                                        service-limit-exceeded-exception
                                        throttling-exception
                                        type-not-found-exception
                                        unsupported-action-exception))
