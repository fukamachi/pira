(uiop/package:define-package #:pira/gameliftstreams (:use)
                             (:export #:access-denied-exception
                              #:add-stream-group-locations #:always-on-capacity
                              #:application-log-output-uri
                              #:application-resource #:application-source-uri
                              #:application-status #:application-status-reason
                              #:application-summary #:application-summary-list
                              #:arn #:arn-list #:associate-applications
                              #:capacity-value #:client-token
                              #:conflict-exception #:connection-timeout-seconds
                              #:create-application #:create-stream-group
                              #:create-stream-session-connection
                              #:default-application #:delete-application
                              #:delete-stream-group #:description
                              #:disassociate-applications
                              #:environment-variables #:executable-path
                              #:export-files-metadata #:export-files-reason
                              #:export-files-status
                              #:export-stream-session-files #:file-location-uri
                              #:file-path #:file-paths #:game-launch-arg-list
                              #:game-lift-streams #:get-application
                              #:get-stream-group #:get-stream-session #:id
                              #:identifier #:identifiers
                              #:internal-server-exception #:list-applications
                              #:list-stream-groups #:list-stream-sessions
                              #:list-stream-sessions-by-account
                              #:list-tags-for-resource #:location-configuration
                              #:location-configurations #:location-list
                              #:location-name #:location-state
                              #:location-states #:locations-list #:max-results
                              #:next-token #:on-demand-capacity #:output-uri
                              #:protocol #:remove-stream-group-locations
                              #:replication-status #:replication-status-type
                              #:replication-statuses
                              #:resource-not-found-exception
                              #:runtime-environment #:runtime-environment-type
                              #:runtime-environment-version
                              #:service-quota-exceeded-exception
                              #:session-length-seconds #:signal-request
                              #:signal-response #:start-stream-session
                              #:stream-class #:stream-group-location-status
                              #:stream-group-resource #:stream-group-status
                              #:stream-group-status-reason
                              #:stream-group-summary
                              #:stream-group-summary-list
                              #:stream-session-status
                              #:stream-session-status-reason
                              #:stream-session-summary
                              #:stream-session-summary-list #:tag-key
                              #:tag-key-list #:tag-resource #:tag-value #:tags
                              #:terminate-stream-session #:throttling-exception
                              #:untag-resource #:update-application
                              #:update-stream-group #:user-id
                              #:validation-exception #:web-sdk-protocol-url
                              #:gameliftstreams-error))
(common-lisp:in-package #:pira/gameliftstreams)

(common-lisp:define-condition gameliftstreams-error
    (pira/error:aws-error)
    common-lisp:nil)

(smithy/sdk/service:define-service game-lift-streams :shape-name
                                   "GameLiftStreams" :version "2018-05-10"
                                   :title "Amazon GameLift Streams" :operations
                                   '(add-stream-group-locations
                                     associate-applications
                                     create-stream-session-connection
                                     disassociate-applications
                                     export-stream-session-files
                                     get-stream-session list-stream-sessions
                                     list-stream-sessions-by-account
                                     list-tags-for-resource
                                     remove-stream-group-locations
                                     start-stream-session tag-resource
                                     terminate-stream-session untag-resource)
                                   :traits
                                   '(("aws.api#service"
                                      ("sdkId" . "GameLiftStreams")
                                      ("cloudFormationName"
                                       . "GameLiftStreams")
                                      ("arnNamespace" . "gameliftstreams")
                                      ("cloudTrailEventSource"
                                       . "gameliftstreams.amazonaws.com"))
                                     ("aws.auth#sigv4"
                                      ("name" . "gameliftstreams"))
                                     ("aws.endpoints#dualStackOnlyEndpoints")
                                     ("aws.endpoints#standardRegionalEndpoints")
                                     ("aws.iam#defineConditionKeys"
                                      ("aws:ResourceTag/${TagKey}"
                                       ("type" . "String")
                                       ("documentation"
                                        . "Filters access by the tags associated with the resource")
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
                                        . "Filters access by a list of tag keys that are allowed in the request")
                                       ("externalDocumentation"
                                        . "${DocHomeURL}IAM/latest/UserGuide/reference_policies_condition-keys.html#condition-keys-tagkeys")))
                                     ("aws.iam#supportedPrincipalTypes"
                                      . #("Root" "IAMUser" "IAMRole"
                                          "FederatedUser"))
                                     ("aws.protocols#restJson1")))

(smithy/sdk/shapes:define-error access-denied-exception common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "Message"))
                                (:shape-name "AccessDeniedException")
                                (:error-code 403)
                                (:base-class gameliftstreams-error))

(smithy/sdk/shapes:define-input add-stream-group-locations-input
                                common-lisp:nil
                                ((identifier :target-type identifier :required
                                  common-lisp:t :member-name "Identifier"
                                  :http-label common-lisp:t)
                                 (location-configurations :target-type
                                  location-configurations :required
                                  common-lisp:t :member-name
                                  "LocationConfigurations"))
                                (:shape-name "AddStreamGroupLocationsInput"))

(smithy/sdk/shapes:define-output add-stream-group-locations-output
                                 common-lisp:nil
                                 ((identifier :target-type identifier :required
                                   common-lisp:t :member-name "Identifier")
                                  (locations :target-type location-states
                                   :required common-lisp:t :member-name
                                   "Locations"))
                                 (:shape-name "AddStreamGroupLocationsOutput"))

(smithy/sdk/shapes:define-type always-on-capacity
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type application-log-output-uri
                               smithy/sdk/smithy-types:string)

common-lisp:nil

(smithy/sdk/shapes:define-type application-source-uri
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum application-status
    common-lisp:nil
  (:initialized "INITIALIZED")
  (:processing "PROCESSING")
  (:ready "READY")
  (:deleting "DELETING")
  (:error "ERROR"))

(smithy/sdk/shapes:define-enum application-status-reason
    common-lisp:nil
  (:internal-error "internalError")
  (:access-denied "accessDenied"))

(smithy/sdk/shapes:define-structure application-summary common-lisp:nil
                                    ((arn :target-type identifier :required
                                      common-lisp:t :member-name "Arn")
                                     (id :target-type id :member-name "Id")
                                     (description :target-type description
                                      :member-name "Description")
                                     (status :target-type application-status
                                      :member-name "Status")
                                     (created-at :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :member-name "CreatedAt")
                                     (last-updated-at :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :member-name "LastUpdatedAt")
                                     (runtime-environment :target-type
                                      runtime-environment :member-name
                                      "RuntimeEnvironment"))
                                    (:shape-name "ApplicationSummary"))

(smithy/sdk/shapes:define-list application-summary-list :member
                               application-summary)

(smithy/sdk/shapes:define-type arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list arn-list :member arn)

(smithy/sdk/shapes:define-input associate-applications-input common-lisp:nil
                                ((identifier :target-type identifier :required
                                  common-lisp:t :member-name "Identifier"
                                  :http-label common-lisp:t)
                                 (application-identifiers :target-type
                                  identifiers :required common-lisp:t
                                  :member-name "ApplicationIdentifiers"))
                                (:shape-name "AssociateApplicationsInput"))

(smithy/sdk/shapes:define-output associate-applications-output common-lisp:nil
                                 ((arn :target-type arn :member-name "Arn")
                                  (application-arns :target-type arn-list
                                   :member-name "ApplicationArns"))
                                 (:shape-name "AssociateApplicationsOutput"))

(smithy/sdk/shapes:define-type capacity-value smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type client-token smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error conflict-exception common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "Message"))
                                (:shape-name "ConflictException")
                                (:error-code 409)
                                (:base-class gameliftstreams-error))

(smithy/sdk/shapes:define-type connection-timeout-seconds
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-input create-application-input common-lisp:nil
                                ((description :target-type description
                                  :required common-lisp:t :member-name
                                  "Description")
                                 (runtime-environment :target-type
                                  runtime-environment :required common-lisp:t
                                  :member-name "RuntimeEnvironment")
                                 (executable-path :target-type executable-path
                                  :required common-lisp:t :member-name
                                  "ExecutablePath")
                                 (application-source-uri :target-type
                                  application-source-uri :required
                                  common-lisp:t :member-name
                                  "ApplicationSourceUri")
                                 (application-log-paths :target-type file-paths
                                  :member-name "ApplicationLogPaths")
                                 (application-log-output-uri :target-type
                                  application-log-output-uri :member-name
                                  "ApplicationLogOutputUri")
                                 (tags :target-type tags :member-name "Tags")
                                 (client-token :target-type client-token
                                  :member-name "ClientToken"))
                                (:shape-name "CreateApplicationInput"))

(smithy/sdk/shapes:define-output create-application-output common-lisp:nil
                                 ((arn :target-type identifier :required
                                   common-lisp:t :member-name "Arn")
                                  (description :target-type description
                                   :member-name "Description")
                                  (runtime-environment :target-type
                                   runtime-environment :member-name
                                   "RuntimeEnvironment")
                                  (executable-path :target-type executable-path
                                   :member-name "ExecutablePath")
                                  (application-log-paths :target-type
                                   file-paths :member-name
                                   "ApplicationLogPaths")
                                  (application-log-output-uri :target-type
                                   application-log-output-uri :member-name
                                   "ApplicationLogOutputUri")
                                  (application-source-uri :target-type
                                   application-source-uri :member-name
                                   "ApplicationSourceUri")
                                  (id :target-type id :member-name "Id")
                                  (status :target-type application-status
                                   :member-name "Status")
                                  (status-reason :target-type
                                   application-status-reason :member-name
                                   "StatusReason")
                                  (replication-statuses :target-type
                                   replication-statuses :member-name
                                   "ReplicationStatuses")
                                  (created-at :target-type
                                   smithy/sdk/smithy-types:timestamp
                                   :member-name "CreatedAt")
                                  (last-updated-at :target-type
                                   smithy/sdk/smithy-types:timestamp
                                   :member-name "LastUpdatedAt")
                                  (associated-stream-groups :target-type
                                   arn-list :member-name
                                   "AssociatedStreamGroups"))
                                 (:shape-name "CreateApplicationOutput"))

(smithy/sdk/shapes:define-input create-stream-group-input common-lisp:nil
                                ((description :target-type description
                                  :required common-lisp:t :member-name
                                  "Description")
                                 (stream-class :target-type stream-class
                                  :required common-lisp:t :member-name
                                  "StreamClass")
                                 (default-application-identifier :target-type
                                  identifier :member-name
                                  "DefaultApplicationIdentifier")
                                 (location-configurations :target-type
                                  location-configurations :member-name
                                  "LocationConfigurations")
                                 (tags :target-type tags :member-name "Tags")
                                 (client-token :target-type client-token
                                  :member-name "ClientToken"))
                                (:shape-name "CreateStreamGroupInput"))

(smithy/sdk/shapes:define-output create-stream-group-output common-lisp:nil
                                 ((arn :target-type identifier :required
                                   common-lisp:t :member-name "Arn")
                                  (description :target-type description
                                   :member-name "Description")
                                  (default-application :target-type
                                   default-application :member-name
                                   "DefaultApplication")
                                  (location-states :target-type location-states
                                   :member-name "LocationStates")
                                  (stream-class :target-type stream-class
                                   :member-name "StreamClass")
                                  (id :target-type id :member-name "Id")
                                  (status :target-type stream-group-status
                                   :member-name "Status")
                                  (status-reason :target-type
                                   stream-group-status-reason :member-name
                                   "StatusReason")
                                  (last-updated-at :target-type
                                   smithy/sdk/smithy-types:timestamp
                                   :member-name "LastUpdatedAt")
                                  (created-at :target-type
                                   smithy/sdk/smithy-types:timestamp
                                   :member-name "CreatedAt")
                                  (associated-applications :target-type
                                   arn-list :member-name
                                   "AssociatedApplications"))
                                 (:shape-name "CreateStreamGroupOutput"))

(smithy/sdk/shapes:define-input create-stream-session-connection-input
                                common-lisp:nil
                                ((client-token :target-type client-token
                                  :member-name "ClientToken")
                                 (identifier :target-type identifier :required
                                  common-lisp:t :member-name "Identifier"
                                  :http-label common-lisp:t)
                                 (stream-session-identifier :target-type
                                  identifier :required common-lisp:t
                                  :member-name "StreamSessionIdentifier"
                                  :http-label common-lisp:t)
                                 (signal-request :target-type signal-request
                                  :required common-lisp:t :member-name
                                  "SignalRequest"))
                                (:shape-name
                                 "CreateStreamSessionConnectionInput"))

(smithy/sdk/shapes:define-output create-stream-session-connection-output
                                 common-lisp:nil
                                 ((signal-response :target-type signal-response
                                   :member-name "SignalResponse"))
                                 (:shape-name
                                  "CreateStreamSessionConnectionOutput"))

(smithy/sdk/shapes:define-structure default-application common-lisp:nil
                                    ((id :target-type id :member-name "Id")
                                     (arn :target-type arn :member-name "Arn"))
                                    (:shape-name "DefaultApplication"))

(smithy/sdk/shapes:define-input delete-application-input common-lisp:nil
                                ((identifier :target-type identifier :required
                                  common-lisp:t :member-name "Identifier"
                                  :http-label common-lisp:t))
                                (:shape-name "DeleteApplicationInput"))

(smithy/sdk/shapes:define-input delete-stream-group-input common-lisp:nil
                                ((identifier :target-type identifier :required
                                  common-lisp:t :member-name "Identifier"
                                  :http-label common-lisp:t))
                                (:shape-name "DeleteStreamGroupInput"))

(smithy/sdk/shapes:define-type description smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input disassociate-applications-input common-lisp:nil
                                ((identifier :target-type identifier :required
                                  common-lisp:t :member-name "Identifier"
                                  :http-label common-lisp:t)
                                 (application-identifiers :target-type
                                  identifiers :required common-lisp:t
                                  :member-name "ApplicationIdentifiers"))
                                (:shape-name "DisassociateApplicationsInput"))

(smithy/sdk/shapes:define-output disassociate-applications-output
                                 common-lisp:nil
                                 ((arn :target-type arn :member-name "Arn")
                                  (application-arns :target-type arn-list
                                   :member-name "ApplicationArns"))
                                 (:shape-name "DisassociateApplicationsOutput"))

(smithy/sdk/shapes:define-map environment-variables :key
                              smithy/sdk/smithy-types:string :value
                              smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type executable-path smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure export-files-metadata common-lisp:nil
                                    ((status :target-type export-files-status
                                      :member-name "Status")
                                     (status-reason :target-type
                                      export-files-reason :member-name
                                      "StatusReason")
                                     (output-uri :target-type output-uri
                                      :member-name "OutputUri"))
                                    (:shape-name "ExportFilesMetadata"))

(smithy/sdk/shapes:define-type export-files-reason
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum export-files-status
    common-lisp:nil
  (:succeeded "SUCCEEDED")
  (:failed "FAILED")
  (:pending "PENDING"))

(smithy/sdk/shapes:define-input export-stream-session-files-input
                                common-lisp:nil
                                ((identifier :target-type identifier :required
                                  common-lisp:t :member-name "Identifier"
                                  :http-label common-lisp:t)
                                 (stream-session-identifier :target-type
                                  identifier :required common-lisp:t
                                  :member-name "StreamSessionIdentifier"
                                  :http-label common-lisp:t)
                                 (output-uri :target-type output-uri :required
                                  common-lisp:t :member-name "OutputUri"))
                                (:shape-name "ExportStreamSessionFilesInput"))

(smithy/sdk/shapes:define-output export-stream-session-files-output
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name "ExportStreamSessionFilesOutput"))

(smithy/sdk/shapes:define-type file-location-uri smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type file-path smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list file-paths :member file-path)

(smithy/sdk/shapes:define-list game-launch-arg-list :member
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input get-application-input common-lisp:nil
                                ((identifier :target-type identifier :required
                                  common-lisp:t :member-name "Identifier"
                                  :http-label common-lisp:t))
                                (:shape-name "GetApplicationInput"))

(smithy/sdk/shapes:define-output get-application-output common-lisp:nil
                                 ((arn :target-type identifier :required
                                   common-lisp:t :member-name "Arn")
                                  (description :target-type description
                                   :member-name "Description")
                                  (runtime-environment :target-type
                                   runtime-environment :member-name
                                   "RuntimeEnvironment")
                                  (executable-path :target-type executable-path
                                   :member-name "ExecutablePath")
                                  (application-log-paths :target-type
                                   file-paths :member-name
                                   "ApplicationLogPaths")
                                  (application-log-output-uri :target-type
                                   application-log-output-uri :member-name
                                   "ApplicationLogOutputUri")
                                  (application-source-uri :target-type
                                   application-source-uri :member-name
                                   "ApplicationSourceUri")
                                  (id :target-type id :member-name "Id")
                                  (status :target-type application-status
                                   :member-name "Status")
                                  (status-reason :target-type
                                   application-status-reason :member-name
                                   "StatusReason")
                                  (replication-statuses :target-type
                                   replication-statuses :member-name
                                   "ReplicationStatuses")
                                  (created-at :target-type
                                   smithy/sdk/smithy-types:timestamp
                                   :member-name "CreatedAt")
                                  (last-updated-at :target-type
                                   smithy/sdk/smithy-types:timestamp
                                   :member-name "LastUpdatedAt")
                                  (associated-stream-groups :target-type
                                   arn-list :member-name
                                   "AssociatedStreamGroups"))
                                 (:shape-name "GetApplicationOutput"))

(smithy/sdk/shapes:define-input get-stream-group-input common-lisp:nil
                                ((identifier :target-type identifier :required
                                  common-lisp:t :member-name "Identifier"
                                  :http-label common-lisp:t))
                                (:shape-name "GetStreamGroupInput"))

(smithy/sdk/shapes:define-output get-stream-group-output common-lisp:nil
                                 ((arn :target-type identifier :required
                                   common-lisp:t :member-name "Arn")
                                  (description :target-type description
                                   :member-name "Description")
                                  (default-application :target-type
                                   default-application :member-name
                                   "DefaultApplication")
                                  (location-states :target-type location-states
                                   :member-name "LocationStates")
                                  (stream-class :target-type stream-class
                                   :member-name "StreamClass")
                                  (id :target-type id :member-name "Id")
                                  (status :target-type stream-group-status
                                   :member-name "Status")
                                  (status-reason :target-type
                                   stream-group-status-reason :member-name
                                   "StatusReason")
                                  (last-updated-at :target-type
                                   smithy/sdk/smithy-types:timestamp
                                   :member-name "LastUpdatedAt")
                                  (created-at :target-type
                                   smithy/sdk/smithy-types:timestamp
                                   :member-name "CreatedAt")
                                  (associated-applications :target-type
                                   arn-list :member-name
                                   "AssociatedApplications"))
                                 (:shape-name "GetStreamGroupOutput"))

(smithy/sdk/shapes:define-input get-stream-session-input common-lisp:nil
                                ((identifier :target-type identifier :required
                                  common-lisp:t :member-name "Identifier"
                                  :http-label common-lisp:t)
                                 (stream-session-identifier :target-type
                                  identifier :required common-lisp:t
                                  :member-name "StreamSessionIdentifier"
                                  :http-label common-lisp:t))
                                (:shape-name "GetStreamSessionInput"))

(smithy/sdk/shapes:define-output get-stream-session-output common-lisp:nil
                                 ((arn :target-type arn :member-name "Arn")
                                  (description :target-type description
                                   :member-name "Description")
                                  (stream-group-id :target-type id :member-name
                                   "StreamGroupId")
                                  (user-id :target-type user-id :member-name
                                   "UserId")
                                  (status :target-type stream-session-status
                                   :member-name "Status")
                                  (status-reason :target-type
                                   stream-session-status-reason :member-name
                                   "StatusReason")
                                  (protocol :target-type protocol :member-name
                                   "Protocol")
                                  (location :target-type location-name
                                   :member-name "Location")
                                  (signal-request :target-type signal-request
                                   :member-name "SignalRequest")
                                  (signal-response :target-type signal-response
                                   :member-name "SignalResponse")
                                  (connection-timeout-seconds :target-type
                                   connection-timeout-seconds :member-name
                                   "ConnectionTimeoutSeconds")
                                  (session-length-seconds :target-type
                                   session-length-seconds :member-name
                                   "SessionLengthSeconds")
                                  (additional-launch-args :target-type
                                   game-launch-arg-list :member-name
                                   "AdditionalLaunchArgs")
                                  (additional-environment-variables
                                   :target-type environment-variables
                                   :member-name
                                   "AdditionalEnvironmentVariables")
                                  (log-file-location-uri :target-type
                                   file-location-uri :member-name
                                   "LogFileLocationUri")
                                  (web-sdk-protocol-url :target-type
                                   web-sdk-protocol-url :member-name
                                   "WebSdkProtocolUrl")
                                  (last-updated-at :target-type
                                   smithy/sdk/smithy-types:timestamp
                                   :member-name "LastUpdatedAt")
                                  (created-at :target-type
                                   smithy/sdk/smithy-types:timestamp
                                   :member-name "CreatedAt")
                                  (application-arn :target-type arn
                                   :member-name "ApplicationArn")
                                  (export-files-metadata :target-type
                                   export-files-metadata :member-name
                                   "ExportFilesMetadata"))
                                 (:shape-name "GetStreamSessionOutput"))

(smithy/sdk/shapes:define-type id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type identifier smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list identifiers :member identifier)

(smithy/sdk/shapes:define-error internal-server-exception common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "Message"))
                                (:shape-name "InternalServerException")
                                (:error-code 500)
                                (:base-class gameliftstreams-error))

(smithy/sdk/shapes:define-input list-applications-input common-lisp:nil
                                ((next-token :target-type next-token
                                  :member-name "NextToken" :http-query
                                  "NextToken")
                                 (max-results :target-type max-results
                                  :member-name "MaxResults" :http-query
                                  "MaxResults"))
                                (:shape-name "ListApplicationsInput"))

(smithy/sdk/shapes:define-output list-applications-output common-lisp:nil
                                 ((items :target-type application-summary-list
                                   :member-name "Items")
                                  (next-token :target-type next-token
                                   :member-name "NextToken"))
                                 (:shape-name "ListApplicationsOutput"))

(smithy/sdk/shapes:define-input list-stream-groups-input common-lisp:nil
                                ((next-token :target-type next-token
                                  :member-name "NextToken" :http-query
                                  "NextToken")
                                 (max-results :target-type max-results
                                  :member-name "MaxResults" :http-query
                                  "MaxResults"))
                                (:shape-name "ListStreamGroupsInput"))

(smithy/sdk/shapes:define-output list-stream-groups-output common-lisp:nil
                                 ((items :target-type stream-group-summary-list
                                   :member-name "Items")
                                  (next-token :target-type next-token
                                   :member-name "NextToken"))
                                 (:shape-name "ListStreamGroupsOutput"))

(smithy/sdk/shapes:define-input list-stream-sessions-by-account-input
                                common-lisp:nil
                                ((status :target-type stream-session-status
                                  :member-name "Status" :http-query "Status")
                                 (export-files-status :target-type
                                  export-files-status :member-name
                                  "ExportFilesStatus" :http-query
                                  "ExportFilesStatus")
                                 (next-token :target-type next-token
                                  :member-name "NextToken" :http-query
                                  "NextToken")
                                 (max-results :target-type max-results
                                  :member-name "MaxResults" :http-query
                                  "MaxResults"))
                                (:shape-name
                                 "ListStreamSessionsByAccountInput"))

(smithy/sdk/shapes:define-output list-stream-sessions-by-account-output
                                 common-lisp:nil
                                 ((items :target-type
                                   stream-session-summary-list :member-name
                                   "Items")
                                  (next-token :target-type next-token
                                   :member-name "NextToken"))
                                 (:shape-name
                                  "ListStreamSessionsByAccountOutput"))

(smithy/sdk/shapes:define-input list-stream-sessions-input common-lisp:nil
                                ((status :target-type stream-session-status
                                  :member-name "Status" :http-query "Status")
                                 (export-files-status :target-type
                                  export-files-status :member-name
                                  "ExportFilesStatus" :http-query
                                  "ExportFilesStatus")
                                 (next-token :target-type next-token
                                  :member-name "NextToken" :http-query
                                  "NextToken")
                                 (max-results :target-type max-results
                                  :member-name "MaxResults" :http-query
                                  "MaxResults")
                                 (identifier :target-type identifier :required
                                  common-lisp:t :member-name "Identifier"
                                  :http-label common-lisp:t))
                                (:shape-name "ListStreamSessionsInput"))

(smithy/sdk/shapes:define-output list-stream-sessions-output common-lisp:nil
                                 ((items :target-type
                                   stream-session-summary-list :member-name
                                   "Items")
                                  (next-token :target-type next-token
                                   :member-name "NextToken"))
                                 (:shape-name "ListStreamSessionsOutput"))

(smithy/sdk/shapes:define-input list-tags-for-resource-request common-lisp:nil
                                ((resource-arn :target-type arn :required
                                  common-lisp:t :member-name "ResourceArn"
                                  :http-label common-lisp:t))
                                (:shape-name "ListTagsForResourceRequest"))

(smithy/sdk/shapes:define-output list-tags-for-resource-response
                                 common-lisp:nil
                                 ((tags :target-type tags :member-name "Tags"))
                                 (:shape-name "ListTagsForResourceResponse"))

(smithy/sdk/shapes:define-structure location-configuration common-lisp:nil
                                    ((location-name :target-type location-name
                                      :required common-lisp:t :member-name
                                      "LocationName")
                                     (always-on-capacity :target-type
                                      always-on-capacity :member-name
                                      "AlwaysOnCapacity")
                                     (on-demand-capacity :target-type
                                      on-demand-capacity :member-name
                                      "OnDemandCapacity"))
                                    (:shape-name "LocationConfiguration"))

(smithy/sdk/shapes:define-list location-configurations :member
                               location-configuration)

(smithy/sdk/shapes:define-list location-list :member location-name)

(smithy/sdk/shapes:define-type location-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure location-state common-lisp:nil
                                    ((location-name :target-type location-name
                                      :member-name "LocationName")
                                     (status :target-type
                                      stream-group-location-status :member-name
                                      "Status")
                                     (always-on-capacity :target-type
                                      always-on-capacity :member-name
                                      "AlwaysOnCapacity")
                                     (on-demand-capacity :target-type
                                      on-demand-capacity :member-name
                                      "OnDemandCapacity")
                                     (requested-capacity :target-type
                                      capacity-value :member-name
                                      "RequestedCapacity")
                                     (allocated-capacity :target-type
                                      capacity-value :member-name
                                      "AllocatedCapacity")
                                     (idle-capacity :target-type capacity-value
                                      :member-name "IdleCapacity"))
                                    (:shape-name "LocationState"))

(smithy/sdk/shapes:define-list location-states :member location-state)

(smithy/sdk/shapes:define-list locations-list :member
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type max-results smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type next-token smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type on-demand-capacity
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type output-uri smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum protocol
    common-lisp:nil
  (:webrtc "WebRTC"))

(smithy/sdk/shapes:define-input remove-stream-group-locations-input
                                common-lisp:nil
                                ((identifier :target-type identifier :required
                                  common-lisp:t :member-name "Identifier"
                                  :http-label common-lisp:t)
                                 (locations :target-type locations-list
                                  :required common-lisp:t :member-name
                                  "Locations" :http-query "locations"))
                                (:shape-name "RemoveStreamGroupLocationsInput"))

(smithy/sdk/shapes:define-structure replication-status common-lisp:nil
                                    ((location :target-type location-name
                                      :member-name "Location")
                                     (status :target-type
                                      replication-status-type :member-name
                                      "Status"))
                                    (:shape-name "ReplicationStatus"))

(smithy/sdk/shapes:define-enum replication-status-type
    common-lisp:nil
  (:replicating "REPLICATING")
  (:completed "COMPLETED"))

(smithy/sdk/shapes:define-list replication-statuses :member replication-status)

(smithy/sdk/shapes:define-error resource-not-found-exception common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "Message"))
                                (:shape-name "ResourceNotFoundException")
                                (:error-code 404)
                                (:base-class gameliftstreams-error))

(smithy/sdk/shapes:define-structure runtime-environment common-lisp:nil
                                    ((type :target-type
                                      runtime-environment-type :required
                                      common-lisp:t :member-name "Type")
                                     (version :target-type
                                      runtime-environment-version :required
                                      common-lisp:t :member-name "Version"))
                                    (:shape-name "RuntimeEnvironment"))

(smithy/sdk/shapes:define-enum runtime-environment-type
    common-lisp:nil
  (:proton "PROTON")
  (:windows "WINDOWS")
  (:ubuntu "UBUNTU"))

(smithy/sdk/shapes:define-type runtime-environment-version
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error service-quota-exceeded-exception
                                common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "Message"))
                                (:shape-name "ServiceQuotaExceededException")
                                (:error-code 402)
                                (:base-class gameliftstreams-error))

(smithy/sdk/shapes:define-type session-length-seconds
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type signal-request smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type signal-response smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input start-stream-session-input common-lisp:nil
                                ((client-token :target-type client-token
                                  :member-name "ClientToken")
                                 (description :target-type description
                                  :member-name "Description")
                                 (identifier :target-type identifier :required
                                  common-lisp:t :member-name "Identifier"
                                  :http-label common-lisp:t)
                                 (protocol :target-type protocol :required
                                  common-lisp:t :member-name "Protocol")
                                 (signal-request :target-type signal-request
                                  :required common-lisp:t :member-name
                                  "SignalRequest")
                                 (application-identifier :target-type
                                  identifier :required common-lisp:t
                                  :member-name "ApplicationIdentifier")
                                 (user-id :target-type user-id :member-name
                                  "UserId")
                                 (locations :target-type location-list
                                  :member-name "Locations")
                                 (connection-timeout-seconds :target-type
                                  connection-timeout-seconds :member-name
                                  "ConnectionTimeoutSeconds")
                                 (session-length-seconds :target-type
                                  session-length-seconds :member-name
                                  "SessionLengthSeconds")
                                 (additional-launch-args :target-type
                                  game-launch-arg-list :member-name
                                  "AdditionalLaunchArgs")
                                 (additional-environment-variables :target-type
                                  environment-variables :member-name
                                  "AdditionalEnvironmentVariables"))
                                (:shape-name "StartStreamSessionInput"))

(smithy/sdk/shapes:define-output start-stream-session-output common-lisp:nil
                                 ((arn :target-type arn :member-name "Arn")
                                  (description :target-type description
                                   :member-name "Description")
                                  (stream-group-id :target-type id :member-name
                                   "StreamGroupId")
                                  (user-id :target-type user-id :member-name
                                   "UserId")
                                  (status :target-type stream-session-status
                                   :member-name "Status")
                                  (status-reason :target-type
                                   stream-session-status-reason :member-name
                                   "StatusReason")
                                  (protocol :target-type protocol :member-name
                                   "Protocol")
                                  (location :target-type location-name
                                   :member-name "Location")
                                  (signal-request :target-type signal-request
                                   :member-name "SignalRequest")
                                  (signal-response :target-type signal-response
                                   :member-name "SignalResponse")
                                  (connection-timeout-seconds :target-type
                                   connection-timeout-seconds :member-name
                                   "ConnectionTimeoutSeconds")
                                  (session-length-seconds :target-type
                                   session-length-seconds :member-name
                                   "SessionLengthSeconds")
                                  (additional-launch-args :target-type
                                   game-launch-arg-list :member-name
                                   "AdditionalLaunchArgs")
                                  (additional-environment-variables
                                   :target-type environment-variables
                                   :member-name
                                   "AdditionalEnvironmentVariables")
                                  (log-file-location-uri :target-type
                                   file-location-uri :member-name
                                   "LogFileLocationUri")
                                  (web-sdk-protocol-url :target-type
                                   web-sdk-protocol-url :member-name
                                   "WebSdkProtocolUrl")
                                  (last-updated-at :target-type
                                   smithy/sdk/smithy-types:timestamp
                                   :member-name "LastUpdatedAt")
                                  (created-at :target-type
                                   smithy/sdk/smithy-types:timestamp
                                   :member-name "CreatedAt")
                                  (application-arn :target-type arn
                                   :member-name "ApplicationArn")
                                  (export-files-metadata :target-type
                                   export-files-metadata :member-name
                                   "ExportFilesMetadata"))
                                 (:shape-name "StartStreamSessionOutput"))

(smithy/sdk/shapes:define-enum stream-class
    common-lisp:nil
  (:gen4n-high "gen4n_high")
  (:gen4n-ultra "gen4n_ultra")
  (:gen4n-win2022 "gen4n_win2022")
  (:gen5n-high "gen5n_high")
  (:gen5n-ultra "gen5n_ultra")
  (:gen5n-win2022 "gen5n_win2022"))

(smithy/sdk/shapes:define-enum stream-group-location-status
    common-lisp:nil
  (:activating "ACTIVATING")
  (:active "ACTIVE")
  (:error "ERROR")
  (:removing "REMOVING"))

common-lisp:nil

(smithy/sdk/shapes:define-enum stream-group-status
    common-lisp:nil
  (:activating "ACTIVATING")
  (:updating-locations "UPDATING_LOCATIONS")
  (:active "ACTIVE")
  (:active-with-errors "ACTIVE_WITH_ERRORS")
  (:error "ERROR")
  (:deleting "DELETING"))

(smithy/sdk/shapes:define-enum stream-group-status-reason
    common-lisp:nil
  (:internal-error "internalError")
  (:no-available-instances "noAvailableInstances"))

(smithy/sdk/shapes:define-structure stream-group-summary common-lisp:nil
                                    ((arn :target-type identifier :required
                                      common-lisp:t :member-name "Arn")
                                     (id :target-type id :member-name "Id")
                                     (description :target-type description
                                      :member-name "Description")
                                     (default-application :target-type
                                      default-application :member-name
                                      "DefaultApplication")
                                     (stream-class :target-type stream-class
                                      :member-name "StreamClass")
                                     (status :target-type stream-group-status
                                      :member-name "Status")
                                     (created-at :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :member-name "CreatedAt")
                                     (last-updated-at :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :member-name "LastUpdatedAt"))
                                    (:shape-name "StreamGroupSummary"))

(smithy/sdk/shapes:define-list stream-group-summary-list :member
                               stream-group-summary)

(smithy/sdk/shapes:define-enum stream-session-status
    common-lisp:nil
  (:activating "ACTIVATING")
  (:active "ACTIVE")
  (:connected "CONNECTED")
  (:pending-client-reconnection "PENDING_CLIENT_RECONNECTION")
  (:reconnecting "RECONNECTING")
  (:terminating "TERMINATING")
  (:terminated "TERMINATED")
  (:error "ERROR"))

(smithy/sdk/shapes:define-enum stream-session-status-reason
    common-lisp:nil
  (:internal-error "internalError")
  (:invalid-signal-request "invalidSignalRequest")
  (:placement-timeout "placementTimeout")
  (:app-log-s3-destination-error "applicationLogS3DestinationError"))

(smithy/sdk/shapes:define-structure stream-session-summary common-lisp:nil
                                    ((arn :target-type arn :member-name "Arn")
                                     (user-id :target-type user-id :member-name
                                      "UserId")
                                     (status :target-type stream-session-status
                                      :member-name "Status")
                                     (protocol :target-type protocol
                                      :member-name "Protocol")
                                     (last-updated-at :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :member-name "LastUpdatedAt")
                                     (created-at :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :member-name "CreatedAt")
                                     (application-arn :target-type arn
                                      :member-name "ApplicationArn")
                                     (export-files-metadata :target-type
                                      export-files-metadata :member-name
                                      "ExportFilesMetadata")
                                     (location :target-type location-name
                                      :member-name "Location"))
                                    (:shape-name "StreamSessionSummary"))

(smithy/sdk/shapes:define-list stream-session-summary-list :member
                               stream-session-summary)

(smithy/sdk/shapes:define-type tag-key smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list tag-key-list :member tag-key)

(smithy/sdk/shapes:define-input tag-resource-request common-lisp:nil
                                ((resource-arn :target-type arn :required
                                  common-lisp:t :member-name "ResourceArn"
                                  :http-label common-lisp:t)
                                 (tags :target-type tags :required
                                  common-lisp:t :member-name "Tags"))
                                (:shape-name "TagResourceRequest"))

(smithy/sdk/shapes:define-output tag-resource-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "TagResourceResponse"))

(smithy/sdk/shapes:define-type tag-value smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-map tags :key tag-key :value tag-value)

(smithy/sdk/shapes:define-input terminate-stream-session-input common-lisp:nil
                                ((identifier :target-type identifier :required
                                  common-lisp:t :member-name "Identifier"
                                  :http-label common-lisp:t)
                                 (stream-session-identifier :target-type
                                  identifier :required common-lisp:t
                                  :member-name "StreamSessionIdentifier"
                                  :http-label common-lisp:t))
                                (:shape-name "TerminateStreamSessionInput"))

(smithy/sdk/shapes:define-error throttling-exception common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "Message"))
                                (:shape-name "ThrottlingException")
                                (:error-code 429)
                                (:base-class gameliftstreams-error))

(smithy/sdk/shapes:define-input untag-resource-request common-lisp:nil
                                ((resource-arn :target-type arn :required
                                  common-lisp:t :member-name "ResourceArn"
                                  :http-label common-lisp:t)
                                 (tag-keys :target-type tag-key-list :required
                                  common-lisp:t :member-name "TagKeys"
                                  :http-query "tagKeys"))
                                (:shape-name "UntagResourceRequest"))

(smithy/sdk/shapes:define-output untag-resource-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "UntagResourceResponse"))

(smithy/sdk/shapes:define-input update-application-input common-lisp:nil
                                ((identifier :target-type identifier :required
                                  common-lisp:t :member-name "Identifier"
                                  :http-label common-lisp:t)
                                 (description :target-type description
                                  :member-name "Description")
                                 (application-log-paths :target-type file-paths
                                  :member-name "ApplicationLogPaths")
                                 (application-log-output-uri :target-type
                                  application-log-output-uri :member-name
                                  "ApplicationLogOutputUri"))
                                (:shape-name "UpdateApplicationInput"))

(smithy/sdk/shapes:define-output update-application-output common-lisp:nil
                                 ((arn :target-type identifier :required
                                   common-lisp:t :member-name "Arn")
                                  (description :target-type description
                                   :member-name "Description")
                                  (runtime-environment :target-type
                                   runtime-environment :member-name
                                   "RuntimeEnvironment")
                                  (executable-path :target-type executable-path
                                   :member-name "ExecutablePath")
                                  (application-log-paths :target-type
                                   file-paths :member-name
                                   "ApplicationLogPaths")
                                  (application-log-output-uri :target-type
                                   application-log-output-uri :member-name
                                   "ApplicationLogOutputUri")
                                  (application-source-uri :target-type
                                   application-source-uri :member-name
                                   "ApplicationSourceUri")
                                  (id :target-type id :member-name "Id")
                                  (status :target-type application-status
                                   :member-name "Status")
                                  (status-reason :target-type
                                   application-status-reason :member-name
                                   "StatusReason")
                                  (replication-statuses :target-type
                                   replication-statuses :member-name
                                   "ReplicationStatuses")
                                  (created-at :target-type
                                   smithy/sdk/smithy-types:timestamp
                                   :member-name "CreatedAt")
                                  (last-updated-at :target-type
                                   smithy/sdk/smithy-types:timestamp
                                   :member-name "LastUpdatedAt")
                                  (associated-stream-groups :target-type
                                   arn-list :member-name
                                   "AssociatedStreamGroups"))
                                 (:shape-name "UpdateApplicationOutput"))

(smithy/sdk/shapes:define-input update-stream-group-input common-lisp:nil
                                ((identifier :target-type identifier :required
                                  common-lisp:t :member-name "Identifier"
                                  :http-label common-lisp:t)
                                 (location-configurations :target-type
                                  location-configurations :member-name
                                  "LocationConfigurations")
                                 (description :target-type description
                                  :member-name "Description"))
                                (:shape-name "UpdateStreamGroupInput"))

(smithy/sdk/shapes:define-output update-stream-group-output common-lisp:nil
                                 ((arn :target-type identifier :required
                                   common-lisp:t :member-name "Arn")
                                  (description :target-type description
                                   :member-name "Description")
                                  (default-application :target-type
                                   default-application :member-name
                                   "DefaultApplication")
                                  (location-states :target-type location-states
                                   :member-name "LocationStates")
                                  (stream-class :target-type stream-class
                                   :member-name "StreamClass")
                                  (id :target-type id :member-name "Id")
                                  (status :target-type stream-group-status
                                   :member-name "Status")
                                  (status-reason :target-type
                                   stream-group-status-reason :member-name
                                   "StatusReason")
                                  (last-updated-at :target-type
                                   smithy/sdk/smithy-types:timestamp
                                   :member-name "LastUpdatedAt")
                                  (created-at :target-type
                                   smithy/sdk/smithy-types:timestamp
                                   :member-name "CreatedAt")
                                  (associated-applications :target-type
                                   arn-list :member-name
                                   "AssociatedApplications"))
                                 (:shape-name "UpdateStreamGroupOutput"))

(smithy/sdk/shapes:define-type user-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error validation-exception common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "Message"))
                                (:shape-name "ValidationException")
                                (:error-code 400)
                                (:base-class gameliftstreams-error))

(smithy/sdk/shapes:define-type web-sdk-protocol-url
                               smithy/sdk/smithy-types:string)

(smithy/sdk/operation:define-operation add-stream-group-locations :shape-name
                                       "AddStreamGroupLocations" :input
                                       add-stream-group-locations-input :output
                                       add-stream-group-locations-output
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/streamgroups/{Identifier}/locations"
                                       :code 200)

(smithy/sdk/operation:define-operation associate-applications :shape-name
                                       "AssociateApplications" :input
                                       associate-applications-input :output
                                       associate-applications-output :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/streamgroups/{Identifier}/associations"
                                       :code 200)

(smithy/sdk/operation:define-operation create-application :shape-name
                                       "CreateApplication" :input
                                       create-application-input :output
                                       create-application-output :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri "/applications"
                                       :code 201)

(smithy/sdk/operation:define-operation create-stream-group :shape-name
                                       "CreateStreamGroup" :input
                                       create-stream-group-input :output
                                       create-stream-group-output :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri "/streamgroups"
                                       :code 201)

(smithy/sdk/operation:define-operation create-stream-session-connection
                                       :shape-name
                                       "CreateStreamSessionConnection" :input
                                       create-stream-session-connection-input
                                       :output
                                       create-stream-session-connection-output
                                       :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/streamgroups/{Identifier}/streamsessions/{StreamSessionIdentifier}/connections"
                                       :code 200)

(smithy/sdk/operation:define-operation delete-application :shape-name
                                       "DeleteApplication" :input
                                       delete-application-input :output
                                       common-lisp:null :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "DELETE" :uri
                                       "/applications/{Identifier}" :code 204)

(smithy/sdk/operation:define-operation delete-stream-group :shape-name
                                       "DeleteStreamGroup" :input
                                       delete-stream-group-input :output
                                       common-lisp:null :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "DELETE" :uri
                                       "/streamgroups/{Identifier}" :code 204)

(smithy/sdk/operation:define-operation disassociate-applications :shape-name
                                       "DisassociateApplications" :input
                                       disassociate-applications-input :output
                                       disassociate-applications-output :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/streamgroups/{Identifier}/disassociations"
                                       :code 200)

(smithy/sdk/operation:define-operation export-stream-session-files :shape-name
                                       "ExportStreamSessionFiles" :input
                                       export-stream-session-files-input
                                       :output
                                       export-stream-session-files-output
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "PUT" :uri
                                       "/streamgroups/{Identifier}/streamsessions/{StreamSessionIdentifier}/exportfiles"
                                       :code 200)

(smithy/sdk/operation:define-operation get-application :shape-name
                                       "GetApplication" :input
                                       get-application-input :output
                                       get-application-output :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/applications/{Identifier}" :code 200)

(smithy/sdk/operation:define-operation get-stream-group :shape-name
                                       "GetStreamGroup" :input
                                       get-stream-group-input :output
                                       get-stream-group-output :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/streamgroups/{Identifier}" :code 200)

(smithy/sdk/operation:define-operation get-stream-session :shape-name
                                       "GetStreamSession" :input
                                       get-stream-session-input :output
                                       get-stream-session-output :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/streamgroups/{Identifier}/streamsessions/{StreamSessionIdentifier}"
                                       :code 200)

(smithy/sdk/operation:define-operation list-applications :shape-name
                                       "ListApplications" :input
                                       list-applications-input :output
                                       list-applications-output :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri "/applications" :code
                                       200)

(smithy/sdk/operation:define-operation list-stream-groups :shape-name
                                       "ListStreamGroups" :input
                                       list-stream-groups-input :output
                                       list-stream-groups-output :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri "/streamgroups" :code
                                       200)

(smithy/sdk/operation:define-operation list-stream-sessions :shape-name
                                       "ListStreamSessions" :input
                                       list-stream-sessions-input :output
                                       list-stream-sessions-output :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/streamgroups/{Identifier}/streamsessions"
                                       :code 200)

(smithy/sdk/operation:define-operation list-stream-sessions-by-account
                                       :shape-name
                                       "ListStreamSessionsByAccount" :input
                                       list-stream-sessions-by-account-input
                                       :output
                                       list-stream-sessions-by-account-output
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri "/streamsessions"
                                       :code 200)

(smithy/sdk/operation:define-operation list-tags-for-resource :shape-name
                                       "ListTagsForResource" :input
                                       list-tags-for-resource-request :output
                                       list-tags-for-resource-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri "/tags/{ResourceArn}")

(smithy/sdk/operation:define-operation remove-stream-group-locations
                                       :shape-name "RemoveStreamGroupLocations"
                                       :input
                                       remove-stream-group-locations-input
                                       :output common-lisp:null :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "DELETE" :uri
                                       "/streamgroups/{Identifier}/locations"
                                       :code 204)

(smithy/sdk/operation:define-operation start-stream-session :shape-name
                                       "StartStreamSession" :input
                                       start-stream-session-input :output
                                       start-stream-session-output :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/streamgroups/{Identifier}/streamsessions"
                                       :code 201)

(smithy/sdk/operation:define-operation tag-resource :shape-name "TagResource"
                                       :input tag-resource-request :output
                                       tag-resource-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/tags/{ResourceArn}")

(smithy/sdk/operation:define-operation terminate-stream-session :shape-name
                                       "TerminateStreamSession" :input
                                       terminate-stream-session-input :output
                                       common-lisp:null :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "DELETE" :uri
                                       "/streamgroups/{Identifier}/streamsessions/{StreamSessionIdentifier}"
                                       :code 204)

(smithy/sdk/operation:define-operation untag-resource :shape-name
                                       "UntagResource" :input
                                       untag-resource-request :output
                                       untag-resource-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "DELETE" :uri
                                       "/tags/{ResourceArn}")

(smithy/sdk/operation:define-operation update-application :shape-name
                                       "UpdateApplication" :input
                                       update-application-input :output
                                       update-application-output :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "PATCH" :uri
                                       "/applications/{Identifier}" :code 200)

(smithy/sdk/operation:define-operation update-stream-group :shape-name
                                       "UpdateStreamGroup" :input
                                       update-stream-group-input :output
                                       update-stream-group-output :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "PATCH" :uri
                                       "/streamgroups/{Identifier}" :code 200)
