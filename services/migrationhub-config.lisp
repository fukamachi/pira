(uiop/package:define-package #:pira/migrationhub-config (:use)
                             (:export #:awsmigration-hub-multi-account-service
                              #:control-id #:create-home-region-control
                              #:delete-home-region-control
                              #:describe-home-region-controls
                              #:describe-home-region-controls-max-results
                              #:dry-run #:error-message #:get-home-region
                              #:home-region #:home-region-control
                              #:home-region-controls #:requested-time
                              #:retry-after-seconds #:target #:target-id
                              #:target-type #:token))
(common-lisp:in-package #:pira/migrationhub-config)

(smithy/sdk/service:define-service awsmigration-hub-multi-account-service
                                   :shape-name
                                   "AWSMigrationHubMultiAccountService"
                                   :version "2019-06-30" :title
                                   "AWS Migration Hub Config" :traits
                                   '(("aws.api#service"
                                      ("sdkId" . "MigrationHub Config")
                                      ("arnNamespace" . "mgh")
                                      ("cloudFormationName"
                                       . "MigrationHubConfig")
                                      ("cloudTrailEventSource"
                                       . "migrationhubconfig.amazonaws.com")
                                      ("endpointPrefix"
                                       . "migrationhub-config"))
                                     ("aws.auth#sigv4" ("name" . "mgh"))
                                     ("aws.protocols#awsJson1_1")))

(smithy/sdk/shapes:define-error access-denied-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name "AccessDeniedException")
                                (:error-code 400))

(smithy/sdk/shapes:define-type control-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input create-home-region-control-request
                                common-lisp:nil
                                ((home-region :target-type home-region
                                  :required common-lisp:t :member-name
                                  "HomeRegion")
                                 (target :target-type target :required
                                  common-lisp:t :member-name "Target")
                                 (dry-run :target-type dry-run :member-name
                                  "DryRun"))
                                (:shape-name "CreateHomeRegionControlRequest"))

(smithy/sdk/shapes:define-output create-home-region-control-result
                                 common-lisp:nil
                                 ((home-region-control :target-type
                                   home-region-control :member-name
                                   "HomeRegionControl"))
                                 (:shape-name "CreateHomeRegionControlResult"))

(smithy/sdk/shapes:define-input delete-home-region-control-request
                                common-lisp:nil
                                ((control-id :target-type control-id :required
                                  common-lisp:t :member-name "ControlId"))
                                (:shape-name "DeleteHomeRegionControlRequest"))

(smithy/sdk/shapes:define-output delete-home-region-control-result
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name "DeleteHomeRegionControlResult"))

(smithy/sdk/shapes:define-type describe-home-region-controls-max-results
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-input describe-home-region-controls-request
                                common-lisp:nil
                                ((control-id :target-type control-id
                                  :member-name "ControlId")
                                 (home-region :target-type home-region
                                  :member-name "HomeRegion")
                                 (target :target-type target :member-name
                                  "Target")
                                 (max-results :target-type
                                  describe-home-region-controls-max-results
                                  :member-name "MaxResults")
                                 (next-token :target-type token :member-name
                                  "NextToken"))
                                (:shape-name
                                 "DescribeHomeRegionControlsRequest"))

(smithy/sdk/shapes:define-output describe-home-region-controls-result
                                 common-lisp:nil
                                 ((home-region-controls :target-type
                                   home-region-controls :member-name
                                   "HomeRegionControls")
                                  (next-token :target-type token :member-name
                                   "NextToken"))
                                 (:shape-name
                                  "DescribeHomeRegionControlsResult"))

(smithy/sdk/shapes:define-type dry-run smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-error dry-run-operation common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name "DryRunOperation")
                                (:error-code 400))

(smithy/sdk/shapes:define-type error-message smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input get-home-region-request common-lisp:nil
                                common-lisp:nil
                                (:shape-name "GetHomeRegionRequest"))

(smithy/sdk/shapes:define-output get-home-region-result common-lisp:nil
                                 ((home-region :target-type home-region
                                   :member-name "HomeRegion"))
                                 (:shape-name "GetHomeRegionResult"))

(smithy/sdk/shapes:define-type home-region smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure home-region-control common-lisp:nil
                                    ((control-id :target-type control-id
                                      :member-name "ControlId")
                                     (home-region :target-type home-region
                                      :member-name "HomeRegion")
                                     (target :target-type target :member-name
                                      "Target")
                                     (requested-time :target-type
                                      requested-time :member-name
                                      "RequestedTime"))
                                    (:shape-name "HomeRegionControl"))

(smithy/sdk/shapes:define-list home-region-controls :member home-region-control)

(smithy/sdk/shapes:define-error internal-server-error common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name "InternalServerError")
                                (:error-code 500))

(smithy/sdk/shapes:define-error invalid-input-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name "InvalidInputException")
                                (:error-code 400))

(smithy/sdk/shapes:define-type requested-time smithy/sdk/smithy-types:timestamp)

(smithy/sdk/shapes:define-type retry-after-seconds
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-error service-unavailable-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name "ServiceUnavailableException")
                                (:error-code 500))

(smithy/sdk/shapes:define-structure target common-lisp:nil
                                    ((type :target-type target-type :required
                                      common-lisp:t :member-name "Type")
                                     (id :target-type target-id :member-name
                                      "Id"))
                                    (:shape-name "Target"))

(smithy/sdk/shapes:define-type target-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum target-type
    common-lisp:nil
  (:account "ACCOUNT"))

(smithy/sdk/shapes:define-error throttling-exception common-lisp:nil
                                ((message :target-type error-message :required
                                  common-lisp:t :member-name "Message")
                                 (retry-after-seconds :target-type
                                  retry-after-seconds :member-name
                                  "RetryAfterSeconds" :http-header
                                  "Retry-After"))
                                (:shape-name "ThrottlingException")
                                (:error-code 429))

(smithy/sdk/shapes:define-type token smithy/sdk/smithy-types:string)

(smithy/sdk/operation:define-operation create-home-region-control :shape-name
                                       "CreateHomeRegionControl" :input
                                       create-home-region-control-request
                                       :output
                                       create-home-region-control-result
                                       :errors
                                       (access-denied-exception
                                        dry-run-operation internal-server-error
                                        invalid-input-exception
                                        service-unavailable-exception
                                        throttling-exception))

(smithy/sdk/operation:define-operation delete-home-region-control :shape-name
                                       "DeleteHomeRegionControl" :input
                                       delete-home-region-control-request
                                       :output
                                       delete-home-region-control-result
                                       :errors
                                       (access-denied-exception
                                        internal-server-error
                                        invalid-input-exception
                                        service-unavailable-exception
                                        throttling-exception))

(smithy/sdk/operation:define-operation describe-home-region-controls
                                       :shape-name "DescribeHomeRegionControls"
                                       :input
                                       describe-home-region-controls-request
                                       :output
                                       describe-home-region-controls-result
                                       :errors
                                       (access-denied-exception
                                        internal-server-error
                                        invalid-input-exception
                                        service-unavailable-exception
                                        throttling-exception))

(smithy/sdk/operation:define-operation get-home-region :shape-name
                                       "GetHomeRegion" :input
                                       get-home-region-request :output
                                       get-home-region-result :errors
                                       (access-denied-exception
                                        internal-server-error
                                        invalid-input-exception
                                        service-unavailable-exception
                                        throttling-exception))
