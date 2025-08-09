(uiop/package:define-package #:pira/appintegrations (:use)
                             (:export #:amazon-app-integration-service
                              #:application-approved-origins
                              #:application-association-summary
                              #:application-associations-list
                              #:application-config #:application-name
                              #:application-namespace
                              #:application-source-config #:application-summary
                              #:application-trusted-source #:applications-list
                              #:arn #:arn-or-uuid #:boolean
                              #:client-association-metadata #:client-id
                              #:contact-handling #:contact-handling-scope
                              #:create-application #:create-data-integration
                              #:create-data-integration-association
                              #:create-event-integration
                              #:data-integration-association-summary
                              #:data-integration-associations-list
                              #:data-integration-summary
                              #:data-integrations-list #:delete-application
                              #:delete-data-integration
                              #:delete-event-integration #:description
                              #:destination-uri #:event-bridge-bus
                              #:event-bridge-rule-name
                              #:event-definition-schema #:event-filter
                              #:event-integration
                              #:event-integration-association
                              #:event-integration-associations-list
                              #:event-integrations-list #:event-name
                              #:execution-configuration #:execution-mode
                              #:execution-status #:external-url-config #:fields
                              #:fields-list #:fields-map #:file-configuration
                              #:folder-list #:get-application
                              #:get-data-integration #:get-event-integration
                              #:idempotency-token #:identifier #:iframe-config
                              #:iframe-permission #:iframe-permission-list
                              #:initialization-timeout #:last-execution-status
                              #:list-application-associations
                              #:list-applications
                              #:list-data-integration-associations
                              #:list-data-integrations
                              #:list-event-integration-associations
                              #:list-event-integrations
                              #:list-tags-for-resource #:max-results #:message
                              #:name #:next-token #:non-blank-long-string
                              #:non-blank-string #:object
                              #:object-configuration #:on-demand-configuration
                              #:permission #:permission-list #:publication
                              #:publication-list #:schedule-configuration
                              #:source #:source-uri #:subscription
                              #:subscription-list #:tag-key #:tag-key-list
                              #:tag-map #:tag-resource #:tag-value #:timestamp
                              #:url #:uuid #:untag-resource
                              #:update-application #:update-data-integration
                              #:update-data-integration-association
                              #:update-event-integration))
(common-lisp:in-package #:pira/appintegrations)

(smithy/sdk/service:define-service amazon-app-integration-service :shape-name
                                   "AmazonAppIntegrationService" :version
                                   "2020-07-29" :title
                                   "Amazon AppIntegrations Service" :traits
                                   '(("aws.api#service"
                                      ("sdkId" . "AppIntegrations")
                                      ("arnNamespace" . "app-integrations")
                                      ("cloudFormationName"
                                       . "AppIntegrations")
                                      ("cloudTrailEventSource"
                                       . "app-integrations.amazonaws.com")
                                      ("endpointPrefix" . "app-integrations"))
                                     ("aws.auth#sigv4"
                                      ("name" . "app-integrations"))
                                     ("aws.protocols#restJson1")))

(smithy/sdk/shapes:define-error access-denied-exception common-lisp:nil
                                ((message :target-type message :member-name
                                  "Message"))
                                (:shape-name "AccessDeniedException")
                                (:error-code 403))

(smithy/sdk/shapes:define-list application-approved-origins :member
                               application-trusted-source)

(smithy/sdk/shapes:define-structure application-association-summary
                                    common-lisp:nil
                                    ((application-association-arn :target-type
                                      arn :member-name
                                      "ApplicationAssociationArn")
                                     (application-arn :target-type arn
                                      :member-name "ApplicationArn")
                                     (client-id :target-type client-id
                                      :member-name "ClientId"))
                                    (:shape-name
                                     "ApplicationAssociationSummary"))

(smithy/sdk/shapes:define-list application-associations-list :member
                               application-association-summary)

(smithy/sdk/shapes:define-structure application-config common-lisp:nil
                                    ((contact-handling :target-type
                                      contact-handling :member-name
                                      "ContactHandling"))
                                    (:shape-name "ApplicationConfig"))

(smithy/sdk/shapes:define-type application-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type application-namespace
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure application-source-config common-lisp:nil
                                    ((external-url-config :target-type
                                      external-url-config :member-name
                                      "ExternalUrlConfig"))
                                    (:shape-name "ApplicationSourceConfig"))

(smithy/sdk/shapes:define-structure application-summary common-lisp:nil
                                    ((arn :target-type arn :member-name "Arn")
                                     (id :target-type uuid :member-name "Id")
                                     (name :target-type application-name
                                      :member-name "Name")
                                     (namespace :target-type
                                      application-namespace :member-name
                                      "Namespace")
                                     (created-time :target-type timestamp
                                      :member-name "CreatedTime")
                                     (last-modified-time :target-type timestamp
                                      :member-name "LastModifiedTime")
                                     (is-service :target-type boolean
                                      :member-name "IsService"))
                                    (:shape-name "ApplicationSummary"))

(smithy/sdk/shapes:define-type application-trusted-source
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list applications-list :member application-summary)

(smithy/sdk/shapes:define-type arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type arn-or-uuid smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type boolean smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-map client-association-metadata :key non-blank-string
                              :value non-blank-string)

(smithy/sdk/shapes:define-type client-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure contact-handling common-lisp:nil
                                    ((scope :target-type contact-handling-scope
                                      :member-name "Scope"))
                                    (:shape-name "ContactHandling"))

(smithy/sdk/shapes:define-enum contact-handling-scope
    common-lisp:nil
  (:cross-contacts "CROSS_CONTACTS")
  (:per-contact "PER_CONTACT"))

(smithy/sdk/shapes:define-input create-application-request common-lisp:nil
                                ((name :target-type application-name :required
                                  common-lisp:t :member-name "Name")
                                 (namespace :target-type application-namespace
                                  :required common-lisp:t :member-name
                                  "Namespace")
                                 (description :target-type description
                                  :member-name "Description")
                                 (application-source-config :target-type
                                  application-source-config :required
                                  common-lisp:t :member-name
                                  "ApplicationSourceConfig")
                                 (subscriptions :target-type subscription-list
                                  :member-name "Subscriptions")
                                 (publications :target-type publication-list
                                  :member-name "Publications")
                                 (client-token :target-type idempotency-token
                                  :member-name "ClientToken")
                                 (tags :target-type tag-map :member-name
                                  "Tags")
                                 (permissions :target-type permission-list
                                  :member-name "Permissions")
                                 (is-service :target-type boolean :member-name
                                  "IsService")
                                 (initialization-timeout :target-type
                                  initialization-timeout :member-name
                                  "InitializationTimeout")
                                 (application-config :target-type
                                  application-config :member-name
                                  "ApplicationConfig")
                                 (iframe-config :target-type iframe-config
                                  :member-name "IframeConfig"))
                                (:shape-name "CreateApplicationRequest"))

(smithy/sdk/shapes:define-output create-application-response common-lisp:nil
                                 ((arn :target-type arn :member-name "Arn")
                                  (id :target-type uuid :member-name "Id"))
                                 (:shape-name "CreateApplicationResponse"))

(smithy/sdk/shapes:define-input create-data-integration-association-request
                                common-lisp:nil
                                ((data-integration-identifier :target-type
                                  identifier :required common-lisp:t
                                  :member-name "DataIntegrationIdentifier"
                                  :http-label common-lisp:t)
                                 (client-id :target-type client-id :member-name
                                  "ClientId")
                                 (object-configuration :target-type
                                  object-configuration :member-name
                                  "ObjectConfiguration")
                                 (destination-uri :target-type destination-uri
                                  :member-name "DestinationURI")
                                 (client-association-metadata :target-type
                                  client-association-metadata :member-name
                                  "ClientAssociationMetadata")
                                 (client-token :target-type idempotency-token
                                  :member-name "ClientToken")
                                 (execution-configuration :target-type
                                  execution-configuration :member-name
                                  "ExecutionConfiguration"))
                                (:shape-name
                                 "CreateDataIntegrationAssociationRequest"))

(smithy/sdk/shapes:define-output create-data-integration-association-response
                                 common-lisp:nil
                                 ((data-integration-association-id :target-type
                                   uuid :member-name
                                   "DataIntegrationAssociationId")
                                  (data-integration-arn :target-type arn
                                   :member-name "DataIntegrationArn"))
                                 (:shape-name
                                  "CreateDataIntegrationAssociationResponse"))

(smithy/sdk/shapes:define-input create-data-integration-request common-lisp:nil
                                ((name :target-type name :required
                                  common-lisp:t :member-name "Name")
                                 (description :target-type description
                                  :member-name "Description")
                                 (kms-key :target-type non-blank-string
                                  :required common-lisp:t :member-name
                                  "KmsKey")
                                 (source-uri :target-type source-uri
                                  :member-name "SourceURI")
                                 (schedule-config :target-type
                                  schedule-configuration :member-name
                                  "ScheduleConfig")
                                 (tags :target-type tag-map :member-name
                                  "Tags")
                                 (client-token :target-type idempotency-token
                                  :member-name "ClientToken")
                                 (file-configuration :target-type
                                  file-configuration :member-name
                                  "FileConfiguration")
                                 (object-configuration :target-type
                                  object-configuration :member-name
                                  "ObjectConfiguration"))
                                (:shape-name "CreateDataIntegrationRequest"))

(smithy/sdk/shapes:define-output create-data-integration-response
                                 common-lisp:nil
                                 ((arn :target-type arn :member-name "Arn")
                                  (id :target-type uuid :member-name "Id")
                                  (name :target-type name :member-name "Name")
                                  (description :target-type description
                                   :member-name "Description")
                                  (kms-key :target-type non-blank-string
                                   :member-name "KmsKey")
                                  (source-uri :target-type source-uri
                                   :member-name "SourceURI")
                                  (schedule-configuration :target-type
                                   schedule-configuration :member-name
                                   "ScheduleConfiguration")
                                  (tags :target-type tag-map :member-name
                                   "Tags")
                                  (client-token :target-type idempotency-token
                                   :member-name "ClientToken")
                                  (file-configuration :target-type
                                   file-configuration :member-name
                                   "FileConfiguration")
                                  (object-configuration :target-type
                                   object-configuration :member-name
                                   "ObjectConfiguration"))
                                 (:shape-name "CreateDataIntegrationResponse"))

(smithy/sdk/shapes:define-input create-event-integration-request
                                common-lisp:nil
                                ((name :target-type name :required
                                  common-lisp:t :member-name "Name")
                                 (description :target-type description
                                  :member-name "Description")
                                 (event-filter :target-type event-filter
                                  :required common-lisp:t :member-name
                                  "EventFilter")
                                 (event-bridge-bus :target-type
                                  event-bridge-bus :required common-lisp:t
                                  :member-name "EventBridgeBus")
                                 (client-token :target-type idempotency-token
                                  :member-name "ClientToken")
                                 (tags :target-type tag-map :member-name
                                  "Tags"))
                                (:shape-name "CreateEventIntegrationRequest"))

(smithy/sdk/shapes:define-output create-event-integration-response
                                 common-lisp:nil
                                 ((event-integration-arn :target-type arn
                                   :member-name "EventIntegrationArn"))
                                 (:shape-name "CreateEventIntegrationResponse"))

(smithy/sdk/shapes:define-structure data-integration-association-summary
                                    common-lisp:nil
                                    ((data-integration-association-arn
                                      :target-type arn :member-name
                                      "DataIntegrationAssociationArn")
                                     (data-integration-arn :target-type arn
                                      :member-name "DataIntegrationArn")
                                     (client-id :target-type client-id
                                      :member-name "ClientId")
                                     (destination-uri :target-type
                                      destination-uri :member-name
                                      "DestinationURI")
                                     (last-execution-status :target-type
                                      last-execution-status :member-name
                                      "LastExecutionStatus")
                                     (execution-configuration :target-type
                                      execution-configuration :member-name
                                      "ExecutionConfiguration"))
                                    (:shape-name
                                     "DataIntegrationAssociationSummary"))

(smithy/sdk/shapes:define-list data-integration-associations-list :member
                               data-integration-association-summary)

(smithy/sdk/shapes:define-structure data-integration-summary common-lisp:nil
                                    ((arn :target-type arn :member-name "Arn")
                                     (name :target-type name :member-name
                                      "Name")
                                     (source-uri :target-type source-uri
                                      :member-name "SourceURI"))
                                    (:shape-name "DataIntegrationSummary"))

(smithy/sdk/shapes:define-list data-integrations-list :member
                               data-integration-summary)

(smithy/sdk/shapes:define-input delete-application-request common-lisp:nil
                                ((arn :target-type arn-or-uuid :required
                                  common-lisp:t :member-name "Arn" :http-label
                                  common-lisp:t))
                                (:shape-name "DeleteApplicationRequest"))

(smithy/sdk/shapes:define-output delete-application-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "DeleteApplicationResponse"))

(smithy/sdk/shapes:define-input delete-data-integration-request common-lisp:nil
                                ((data-integration-identifier :target-type
                                  identifier :required common-lisp:t
                                  :member-name "DataIntegrationIdentifier"
                                  :http-label common-lisp:t))
                                (:shape-name "DeleteDataIntegrationRequest"))

(smithy/sdk/shapes:define-output delete-data-integration-response
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name "DeleteDataIntegrationResponse"))

(smithy/sdk/shapes:define-input delete-event-integration-request
                                common-lisp:nil
                                ((name :target-type name :required
                                  common-lisp:t :member-name "Name" :http-label
                                  common-lisp:t))
                                (:shape-name "DeleteEventIntegrationRequest"))

(smithy/sdk/shapes:define-output delete-event-integration-response
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name "DeleteEventIntegrationResponse"))

(smithy/sdk/shapes:define-type description smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type destination-uri smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error duplicate-resource-exception common-lisp:nil
                                ((message :target-type message :member-name
                                  "Message"))
                                (:shape-name "DuplicateResourceException")
                                (:error-code 409))

(smithy/sdk/shapes:define-type event-bridge-bus smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type event-bridge-rule-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type event-definition-schema
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure event-filter common-lisp:nil
                                    ((source :target-type source :required
                                      common-lisp:t :member-name "Source"))
                                    (:shape-name "EventFilter"))

(smithy/sdk/shapes:define-structure event-integration common-lisp:nil
                                    ((event-integration-arn :target-type arn
                                      :member-name "EventIntegrationArn")
                                     (name :target-type name :member-name
                                      "Name")
                                     (description :target-type description
                                      :member-name "Description")
                                     (event-filter :target-type event-filter
                                      :member-name "EventFilter")
                                     (event-bridge-bus :target-type
                                      event-bridge-bus :member-name
                                      "EventBridgeBus")
                                     (tags :target-type tag-map :member-name
                                      "Tags"))
                                    (:shape-name "EventIntegration"))

(smithy/sdk/shapes:define-structure event-integration-association
                                    common-lisp:nil
                                    ((event-integration-association-arn
                                      :target-type arn :member-name
                                      "EventIntegrationAssociationArn")
                                     (event-integration-association-id
                                      :target-type uuid :member-name
                                      "EventIntegrationAssociationId")
                                     (event-integration-name :target-type name
                                      :member-name "EventIntegrationName")
                                     (client-id :target-type client-id
                                      :member-name "ClientId")
                                     (event-bridge-rule-name :target-type
                                      event-bridge-rule-name :member-name
                                      "EventBridgeRuleName")
                                     (client-association-metadata :target-type
                                      client-association-metadata :member-name
                                      "ClientAssociationMetadata"))
                                    (:shape-name "EventIntegrationAssociation"))

(smithy/sdk/shapes:define-list event-integration-associations-list :member
                               event-integration-association)

(smithy/sdk/shapes:define-list event-integrations-list :member
                               event-integration)

(smithy/sdk/shapes:define-type event-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure execution-configuration common-lisp:nil
                                    ((execution-mode :target-type
                                      execution-mode :required common-lisp:t
                                      :member-name "ExecutionMode")
                                     (on-demand-configuration :target-type
                                      on-demand-configuration :member-name
                                      "OnDemandConfiguration")
                                     (schedule-configuration :target-type
                                      schedule-configuration :member-name
                                      "ScheduleConfiguration"))
                                    (:shape-name "ExecutionConfiguration"))

(smithy/sdk/shapes:define-enum execution-mode
    common-lisp:nil
  (:on-demand "ON_DEMAND")
  (:scheduled "SCHEDULED"))

(smithy/sdk/shapes:define-enum execution-status
    common-lisp:nil
  (:completed "COMPLETED")
  (:in-progress "IN_PROGRESS")
  (:failed "FAILED"))

(smithy/sdk/shapes:define-structure external-url-config common-lisp:nil
                                    ((access-url :target-type url :required
                                      common-lisp:t :member-name "AccessUrl")
                                     (approved-origins :target-type
                                      application-approved-origins :member-name
                                      "ApprovedOrigins"))
                                    (:shape-name "ExternalUrlConfig"))

(smithy/sdk/shapes:define-type fields smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list fields-list :member fields)

(smithy/sdk/shapes:define-map fields-map :key non-blank-string :value
                              fields-list)

(smithy/sdk/shapes:define-structure file-configuration common-lisp:nil
                                    ((folders :target-type folder-list
                                      :required common-lisp:t :member-name
                                      "Folders")
                                     (filters :target-type fields-map
                                      :member-name "Filters"))
                                    (:shape-name "FileConfiguration"))

(smithy/sdk/shapes:define-list folder-list :member non-blank-long-string)

(smithy/sdk/shapes:define-input get-application-request common-lisp:nil
                                ((arn :target-type arn-or-uuid :required
                                  common-lisp:t :member-name "Arn" :http-label
                                  common-lisp:t))
                                (:shape-name "GetApplicationRequest"))

(smithy/sdk/shapes:define-output get-application-response common-lisp:nil
                                 ((arn :target-type arn :member-name "Arn")
                                  (id :target-type uuid :member-name "Id")
                                  (name :target-type application-name
                                   :member-name "Name")
                                  (namespace :target-type application-namespace
                                   :member-name "Namespace")
                                  (description :target-type description
                                   :member-name "Description")
                                  (application-source-config :target-type
                                   application-source-config :member-name
                                   "ApplicationSourceConfig")
                                  (subscriptions :target-type subscription-list
                                   :member-name "Subscriptions")
                                  (publications :target-type publication-list
                                   :member-name "Publications")
                                  (created-time :target-type timestamp
                                   :member-name "CreatedTime")
                                  (last-modified-time :target-type timestamp
                                   :member-name "LastModifiedTime")
                                  (tags :target-type tag-map :member-name
                                   "Tags")
                                  (permissions :target-type permission-list
                                   :member-name "Permissions")
                                  (is-service :target-type boolean :member-name
                                   "IsService")
                                  (initialization-timeout :target-type
                                   initialization-timeout :member-name
                                   "InitializationTimeout")
                                  (application-config :target-type
                                   application-config :member-name
                                   "ApplicationConfig")
                                  (iframe-config :target-type iframe-config
                                   :member-name "IframeConfig"))
                                 (:shape-name "GetApplicationResponse"))

(smithy/sdk/shapes:define-input get-data-integration-request common-lisp:nil
                                ((identifier :target-type identifier :required
                                  common-lisp:t :member-name "Identifier"
                                  :http-label common-lisp:t))
                                (:shape-name "GetDataIntegrationRequest"))

(smithy/sdk/shapes:define-output get-data-integration-response common-lisp:nil
                                 ((arn :target-type arn :member-name "Arn")
                                  (id :target-type uuid :member-name "Id")
                                  (name :target-type name :member-name "Name")
                                  (description :target-type description
                                   :member-name "Description")
                                  (kms-key :target-type non-blank-string
                                   :member-name "KmsKey")
                                  (source-uri :target-type source-uri
                                   :member-name "SourceURI")
                                  (schedule-configuration :target-type
                                   schedule-configuration :member-name
                                   "ScheduleConfiguration")
                                  (tags :target-type tag-map :member-name
                                   "Tags")
                                  (file-configuration :target-type
                                   file-configuration :member-name
                                   "FileConfiguration")
                                  (object-configuration :target-type
                                   object-configuration :member-name
                                   "ObjectConfiguration"))
                                 (:shape-name "GetDataIntegrationResponse"))

(smithy/sdk/shapes:define-input get-event-integration-request common-lisp:nil
                                ((name :target-type name :required
                                  common-lisp:t :member-name "Name" :http-label
                                  common-lisp:t))
                                (:shape-name "GetEventIntegrationRequest"))

(smithy/sdk/shapes:define-output get-event-integration-response common-lisp:nil
                                 ((name :target-type name :member-name "Name")
                                  (description :target-type description
                                   :member-name "Description")
                                  (event-integration-arn :target-type arn
                                   :member-name "EventIntegrationArn")
                                  (event-bridge-bus :target-type
                                   event-bridge-bus :member-name
                                   "EventBridgeBus")
                                  (event-filter :target-type event-filter
                                   :member-name "EventFilter")
                                  (tags :target-type tag-map :member-name
                                   "Tags"))
                                 (:shape-name "GetEventIntegrationResponse"))

(smithy/sdk/shapes:define-type idempotency-token smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type identifier smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure iframe-config common-lisp:nil
                                    ((allow :target-type iframe-permission-list
                                      :member-name "Allow")
                                     (sandbox :target-type
                                      iframe-permission-list :member-name
                                      "Sandbox"))
                                    (:shape-name "IframeConfig"))

(smithy/sdk/shapes:define-type iframe-permission smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list iframe-permission-list :member iframe-permission)

(smithy/sdk/shapes:define-type initialization-timeout
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-error internal-service-error common-lisp:nil
                                ((message :target-type message :member-name
                                  "Message"))
                                (:shape-name "InternalServiceError")
                                (:error-code 500))

(smithy/sdk/shapes:define-error invalid-request-exception common-lisp:nil
                                ((message :target-type message :member-name
                                  "Message"))
                                (:shape-name "InvalidRequestException")
                                (:error-code 400))

(smithy/sdk/shapes:define-structure last-execution-status common-lisp:nil
                                    ((execution-status :target-type
                                      execution-status :member-name
                                      "ExecutionStatus")
                                     (status-message :target-type
                                      non-blank-string :member-name
                                      "StatusMessage"))
                                    (:shape-name "LastExecutionStatus"))

(smithy/sdk/shapes:define-input list-application-associations-request
                                common-lisp:nil
                                ((application-id :target-type arn-or-uuid
                                  :required common-lisp:t :member-name
                                  "ApplicationId" :http-label common-lisp:t)
                                 (next-token :target-type next-token
                                  :member-name "NextToken" :http-query
                                  "nextToken")
                                 (max-results :target-type max-results
                                  :member-name "MaxResults" :http-query
                                  "maxResults"))
                                (:shape-name
                                 "ListApplicationAssociationsRequest"))

(smithy/sdk/shapes:define-output list-application-associations-response
                                 common-lisp:nil
                                 ((application-associations :target-type
                                   application-associations-list :member-name
                                   "ApplicationAssociations")
                                  (next-token :target-type next-token
                                   :member-name "NextToken"))
                                 (:shape-name
                                  "ListApplicationAssociationsResponse"))

(smithy/sdk/shapes:define-input list-applications-request common-lisp:nil
                                ((next-token :target-type next-token
                                  :member-name "NextToken" :http-query
                                  "nextToken")
                                 (max-results :target-type max-results
                                  :member-name "MaxResults" :http-query
                                  "maxResults"))
                                (:shape-name "ListApplicationsRequest"))

(smithy/sdk/shapes:define-output list-applications-response common-lisp:nil
                                 ((applications :target-type applications-list
                                   :member-name "Applications")
                                  (next-token :target-type next-token
                                   :member-name "NextToken"))
                                 (:shape-name "ListApplicationsResponse"))

(smithy/sdk/shapes:define-input list-data-integration-associations-request
                                common-lisp:nil
                                ((data-integration-identifier :target-type
                                  identifier :required common-lisp:t
                                  :member-name "DataIntegrationIdentifier"
                                  :http-label common-lisp:t)
                                 (next-token :target-type next-token
                                  :member-name "NextToken" :http-query
                                  "nextToken")
                                 (max-results :target-type max-results
                                  :member-name "MaxResults" :http-query
                                  "maxResults"))
                                (:shape-name
                                 "ListDataIntegrationAssociationsRequest"))

(smithy/sdk/shapes:define-output list-data-integration-associations-response
                                 common-lisp:nil
                                 ((data-integration-associations :target-type
                                   data-integration-associations-list
                                   :member-name "DataIntegrationAssociations")
                                  (next-token :target-type next-token
                                   :member-name "NextToken"))
                                 (:shape-name
                                  "ListDataIntegrationAssociationsResponse"))

(smithy/sdk/shapes:define-input list-data-integrations-request common-lisp:nil
                                ((next-token :target-type next-token
                                  :member-name "NextToken" :http-query
                                  "nextToken")
                                 (max-results :target-type max-results
                                  :member-name "MaxResults" :http-query
                                  "maxResults"))
                                (:shape-name "ListDataIntegrationsRequest"))

(smithy/sdk/shapes:define-output list-data-integrations-response
                                 common-lisp:nil
                                 ((data-integrations :target-type
                                   data-integrations-list :member-name
                                   "DataIntegrations")
                                  (next-token :target-type next-token
                                   :member-name "NextToken"))
                                 (:shape-name "ListDataIntegrationsResponse"))

(smithy/sdk/shapes:define-input list-event-integration-associations-request
                                common-lisp:nil
                                ((event-integration-name :target-type name
                                  :required common-lisp:t :member-name
                                  "EventIntegrationName" :http-label
                                  common-lisp:t)
                                 (next-token :target-type next-token
                                  :member-name "NextToken" :http-query
                                  "nextToken")
                                 (max-results :target-type max-results
                                  :member-name "MaxResults" :http-query
                                  "maxResults"))
                                (:shape-name
                                 "ListEventIntegrationAssociationsRequest"))

(smithy/sdk/shapes:define-output list-event-integration-associations-response
                                 common-lisp:nil
                                 ((event-integration-associations :target-type
                                   event-integration-associations-list
                                   :member-name "EventIntegrationAssociations")
                                  (next-token :target-type next-token
                                   :member-name "NextToken"))
                                 (:shape-name
                                  "ListEventIntegrationAssociationsResponse"))

(smithy/sdk/shapes:define-input list-event-integrations-request common-lisp:nil
                                ((next-token :target-type next-token
                                  :member-name "NextToken" :http-query
                                  "nextToken")
                                 (max-results :target-type max-results
                                  :member-name "MaxResults" :http-query
                                  "maxResults"))
                                (:shape-name "ListEventIntegrationsRequest"))

(smithy/sdk/shapes:define-output list-event-integrations-response
                                 common-lisp:nil
                                 ((event-integrations :target-type
                                   event-integrations-list :member-name
                                   "EventIntegrations")
                                  (next-token :target-type next-token
                                   :member-name "NextToken"))
                                 (:shape-name "ListEventIntegrationsResponse"))

(smithy/sdk/shapes:define-input list-tags-for-resource-request common-lisp:nil
                                ((resource-arn :target-type arn :required
                                  common-lisp:t :member-name "resourceArn"
                                  :http-label common-lisp:t))
                                (:shape-name "ListTagsForResourceRequest"))

(smithy/sdk/shapes:define-output list-tags-for-resource-response
                                 common-lisp:nil
                                 ((tags :target-type tag-map :member-name
                                   "tags"))
                                 (:shape-name "ListTagsForResourceResponse"))

(smithy/sdk/shapes:define-type max-results smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type message smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type next-token smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type non-blank-long-string
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type non-blank-string smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type object smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-map object-configuration :key non-blank-string :value
                              fields-map)

(smithy/sdk/shapes:define-structure on-demand-configuration common-lisp:nil
                                    ((start-time :target-type non-blank-string
                                      :required common-lisp:t :member-name
                                      "StartTime")
                                     (end-time :target-type non-blank-string
                                      :member-name "EndTime"))
                                    (:shape-name "OnDemandConfiguration"))

(smithy/sdk/shapes:define-type permission smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list permission-list :member permission)

(smithy/sdk/shapes:define-structure publication common-lisp:nil
                                    ((event :target-type event-name :required
                                      common-lisp:t :member-name "Event")
                                     (schema :target-type
                                      event-definition-schema :required
                                      common-lisp:t :member-name "Schema")
                                     (description :target-type description
                                      :member-name "Description"))
                                    (:shape-name "Publication"))

(smithy/sdk/shapes:define-list publication-list :member publication)

(smithy/sdk/shapes:define-error resource-not-found-exception common-lisp:nil
                                ((message :target-type message :member-name
                                  "Message"))
                                (:shape-name "ResourceNotFoundException")
                                (:error-code 404))

(smithy/sdk/shapes:define-error resource-quota-exceeded-exception
                                common-lisp:nil
                                ((message :target-type message :member-name
                                  "Message"))
                                (:shape-name "ResourceQuotaExceededException")
                                (:error-code 429))

(smithy/sdk/shapes:define-structure schedule-configuration common-lisp:nil
                                    ((first-execution-from :target-type
                                      non-blank-string :member-name
                                      "FirstExecutionFrom")
                                     (object :target-type object :member-name
                                      "Object")
                                     (schedule-expression :target-type
                                      non-blank-string :required common-lisp:t
                                      :member-name "ScheduleExpression"))
                                    (:shape-name "ScheduleConfiguration"))

(smithy/sdk/shapes:define-type source smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type source-uri smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure subscription common-lisp:nil
                                    ((event :target-type event-name :required
                                      common-lisp:t :member-name "Event")
                                     (description :target-type description
                                      :member-name "Description"))
                                    (:shape-name "Subscription"))

(smithy/sdk/shapes:define-list subscription-list :member subscription)

(smithy/sdk/shapes:define-type tag-key smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list tag-key-list :member tag-key)

(smithy/sdk/shapes:define-map tag-map :key tag-key :value tag-value)

(smithy/sdk/shapes:define-input tag-resource-request common-lisp:nil
                                ((resource-arn :target-type arn :required
                                  common-lisp:t :member-name "resourceArn"
                                  :http-label common-lisp:t)
                                 (tags :target-type tag-map :required
                                  common-lisp:t :member-name "tags"))
                                (:shape-name "TagResourceRequest"))

(smithy/sdk/shapes:define-output tag-resource-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "TagResourceResponse"))

(smithy/sdk/shapes:define-type tag-value smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error throttling-exception common-lisp:nil
                                ((message :target-type message :member-name
                                  "Message"))
                                (:shape-name "ThrottlingException")
                                (:error-code 429))

(smithy/sdk/shapes:define-type timestamp smithy/sdk/smithy-types:timestamp)

(smithy/sdk/shapes:define-type url smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type uuid smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error unsupported-operation-exception common-lisp:nil
                                ((message :target-type message :member-name
                                  "Message"))
                                (:shape-name "UnsupportedOperationException")
                                (:error-code 400))

(smithy/sdk/shapes:define-input untag-resource-request common-lisp:nil
                                ((resource-arn :target-type arn :required
                                  common-lisp:t :member-name "resourceArn"
                                  :http-label common-lisp:t)
                                 (tag-keys :target-type tag-key-list :required
                                  common-lisp:t :member-name "tagKeys"
                                  :http-query "tagKeys"))
                                (:shape-name "UntagResourceRequest"))

(smithy/sdk/shapes:define-output untag-resource-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "UntagResourceResponse"))

(smithy/sdk/shapes:define-input update-application-request common-lisp:nil
                                ((arn :target-type arn-or-uuid :required
                                  common-lisp:t :member-name "Arn" :http-label
                                  common-lisp:t)
                                 (name :target-type application-name
                                  :member-name "Name")
                                 (description :target-type description
                                  :member-name "Description")
                                 (application-source-config :target-type
                                  application-source-config :member-name
                                  "ApplicationSourceConfig")
                                 (subscriptions :target-type subscription-list
                                  :member-name "Subscriptions")
                                 (publications :target-type publication-list
                                  :member-name "Publications")
                                 (permissions :target-type permission-list
                                  :member-name "Permissions")
                                 (is-service :target-type boolean :member-name
                                  "IsService")
                                 (initialization-timeout :target-type
                                  initialization-timeout :member-name
                                  "InitializationTimeout")
                                 (application-config :target-type
                                  application-config :member-name
                                  "ApplicationConfig")
                                 (iframe-config :target-type iframe-config
                                  :member-name "IframeConfig"))
                                (:shape-name "UpdateApplicationRequest"))

(smithy/sdk/shapes:define-output update-application-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "UpdateApplicationResponse"))

(smithy/sdk/shapes:define-input update-data-integration-association-request
                                common-lisp:nil
                                ((data-integration-identifier :target-type
                                  identifier :required common-lisp:t
                                  :member-name "DataIntegrationIdentifier"
                                  :http-label common-lisp:t)
                                 (data-integration-association-identifier
                                  :target-type identifier :required
                                  common-lisp:t :member-name
                                  "DataIntegrationAssociationIdentifier"
                                  :http-label common-lisp:t)
                                 (execution-configuration :target-type
                                  execution-configuration :required
                                  common-lisp:t :member-name
                                  "ExecutionConfiguration"))
                                (:shape-name
                                 "UpdateDataIntegrationAssociationRequest"))

(smithy/sdk/shapes:define-output update-data-integration-association-response
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name
                                  "UpdateDataIntegrationAssociationResponse"))

(smithy/sdk/shapes:define-input update-data-integration-request common-lisp:nil
                                ((identifier :target-type identifier :required
                                  common-lisp:t :member-name "Identifier"
                                  :http-label common-lisp:t)
                                 (name :target-type name :member-name "Name")
                                 (description :target-type description
                                  :member-name "Description"))
                                (:shape-name "UpdateDataIntegrationRequest"))

(smithy/sdk/shapes:define-output update-data-integration-response
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name "UpdateDataIntegrationResponse"))

(smithy/sdk/shapes:define-input update-event-integration-request
                                common-lisp:nil
                                ((name :target-type name :required
                                  common-lisp:t :member-name "Name" :http-label
                                  common-lisp:t)
                                 (description :target-type description
                                  :member-name "Description"))
                                (:shape-name "UpdateEventIntegrationRequest"))

(smithy/sdk/shapes:define-output update-event-integration-response
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name "UpdateEventIntegrationResponse"))

(smithy/sdk/operation:define-operation create-application :shape-name
                                       "CreateApplication" :input
                                       create-application-request :output
                                       create-application-response :errors
                                       (access-denied-exception
                                        duplicate-resource-exception
                                        internal-service-error
                                        invalid-request-exception
                                        resource-quota-exceeded-exception
                                        throttling-exception
                                        unsupported-operation-exception)
                                       :method "POST" :uri "/applications"
                                       :code 200)

(smithy/sdk/operation:define-operation create-data-integration :shape-name
                                       "CreateDataIntegration" :input
                                       create-data-integration-request :output
                                       create-data-integration-response :errors
                                       (access-denied-exception
                                        duplicate-resource-exception
                                        internal-service-error
                                        invalid-request-exception
                                        resource-quota-exceeded-exception
                                        throttling-exception)
                                       :method "POST" :uri "/dataIntegrations"
                                       :code 200)

(smithy/sdk/operation:define-operation create-data-integration-association
                                       :shape-name
                                       "CreateDataIntegrationAssociation"
                                       :input
                                       create-data-integration-association-request
                                       :output
                                       create-data-integration-association-response
                                       :errors
                                       (access-denied-exception
                                        internal-service-error
                                        invalid-request-exception
                                        resource-not-found-exception
                                        resource-quota-exceeded-exception
                                        throttling-exception)
                                       :method "POST" :uri
                                       "/dataIntegrations/{DataIntegrationIdentifier}/associations"
                                       :code 200)

(smithy/sdk/operation:define-operation create-event-integration :shape-name
                                       "CreateEventIntegration" :input
                                       create-event-integration-request :output
                                       create-event-integration-response
                                       :errors
                                       (access-denied-exception
                                        duplicate-resource-exception
                                        internal-service-error
                                        invalid-request-exception
                                        resource-quota-exceeded-exception
                                        throttling-exception)
                                       :method "POST" :uri "/eventIntegrations"
                                       :code 200)

(smithy/sdk/operation:define-operation delete-application :shape-name
                                       "DeleteApplication" :input
                                       delete-application-request :output
                                       delete-application-response :errors
                                       (access-denied-exception
                                        internal-service-error
                                        invalid-request-exception
                                        resource-not-found-exception
                                        throttling-exception)
                                       :method "DELETE" :uri
                                       "/applications/{Arn}" :code 200)

(smithy/sdk/operation:define-operation delete-data-integration :shape-name
                                       "DeleteDataIntegration" :input
                                       delete-data-integration-request :output
                                       delete-data-integration-response :errors
                                       (access-denied-exception
                                        internal-service-error
                                        invalid-request-exception
                                        resource-not-found-exception
                                        throttling-exception)
                                       :method "DELETE" :uri
                                       "/dataIntegrations/{DataIntegrationIdentifier}"
                                       :code 200)

(smithy/sdk/operation:define-operation delete-event-integration :shape-name
                                       "DeleteEventIntegration" :input
                                       delete-event-integration-request :output
                                       delete-event-integration-response
                                       :errors
                                       (access-denied-exception
                                        internal-service-error
                                        invalid-request-exception
                                        resource-not-found-exception
                                        throttling-exception)
                                       :method "DELETE" :uri
                                       "/eventIntegrations/{Name}" :code 200)

(smithy/sdk/operation:define-operation get-application :shape-name
                                       "GetApplication" :input
                                       get-application-request :output
                                       get-application-response :errors
                                       (access-denied-exception
                                        internal-service-error
                                        invalid-request-exception
                                        resource-not-found-exception
                                        throttling-exception)
                                       :method "GET" :uri "/applications/{Arn}"
                                       :code 200)

(smithy/sdk/operation:define-operation get-data-integration :shape-name
                                       "GetDataIntegration" :input
                                       get-data-integration-request :output
                                       get-data-integration-response :errors
                                       (access-denied-exception
                                        internal-service-error
                                        invalid-request-exception
                                        resource-not-found-exception
                                        throttling-exception)
                                       :method "GET" :uri
                                       "/dataIntegrations/{Identifier}" :code
                                       200)

(smithy/sdk/operation:define-operation get-event-integration :shape-name
                                       "GetEventIntegration" :input
                                       get-event-integration-request :output
                                       get-event-integration-response :errors
                                       (access-denied-exception
                                        internal-service-error
                                        invalid-request-exception
                                        resource-not-found-exception
                                        throttling-exception)
                                       :method "GET" :uri
                                       "/eventIntegrations/{Name}" :code 200)

(smithy/sdk/operation:define-operation list-application-associations
                                       :shape-name
                                       "ListApplicationAssociations" :input
                                       list-application-associations-request
                                       :output
                                       list-application-associations-response
                                       :errors
                                       (access-denied-exception
                                        internal-service-error
                                        invalid-request-exception
                                        resource-not-found-exception
                                        throttling-exception)
                                       :method "GET" :uri
                                       "/applications/{ApplicationId}/associations"
                                       :code 200)

(smithy/sdk/operation:define-operation list-applications :shape-name
                                       "ListApplications" :input
                                       list-applications-request :output
                                       list-applications-response :errors
                                       (access-denied-exception
                                        internal-service-error
                                        invalid-request-exception
                                        throttling-exception)
                                       :method "GET" :uri "/applications" :code
                                       200)

(smithy/sdk/operation:define-operation list-data-integration-associations
                                       :shape-name
                                       "ListDataIntegrationAssociations" :input
                                       list-data-integration-associations-request
                                       :output
                                       list-data-integration-associations-response
                                       :errors
                                       (access-denied-exception
                                        internal-service-error
                                        invalid-request-exception
                                        resource-not-found-exception
                                        throttling-exception)
                                       :method "GET" :uri
                                       "/dataIntegrations/{DataIntegrationIdentifier}/associations"
                                       :code 200)

(smithy/sdk/operation:define-operation list-data-integrations :shape-name
                                       "ListDataIntegrations" :input
                                       list-data-integrations-request :output
                                       list-data-integrations-response :errors
                                       (access-denied-exception
                                        internal-service-error
                                        invalid-request-exception
                                        throttling-exception)
                                       :method "GET" :uri "/dataIntegrations"
                                       :code 200)

(smithy/sdk/operation:define-operation list-event-integration-associations
                                       :shape-name
                                       "ListEventIntegrationAssociations"
                                       :input
                                       list-event-integration-associations-request
                                       :output
                                       list-event-integration-associations-response
                                       :errors
                                       (access-denied-exception
                                        internal-service-error
                                        invalid-request-exception
                                        resource-not-found-exception
                                        throttling-exception)
                                       :method "GET" :uri
                                       "/eventIntegrations/{EventIntegrationName}/associations"
                                       :code 200)

(smithy/sdk/operation:define-operation list-event-integrations :shape-name
                                       "ListEventIntegrations" :input
                                       list-event-integrations-request :output
                                       list-event-integrations-response :errors
                                       (access-denied-exception
                                        internal-service-error
                                        invalid-request-exception
                                        throttling-exception)
                                       :method "GET" :uri "/eventIntegrations"
                                       :code 200)

(smithy/sdk/operation:define-operation list-tags-for-resource :shape-name
                                       "ListTagsForResource" :input
                                       list-tags-for-resource-request :output
                                       list-tags-for-resource-response :errors
                                       (internal-service-error
                                        invalid-request-exception
                                        resource-not-found-exception
                                        throttling-exception)
                                       :method "GET" :uri "/tags/{resourceArn}"
                                       :code 200)

(smithy/sdk/operation:define-operation tag-resource :shape-name "TagResource"
                                       :input tag-resource-request :output
                                       tag-resource-response :errors
                                       (internal-service-error
                                        invalid-request-exception
                                        resource-not-found-exception
                                        throttling-exception)
                                       :method "POST" :uri
                                       "/tags/{resourceArn}" :code 200)

(smithy/sdk/operation:define-operation untag-resource :shape-name
                                       "UntagResource" :input
                                       untag-resource-request :output
                                       untag-resource-response :errors
                                       (internal-service-error
                                        invalid-request-exception
                                        resource-not-found-exception
                                        throttling-exception)
                                       :method "DELETE" :uri
                                       "/tags/{resourceArn}" :code 200)

(smithy/sdk/operation:define-operation update-application :shape-name
                                       "UpdateApplication" :input
                                       update-application-request :output
                                       update-application-response :errors
                                       (access-denied-exception
                                        internal-service-error
                                        invalid-request-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        unsupported-operation-exception)
                                       :method "PATCH" :uri
                                       "/applications/{Arn}" :code 200)

(smithy/sdk/operation:define-operation update-data-integration :shape-name
                                       "UpdateDataIntegration" :input
                                       update-data-integration-request :output
                                       update-data-integration-response :errors
                                       (access-denied-exception
                                        internal-service-error
                                        invalid-request-exception
                                        resource-not-found-exception
                                        throttling-exception)
                                       :method "PATCH" :uri
                                       "/dataIntegrations/{Identifier}" :code
                                       200)

(smithy/sdk/operation:define-operation update-data-integration-association
                                       :shape-name
                                       "UpdateDataIntegrationAssociation"
                                       :input
                                       update-data-integration-association-request
                                       :output
                                       update-data-integration-association-response
                                       :errors
                                       (access-denied-exception
                                        internal-service-error
                                        invalid-request-exception
                                        resource-not-found-exception
                                        throttling-exception)
                                       :method "PATCH" :uri
                                       "/dataIntegrations/{DataIntegrationIdentifier}/associations/{DataIntegrationAssociationIdentifier}"
                                       :code 200)

(smithy/sdk/operation:define-operation update-event-integration :shape-name
                                       "UpdateEventIntegration" :input
                                       update-event-integration-request :output
                                       update-event-integration-response
                                       :errors
                                       (access-denied-exception
                                        internal-service-error
                                        invalid-request-exception
                                        resource-not-found-exception
                                        throttling-exception)
                                       :method "PATCH" :uri
                                       "/eventIntegrations/{Name}" :code 200)
