(uiop/package:define-package #:pira/appconfigdata (:use)
                             (:export #:app-config-data #:bad-request-details
                              #:bad-request-reason #:configuration-session
                              #:get-latest-configuration
                              #:get-latest-configuration-request
                              #:get-latest-configuration-response #:id
                              #:identifier #:integer #:invalid-parameter-detail
                              #:invalid-parameter-map
                              #:invalid-parameter-problem
                              #:optional-poll-seconds #:resource-type
                              #:sensitive-blob #:start-configuration-session
                              #:start-configuration-session-request
                              #:start-configuration-session-response #:string
                              #:string-map #:token))
(common-lisp:in-package #:pira/appconfigdata)

(smithy/sdk/service:define-service app-config-data :shape-name "AppConfigData"
                                   :version "2021-11-11" :title
                                   "AWS AppConfig Data" :operations
                                   '(get-latest-configuration) :traits
                                   '(("aws.api#dataPlane")
                                     ("aws.api#service"
                                      ("sdkId" . "AppConfigData")
                                      ("arnNamespace" . "appconfigdata")
                                      ("cloudFormationName" . "AppConfigData")
                                      ("cloudTrailEventSource"
                                       . "appconfigdata.amazonaws.com")
                                      ("endpointPrefix" . "appconfigdata"))
                                     ("aws.auth#sigv4" ("name" . "appconfig"))
                                     ("aws.protocols#restJson1")))

(smithy/sdk/shapes:define-union bad-request-details common-lisp:nil
                                ((invalid-parameters :target-type
                                  invalid-parameter-map :member-name
                                  "InvalidParameters"))
                                (:shape-name "BadRequestDetails"))

(smithy/sdk/shapes:define-error bad-request-exception common-lisp:nil
                                ((message :target-type string :member-name
                                  "Message")
                                 (reason :target-type bad-request-reason
                                  :member-name "Reason")
                                 (details :target-type bad-request-details
                                  :member-name "Details"))
                                (:shape-name "BadRequestException")
                                (:error-code 400))

(smithy/sdk/shapes:define-type bad-request-reason
                               smithy/sdk/smithy-types:string)

common-lisp:nil

(smithy/sdk/shapes:define-input get-latest-configuration-request
                                common-lisp:nil
                                ((configuration-token :target-type token
                                  :required common-lisp:t :member-name
                                  "ConfigurationToken" :http-query
                                  "configuration_token"))
                                (:shape-name "GetLatestConfigurationRequest"))

(smithy/sdk/shapes:define-interface get-latest-configuration-response
                                    common-lisp:nil
                                    ((next-poll-configuration-token
                                      :target-type token :member-name
                                      "NextPollConfigurationToken" :http-header
                                      "Next-Poll-Configuration-Token")
                                     (next-poll-interval-in-seconds
                                      :target-type integer :member-name
                                      "NextPollIntervalInSeconds" :http-header
                                      "Next-Poll-Interval-In-Seconds")
                                     (content-type :target-type string
                                      :member-name "ContentType" :http-header
                                      "Content-Type")
                                     (configuration :target-type sensitive-blob
                                      :member-name "Configuration"
                                      :http-payload common-lisp:t)
                                     (version-label :target-type string
                                      :member-name "VersionLabel" :http-header
                                      "Version-Label"))
                                    (:shape-name
                                     "GetLatestConfigurationResponse"))

(smithy/sdk/shapes:define-type id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type identifier smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type integer smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-error internal-server-exception common-lisp:nil
                                ((message :target-type string :member-name
                                  "Message"))
                                (:shape-name "InternalServerException")
                                (:error-code 500))

(smithy/sdk/shapes:define-structure invalid-parameter-detail common-lisp:nil
                                    ((problem :target-type
                                      invalid-parameter-problem :member-name
                                      "Problem"))
                                    (:shape-name "InvalidParameterDetail"))

(smithy/sdk/shapes:define-map invalid-parameter-map :key string :value
                              invalid-parameter-detail)

(smithy/sdk/shapes:define-type invalid-parameter-problem
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type optional-poll-seconds
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-error resource-not-found-exception common-lisp:nil
                                ((message :target-type string :member-name
                                  "Message")
                                 (resource-type :target-type resource-type
                                  :member-name "ResourceType")
                                 (referenced-by :target-type string-map
                                  :member-name "ReferencedBy"))
                                (:shape-name "ResourceNotFoundException")
                                (:error-code 404))

(smithy/sdk/shapes:define-type resource-type smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type sensitive-blob smithy/sdk/smithy-types:blob)

(smithy/sdk/shapes:define-structure start-configuration-session-request
                                    common-lisp:nil
                                    ((application-identifier :target-type
                                      identifier :required common-lisp:t
                                      :member-name "ApplicationIdentifier")
                                     (environment-identifier :target-type
                                      identifier :required common-lisp:t
                                      :member-name "EnvironmentIdentifier")
                                     (configuration-profile-identifier
                                      :target-type identifier :required
                                      common-lisp:t :member-name
                                      "ConfigurationProfileIdentifier")
                                     (required-minimum-poll-interval-in-seconds
                                      :target-type optional-poll-seconds
                                      :member-name
                                      "RequiredMinimumPollIntervalInSeconds"))
                                    (:shape-name
                                     "StartConfigurationSessionRequest"))

(smithy/sdk/shapes:define-structure start-configuration-session-response
                                    common-lisp:nil
                                    ((initial-configuration-token :target-type
                                      token :member-name
                                      "InitialConfigurationToken"))
                                    (:shape-name
                                     "StartConfigurationSessionResponse"))

(smithy/sdk/shapes:define-type string smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-map string-map :key string :value string)

(smithy/sdk/shapes:define-error throttling-exception common-lisp:nil
                                ((message :target-type string :member-name
                                  "Message"))
                                (:shape-name "ThrottlingException")
                                (:error-code 429))

(smithy/sdk/shapes:define-type token smithy/sdk/smithy-types:string)

(smithy/sdk/operation:define-operation get-latest-configuration :shape-name
                                       "GetLatestConfiguration" :input
                                       get-latest-configuration-request :output
                                       get-latest-configuration-response
                                       :errors
                                       (bad-request-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception)
                                       :method "GET" :uri "/configuration"
                                       :code 200)

(smithy/sdk/operation:define-operation start-configuration-session :shape-name
                                       "StartConfigurationSession" :input
                                       start-configuration-session-request
                                       :output
                                       start-configuration-session-response
                                       :errors
                                       (bad-request-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception)
                                       :method "POST" :uri
                                       "/configurationsessions" :code 201)
