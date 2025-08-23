(uiop/package:define-package #:pira/appfabric (:use)
                             (:export #:api-key-credential #:app-authorization
                              #:app-authorization-status
                              #:app-authorization-summary
                              #:app-authorization-summary-list #:app-bundle
                              #:app-bundle-summary #:app-bundle-summary-list
                              #:arn #:audit-log-destination-configuration
                              #:audit-log-processing-configuration
                              #:auth-request #:auth-type
                              #:batch-get-user-access-tasks
                              #:connect-app-authorization
                              #:create-app-authorization #:create-app-bundle
                              #:create-ingestion #:create-ingestion-destination
                              #:credential #:date-time
                              #:delete-app-authorization #:delete-app-bundle
                              #:delete-ingestion #:delete-ingestion-destination
                              #:destination #:destination-configuration #:email
                              #:fabric-front-end-service #:firehose-stream
                              #:format #:get-app-authorization #:get-app-bundle
                              #:get-ingestion #:get-ingestion-destination
                              #:identifier #:ingestion #:ingestion-destination
                              #:ingestion-destination-list
                              #:ingestion-destination-status
                              #:ingestion-destination-summary #:ingestion-list
                              #:ingestion-state #:ingestion-summary
                              #:ingestion-type #:integer
                              #:list-app-authorizations #:list-app-bundles
                              #:list-ingestion-destinations #:list-ingestions
                              #:list-tags-for-resource #:max-results
                              #:oauth2credential #:persona
                              #:processing-configuration #:redirect-uri
                              #:result-status #:s3bucket #:schema
                              #:sensitive-string2048 #:start-ingestion
                              #:start-user-access-tasks #:stop-ingestion
                              #:string120 #:string2048 #:string255 #:string63
                              #:string64 #:tag #:tag-key #:tag-key-list
                              #:tag-list #:tag-resource #:tag-value
                              #:task-error #:task-id-list #:tenant
                              #:tenant-identifier #:uuid #:untag-resource
                              #:update-app-authorization
                              #:update-ingestion-destination
                              #:user-access-result-item
                              #:user-access-results-list
                              #:user-access-task-item #:user-access-tasks-list
                              #:validation-exception-field
                              #:validation-exception-field-list
                              #:validation-exception-reason))
(common-lisp:in-package #:pira/appfabric)

(smithy/sdk/service:define-service fabric-front-end-service :shape-name
                                   "FabricFrontEndService" :version
                                   "2023-05-19" :title "AppFabric" :operations
                                   '(batch-get-user-access-tasks
                                     connect-app-authorization
                                     create-app-authorization create-app-bundle
                                     create-ingestion
                                     create-ingestion-destination
                                     delete-app-authorization delete-app-bundle
                                     delete-ingestion
                                     delete-ingestion-destination
                                     get-app-authorization get-app-bundle
                                     get-ingestion get-ingestion-destination
                                     list-app-authorizations list-app-bundles
                                     list-ingestion-destinations
                                     list-ingestions list-tags-for-resource
                                     start-ingestion start-user-access-tasks
                                     stop-ingestion tag-resource untag-resource
                                     update-app-authorization
                                     update-ingestion-destination)
                                   :traits
                                   '(("aws.api#service" ("sdkId" . "AppFabric")
                                      ("arnNamespace" . "appfabric"))
                                     ("aws.auth#sigv4" ("name" . "appfabric"))
                                     ("aws.protocols#restJson1")))

(smithy/sdk/shapes:define-error access-denied-exception common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "message"))
                                (:shape-name "AccessDeniedException")
                                (:error-code 403))

(smithy/sdk/shapes:define-structure api-key-credential common-lisp:nil
                                    ((api-key :target-type sensitive-string2048
                                      :required common-lisp:t :member-name
                                      "apiKey"))
                                    (:shape-name "ApiKeyCredential"))

(smithy/sdk/shapes:define-structure app-authorization common-lisp:nil
                                    ((app-authorization-arn :target-type arn
                                      :required common-lisp:t :member-name
                                      "appAuthorizationArn")
                                     (app-bundle-arn :target-type arn :required
                                      common-lisp:t :member-name
                                      "appBundleArn")
                                     (app :target-type string255 :required
                                      common-lisp:t :member-name "app")
                                     (tenant :target-type tenant :required
                                      common-lisp:t :member-name "tenant")
                                     (auth-type :target-type auth-type
                                      :required common-lisp:t :member-name
                                      "authType")
                                     (status :target-type
                                      app-authorization-status :required
                                      common-lisp:t :member-name "status")
                                     (created-at :target-type date-time
                                      :required common-lisp:t :member-name
                                      "createdAt")
                                     (updated-at :target-type date-time
                                      :required common-lisp:t :member-name
                                      "updatedAt")
                                     (persona :target-type persona :member-name
                                      "persona")
                                     (auth-url :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "authUrl"))
                                    (:shape-name "AppAuthorization"))

(smithy/sdk/shapes:define-enum app-authorization-status
    common-lisp:nil
  (:pending-connect "PendingConnect")
  (:connected "Connected")
  (:connection-validation-failed "ConnectionValidationFailed")
  (:token-auto-rotation-failed "TokenAutoRotationFailed"))

(smithy/sdk/shapes:define-structure app-authorization-summary common-lisp:nil
                                    ((app-authorization-arn :target-type arn
                                      :required common-lisp:t :member-name
                                      "appAuthorizationArn")
                                     (app-bundle-arn :target-type arn :required
                                      common-lisp:t :member-name
                                      "appBundleArn")
                                     (app :target-type string255 :required
                                      common-lisp:t :member-name "app")
                                     (tenant :target-type tenant :required
                                      common-lisp:t :member-name "tenant")
                                     (status :target-type
                                      app-authorization-status :required
                                      common-lisp:t :member-name "status")
                                     (updated-at :target-type date-time
                                      :required common-lisp:t :member-name
                                      "updatedAt"))
                                    (:shape-name "AppAuthorizationSummary"))

(smithy/sdk/shapes:define-list app-authorization-summary-list :member
                               app-authorization-summary)

(smithy/sdk/shapes:define-structure app-bundle common-lisp:nil
                                    ((arn :target-type arn :required
                                      common-lisp:t :member-name "arn")
                                     (customer-managed-key-arn :target-type arn
                                      :member-name "customerManagedKeyArn"))
                                    (:shape-name "AppBundle"))

(smithy/sdk/shapes:define-structure app-bundle-summary common-lisp:nil
                                    ((arn :target-type arn :required
                                      common-lisp:t :member-name "arn"))
                                    (:shape-name "AppBundleSummary"))

(smithy/sdk/shapes:define-list app-bundle-summary-list :member
                               app-bundle-summary)

(smithy/sdk/shapes:define-type arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure audit-log-destination-configuration
                                    common-lisp:nil
                                    ((destination :target-type destination
                                      :required common-lisp:t :member-name
                                      "destination"))
                                    (:shape-name
                                     "AuditLogDestinationConfiguration"))

(smithy/sdk/shapes:define-structure audit-log-processing-configuration
                                    common-lisp:nil
                                    ((schema :target-type schema :required
                                      common-lisp:t :member-name "schema")
                                     (format :target-type format :required
                                      common-lisp:t :member-name "format"))
                                    (:shape-name
                                     "AuditLogProcessingConfiguration"))

(smithy/sdk/shapes:define-structure auth-request common-lisp:nil
                                    ((redirect-uri :target-type redirect-uri
                                      :required common-lisp:t :member-name
                                      "redirectUri")
                                     (code :target-type sensitive-string2048
                                      :required common-lisp:t :member-name
                                      "code"))
                                    (:shape-name "AuthRequest"))

(smithy/sdk/shapes:define-enum auth-type
    common-lisp:nil
  (:oauth2 "oauth2")
  (:api-key "apiKey"))

(smithy/sdk/shapes:define-input batch-get-user-access-tasks-request
                                common-lisp:nil
                                ((app-bundle-identifier :target-type identifier
                                  :required common-lisp:t :member-name
                                  "appBundleIdentifier")
                                 (task-id-list :target-type task-id-list
                                  :required common-lisp:t :member-name
                                  "taskIdList"))
                                (:shape-name "BatchGetUserAccessTasksRequest"))

(smithy/sdk/shapes:define-output batch-get-user-access-tasks-response
                                 common-lisp:nil
                                 ((user-access-results-list :target-type
                                   user-access-results-list :member-name
                                   "userAccessResultsList"))
                                 (:shape-name
                                  "BatchGetUserAccessTasksResponse"))

(smithy/sdk/shapes:define-error conflict-exception common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "message")
                                 (resource-id :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "resourceId")
                                 (resource-type :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "resourceType"))
                                (:shape-name "ConflictException")
                                (:error-code 409))

(smithy/sdk/shapes:define-input connect-app-authorization-request
                                common-lisp:nil
                                ((app-bundle-identifier :target-type identifier
                                  :required common-lisp:t :member-name
                                  "appBundleIdentifier" :http-label
                                  common-lisp:t)
                                 (app-authorization-identifier :target-type
                                  identifier :required common-lisp:t
                                  :member-name "appAuthorizationIdentifier"
                                  :http-label common-lisp:t)
                                 (auth-request :target-type auth-request
                                  :member-name "authRequest"))
                                (:shape-name "ConnectAppAuthorizationRequest"))

(smithy/sdk/shapes:define-output connect-app-authorization-response
                                 common-lisp:nil
                                 ((app-authorization-summary :target-type
                                   app-authorization-summary :required
                                   common-lisp:t :member-name
                                   "appAuthorizationSummary"))
                                 (:shape-name
                                  "ConnectAppAuthorizationResponse"))

(smithy/sdk/shapes:define-input create-app-authorization-request
                                common-lisp:nil
                                ((app-bundle-identifier :target-type identifier
                                  :required common-lisp:t :member-name
                                  "appBundleIdentifier" :http-label
                                  common-lisp:t)
                                 (app :target-type string255 :required
                                  common-lisp:t :member-name "app")
                                 (credential :target-type credential :required
                                  common-lisp:t :member-name "credential")
                                 (tenant :target-type tenant :required
                                  common-lisp:t :member-name "tenant")
                                 (auth-type :target-type auth-type :required
                                  common-lisp:t :member-name "authType")
                                 (client-token :target-type uuid :member-name
                                  "clientToken")
                                 (tags :target-type tag-list :member-name
                                  "tags"))
                                (:shape-name "CreateAppAuthorizationRequest"))

(smithy/sdk/shapes:define-output create-app-authorization-response
                                 common-lisp:nil
                                 ((app-authorization :target-type
                                   app-authorization :required common-lisp:t
                                   :member-name "appAuthorization"))
                                 (:shape-name "CreateAppAuthorizationResponse"))

(smithy/sdk/shapes:define-input create-app-bundle-request common-lisp:nil
                                ((client-token :target-type uuid :member-name
                                  "clientToken")
                                 (customer-managed-key-identifier :target-type
                                  identifier :member-name
                                  "customerManagedKeyIdentifier")
                                 (tags :target-type tag-list :member-name
                                  "tags"))
                                (:shape-name "CreateAppBundleRequest"))

(smithy/sdk/shapes:define-output create-app-bundle-response common-lisp:nil
                                 ((app-bundle :target-type app-bundle :required
                                   common-lisp:t :member-name "appBundle"))
                                 (:shape-name "CreateAppBundleResponse"))

(smithy/sdk/shapes:define-input create-ingestion-destination-request
                                common-lisp:nil
                                ((app-bundle-identifier :target-type identifier
                                  :required common-lisp:t :member-name
                                  "appBundleIdentifier" :http-label
                                  common-lisp:t)
                                 (ingestion-identifier :target-type identifier
                                  :required common-lisp:t :member-name
                                  "ingestionIdentifier" :http-label
                                  common-lisp:t)
                                 (processing-configuration :target-type
                                  processing-configuration :required
                                  common-lisp:t :member-name
                                  "processingConfiguration")
                                 (destination-configuration :target-type
                                  destination-configuration :required
                                  common-lisp:t :member-name
                                  "destinationConfiguration")
                                 (client-token :target-type uuid :member-name
                                  "clientToken")
                                 (tags :target-type tag-list :member-name
                                  "tags"))
                                (:shape-name
                                 "CreateIngestionDestinationRequest"))

(smithy/sdk/shapes:define-output create-ingestion-destination-response
                                 common-lisp:nil
                                 ((ingestion-destination :target-type
                                   ingestion-destination :required
                                   common-lisp:t :member-name
                                   "ingestionDestination"))
                                 (:shape-name
                                  "CreateIngestionDestinationResponse"))

(smithy/sdk/shapes:define-input create-ingestion-request common-lisp:nil
                                ((app-bundle-identifier :target-type identifier
                                  :required common-lisp:t :member-name
                                  "appBundleIdentifier" :http-label
                                  common-lisp:t)
                                 (app :target-type string255 :required
                                  common-lisp:t :member-name "app")
                                 (tenant-id :target-type tenant-identifier
                                  :required common-lisp:t :member-name
                                  "tenantId")
                                 (ingestion-type :target-type ingestion-type
                                  :required common-lisp:t :member-name
                                  "ingestionType")
                                 (client-token :target-type uuid :member-name
                                  "clientToken")
                                 (tags :target-type tag-list :member-name
                                  "tags"))
                                (:shape-name "CreateIngestionRequest"))

(smithy/sdk/shapes:define-output create-ingestion-response common-lisp:nil
                                 ((ingestion :target-type ingestion :required
                                   common-lisp:t :member-name "ingestion"))
                                 (:shape-name "CreateIngestionResponse"))

(smithy/sdk/shapes:define-union credential common-lisp:nil
                                ((oauth2credential :target-type
                                  oauth2credential :member-name
                                  "oauth2Credential")
                                 (api-key-credential :target-type
                                  api-key-credential :member-name
                                  "apiKeyCredential"))
                                (:shape-name "Credential"))

(smithy/sdk/shapes:define-type date-time smithy/sdk/smithy-types:timestamp
                               :timestamp-format "date-time")

(smithy/sdk/shapes:define-input delete-app-authorization-request
                                common-lisp:nil
                                ((app-bundle-identifier :target-type identifier
                                  :required common-lisp:t :member-name
                                  "appBundleIdentifier" :http-label
                                  common-lisp:t)
                                 (app-authorization-identifier :target-type
                                  identifier :required common-lisp:t
                                  :member-name "appAuthorizationIdentifier"
                                  :http-label common-lisp:t))
                                (:shape-name "DeleteAppAuthorizationRequest"))

(smithy/sdk/shapes:define-output delete-app-authorization-response
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name "DeleteAppAuthorizationResponse"))

(smithy/sdk/shapes:define-input delete-app-bundle-request common-lisp:nil
                                ((app-bundle-identifier :target-type identifier
                                  :required common-lisp:t :member-name
                                  "appBundleIdentifier" :http-label
                                  common-lisp:t))
                                (:shape-name "DeleteAppBundleRequest"))

(smithy/sdk/shapes:define-output delete-app-bundle-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "DeleteAppBundleResponse"))

(smithy/sdk/shapes:define-input delete-ingestion-destination-request
                                common-lisp:nil
                                ((app-bundle-identifier :target-type identifier
                                  :required common-lisp:t :member-name
                                  "appBundleIdentifier" :http-label
                                  common-lisp:t)
                                 (ingestion-identifier :target-type identifier
                                  :required common-lisp:t :member-name
                                  "ingestionIdentifier" :http-label
                                  common-lisp:t)
                                 (ingestion-destination-identifier :target-type
                                  identifier :required common-lisp:t
                                  :member-name "ingestionDestinationIdentifier"
                                  :http-label common-lisp:t))
                                (:shape-name
                                 "DeleteIngestionDestinationRequest"))

(smithy/sdk/shapes:define-output delete-ingestion-destination-response
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name
                                  "DeleteIngestionDestinationResponse"))

(smithy/sdk/shapes:define-input delete-ingestion-request common-lisp:nil
                                ((app-bundle-identifier :target-type identifier
                                  :required common-lisp:t :member-name
                                  "appBundleIdentifier" :http-label
                                  common-lisp:t)
                                 (ingestion-identifier :target-type identifier
                                  :required common-lisp:t :member-name
                                  "ingestionIdentifier" :http-label
                                  common-lisp:t))
                                (:shape-name "DeleteIngestionRequest"))

(smithy/sdk/shapes:define-output delete-ingestion-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "DeleteIngestionResponse"))

(smithy/sdk/shapes:define-union destination common-lisp:nil
                                ((s3bucket :target-type s3bucket :member-name
                                  "s3Bucket")
                                 (firehose-stream :target-type firehose-stream
                                  :member-name "firehoseStream"))
                                (:shape-name "Destination"))

(smithy/sdk/shapes:define-union destination-configuration common-lisp:nil
                                ((audit-log :target-type
                                  audit-log-destination-configuration
                                  :member-name "auditLog"))
                                (:shape-name "DestinationConfiguration"))

(smithy/sdk/shapes:define-type email smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure firehose-stream common-lisp:nil
                                    ((stream-name :target-type string64
                                      :required common-lisp:t :member-name
                                      "streamName"))
                                    (:shape-name "FirehoseStream"))

(smithy/sdk/shapes:define-enum format
    common-lisp:nil
  (:json "json")
  (:parquet "parquet"))

(smithy/sdk/shapes:define-input get-app-authorization-request common-lisp:nil
                                ((app-bundle-identifier :target-type identifier
                                  :required common-lisp:t :member-name
                                  "appBundleIdentifier" :http-label
                                  common-lisp:t)
                                 (app-authorization-identifier :target-type
                                  identifier :required common-lisp:t
                                  :member-name "appAuthorizationIdentifier"
                                  :http-label common-lisp:t))
                                (:shape-name "GetAppAuthorizationRequest"))

(smithy/sdk/shapes:define-output get-app-authorization-response common-lisp:nil
                                 ((app-authorization :target-type
                                   app-authorization :required common-lisp:t
                                   :member-name "appAuthorization"))
                                 (:shape-name "GetAppAuthorizationResponse"))

(smithy/sdk/shapes:define-input get-app-bundle-request common-lisp:nil
                                ((app-bundle-identifier :target-type identifier
                                  :required common-lisp:t :member-name
                                  "appBundleIdentifier" :http-label
                                  common-lisp:t))
                                (:shape-name "GetAppBundleRequest"))

(smithy/sdk/shapes:define-output get-app-bundle-response common-lisp:nil
                                 ((app-bundle :target-type app-bundle :required
                                   common-lisp:t :member-name "appBundle"))
                                 (:shape-name "GetAppBundleResponse"))

(smithy/sdk/shapes:define-input get-ingestion-destination-request
                                common-lisp:nil
                                ((app-bundle-identifier :target-type identifier
                                  :required common-lisp:t :member-name
                                  "appBundleIdentifier" :http-label
                                  common-lisp:t)
                                 (ingestion-identifier :target-type identifier
                                  :required common-lisp:t :member-name
                                  "ingestionIdentifier" :http-label
                                  common-lisp:t)
                                 (ingestion-destination-identifier :target-type
                                  identifier :required common-lisp:t
                                  :member-name "ingestionDestinationIdentifier"
                                  :http-label common-lisp:t))
                                (:shape-name "GetIngestionDestinationRequest"))

(smithy/sdk/shapes:define-output get-ingestion-destination-response
                                 common-lisp:nil
                                 ((ingestion-destination :target-type
                                   ingestion-destination :required
                                   common-lisp:t :member-name
                                   "ingestionDestination"))
                                 (:shape-name
                                  "GetIngestionDestinationResponse"))

(smithy/sdk/shapes:define-input get-ingestion-request common-lisp:nil
                                ((app-bundle-identifier :target-type identifier
                                  :required common-lisp:t :member-name
                                  "appBundleIdentifier" :http-label
                                  common-lisp:t)
                                 (ingestion-identifier :target-type identifier
                                  :required common-lisp:t :member-name
                                  "ingestionIdentifier" :http-label
                                  common-lisp:t))
                                (:shape-name "GetIngestionRequest"))

(smithy/sdk/shapes:define-output get-ingestion-response common-lisp:nil
                                 ((ingestion :target-type ingestion :required
                                   common-lisp:t :member-name "ingestion"))
                                 (:shape-name "GetIngestionResponse"))

(smithy/sdk/shapes:define-type identifier smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure ingestion common-lisp:nil
                                    ((arn :target-type arn :required
                                      common-lisp:t :member-name "arn")
                                     (app-bundle-arn :target-type arn :required
                                      common-lisp:t :member-name
                                      "appBundleArn")
                                     (app :target-type string255 :required
                                      common-lisp:t :member-name "app")
                                     (tenant-id :target-type tenant-identifier
                                      :required common-lisp:t :member-name
                                      "tenantId")
                                     (created-at :target-type date-time
                                      :required common-lisp:t :member-name
                                      "createdAt")
                                     (updated-at :target-type date-time
                                      :required common-lisp:t :member-name
                                      "updatedAt")
                                     (state :target-type ingestion-state
                                      :required common-lisp:t :member-name
                                      "state")
                                     (ingestion-type :target-type
                                      ingestion-type :required common-lisp:t
                                      :member-name "ingestionType"))
                                    (:shape-name "Ingestion"))

(smithy/sdk/shapes:define-structure ingestion-destination common-lisp:nil
                                    ((arn :target-type arn :required
                                      common-lisp:t :member-name "arn")
                                     (ingestion-arn :target-type arn :required
                                      common-lisp:t :member-name
                                      "ingestionArn")
                                     (processing-configuration :target-type
                                      processing-configuration :required
                                      common-lisp:t :member-name
                                      "processingConfiguration")
                                     (destination-configuration :target-type
                                      destination-configuration :required
                                      common-lisp:t :member-name
                                      "destinationConfiguration")
                                     (status :target-type
                                      ingestion-destination-status :member-name
                                      "status")
                                     (status-reason :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "statusReason")
                                     (created-at :target-type date-time
                                      :member-name "createdAt")
                                     (updated-at :target-type date-time
                                      :member-name "updatedAt"))
                                    (:shape-name "IngestionDestination"))

(smithy/sdk/shapes:define-list ingestion-destination-list :member
                               ingestion-destination-summary)

(smithy/sdk/shapes:define-enum ingestion-destination-status
    common-lisp:nil
  (:active "Active")
  (:failed "Failed"))

(smithy/sdk/shapes:define-structure ingestion-destination-summary
                                    common-lisp:nil
                                    ((arn :target-type arn :required
                                      common-lisp:t :member-name "arn"))
                                    (:shape-name "IngestionDestinationSummary"))

(smithy/sdk/shapes:define-list ingestion-list :member ingestion-summary)

(smithy/sdk/shapes:define-enum ingestion-state
    common-lisp:nil
  (:enabled "enabled")
  (:disabled "disabled"))

(smithy/sdk/shapes:define-structure ingestion-summary common-lisp:nil
                                    ((arn :target-type arn :required
                                      common-lisp:t :member-name "arn")
                                     (app :target-type string255 :required
                                      common-lisp:t :member-name "app")
                                     (tenant-id :target-type tenant-identifier
                                      :required common-lisp:t :member-name
                                      "tenantId")
                                     (state :target-type ingestion-state
                                      :required common-lisp:t :member-name
                                      "state"))
                                    (:shape-name "IngestionSummary"))

(smithy/sdk/shapes:define-enum ingestion-type
    common-lisp:nil
  (:audit-log "auditLog"))

(smithy/sdk/shapes:define-type integer smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-error internal-server-exception common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "message")
                                 (retry-after-seconds :target-type integer
                                  :member-name "retryAfterSeconds" :http-header
                                  "Retry-After"))
                                (:shape-name "InternalServerException")
                                (:error-code 500))

(smithy/sdk/shapes:define-input list-app-authorizations-request common-lisp:nil
                                ((app-bundle-identifier :target-type identifier
                                  :required common-lisp:t :member-name
                                  "appBundleIdentifier" :http-label
                                  common-lisp:t)
                                 (max-results :target-type max-results
                                  :member-name "maxResults" :http-query
                                  "maxResults")
                                 (next-token :target-type string2048
                                  :member-name "nextToken" :http-query
                                  "nextToken"))
                                (:shape-name "ListAppAuthorizationsRequest"))

(smithy/sdk/shapes:define-output list-app-authorizations-response
                                 common-lisp:nil
                                 ((app-authorization-summary-list :target-type
                                   app-authorization-summary-list :required
                                   common-lisp:t :member-name
                                   "appAuthorizationSummaryList")
                                  (next-token :target-type string2048
                                   :member-name "nextToken"))
                                 (:shape-name "ListAppAuthorizationsResponse"))

(smithy/sdk/shapes:define-input list-app-bundles-request common-lisp:nil
                                ((max-results :target-type max-results
                                  :member-name "maxResults" :http-query
                                  "maxResults")
                                 (next-token :target-type string2048
                                  :member-name "nextToken" :http-query
                                  "nextToken"))
                                (:shape-name "ListAppBundlesRequest"))

(smithy/sdk/shapes:define-output list-app-bundles-response common-lisp:nil
                                 ((app-bundle-summary-list :target-type
                                   app-bundle-summary-list :required
                                   common-lisp:t :member-name
                                   "appBundleSummaryList")
                                  (next-token :target-type string2048
                                   :member-name "nextToken"))
                                 (:shape-name "ListAppBundlesResponse"))

(smithy/sdk/shapes:define-input list-ingestion-destinations-request
                                common-lisp:nil
                                ((app-bundle-identifier :target-type identifier
                                  :required common-lisp:t :member-name
                                  "appBundleIdentifier" :http-label
                                  common-lisp:t)
                                 (ingestion-identifier :target-type identifier
                                  :required common-lisp:t :member-name
                                  "ingestionIdentifier" :http-label
                                  common-lisp:t)
                                 (max-results :target-type max-results
                                  :member-name "maxResults" :http-query
                                  "maxResults")
                                 (next-token :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "nextToken" :http-query "nextToken"))
                                (:shape-name
                                 "ListIngestionDestinationsRequest"))

(smithy/sdk/shapes:define-output list-ingestion-destinations-response
                                 common-lisp:nil
                                 ((ingestion-destinations :target-type
                                   ingestion-destination-list :required
                                   common-lisp:t :member-name
                                   "ingestionDestinations")
                                  (next-token :target-type
                                   smithy/sdk/smithy-types:string :member-name
                                   "nextToken"))
                                 (:shape-name
                                  "ListIngestionDestinationsResponse"))

(smithy/sdk/shapes:define-input list-ingestions-request common-lisp:nil
                                ((app-bundle-identifier :target-type identifier
                                  :required common-lisp:t :member-name
                                  "appBundleIdentifier" :http-label
                                  common-lisp:t)
                                 (max-results :target-type max-results
                                  :member-name "maxResults" :http-query
                                  "maxResults")
                                 (next-token :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "nextToken" :http-query "nextToken"))
                                (:shape-name "ListIngestionsRequest"))

(smithy/sdk/shapes:define-output list-ingestions-response common-lisp:nil
                                 ((ingestions :target-type ingestion-list
                                   :required common-lisp:t :member-name
                                   "ingestions")
                                  (next-token :target-type
                                   smithy/sdk/smithy-types:string :member-name
                                   "nextToken"))
                                 (:shape-name "ListIngestionsResponse"))

(smithy/sdk/shapes:define-input list-tags-for-resource-request common-lisp:nil
                                ((resource-arn :target-type arn :required
                                  common-lisp:t :member-name "resourceArn"
                                  :http-label common-lisp:t))
                                (:shape-name "ListTagsForResourceRequest"))

(smithy/sdk/shapes:define-output list-tags-for-resource-response
                                 common-lisp:nil
                                 ((tags :target-type tag-list :member-name
                                   "tags"))
                                 (:shape-name "ListTagsForResourceResponse"))

(smithy/sdk/shapes:define-type max-results smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-structure oauth2credential common-lisp:nil
                                    ((client-id :target-type string2048
                                      :required common-lisp:t :member-name
                                      "clientId")
                                     (client-secret :target-type
                                      sensitive-string2048 :required
                                      common-lisp:t :member-name
                                      "clientSecret"))
                                    (:shape-name "Oauth2Credential"))

(smithy/sdk/shapes:define-enum persona
    common-lisp:nil
  (:admin "admin")
  (:enduser "endUser"))

(smithy/sdk/shapes:define-union processing-configuration common-lisp:nil
                                ((audit-log :target-type
                                  audit-log-processing-configuration
                                  :member-name "auditLog"))
                                (:shape-name "ProcessingConfiguration"))

(smithy/sdk/shapes:define-type redirect-uri smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error resource-not-found-exception common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "message")
                                 (resource-id :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "resourceId")
                                 (resource-type :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "resourceType"))
                                (:shape-name "ResourceNotFoundException")
                                (:error-code 404))

(smithy/sdk/shapes:define-enum result-status
    common-lisp:nil
  (:in-progress "IN_PROGRESS")
  (:completed "COMPLETED")
  (:failed "FAILED")
  (:expired "EXPIRED"))

(smithy/sdk/shapes:define-structure s3bucket common-lisp:nil
                                    ((bucket-name :target-type string63
                                      :required common-lisp:t :member-name
                                      "bucketName")
                                     (prefix :target-type string120
                                      :member-name "prefix"))
                                    (:shape-name "S3Bucket"))

(smithy/sdk/shapes:define-enum schema
    common-lisp:nil
  (:ocsf "ocsf")
  (:raw "raw"))

(smithy/sdk/shapes:define-type sensitive-string2048
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error service-quota-exceeded-exception
                                common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "message")
                                 (resource-id :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "resourceId")
                                 (resource-type :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "resourceType")
                                 (service-code :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "serviceCode")
                                 (quota-code :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "quotaCode"))
                                (:shape-name "ServiceQuotaExceededException")
                                (:error-code 402))

(smithy/sdk/shapes:define-input start-ingestion-request common-lisp:nil
                                ((ingestion-identifier :target-type identifier
                                  :required common-lisp:t :member-name
                                  "ingestionIdentifier" :http-label
                                  common-lisp:t)
                                 (app-bundle-identifier :target-type identifier
                                  :required common-lisp:t :member-name
                                  "appBundleIdentifier" :http-label
                                  common-lisp:t))
                                (:shape-name "StartIngestionRequest"))

(smithy/sdk/shapes:define-output start-ingestion-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "StartIngestionResponse"))

(smithy/sdk/shapes:define-input start-user-access-tasks-request common-lisp:nil
                                ((app-bundle-identifier :target-type identifier
                                  :required common-lisp:t :member-name
                                  "appBundleIdentifier")
                                 (email :target-type email :required
                                  common-lisp:t :member-name "email"))
                                (:shape-name "StartUserAccessTasksRequest"))

(smithy/sdk/shapes:define-output start-user-access-tasks-response
                                 common-lisp:nil
                                 ((user-access-tasks-list :target-type
                                   user-access-tasks-list :member-name
                                   "userAccessTasksList"))
                                 (:shape-name "StartUserAccessTasksResponse"))

(smithy/sdk/shapes:define-input stop-ingestion-request common-lisp:nil
                                ((ingestion-identifier :target-type identifier
                                  :required common-lisp:t :member-name
                                  "ingestionIdentifier" :http-label
                                  common-lisp:t)
                                 (app-bundle-identifier :target-type identifier
                                  :required common-lisp:t :member-name
                                  "appBundleIdentifier" :http-label
                                  common-lisp:t))
                                (:shape-name "StopIngestionRequest"))

(smithy/sdk/shapes:define-output stop-ingestion-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "StopIngestionResponse"))

(smithy/sdk/shapes:define-type string120 smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type string2048 smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type string255 smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type string63 smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type string64 smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure tag common-lisp:nil
                                    ((key :target-type tag-key :required
                                      common-lisp:t :member-name "key")
                                     (value :target-type tag-value :required
                                      common-lisp:t :member-name "value"))
                                    (:shape-name "Tag"))

(smithy/sdk/shapes:define-type tag-key smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list tag-key-list :member tag-key)

(smithy/sdk/shapes:define-list tag-list :member tag)

(smithy/sdk/shapes:define-input tag-resource-request common-lisp:nil
                                ((resource-arn :target-type arn :required
                                  common-lisp:t :member-name "resourceArn"
                                  :http-label common-lisp:t)
                                 (tags :target-type tag-list :required
                                  common-lisp:t :member-name "tags"))
                                (:shape-name "TagResourceRequest"))

(smithy/sdk/shapes:define-output tag-resource-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "TagResourceResponse"))

(smithy/sdk/shapes:define-type tag-value smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure task-error common-lisp:nil
                                    ((error-code :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "errorCode")
                                     (error-message :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "errorMessage"))
                                    (:shape-name "TaskError"))

(smithy/sdk/shapes:define-list task-id-list :member uuid)

(smithy/sdk/shapes:define-structure tenant common-lisp:nil
                                    ((tenant-identifier :target-type
                                      tenant-identifier :required common-lisp:t
                                      :member-name "tenantIdentifier")
                                     (tenant-display-name :target-type
                                      string2048 :required common-lisp:t
                                      :member-name "tenantDisplayName"))
                                    (:shape-name "Tenant"))

(smithy/sdk/shapes:define-type tenant-identifier smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error throttling-exception common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "message")
                                 (service-code :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "serviceCode")
                                 (quota-code :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "quotaCode")
                                 (retry-after-seconds :target-type integer
                                  :member-name "retryAfterSeconds" :http-header
                                  "Retry-After"))
                                (:shape-name "ThrottlingException")
                                (:error-code 429))

(smithy/sdk/shapes:define-type uuid smithy/sdk/smithy-types:string)

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

(smithy/sdk/shapes:define-input update-app-authorization-request
                                common-lisp:nil
                                ((app-bundle-identifier :target-type identifier
                                  :required common-lisp:t :member-name
                                  "appBundleIdentifier" :http-label
                                  common-lisp:t)
                                 (app-authorization-identifier :target-type
                                  identifier :required common-lisp:t
                                  :member-name "appAuthorizationIdentifier"
                                  :http-label common-lisp:t)
                                 (credential :target-type credential
                                  :member-name "credential")
                                 (tenant :target-type tenant :member-name
                                  "tenant"))
                                (:shape-name "UpdateAppAuthorizationRequest"))

(smithy/sdk/shapes:define-output update-app-authorization-response
                                 common-lisp:nil
                                 ((app-authorization :target-type
                                   app-authorization :required common-lisp:t
                                   :member-name "appAuthorization"))
                                 (:shape-name "UpdateAppAuthorizationResponse"))

(smithy/sdk/shapes:define-input update-ingestion-destination-request
                                common-lisp:nil
                                ((app-bundle-identifier :target-type identifier
                                  :required common-lisp:t :member-name
                                  "appBundleIdentifier" :http-label
                                  common-lisp:t)
                                 (ingestion-identifier :target-type identifier
                                  :required common-lisp:t :member-name
                                  "ingestionIdentifier" :http-label
                                  common-lisp:t)
                                 (ingestion-destination-identifier :target-type
                                  identifier :required common-lisp:t
                                  :member-name "ingestionDestinationIdentifier"
                                  :http-label common-lisp:t)
                                 (destination-configuration :target-type
                                  destination-configuration :required
                                  common-lisp:t :member-name
                                  "destinationConfiguration"))
                                (:shape-name
                                 "UpdateIngestionDestinationRequest"))

(smithy/sdk/shapes:define-output update-ingestion-destination-response
                                 common-lisp:nil
                                 ((ingestion-destination :target-type
                                   ingestion-destination :required
                                   common-lisp:t :member-name
                                   "ingestionDestination"))
                                 (:shape-name
                                  "UpdateIngestionDestinationResponse"))

(smithy/sdk/shapes:define-structure user-access-result-item common-lisp:nil
                                    ((app :target-type string255 :member-name
                                      "app")
                                     (tenant-id :target-type tenant-identifier
                                      :member-name "tenantId")
                                     (tenant-display-name :target-type
                                      string2048 :member-name
                                      "tenantDisplayName")
                                     (task-id :target-type uuid :member-name
                                      "taskId")
                                     (result-status :target-type result-status
                                      :member-name "resultStatus")
                                     (email :target-type email :member-name
                                      "email")
                                     (user-id :target-type sensitive-string2048
                                      :member-name "userId")
                                     (user-full-name :target-type
                                      sensitive-string2048 :member-name
                                      "userFullName")
                                     (user-first-name :target-type
                                      sensitive-string2048 :member-name
                                      "userFirstName")
                                     (user-last-name :target-type
                                      sensitive-string2048 :member-name
                                      "userLastName")
                                     (user-status :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "userStatus")
                                     (task-error :target-type task-error
                                      :member-name "taskError"))
                                    (:shape-name "UserAccessResultItem"))

(smithy/sdk/shapes:define-list user-access-results-list :member
                               user-access-result-item)

(smithy/sdk/shapes:define-structure user-access-task-item common-lisp:nil
                                    ((app :target-type string255 :required
                                      common-lisp:t :member-name "app")
                                     (tenant-id :target-type tenant-identifier
                                      :required common-lisp:t :member-name
                                      "tenantId")
                                     (task-id :target-type uuid :member-name
                                      "taskId")
                                     (error :target-type task-error
                                      :member-name "error"))
                                    (:shape-name "UserAccessTaskItem"))

(smithy/sdk/shapes:define-list user-access-tasks-list :member
                               user-access-task-item)

(smithy/sdk/shapes:define-error validation-exception common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "message")
                                 (reason :target-type
                                  validation-exception-reason :required
                                  common-lisp:t :member-name "reason")
                                 (field-list :target-type
                                  validation-exception-field-list :member-name
                                  "fieldList"))
                                (:shape-name "ValidationException")
                                (:error-code 400))

(smithy/sdk/shapes:define-structure validation-exception-field common-lisp:nil
                                    ((name :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "name")
                                     (message :target-type
                                      smithy/sdk/smithy-types:string :required
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

(smithy/sdk/operation:define-operation batch-get-user-access-tasks :shape-name
                                       "BatchGetUserAccessTasks" :input
                                       batch-get-user-access-tasks-request
                                       :output
                                       batch-get-user-access-tasks-response
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/useraccess/batchget" :code 200)

(smithy/sdk/operation:define-operation connect-app-authorization :shape-name
                                       "ConnectAppAuthorization" :input
                                       connect-app-authorization-request
                                       :output
                                       connect-app-authorization-response
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/appbundles/{appBundleIdentifier}/appauthorizations/{appAuthorizationIdentifier}/connect"
                                       :code 200)

(smithy/sdk/operation:define-operation create-app-authorization :shape-name
                                       "CreateAppAuthorization" :input
                                       create-app-authorization-request :output
                                       create-app-authorization-response
                                       :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/appbundles/{appBundleIdentifier}/appauthorizations"
                                       :code 201)

(smithy/sdk/operation:define-operation create-app-bundle :shape-name
                                       "CreateAppBundle" :input
                                       create-app-bundle-request :output
                                       create-app-bundle-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri "/appbundles" :code
                                       201)

(smithy/sdk/operation:define-operation create-ingestion :shape-name
                                       "CreateIngestion" :input
                                       create-ingestion-request :output
                                       create-ingestion-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/appbundles/{appBundleIdentifier}/ingestions"
                                       :code 201)

(smithy/sdk/operation:define-operation create-ingestion-destination :shape-name
                                       "CreateIngestionDestination" :input
                                       create-ingestion-destination-request
                                       :output
                                       create-ingestion-destination-response
                                       :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/appbundles/{appBundleIdentifier}/ingestions/{ingestionIdentifier}/ingestiondestinations"
                                       :code 201)

(smithy/sdk/operation:define-operation delete-app-authorization :shape-name
                                       "DeleteAppAuthorization" :input
                                       delete-app-authorization-request :output
                                       delete-app-authorization-response
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "DELETE" :uri
                                       "/appbundles/{appBundleIdentifier}/appauthorizations/{appAuthorizationIdentifier}"
                                       :code 204)

(smithy/sdk/operation:define-operation delete-app-bundle :shape-name
                                       "DeleteAppBundle" :input
                                       delete-app-bundle-request :output
                                       delete-app-bundle-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "DELETE" :uri
                                       "/appbundles/{appBundleIdentifier}"
                                       :code 204)

(smithy/sdk/operation:define-operation delete-ingestion :shape-name
                                       "DeleteIngestion" :input
                                       delete-ingestion-request :output
                                       delete-ingestion-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "DELETE" :uri
                                       "/appbundles/{appBundleIdentifier}/ingestions/{ingestionIdentifier}"
                                       :code 204)

(smithy/sdk/operation:define-operation delete-ingestion-destination :shape-name
                                       "DeleteIngestionDestination" :input
                                       delete-ingestion-destination-request
                                       :output
                                       delete-ingestion-destination-response
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "DELETE" :uri
                                       "/appbundles/{appBundleIdentifier}/ingestions/{ingestionIdentifier}/ingestiondestinations/{ingestionDestinationIdentifier}"
                                       :code 204)

(smithy/sdk/operation:define-operation get-app-authorization :shape-name
                                       "GetAppAuthorization" :input
                                       get-app-authorization-request :output
                                       get-app-authorization-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/appbundles/{appBundleIdentifier}/appauthorizations/{appAuthorizationIdentifier}"
                                       :code 200)

(smithy/sdk/operation:define-operation get-app-bundle :shape-name
                                       "GetAppBundle" :input
                                       get-app-bundle-request :output
                                       get-app-bundle-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/appbundles/{appBundleIdentifier}"
                                       :code 200)

(smithy/sdk/operation:define-operation get-ingestion :shape-name "GetIngestion"
                                       :input get-ingestion-request :output
                                       get-ingestion-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/appbundles/{appBundleIdentifier}/ingestions/{ingestionIdentifier}"
                                       :code 200)

(smithy/sdk/operation:define-operation get-ingestion-destination :shape-name
                                       "GetIngestionDestination" :input
                                       get-ingestion-destination-request
                                       :output
                                       get-ingestion-destination-response
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/appbundles/{appBundleIdentifier}/ingestions/{ingestionIdentifier}/ingestiondestinations/{ingestionDestinationIdentifier}"
                                       :code 200)

(smithy/sdk/operation:define-operation list-app-authorizations :shape-name
                                       "ListAppAuthorizations" :input
                                       list-app-authorizations-request :output
                                       list-app-authorizations-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/appbundles/{appBundleIdentifier}/appauthorizations"
                                       :code 200)

(smithy/sdk/operation:define-operation list-app-bundles :shape-name
                                       "ListAppBundles" :input
                                       list-app-bundles-request :output
                                       list-app-bundles-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri "/appbundles" :code
                                       200)

(smithy/sdk/operation:define-operation list-ingestion-destinations :shape-name
                                       "ListIngestionDestinations" :input
                                       list-ingestion-destinations-request
                                       :output
                                       list-ingestion-destinations-response
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/appbundles/{appBundleIdentifier}/ingestions/{ingestionIdentifier}/ingestiondestinations"
                                       :code 200)

(smithy/sdk/operation:define-operation list-ingestions :shape-name
                                       "ListIngestions" :input
                                       list-ingestions-request :output
                                       list-ingestions-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/appbundles/{appBundleIdentifier}/ingestions"
                                       :code 200)

(smithy/sdk/operation:define-operation list-tags-for-resource :shape-name
                                       "ListTagsForResource" :input
                                       list-tags-for-resource-request :output
                                       list-tags-for-resource-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri "/tags/{resourceArn}"
                                       :code 200)

(smithy/sdk/operation:define-operation start-ingestion :shape-name
                                       "StartIngestion" :input
                                       start-ingestion-request :output
                                       start-ingestion-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/appbundles/{appBundleIdentifier}/ingestions/{ingestionIdentifier}/start"
                                       :code 200)

(smithy/sdk/operation:define-operation start-user-access-tasks :shape-name
                                       "StartUserAccessTasks" :input
                                       start-user-access-tasks-request :output
                                       start-user-access-tasks-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri "/useraccess/start"
                                       :code 201)

(smithy/sdk/operation:define-operation stop-ingestion :shape-name
                                       "StopIngestion" :input
                                       stop-ingestion-request :output
                                       stop-ingestion-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/appbundles/{appBundleIdentifier}/ingestions/{ingestionIdentifier}/stop"
                                       :code 200)

(smithy/sdk/operation:define-operation tag-resource :shape-name "TagResource"
                                       :input tag-resource-request :output
                                       tag-resource-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/tags/{resourceArn}" :code 200)

(smithy/sdk/operation:define-operation untag-resource :shape-name
                                       "UntagResource" :input
                                       untag-resource-request :output
                                       untag-resource-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "DELETE" :uri
                                       "/tags/{resourceArn}" :code 200)

(smithy/sdk/operation:define-operation update-app-authorization :shape-name
                                       "UpdateAppAuthorization" :input
                                       update-app-authorization-request :output
                                       update-app-authorization-response
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "PATCH" :uri
                                       "/appbundles/{appBundleIdentifier}/appauthorizations/{appAuthorizationIdentifier}"
                                       :code 200)

(smithy/sdk/operation:define-operation update-ingestion-destination :shape-name
                                       "UpdateIngestionDestination" :input
                                       update-ingestion-destination-request
                                       :output
                                       update-ingestion-destination-response
                                       :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "PATCH" :uri
                                       "/appbundles/{appBundleIdentifier}/ingestions/{ingestionIdentifier}/ingestiondestinations/{ingestionDestinationIdentifier}"
                                       :code 200)
