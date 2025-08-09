(uiop/package:define-package #:pira/simspaceweaver (:use)
                             (:export #:app-port-mappings #:bucket-name
                              #:client-token #:clock-status
                              #:clock-target-status
                              #:cloud-watch-logs-log-group #:create-snapshot
                              #:delete-app #:delete-app-input
                              #:delete-app-output #:delete-simulation
                              #:delete-simulation-input
                              #:delete-simulation-output #:describe-app
                              #:describe-app-input #:describe-app-output
                              #:describe-simulation #:describe-simulation-input
                              #:describe-simulation-output #:description
                              #:domain #:domain-list #:launch-command-list
                              #:launch-overrides
                              #:lifecycle-management-strategy #:list-apps
                              #:list-apps-input #:list-apps-output
                              #:list-simulations #:list-simulations-input
                              #:list-simulations-output
                              #:list-tags-for-resource
                              #:list-tags-for-resource-input
                              #:list-tags-for-resource-output
                              #:live-simulation-state #:log-destination
                              #:log-destinations #:log-group-arn
                              #:logging-configuration #:non-empty-string
                              #:object-key #:object-key-prefix
                              #:optional-string #:port-number
                              #:positive-integer #:role-arn #:s3destination
                              #:s3location #:sim-space-weaver
                              #:sim-space-weaver-arn
                              #:sim-space-weaver-long-resource-name
                              #:sim-space-weaver-resource-name #:simulation
                              #:simulation-app-endpoint-info
                              #:simulation-app-list #:simulation-app-metadata
                              #:simulation-app-port-mapping
                              #:simulation-app-status
                              #:simulation-app-target-status #:simulation-clock
                              #:simulation-clock-list #:simulation-list
                              #:simulation-metadata #:simulation-status
                              #:simulation-target-status #:start-app
                              #:start-app-input #:start-app-output
                              #:start-clock #:start-clock-input
                              #:start-clock-output #:start-simulation
                              #:start-simulation-input
                              #:start-simulation-output #:stop-app
                              #:stop-app-input #:stop-app-output #:stop-clock
                              #:stop-clock-input #:stop-clock-output
                              #:stop-simulation #:stop-simulation-input
                              #:stop-simulation-output #:tag-key #:tag-key-list
                              #:tag-map #:tag-resource #:tag-resource-input
                              #:tag-resource-output #:tag-value
                              #:time-to-live-string #:timestamp #:uuid
                              #:untag-resource #:untag-resource-input
                              #:untag-resource-output))
(common-lisp:in-package #:pira/simspaceweaver)

(smithy/sdk/service:define-service sim-space-weaver :shape-name
                                   "SimSpaceWeaver" :version "2022-10-28"
                                   :title "AWS SimSpace Weaver" :traits
                                   '(("aws.api#service"
                                      ("sdkId" . "SimSpaceWeaver")
                                      ("arnNamespace" . "simspaceweaver")
                                      ("cloudFormationName" . "SimSpaceWeaver")
                                      ("endpointPrefix" . "simspaceweaver")
                                      ("cloudTrailEventSource"
                                       . "simspaceweaver.amazonaws.com"))
                                     ("aws.auth#sigv4"
                                      ("name" . "simspaceweaver"))
                                     ("aws.iam#defineConditionKeys"
                                      ("aws:ResourceTag/${TagKey}"
                                       ("type" . "String")
                                       ("documentation"
                                        . "Filters access by tags associated with the resource")
                                       ("externalDocumentation"
                                        . "${DocHomeURL}IAM/latest/UserGuide/reference_policies_condition-keys.html#condition-keys-resourcetag"))
                                      ("aws:RequestTag/${TagKey}"
                                       ("type" . "String")
                                       ("documentation"
                                        . "Filters access by tags that are passed in the request")
                                       ("externalDocumentation"
                                        . "${DocHomeURL}IAM/latest/UserGuide/reference_policies_condition-keys.html#condition-keys-requesttag"))
                                      ("aws:TagKeys" ("type" . "ArrayOfString")
                                       ("documentation"
                                        . "Filters access by tag keys that are passed in the request")
                                       ("externalDocumentation"
                                        . "${DocHomeURL}IAM/latest/UserGuide/reference_policies_condition-keys.html#condition-keys-tagkeys")))
                                     ("aws.iam#supportedPrincipalTypes"
                                      . #("Root" "IAMUser" "IAMRole"
                                          "FederatedUser"))
                                     ("aws.protocols#restJson1")))

(smithy/sdk/shapes:define-error access-denied-exception common-lisp:nil
                                ((message :target-type non-empty-string
                                  :member-name "Message"))
                                (:shape-name "AccessDeniedException")
                                (:error-code 403))

(smithy/sdk/shapes:define-list app-port-mappings :member
                               simulation-app-port-mapping)

(smithy/sdk/shapes:define-type bucket-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type client-token smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type clock-status smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type clock-target-status
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure cloud-watch-logs-log-group common-lisp:nil
                                    ((log-group-arn :target-type log-group-arn
                                      :member-name "LogGroupArn"))
                                    (:shape-name "CloudWatchLogsLogGroup"))

(smithy/sdk/shapes:define-error conflict-exception common-lisp:nil
                                ((message :target-type non-empty-string
                                  :member-name "Message"))
                                (:shape-name "ConflictException")
                                (:error-code 409))

(smithy/sdk/shapes:define-input create-snapshot-input common-lisp:nil
                                ((simulation :target-type
                                  sim-space-weaver-resource-name :required
                                  common-lisp:t :member-name "Simulation")
                                 (destination :target-type s3destination
                                  :required common-lisp:t :member-name
                                  "Destination"))
                                (:shape-name "CreateSnapshotInput"))

(smithy/sdk/shapes:define-output create-snapshot-output common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "CreateSnapshotOutput"))

(smithy/sdk/shapes:define-structure delete-app-input common-lisp:nil
                                    ((simulation :target-type
                                      sim-space-weaver-resource-name :required
                                      common-lisp:t :member-name "Simulation"
                                      :http-query "simulation")
                                     (domain :target-type
                                      sim-space-weaver-resource-name :required
                                      common-lisp:t :member-name "Domain"
                                      :http-query "domain")
                                     (app :target-type
                                      sim-space-weaver-resource-name :required
                                      common-lisp:t :member-name "App"
                                      :http-query "app"))
                                    (:shape-name "DeleteAppInput"))

(smithy/sdk/shapes:define-structure delete-app-output common-lisp:nil
                                    common-lisp:nil
                                    (:shape-name "DeleteAppOutput"))

(smithy/sdk/shapes:define-structure delete-simulation-input common-lisp:nil
                                    ((simulation :target-type
                                      sim-space-weaver-resource-name :required
                                      common-lisp:t :member-name "Simulation"
                                      :http-query "simulation"))
                                    (:shape-name "DeleteSimulationInput"))

(smithy/sdk/shapes:define-structure delete-simulation-output common-lisp:nil
                                    common-lisp:nil
                                    (:shape-name "DeleteSimulationOutput"))

(smithy/sdk/shapes:define-structure describe-app-input common-lisp:nil
                                    ((simulation :target-type
                                      sim-space-weaver-resource-name :required
                                      common-lisp:t :member-name "Simulation"
                                      :http-query "simulation")
                                     (domain :target-type
                                      sim-space-weaver-resource-name :required
                                      common-lisp:t :member-name "Domain"
                                      :http-query "domain")
                                     (app :target-type
                                      sim-space-weaver-long-resource-name
                                      :required common-lisp:t :member-name
                                      "App" :http-query "app"))
                                    (:shape-name "DescribeAppInput"))

(smithy/sdk/shapes:define-structure describe-app-output common-lisp:nil
                                    ((name :target-type
                                      sim-space-weaver-long-resource-name
                                      :member-name "Name")
                                     (simulation :target-type
                                      sim-space-weaver-resource-name
                                      :member-name "Simulation")
                                     (domain :target-type
                                      sim-space-weaver-resource-name
                                      :member-name "Domain")
                                     (status :target-type simulation-app-status
                                      :member-name "Status")
                                     (target-status :target-type
                                      simulation-app-target-status :member-name
                                      "TargetStatus")
                                     (launch-overrides :target-type
                                      launch-overrides :member-name
                                      "LaunchOverrides")
                                     (description :target-type description
                                      :member-name "Description")
                                     (endpoint-info :target-type
                                      simulation-app-endpoint-info :member-name
                                      "EndpointInfo"))
                                    (:shape-name "DescribeAppOutput"))

(smithy/sdk/shapes:define-structure describe-simulation-input common-lisp:nil
                                    ((simulation :target-type
                                      sim-space-weaver-resource-name :required
                                      common-lisp:t :member-name "Simulation"
                                      :http-query "simulation"))
                                    (:shape-name "DescribeSimulationInput"))

(smithy/sdk/shapes:define-structure describe-simulation-output common-lisp:nil
                                    ((name :target-type
                                      sim-space-weaver-resource-name
                                      :member-name "Name")
                                     (execution-id :target-type uuid
                                      :member-name "ExecutionId")
                                     (arn :target-type sim-space-weaver-arn
                                      :member-name "Arn")
                                     (description :target-type description
                                      :member-name "Description")
                                     (role-arn :target-type role-arn
                                      :member-name "RoleArn")
                                     (creation-time :target-type timestamp
                                      :member-name "CreationTime")
                                     (status :target-type simulation-status
                                      :member-name "Status")
                                     (target-status :target-type
                                      simulation-target-status :member-name
                                      "TargetStatus")
                                     (schema-s3location :target-type s3location
                                      :member-name "SchemaS3Location")
                                     (schema-error :target-type optional-string
                                      :member-name "SchemaError")
                                     (logging-configuration :target-type
                                      logging-configuration :member-name
                                      "LoggingConfiguration")
                                     (live-simulation-state :target-type
                                      live-simulation-state :member-name
                                      "LiveSimulationState")
                                     (maximum-duration :target-type
                                      time-to-live-string :member-name
                                      "MaximumDuration")
                                     (snapshot-s3location :target-type
                                      s3location :member-name
                                      "SnapshotS3Location")
                                     (start-error :target-type optional-string
                                      :member-name "StartError"))
                                    (:shape-name "DescribeSimulationOutput"))

(smithy/sdk/shapes:define-type description smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure domain common-lisp:nil
                                    ((name :target-type
                                      sim-space-weaver-resource-name
                                      :member-name "Name")
                                     (lifecycle :target-type
                                      lifecycle-management-strategy
                                      :member-name "Lifecycle"))
                                    (:shape-name "Domain"))

(smithy/sdk/shapes:define-list domain-list :member domain)

(smithy/sdk/shapes:define-error internal-server-exception common-lisp:nil
                                ((message :target-type non-empty-string
                                  :member-name "Message"))
                                (:shape-name "InternalServerException")
                                (:error-code 500))

(smithy/sdk/shapes:define-list launch-command-list :member non-empty-string)

(smithy/sdk/shapes:define-structure launch-overrides common-lisp:nil
                                    ((launch-commands :target-type
                                      launch-command-list :member-name
                                      "LaunchCommands"))
                                    (:shape-name "LaunchOverrides"))

(smithy/sdk/shapes:define-type lifecycle-management-strategy
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure list-apps-input common-lisp:nil
                                    ((simulation :target-type
                                      sim-space-weaver-resource-name :required
                                      common-lisp:t :member-name "Simulation"
                                      :http-query "simulation")
                                     (domain :target-type
                                      sim-space-weaver-resource-name
                                      :member-name "Domain" :http-query
                                      "domain")
                                     (max-results :target-type positive-integer
                                      :member-name "MaxResults" :http-query
                                      "maxResults")
                                     (next-token :target-type optional-string
                                      :member-name "NextToken" :http-query
                                      "nextToken"))
                                    (:shape-name "ListAppsInput"))

(smithy/sdk/shapes:define-structure list-apps-output common-lisp:nil
                                    ((apps :target-type simulation-app-list
                                      :member-name "Apps")
                                     (next-token :target-type optional-string
                                      :member-name "NextToken"))
                                    (:shape-name "ListAppsOutput"))

(smithy/sdk/shapes:define-structure list-simulations-input common-lisp:nil
                                    ((max-results :target-type positive-integer
                                      :member-name "MaxResults" :http-query
                                      "maxResults")
                                     (next-token :target-type optional-string
                                      :member-name "NextToken" :http-query
                                      "nextToken"))
                                    (:shape-name "ListSimulationsInput"))

(smithy/sdk/shapes:define-structure list-simulations-output common-lisp:nil
                                    ((simulations :target-type simulation-list
                                      :member-name "Simulations")
                                     (next-token :target-type optional-string
                                      :member-name "NextToken"))
                                    (:shape-name "ListSimulationsOutput"))

(smithy/sdk/shapes:define-structure list-tags-for-resource-input
                                    common-lisp:nil
                                    ((resource-arn :target-type
                                      sim-space-weaver-arn :required
                                      common-lisp:t :member-name
                                      "ResourceArn"))
                                    (:shape-name "ListTagsForResourceInput"))

(smithy/sdk/shapes:define-structure list-tags-for-resource-output
                                    common-lisp:nil
                                    ((tags :target-type tag-map :member-name
                                      "Tags"))
                                    (:shape-name "ListTagsForResourceOutput"))

(smithy/sdk/shapes:define-structure live-simulation-state common-lisp:nil
                                    ((domains :target-type domain-list
                                      :member-name "Domains")
                                     (clocks :target-type simulation-clock-list
                                      :member-name "Clocks"))
                                    (:shape-name "LiveSimulationState"))

(smithy/sdk/shapes:define-structure log-destination common-lisp:nil
                                    ((cloud-watch-logs-log-group :target-type
                                      cloud-watch-logs-log-group :member-name
                                      "CloudWatchLogsLogGroup"))
                                    (:shape-name "LogDestination"))

(smithy/sdk/shapes:define-list log-destinations :member log-destination)

(smithy/sdk/shapes:define-type log-group-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure logging-configuration common-lisp:nil
                                    ((destinations :target-type
                                      log-destinations :member-name
                                      "Destinations"))
                                    (:shape-name "LoggingConfiguration"))

(smithy/sdk/shapes:define-type non-empty-string smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type object-key smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type object-key-prefix smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type optional-string smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type port-number smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type positive-integer smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-error resource-not-found-exception common-lisp:nil
                                ((message :target-type non-empty-string
                                  :member-name "Message"))
                                (:shape-name "ResourceNotFoundException")
                                (:error-code 404))

(smithy/sdk/shapes:define-type role-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure s3destination common-lisp:nil
                                    ((bucket-name :target-type bucket-name
                                      :required common-lisp:t :member-name
                                      "BucketName")
                                     (object-key-prefix :target-type
                                      object-key-prefix :member-name
                                      "ObjectKeyPrefix"))
                                    (:shape-name "S3Destination"))

(smithy/sdk/shapes:define-structure s3location common-lisp:nil
                                    ((bucket-name :target-type bucket-name
                                      :required common-lisp:t :member-name
                                      "BucketName")
                                     (object-key :target-type object-key
                                      :required common-lisp:t :member-name
                                      "ObjectKey"))
                                    (:shape-name "S3Location"))

(smithy/sdk/shapes:define-error service-quota-exceeded-exception
                                common-lisp:nil
                                ((message :target-type non-empty-string
                                  :member-name "Message"))
                                (:shape-name "ServiceQuotaExceededException")
                                (:error-code 402))

(smithy/sdk/shapes:define-type sim-space-weaver-arn
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type sim-space-weaver-long-resource-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type sim-space-weaver-resource-name
                               smithy/sdk/smithy-types:string)

common-lisp:nil

(smithy/sdk/shapes:define-structure simulation-app-endpoint-info
                                    common-lisp:nil
                                    ((address :target-type non-empty-string
                                      :member-name "Address")
                                     (ingress-port-mappings :target-type
                                      app-port-mappings :member-name
                                      "IngressPortMappings"))
                                    (:shape-name "SimulationAppEndpointInfo"))

(smithy/sdk/shapes:define-list simulation-app-list :member
                               simulation-app-metadata)

(smithy/sdk/shapes:define-structure simulation-app-metadata common-lisp:nil
                                    ((name :target-type
                                      sim-space-weaver-long-resource-name
                                      :member-name "Name")
                                     (simulation :target-type
                                      sim-space-weaver-resource-name
                                      :member-name "Simulation")
                                     (domain :target-type
                                      sim-space-weaver-resource-name
                                      :member-name "Domain")
                                     (status :target-type simulation-app-status
                                      :member-name "Status")
                                     (target-status :target-type
                                      simulation-app-target-status :member-name
                                      "TargetStatus"))
                                    (:shape-name "SimulationAppMetadata"))

(smithy/sdk/shapes:define-structure simulation-app-port-mapping common-lisp:nil
                                    ((declared :target-type port-number
                                      :member-name "Declared")
                                     (actual :target-type port-number
                                      :member-name "Actual"))
                                    (:shape-name "SimulationAppPortMapping"))

(smithy/sdk/shapes:define-type simulation-app-status
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type simulation-app-target-status
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure simulation-clock common-lisp:nil
                                    ((status :target-type clock-status
                                      :member-name "Status")
                                     (target-status :target-type
                                      clock-target-status :member-name
                                      "TargetStatus"))
                                    (:shape-name "SimulationClock"))

(smithy/sdk/shapes:define-list simulation-clock-list :member simulation-clock)

(smithy/sdk/shapes:define-list simulation-list :member simulation-metadata)

(smithy/sdk/shapes:define-structure simulation-metadata common-lisp:nil
                                    ((name :target-type
                                      sim-space-weaver-resource-name
                                      :member-name "Name")
                                     (arn :target-type sim-space-weaver-arn
                                      :member-name "Arn")
                                     (creation-time :target-type timestamp
                                      :member-name "CreationTime")
                                     (status :target-type simulation-status
                                      :member-name "Status")
                                     (target-status :target-type
                                      simulation-target-status :member-name
                                      "TargetStatus"))
                                    (:shape-name "SimulationMetadata"))

(smithy/sdk/shapes:define-type simulation-status smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type simulation-target-status
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure start-app-input common-lisp:nil
                                    ((client-token :target-type client-token
                                      :member-name "ClientToken")
                                     (simulation :target-type
                                      sim-space-weaver-resource-name :required
                                      common-lisp:t :member-name "Simulation")
                                     (domain :target-type
                                      sim-space-weaver-resource-name :required
                                      common-lisp:t :member-name "Domain")
                                     (name :target-type
                                      sim-space-weaver-resource-name :required
                                      common-lisp:t :member-name "Name")
                                     (description :target-type description
                                      :member-name "Description")
                                     (launch-overrides :target-type
                                      launch-overrides :member-name
                                      "LaunchOverrides"))
                                    (:shape-name "StartAppInput"))

(smithy/sdk/shapes:define-structure start-app-output common-lisp:nil
                                    ((name :target-type
                                      sim-space-weaver-resource-name
                                      :member-name "Name")
                                     (domain :target-type
                                      sim-space-weaver-resource-name
                                      :member-name "Domain")
                                     (simulation :target-type
                                      sim-space-weaver-resource-name
                                      :member-name "Simulation"))
                                    (:shape-name "StartAppOutput"))

(smithy/sdk/shapes:define-structure start-clock-input common-lisp:nil
                                    ((simulation :target-type
                                      sim-space-weaver-resource-name :required
                                      common-lisp:t :member-name "Simulation"))
                                    (:shape-name "StartClockInput"))

(smithy/sdk/shapes:define-structure start-clock-output common-lisp:nil
                                    common-lisp:nil
                                    (:shape-name "StartClockOutput"))

(smithy/sdk/shapes:define-structure start-simulation-input common-lisp:nil
                                    ((client-token :target-type client-token
                                      :member-name "ClientToken")
                                     (name :target-type
                                      sim-space-weaver-resource-name :required
                                      common-lisp:t :member-name "Name")
                                     (description :target-type description
                                      :member-name "Description")
                                     (role-arn :target-type role-arn :required
                                      common-lisp:t :member-name "RoleArn")
                                     (schema-s3location :target-type s3location
                                      :member-name "SchemaS3Location")
                                     (maximum-duration :target-type
                                      time-to-live-string :member-name
                                      "MaximumDuration")
                                     (tags :target-type tag-map :member-name
                                      "Tags")
                                     (snapshot-s3location :target-type
                                      s3location :member-name
                                      "SnapshotS3Location"))
                                    (:shape-name "StartSimulationInput"))

(smithy/sdk/shapes:define-structure start-simulation-output common-lisp:nil
                                    ((arn :target-type sim-space-weaver-arn
                                      :member-name "Arn")
                                     (execution-id :target-type uuid
                                      :member-name "ExecutionId")
                                     (creation-time :target-type timestamp
                                      :member-name "CreationTime"))
                                    (:shape-name "StartSimulationOutput"))

(smithy/sdk/shapes:define-structure stop-app-input common-lisp:nil
                                    ((simulation :target-type
                                      sim-space-weaver-resource-name :required
                                      common-lisp:t :member-name "Simulation")
                                     (domain :target-type
                                      sim-space-weaver-resource-name :required
                                      common-lisp:t :member-name "Domain")
                                     (app :target-type
                                      sim-space-weaver-resource-name :required
                                      common-lisp:t :member-name "App"))
                                    (:shape-name "StopAppInput"))

(smithy/sdk/shapes:define-structure stop-app-output common-lisp:nil
                                    common-lisp:nil
                                    (:shape-name "StopAppOutput"))

(smithy/sdk/shapes:define-structure stop-clock-input common-lisp:nil
                                    ((simulation :target-type
                                      sim-space-weaver-resource-name :required
                                      common-lisp:t :member-name "Simulation"))
                                    (:shape-name "StopClockInput"))

(smithy/sdk/shapes:define-structure stop-clock-output common-lisp:nil
                                    common-lisp:nil
                                    (:shape-name "StopClockOutput"))

(smithy/sdk/shapes:define-structure stop-simulation-input common-lisp:nil
                                    ((simulation :target-type
                                      sim-space-weaver-resource-name :required
                                      common-lisp:t :member-name "Simulation"))
                                    (:shape-name "StopSimulationInput"))

(smithy/sdk/shapes:define-structure stop-simulation-output common-lisp:nil
                                    common-lisp:nil
                                    (:shape-name "StopSimulationOutput"))

(smithy/sdk/shapes:define-type tag-key smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list tag-key-list :member tag-key)

(smithy/sdk/shapes:define-map tag-map :key tag-key :value tag-value)

(smithy/sdk/shapes:define-structure tag-resource-input common-lisp:nil
                                    ((resource-arn :target-type
                                      sim-space-weaver-arn :required
                                      common-lisp:t :member-name "ResourceArn")
                                     (tags :target-type tag-map :required
                                      common-lisp:t :member-name "Tags"))
                                    (:shape-name "TagResourceInput"))

(smithy/sdk/shapes:define-structure tag-resource-output common-lisp:nil
                                    common-lisp:nil
                                    (:shape-name "TagResourceOutput"))

(smithy/sdk/shapes:define-type tag-value smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type time-to-live-string
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type timestamp smithy/sdk/smithy-types:timestamp)

(smithy/sdk/shapes:define-error too-many-tags-exception common-lisp:nil
                                ((message :target-type non-empty-string
                                  :member-name "Message"))
                                (:shape-name "TooManyTagsException")
                                (:error-code 400))

(smithy/sdk/shapes:define-type uuid smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure untag-resource-input common-lisp:nil
                                    ((resource-arn :target-type
                                      sim-space-weaver-arn :required
                                      common-lisp:t :member-name "ResourceArn")
                                     (tag-keys :target-type tag-key-list
                                      :required common-lisp:t :member-name
                                      "TagKeys" :http-query "tagKeys"))
                                    (:shape-name "UntagResourceInput"))

(smithy/sdk/shapes:define-structure untag-resource-output common-lisp:nil
                                    common-lisp:nil
                                    (:shape-name "UntagResourceOutput"))

(smithy/sdk/shapes:define-error validation-exception common-lisp:nil
                                ((message :target-type non-empty-string
                                  :member-name "Message"))
                                (:shape-name "ValidationException")
                                (:error-code 400))

(smithy/sdk/operation:define-operation create-snapshot :shape-name
                                       "CreateSnapshot" :input
                                       create-snapshot-input :output
                                       create-snapshot-output :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        validation-exception)
                                       :method "POST" :uri "/createsnapshot"
                                       :code 200)

(smithy/sdk/operation:define-operation delete-app :shape-name "DeleteApp"
                                       :input delete-app-input :output
                                       delete-app-output :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        validation-exception)
                                       :method "DELETE" :uri "/deleteapp" :code
                                       200)

(smithy/sdk/operation:define-operation delete-simulation :shape-name
                                       "DeleteSimulation" :input
                                       delete-simulation-input :output
                                       delete-simulation-output :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        validation-exception)
                                       :method "DELETE" :uri
                                       "/deletesimulation" :code 200)

(smithy/sdk/operation:define-operation describe-app :shape-name "DescribeApp"
                                       :input describe-app-input :output
                                       describe-app-output :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        validation-exception)
                                       :method "GET" :uri "/describeapp" :code
                                       200)

(smithy/sdk/operation:define-operation describe-simulation :shape-name
                                       "DescribeSimulation" :input
                                       describe-simulation-input :output
                                       describe-simulation-output :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        validation-exception)
                                       :method "GET" :uri "/describesimulation"
                                       :code 200)

(smithy/sdk/operation:define-operation list-apps :shape-name "ListApps" :input
                                       list-apps-input :output list-apps-output
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        validation-exception)
                                       :method "GET" :uri "/listapps" :code 200)

(smithy/sdk/operation:define-operation list-simulations :shape-name
                                       "ListSimulations" :input
                                       list-simulations-input :output
                                       list-simulations-output :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        validation-exception)
                                       :method "GET" :uri "/listsimulations"
                                       :code 200)

(smithy/sdk/operation:define-operation list-tags-for-resource :shape-name
                                       "ListTagsForResource" :input
                                       list-tags-for-resource-input :output
                                       list-tags-for-resource-output :errors
                                       (resource-not-found-exception
                                        validation-exception)
                                       :method "GET" :uri "/tags/{ResourceArn}"
                                       :code 200)

(smithy/sdk/operation:define-operation start-app :shape-name "StartApp" :input
                                       start-app-input :output start-app-output
                                       :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        service-quota-exceeded-exception
                                        validation-exception)
                                       :method "POST" :uri "/startapp" :code
                                       200)

(smithy/sdk/operation:define-operation start-clock :shape-name "StartClock"
                                       :input start-clock-input :output
                                       start-clock-output :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        validation-exception)
                                       :method "POST" :uri "/startclock" :code
                                       200)

(smithy/sdk/operation:define-operation start-simulation :shape-name
                                       "StartSimulation" :input
                                       start-simulation-input :output
                                       start-simulation-output :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        service-quota-exceeded-exception
                                        validation-exception)
                                       :method "POST" :uri "/startsimulation"
                                       :code 200)

(smithy/sdk/operation:define-operation stop-app :shape-name "StopApp" :input
                                       stop-app-input :output stop-app-output
                                       :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        validation-exception)
                                       :method "POST" :uri "/stopapp" :code 200)

(smithy/sdk/operation:define-operation stop-clock :shape-name "StopClock"
                                       :input stop-clock-input :output
                                       stop-clock-output :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        validation-exception)
                                       :method "POST" :uri "/stopclock" :code
                                       200)

(smithy/sdk/operation:define-operation stop-simulation :shape-name
                                       "StopSimulation" :input
                                       stop-simulation-input :output
                                       stop-simulation-output :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        validation-exception)
                                       :method "POST" :uri "/stopsimulation"
                                       :code 200)

(smithy/sdk/operation:define-operation tag-resource :shape-name "TagResource"
                                       :input tag-resource-input :output
                                       tag-resource-output :errors
                                       (resource-not-found-exception
                                        too-many-tags-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/tags/{ResourceArn}" :code 200)

(smithy/sdk/operation:define-operation untag-resource :shape-name
                                       "UntagResource" :input
                                       untag-resource-input :output
                                       untag-resource-output :errors
                                       (resource-not-found-exception
                                        validation-exception)
                                       :method "DELETE" :uri
                                       "/tags/{ResourceArn}" :code 200)
