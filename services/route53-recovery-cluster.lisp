(uiop/package:define-package #:pira/route53-recovery-cluster (:use)
                             (:export #:access-denied-exception #:arn #:arns
                              #:conflict-exception #:control-panel-name
                              #:endpoint-temporarily-unavailable-exception
                              #:get-routing-control-state
                              #:internal-server-exception
                              #:list-routing-controls #:max-results #:owner
                              #:page-token #:resource-not-found-exception
                              #:retry-after-seconds #:routing-control
                              #:routing-control-name #:routing-control-state
                              #:routing-controls
                              #:service-limit-exceeded-exception #:string
                              #:throttling-exception #:toggle-customer-api
                              #:update-routing-control-state
                              #:update-routing-control-state-entries
                              #:update-routing-control-state-entry
                              #:update-routing-control-states
                              #:validation-exception
                              #:validation-exception-field
                              #:validation-exception-field-list
                              #:validation-exception-reason
                              #:route53-recovery-cluster-error))
(common-lisp:in-package #:pira/route53-recovery-cluster)

(common-lisp:define-condition route53-recovery-cluster-error
    (pira/error:aws-error)
    common-lisp:nil)

(smithy/sdk/service:define-service toggle-customer-api :shape-name
                                   "ToggleCustomerAPI" :version "2019-12-02"
                                   :title "Route53 Recovery Cluster"
                                   :operations
                                   '(get-routing-control-state
                                     list-routing-controls
                                     update-routing-control-state
                                     update-routing-control-states)
                                   :traits
                                   '(("aws.api#service"
                                      ("sdkId" . "Route53 Recovery Cluster")
                                      ("arnNamespace"
                                       . "route53-recovery-cluster")
                                      ("cloudFormationName"
                                       . "Route53RecoveryCluster")
                                      ("cloudTrailEventSource"
                                       . "route53recoverycluster.amazonaws.com")
                                      ("endpointPrefix"
                                       . "route53-recovery-cluster"))
                                     ("aws.auth#sigv4"
                                      ("name" . "route53-recovery-cluster"))
                                     ("aws.protocols#awsJson1_0")))

(smithy/sdk/shapes:define-error access-denied-exception common-lisp:nil
                                ((message :target-type string :required
                                  common-lisp:t :member-name "message"))
                                (:shape-name "AccessDeniedException")
                                (:error-code 403)
                                (:base-class route53-recovery-cluster-error))

(smithy/sdk/shapes:define-type arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list arns :member arn)

(smithy/sdk/shapes:define-error conflict-exception common-lisp:nil
                                ((message :target-type string :required
                                  common-lisp:t :member-name "message")
                                 (resource-id :target-type string :required
                                  common-lisp:t :member-name "resourceId")
                                 (resource-type :target-type string :required
                                  common-lisp:t :member-name "resourceType"))
                                (:shape-name "ConflictException")
                                (:error-code 409)
                                (:base-class route53-recovery-cluster-error))

(smithy/sdk/shapes:define-type control-panel-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error endpoint-temporarily-unavailable-exception
                                common-lisp:nil
                                ((message :target-type string :required
                                  common-lisp:t :member-name "message"))
                                (:shape-name
                                 "EndpointTemporarilyUnavailableException")
                                (:error-code 503)
                                (:base-class route53-recovery-cluster-error))

(smithy/sdk/shapes:define-input get-routing-control-state-request
                                common-lisp:nil
                                ((routing-control-arn :target-type arn
                                  :required common-lisp:t :member-name
                                  "RoutingControlArn"))
                                (:shape-name "GetRoutingControlStateRequest"))

(smithy/sdk/shapes:define-output get-routing-control-state-response
                                 common-lisp:nil
                                 ((routing-control-arn :target-type arn
                                   :required common-lisp:t :member-name
                                   "RoutingControlArn")
                                  (routing-control-state :target-type
                                   routing-control-state :required
                                   common-lisp:t :member-name
                                   "RoutingControlState")
                                  (routing-control-name :target-type
                                   routing-control-name :member-name
                                   "RoutingControlName"))
                                 (:shape-name "GetRoutingControlStateResponse"))

(smithy/sdk/shapes:define-error internal-server-exception common-lisp:nil
                                ((message :target-type string :required
                                  common-lisp:t :member-name "message")
                                 (retry-after-seconds :target-type
                                  retry-after-seconds :member-name
                                  "retryAfterSeconds" :http-header
                                  "Retry-After"))
                                (:shape-name "InternalServerException")
                                (:error-code 500)
                                (:base-class route53-recovery-cluster-error))

(smithy/sdk/shapes:define-input list-routing-controls-request common-lisp:nil
                                ((control-panel-arn :target-type arn
                                  :member-name "ControlPanelArn")
                                 (next-token :target-type page-token
                                  :member-name "NextToken")
                                 (max-results :target-type max-results
                                  :member-name "MaxResults"))
                                (:shape-name "ListRoutingControlsRequest"))

(smithy/sdk/shapes:define-output list-routing-controls-response common-lisp:nil
                                 ((routing-controls :target-type
                                   routing-controls :required common-lisp:t
                                   :member-name "RoutingControls")
                                  (next-token :target-type page-token
                                   :member-name "NextToken"))
                                 (:shape-name "ListRoutingControlsResponse"))

(smithy/sdk/shapes:define-type max-results smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type owner smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type page-token smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error resource-not-found-exception common-lisp:nil
                                ((message :target-type string :required
                                  common-lisp:t :member-name "message")
                                 (resource-id :target-type string :required
                                  common-lisp:t :member-name "resourceId")
                                 (resource-type :target-type string :required
                                  common-lisp:t :member-name "resourceType"))
                                (:shape-name "ResourceNotFoundException")
                                (:error-code 404)
                                (:base-class route53-recovery-cluster-error))

(smithy/sdk/shapes:define-type retry-after-seconds
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-structure routing-control common-lisp:nil
                                    ((control-panel-arn :target-type arn
                                      :member-name "ControlPanelArn")
                                     (control-panel-name :target-type
                                      control-panel-name :member-name
                                      "ControlPanelName")
                                     (routing-control-arn :target-type arn
                                      :member-name "RoutingControlArn")
                                     (routing-control-name :target-type
                                      routing-control-name :member-name
                                      "RoutingControlName")
                                     (routing-control-state :target-type
                                      routing-control-state :member-name
                                      "RoutingControlState")
                                     (owner :target-type owner :member-name
                                      "Owner"))
                                    (:shape-name "RoutingControl"))

(smithy/sdk/shapes:define-type routing-control-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum routing-control-state
    common-lisp:nil
  (:on "On")
  (:off "Off"))

(smithy/sdk/shapes:define-list routing-controls :member routing-control)

(smithy/sdk/shapes:define-error service-limit-exceeded-exception
                                common-lisp:nil
                                ((message :target-type string :required
                                  common-lisp:t :member-name "message")
                                 (resource-id :target-type string :member-name
                                  "resourceId")
                                 (resource-type :target-type string
                                  :member-name "resourceType")
                                 (limit-code :target-type string :required
                                  common-lisp:t :member-name "limitCode")
                                 (service-code :target-type string :required
                                  common-lisp:t :member-name "serviceCode"))
                                (:shape-name "ServiceLimitExceededException")
                                (:error-code 402)
                                (:base-class route53-recovery-cluster-error))

(smithy/sdk/shapes:define-type string smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error throttling-exception common-lisp:nil
                                ((message :target-type string :required
                                  common-lisp:t :member-name "message")
                                 (retry-after-seconds :target-type
                                  retry-after-seconds :member-name
                                  "retryAfterSeconds" :http-header
                                  "Retry-After"))
                                (:shape-name "ThrottlingException")
                                (:error-code 429)
                                (:base-class route53-recovery-cluster-error))

(smithy/sdk/shapes:define-list update-routing-control-state-entries :member
                               update-routing-control-state-entry)

(smithy/sdk/shapes:define-structure update-routing-control-state-entry
                                    common-lisp:nil
                                    ((routing-control-arn :target-type arn
                                      :required common-lisp:t :member-name
                                      "RoutingControlArn")
                                     (routing-control-state :target-type
                                      routing-control-state :required
                                      common-lisp:t :member-name
                                      "RoutingControlState"))
                                    (:shape-name
                                     "UpdateRoutingControlStateEntry"))

(smithy/sdk/shapes:define-input update-routing-control-state-request
                                common-lisp:nil
                                ((routing-control-arn :target-type arn
                                  :required common-lisp:t :member-name
                                  "RoutingControlArn")
                                 (routing-control-state :target-type
                                  routing-control-state :required common-lisp:t
                                  :member-name "RoutingControlState")
                                 (safety-rules-to-override :target-type arns
                                  :member-name "SafetyRulesToOverride"))
                                (:shape-name
                                 "UpdateRoutingControlStateRequest"))

(smithy/sdk/shapes:define-output update-routing-control-state-response
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name
                                  "UpdateRoutingControlStateResponse"))

(smithy/sdk/shapes:define-input update-routing-control-states-request
                                common-lisp:nil
                                ((update-routing-control-state-entries
                                  :target-type
                                  update-routing-control-state-entries
                                  :required common-lisp:t :member-name
                                  "UpdateRoutingControlStateEntries")
                                 (safety-rules-to-override :target-type arns
                                  :member-name "SafetyRulesToOverride"))
                                (:shape-name
                                 "UpdateRoutingControlStatesRequest"))

(smithy/sdk/shapes:define-output update-routing-control-states-response
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name
                                  "UpdateRoutingControlStatesResponse"))

(smithy/sdk/shapes:define-error validation-exception common-lisp:nil
                                ((message :target-type string :required
                                  common-lisp:t :member-name "message")
                                 (reason :target-type
                                  validation-exception-reason :member-name
                                  "reason")
                                 (fields :target-type
                                  validation-exception-field-list :member-name
                                  "fields"))
                                (:shape-name "ValidationException")
                                (:error-code 400)
                                (:base-class route53-recovery-cluster-error))

(smithy/sdk/shapes:define-structure validation-exception-field common-lisp:nil
                                    ((name :target-type string :required
                                      common-lisp:t :member-name "name")
                                     (message :target-type string :required
                                      common-lisp:t :member-name "message"))
                                    (:shape-name "ValidationExceptionField"))

(smithy/sdk/shapes:define-list validation-exception-field-list :member
                               validation-exception-field)

(smithy/sdk/shapes:define-enum validation-exception-reason
    common-lisp:nil
  (:unknown-operation "unknownOperation")
  (:cannot-parse "cannotParse")
  (:field-validation-failed "fieldValidationFailed")
  (:other "other"))

(smithy/sdk/operation:define-operation get-routing-control-state :shape-name
                                       "GetRoutingControlState" :input
                                       get-routing-control-state-request
                                       :output
                                       get-routing-control-state-response
                                       :errors
                                       (access-denied-exception
                                        endpoint-temporarily-unavailable-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation list-routing-controls :shape-name
                                       "ListRoutingControls" :input
                                       list-routing-controls-request :output
                                       list-routing-controls-response :errors
                                       (access-denied-exception
                                        endpoint-temporarily-unavailable-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation update-routing-control-state :shape-name
                                       "UpdateRoutingControlState" :input
                                       update-routing-control-state-request
                                       :output
                                       update-routing-control-state-response
                                       :errors
                                       (access-denied-exception
                                        conflict-exception
                                        endpoint-temporarily-unavailable-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation update-routing-control-states
                                       :shape-name "UpdateRoutingControlStates"
                                       :input
                                       update-routing-control-states-request
                                       :output
                                       update-routing-control-states-response
                                       :errors
                                       (access-denied-exception
                                        conflict-exception
                                        endpoint-temporarily-unavailable-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-limit-exceeded-exception
                                        throttling-exception
                                        validation-exception))
