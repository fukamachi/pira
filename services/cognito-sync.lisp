(uiop/package:define-package #:pira/cognito-sync (:use)
                             (:export #:awscognito-sync-service
                              #:application-arn #:application-arn-list
                              #:assume-role-arn #:boolean #:bulk-publish
                              #:bulk-publish-status #:client-context
                              #:cognito-event-type #:cognito-streams #:dataset
                              #:dataset-list #:dataset-name #:date
                              #:delete-dataset #:describe-dataset
                              #:describe-identity-pool-usage
                              #:describe-identity-usage #:device-id #:events
                              #:exception-message #:get-bulk-publish-details
                              #:get-cognito-events
                              #:get-identity-pool-configuration #:identity-id
                              #:identity-pool-id #:identity-pool-usage
                              #:identity-pool-usage-list #:identity-usage
                              #:integer #:integer-string #:lambda-function-arn
                              #:list-datasets #:list-identity-pool-usage
                              #:list-records #:long #:merged-dataset-name-list
                              #:operation #:platform #:push-sync #:push-token
                              #:record #:record-key #:record-list
                              #:record-patch #:record-patch-list #:record-value
                              #:register-device #:set-cognito-events
                              #:set-identity-pool-configuration #:stream-name
                              #:streaming-status #:string
                              #:subscribe-to-dataset #:sync-session-token
                              #:unsubscribe-from-dataset #:update-records))
(common-lisp:in-package #:pira/cognito-sync)

(smithy/sdk/service:define-service awscognito-sync-service :shape-name
                                   "AWSCognitoSyncService" :version
                                   "2014-06-30" :title "Amazon Cognito Sync"
                                   :operations
                                   '(bulk-publish delete-dataset
                                     describe-dataset
                                     describe-identity-pool-usage
                                     describe-identity-usage
                                     get-bulk-publish-details
                                     get-cognito-events
                                     get-identity-pool-configuration
                                     list-datasets list-identity-pool-usage
                                     list-records register-device
                                     set-cognito-events
                                     set-identity-pool-configuration
                                     subscribe-to-dataset
                                     unsubscribe-from-dataset update-records)
                                   :xml-namespace
                                   (:uri
                                    "http://cognito-sync.amazonaws.com/doc/2014-06-30/"
                                    :prefix common-lisp:nil)
                                   :traits
                                   '(("aws.api#service"
                                      ("sdkId" . "Cognito Sync")
                                      ("arnNamespace" . "cognito-sync")
                                      ("cloudFormationName" . "CognitoSync")
                                      ("cloudTrailEventSource"
                                       . "cognitosync.amazonaws.com")
                                      ("endpointPrefix" . "cognito-sync"))
                                     ("aws.auth#sigv4"
                                      ("name" . "cognito-sync"))
                                     ("aws.protocols#restJson1")))

(smithy/sdk/shapes:define-error already-streamed-exception common-lisp:nil
                                ((message :target-type exception-message
                                  :required common-lisp:t :member-name
                                  "message"))
                                (:shape-name "AlreadyStreamedException")
                                (:error-name "AlreadyStreamed")
                                (:error-code 400))

(smithy/sdk/shapes:define-type application-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list application-arn-list :member application-arn)

(smithy/sdk/shapes:define-type assume-role-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type boolean smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-input bulk-publish-request common-lisp:nil
                                ((identity-pool-id :target-type
                                  identity-pool-id :required common-lisp:t
                                  :member-name "IdentityPoolId" :http-label
                                  common-lisp:t))
                                (:shape-name "BulkPublishRequest"))

(smithy/sdk/shapes:define-output bulk-publish-response common-lisp:nil
                                 ((identity-pool-id :target-type
                                   identity-pool-id :member-name
                                   "IdentityPoolId"))
                                 (:shape-name "BulkPublishResponse"))

(smithy/sdk/shapes:define-enum bulk-publish-status
    common-lisp:nil
  (:not-started "NOT_STARTED")
  (:in-progress "IN_PROGRESS")
  (:failed "FAILED")
  (:succeeded "SUCCEEDED"))

(smithy/sdk/shapes:define-type client-context smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type cognito-event-type
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure cognito-streams common-lisp:nil
                                    ((stream-name :target-type stream-name
                                      :member-name "StreamName")
                                     (role-arn :target-type assume-role-arn
                                      :member-name "RoleArn")
                                     (streaming-status :target-type
                                      streaming-status :member-name
                                      "StreamingStatus"))
                                    (:shape-name "CognitoStreams"))

(smithy/sdk/shapes:define-error concurrent-modification-exception
                                common-lisp:nil
                                ((message :target-type string :required
                                  common-lisp:t :member-name "message"))
                                (:shape-name "ConcurrentModificationException")
                                (:error-name "ConcurrentModification")
                                (:error-code 400))

(smithy/sdk/shapes:define-structure dataset common-lisp:nil
                                    ((identity-id :target-type identity-id
                                      :member-name "IdentityId")
                                     (dataset-name :target-type dataset-name
                                      :member-name "DatasetName")
                                     (creation-date :target-type date
                                      :member-name "CreationDate")
                                     (last-modified-date :target-type date
                                      :member-name "LastModifiedDate")
                                     (last-modified-by :target-type string
                                      :member-name "LastModifiedBy")
                                     (data-storage :target-type long
                                      :member-name "DataStorage")
                                     (num-records :target-type long
                                      :member-name "NumRecords"))
                                    (:shape-name "Dataset"))

(smithy/sdk/shapes:define-list dataset-list :member dataset)

(smithy/sdk/shapes:define-type dataset-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type date smithy/sdk/smithy-types:timestamp)

(smithy/sdk/shapes:define-input delete-dataset-request common-lisp:nil
                                ((identity-pool-id :target-type
                                  identity-pool-id :required common-lisp:t
                                  :member-name "IdentityPoolId" :http-label
                                  common-lisp:t)
                                 (identity-id :target-type identity-id
                                  :required common-lisp:t :member-name
                                  "IdentityId" :http-label common-lisp:t)
                                 (dataset-name :target-type dataset-name
                                  :required common-lisp:t :member-name
                                  "DatasetName" :http-label common-lisp:t))
                                (:shape-name "DeleteDatasetRequest"))

(smithy/sdk/shapes:define-output delete-dataset-response common-lisp:nil
                                 ((dataset :target-type dataset :member-name
                                   "Dataset"))
                                 (:shape-name "DeleteDatasetResponse"))

(smithy/sdk/shapes:define-input describe-dataset-request common-lisp:nil
                                ((identity-pool-id :target-type
                                  identity-pool-id :required common-lisp:t
                                  :member-name "IdentityPoolId" :http-label
                                  common-lisp:t)
                                 (identity-id :target-type identity-id
                                  :required common-lisp:t :member-name
                                  "IdentityId" :http-label common-lisp:t)
                                 (dataset-name :target-type dataset-name
                                  :required common-lisp:t :member-name
                                  "DatasetName" :http-label common-lisp:t))
                                (:shape-name "DescribeDatasetRequest"))

(smithy/sdk/shapes:define-output describe-dataset-response common-lisp:nil
                                 ((dataset :target-type dataset :member-name
                                   "Dataset"))
                                 (:shape-name "DescribeDatasetResponse"))

(smithy/sdk/shapes:define-input describe-identity-pool-usage-request
                                common-lisp:nil
                                ((identity-pool-id :target-type
                                  identity-pool-id :required common-lisp:t
                                  :member-name "IdentityPoolId" :http-label
                                  common-lisp:t))
                                (:shape-name
                                 "DescribeIdentityPoolUsageRequest"))

(smithy/sdk/shapes:define-output describe-identity-pool-usage-response
                                 common-lisp:nil
                                 ((identity-pool-usage :target-type
                                   identity-pool-usage :member-name
                                   "IdentityPoolUsage"))
                                 (:shape-name
                                  "DescribeIdentityPoolUsageResponse"))

(smithy/sdk/shapes:define-input describe-identity-usage-request common-lisp:nil
                                ((identity-pool-id :target-type
                                  identity-pool-id :required common-lisp:t
                                  :member-name "IdentityPoolId" :http-label
                                  common-lisp:t)
                                 (identity-id :target-type identity-id
                                  :required common-lisp:t :member-name
                                  "IdentityId" :http-label common-lisp:t))
                                (:shape-name "DescribeIdentityUsageRequest"))

(smithy/sdk/shapes:define-output describe-identity-usage-response
                                 common-lisp:nil
                                 ((identity-usage :target-type identity-usage
                                   :member-name "IdentityUsage"))
                                 (:shape-name "DescribeIdentityUsageResponse"))

(smithy/sdk/shapes:define-type device-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error duplicate-request-exception common-lisp:nil
                                ((message :target-type exception-message
                                  :required common-lisp:t :member-name
                                  "message"))
                                (:shape-name "DuplicateRequestException")
                                (:error-name "DuplicateRequest")
                                (:error-code 400))

(smithy/sdk/shapes:define-map events :key cognito-event-type :value
                              lambda-function-arn)

(smithy/sdk/shapes:define-type exception-message smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input get-bulk-publish-details-request
                                common-lisp:nil
                                ((identity-pool-id :target-type
                                  identity-pool-id :required common-lisp:t
                                  :member-name "IdentityPoolId" :http-label
                                  common-lisp:t))
                                (:shape-name "GetBulkPublishDetailsRequest"))

(smithy/sdk/shapes:define-output get-bulk-publish-details-response
                                 common-lisp:nil
                                 ((identity-pool-id :target-type
                                   identity-pool-id :member-name
                                   "IdentityPoolId")
                                  (bulk-publish-start-time :target-type date
                                   :member-name "BulkPublishStartTime")
                                  (bulk-publish-complete-time :target-type date
                                   :member-name "BulkPublishCompleteTime")
                                  (bulk-publish-status :target-type
                                   bulk-publish-status :member-name
                                   "BulkPublishStatus")
                                  (failure-message :target-type string
                                   :member-name "FailureMessage"))
                                 (:shape-name "GetBulkPublishDetailsResponse"))

(smithy/sdk/shapes:define-input get-cognito-events-request common-lisp:nil
                                ((identity-pool-id :target-type
                                  identity-pool-id :required common-lisp:t
                                  :member-name "IdentityPoolId" :http-label
                                  common-lisp:t))
                                (:shape-name "GetCognitoEventsRequest"))

(smithy/sdk/shapes:define-output get-cognito-events-response common-lisp:nil
                                 ((events :target-type events :member-name
                                   "Events"))
                                 (:shape-name "GetCognitoEventsResponse"))

(smithy/sdk/shapes:define-input get-identity-pool-configuration-request
                                common-lisp:nil
                                ((identity-pool-id :target-type
                                  identity-pool-id :required common-lisp:t
                                  :member-name "IdentityPoolId" :http-label
                                  common-lisp:t))
                                (:shape-name
                                 "GetIdentityPoolConfigurationRequest"))

(smithy/sdk/shapes:define-output get-identity-pool-configuration-response
                                 common-lisp:nil
                                 ((identity-pool-id :target-type
                                   identity-pool-id :member-name
                                   "IdentityPoolId")
                                  (push-sync :target-type push-sync
                                   :member-name "PushSync")
                                  (cognito-streams :target-type cognito-streams
                                   :member-name "CognitoStreams"))
                                 (:shape-name
                                  "GetIdentityPoolConfigurationResponse"))

(smithy/sdk/shapes:define-type identity-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type identity-pool-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure identity-pool-usage common-lisp:nil
                                    ((identity-pool-id :target-type
                                      identity-pool-id :member-name
                                      "IdentityPoolId")
                                     (sync-sessions-count :target-type long
                                      :member-name "SyncSessionsCount")
                                     (data-storage :target-type long
                                      :member-name "DataStorage")
                                     (last-modified-date :target-type date
                                      :member-name "LastModifiedDate"))
                                    (:shape-name "IdentityPoolUsage"))

(smithy/sdk/shapes:define-list identity-pool-usage-list :member
                               identity-pool-usage)

(smithy/sdk/shapes:define-structure identity-usage common-lisp:nil
                                    ((identity-id :target-type identity-id
                                      :member-name "IdentityId")
                                     (identity-pool-id :target-type
                                      identity-pool-id :member-name
                                      "IdentityPoolId")
                                     (last-modified-date :target-type date
                                      :member-name "LastModifiedDate")
                                     (dataset-count :target-type integer
                                      :member-name "DatasetCount")
                                     (data-storage :target-type long
                                      :member-name "DataStorage"))
                                    (:shape-name "IdentityUsage"))

(smithy/sdk/shapes:define-type integer smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type integer-string smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-error internal-error-exception common-lisp:nil
                                ((message :target-type exception-message
                                  :required common-lisp:t :member-name
                                  "message"))
                                (:shape-name "InternalErrorException")
                                (:error-name "InternalError") (:error-code 500))

(smithy/sdk/shapes:define-error invalid-configuration-exception common-lisp:nil
                                ((message :target-type exception-message
                                  :required common-lisp:t :member-name
                                  "message"))
                                (:shape-name "InvalidConfigurationException")
                                (:error-name "InvalidConfiguration")
                                (:error-code 400))

(smithy/sdk/shapes:define-error invalid-lambda-function-output-exception
                                common-lisp:nil
                                ((message :target-type exception-message
                                  :required common-lisp:t :member-name
                                  "message"))
                                (:shape-name
                                 "InvalidLambdaFunctionOutputException")
                                (:error-name "InvalidLambdaFunctionOutput")
                                (:error-code 400))

(smithy/sdk/shapes:define-error invalid-parameter-exception common-lisp:nil
                                ((message :target-type exception-message
                                  :required common-lisp:t :member-name
                                  "message"))
                                (:shape-name "InvalidParameterException")
                                (:error-name "InvalidParameter")
                                (:error-code 400))

(smithy/sdk/shapes:define-type lambda-function-arn
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error lambda-throttled-exception common-lisp:nil
                                ((message :target-type exception-message
                                  :required common-lisp:t :member-name
                                  "message"))
                                (:shape-name "LambdaThrottledException")
                                (:error-name "LambdaThrottled")
                                (:error-code 429))

(smithy/sdk/shapes:define-error limit-exceeded-exception common-lisp:nil
                                ((message :target-type exception-message
                                  :required common-lisp:t :member-name
                                  "message"))
                                (:shape-name "LimitExceededException")
                                (:error-name "LimitExceeded") (:error-code 400))

(smithy/sdk/shapes:define-input list-datasets-request common-lisp:nil
                                ((identity-pool-id :target-type
                                  identity-pool-id :required common-lisp:t
                                  :member-name "IdentityPoolId" :http-label
                                  common-lisp:t)
                                 (identity-id :target-type identity-id
                                  :required common-lisp:t :member-name
                                  "IdentityId" :http-label common-lisp:t)
                                 (next-token :target-type string :member-name
                                  "NextToken" :http-query "nextToken")
                                 (max-results :target-type integer-string
                                  :member-name "MaxResults" :http-query
                                  "maxResults"))
                                (:shape-name "ListDatasetsRequest"))

(smithy/sdk/shapes:define-output list-datasets-response common-lisp:nil
                                 ((datasets :target-type dataset-list
                                   :member-name "Datasets")
                                  (count :target-type integer :member-name
                                   "Count")
                                  (next-token :target-type string :member-name
                                   "NextToken"))
                                 (:shape-name "ListDatasetsResponse"))

(smithy/sdk/shapes:define-input list-identity-pool-usage-request
                                common-lisp:nil
                                ((next-token :target-type string :member-name
                                  "NextToken" :http-query "nextToken")
                                 (max-results :target-type integer-string
                                  :member-name "MaxResults" :http-query
                                  "maxResults"))
                                (:shape-name "ListIdentityPoolUsageRequest"))

(smithy/sdk/shapes:define-output list-identity-pool-usage-response
                                 common-lisp:nil
                                 ((identity-pool-usages :target-type
                                   identity-pool-usage-list :member-name
                                   "IdentityPoolUsages")
                                  (max-results :target-type integer
                                   :member-name "MaxResults")
                                  (count :target-type integer :member-name
                                   "Count")
                                  (next-token :target-type string :member-name
                                   "NextToken"))
                                 (:shape-name "ListIdentityPoolUsageResponse"))

(smithy/sdk/shapes:define-input list-records-request common-lisp:nil
                                ((identity-pool-id :target-type
                                  identity-pool-id :required common-lisp:t
                                  :member-name "IdentityPoolId" :http-label
                                  common-lisp:t)
                                 (identity-id :target-type identity-id
                                  :required common-lisp:t :member-name
                                  "IdentityId" :http-label common-lisp:t)
                                 (dataset-name :target-type dataset-name
                                  :required common-lisp:t :member-name
                                  "DatasetName" :http-label common-lisp:t)
                                 (last-sync-count :target-type long
                                  :member-name "LastSyncCount" :http-query
                                  "lastSyncCount")
                                 (next-token :target-type string :member-name
                                  "NextToken" :http-query "nextToken")
                                 (max-results :target-type integer-string
                                  :member-name "MaxResults" :http-query
                                  "maxResults")
                                 (sync-session-token :target-type
                                  sync-session-token :member-name
                                  "SyncSessionToken" :http-query
                                  "syncSessionToken"))
                                (:shape-name "ListRecordsRequest"))

(smithy/sdk/shapes:define-output list-records-response common-lisp:nil
                                 ((records :target-type record-list
                                   :member-name "Records")
                                  (next-token :target-type string :member-name
                                   "NextToken")
                                  (count :target-type integer :member-name
                                   "Count")
                                  (dataset-sync-count :target-type long
                                   :member-name "DatasetSyncCount")
                                  (last-modified-by :target-type string
                                   :member-name "LastModifiedBy")
                                  (merged-dataset-names :target-type
                                   merged-dataset-name-list :member-name
                                   "MergedDatasetNames")
                                  (dataset-exists :target-type boolean
                                   :member-name "DatasetExists")
                                  (dataset-deleted-after-requested-sync-count
                                   :target-type boolean :member-name
                                   "DatasetDeletedAfterRequestedSyncCount")
                                  (sync-session-token :target-type string
                                   :member-name "SyncSessionToken"))
                                 (:shape-name "ListRecordsResponse"))

(smithy/sdk/shapes:define-type long smithy/sdk/smithy-types:long)

(smithy/sdk/shapes:define-list merged-dataset-name-list :member string)

(smithy/sdk/shapes:define-error not-authorized-exception common-lisp:nil
                                ((message :target-type exception-message
                                  :required common-lisp:t :member-name
                                  "message"))
                                (:shape-name "NotAuthorizedException")
                                (:error-name "NotAuthorizedError")
                                (:error-code 403))

(smithy/sdk/shapes:define-enum operation
    common-lisp:nil
  (:replace "replace")
  (:remove "remove"))

(smithy/sdk/shapes:define-enum platform
    common-lisp:nil
  (:apns "APNS")
  (:apns-sandbox "APNS_SANDBOX")
  (:gcm "GCM")
  (:adm "ADM"))

(smithy/sdk/shapes:define-structure push-sync common-lisp:nil
                                    ((application-arns :target-type
                                      application-arn-list :member-name
                                      "ApplicationArns")
                                     (role-arn :target-type assume-role-arn
                                      :member-name "RoleArn"))
                                    (:shape-name "PushSync"))

(smithy/sdk/shapes:define-type push-token smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure record common-lisp:nil
                                    ((key :target-type record-key :member-name
                                      "Key")
                                     (value :target-type record-value
                                      :member-name "Value")
                                     (sync-count :target-type long :member-name
                                      "SyncCount")
                                     (last-modified-date :target-type date
                                      :member-name "LastModifiedDate")
                                     (last-modified-by :target-type string
                                      :member-name "LastModifiedBy")
                                     (device-last-modified-date :target-type
                                      date :member-name
                                      "DeviceLastModifiedDate"))
                                    (:shape-name "Record"))

(smithy/sdk/shapes:define-type record-key smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list record-list :member record)

(smithy/sdk/shapes:define-structure record-patch common-lisp:nil
                                    ((op :target-type operation :required
                                      common-lisp:t :member-name "Op")
                                     (key :target-type record-key :required
                                      common-lisp:t :member-name "Key")
                                     (value :target-type record-value
                                      :member-name "Value")
                                     (sync-count :target-type long :required
                                      common-lisp:t :member-name "SyncCount")
                                     (device-last-modified-date :target-type
                                      date :member-name
                                      "DeviceLastModifiedDate"))
                                    (:shape-name "RecordPatch"))

(smithy/sdk/shapes:define-list record-patch-list :member record-patch)

(smithy/sdk/shapes:define-type record-value smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input register-device-request common-lisp:nil
                                ((identity-pool-id :target-type
                                  identity-pool-id :required common-lisp:t
                                  :member-name "IdentityPoolId" :http-label
                                  common-lisp:t)
                                 (identity-id :target-type identity-id
                                  :required common-lisp:t :member-name
                                  "IdentityId" :http-label common-lisp:t)
                                 (platform :target-type platform :required
                                  common-lisp:t :member-name "Platform")
                                 (token :target-type push-token :required
                                  common-lisp:t :member-name "Token"))
                                (:shape-name "RegisterDeviceRequest"))

(smithy/sdk/shapes:define-output register-device-response common-lisp:nil
                                 ((device-id :target-type device-id
                                   :member-name "DeviceId"))
                                 (:shape-name "RegisterDeviceResponse"))

(smithy/sdk/shapes:define-error resource-conflict-exception common-lisp:nil
                                ((message :target-type exception-message
                                  :required common-lisp:t :member-name
                                  "message"))
                                (:shape-name "ResourceConflictException")
                                (:error-name "ResourceConflict")
                                (:error-code 409))

(smithy/sdk/shapes:define-error resource-not-found-exception common-lisp:nil
                                ((message :target-type exception-message
                                  :required common-lisp:t :member-name
                                  "message"))
                                (:shape-name "ResourceNotFoundException")
                                (:error-name "ResourceNotFound")
                                (:error-code 404))

(smithy/sdk/shapes:define-input set-cognito-events-request common-lisp:nil
                                ((identity-pool-id :target-type
                                  identity-pool-id :required common-lisp:t
                                  :member-name "IdentityPoolId" :http-label
                                  common-lisp:t)
                                 (events :target-type events :required
                                  common-lisp:t :member-name "Events"))
                                (:shape-name "SetCognitoEventsRequest"))

(smithy/sdk/shapes:define-input set-identity-pool-configuration-request
                                common-lisp:nil
                                ((identity-pool-id :target-type
                                  identity-pool-id :required common-lisp:t
                                  :member-name "IdentityPoolId" :http-label
                                  common-lisp:t)
                                 (push-sync :target-type push-sync :member-name
                                  "PushSync")
                                 (cognito-streams :target-type cognito-streams
                                  :member-name "CognitoStreams"))
                                (:shape-name
                                 "SetIdentityPoolConfigurationRequest"))

(smithy/sdk/shapes:define-output set-identity-pool-configuration-response
                                 common-lisp:nil
                                 ((identity-pool-id :target-type
                                   identity-pool-id :member-name
                                   "IdentityPoolId")
                                  (push-sync :target-type push-sync
                                   :member-name "PushSync")
                                  (cognito-streams :target-type cognito-streams
                                   :member-name "CognitoStreams"))
                                 (:shape-name
                                  "SetIdentityPoolConfigurationResponse"))

(smithy/sdk/shapes:define-type stream-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum streaming-status
    common-lisp:nil
  (:enabled "ENABLED")
  (:disabled "DISABLED"))

(smithy/sdk/shapes:define-type string smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input subscribe-to-dataset-request common-lisp:nil
                                ((identity-pool-id :target-type
                                  identity-pool-id :required common-lisp:t
                                  :member-name "IdentityPoolId" :http-label
                                  common-lisp:t)
                                 (identity-id :target-type identity-id
                                  :required common-lisp:t :member-name
                                  "IdentityId" :http-label common-lisp:t)
                                 (dataset-name :target-type dataset-name
                                  :required common-lisp:t :member-name
                                  "DatasetName" :http-label common-lisp:t)
                                 (device-id :target-type device-id :required
                                  common-lisp:t :member-name "DeviceId"
                                  :http-label common-lisp:t))
                                (:shape-name "SubscribeToDatasetRequest"))

(smithy/sdk/shapes:define-output subscribe-to-dataset-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "SubscribeToDatasetResponse"))

(smithy/sdk/shapes:define-type sync-session-token
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error too-many-requests-exception common-lisp:nil
                                ((message :target-type exception-message
                                  :required common-lisp:t :member-name
                                  "message"))
                                (:shape-name "TooManyRequestsException")
                                (:error-name "TooManyRequests")
                                (:error-code 429))

(smithy/sdk/shapes:define-input unsubscribe-from-dataset-request
                                common-lisp:nil
                                ((identity-pool-id :target-type
                                  identity-pool-id :required common-lisp:t
                                  :member-name "IdentityPoolId" :http-label
                                  common-lisp:t)
                                 (identity-id :target-type identity-id
                                  :required common-lisp:t :member-name
                                  "IdentityId" :http-label common-lisp:t)
                                 (dataset-name :target-type dataset-name
                                  :required common-lisp:t :member-name
                                  "DatasetName" :http-label common-lisp:t)
                                 (device-id :target-type device-id :required
                                  common-lisp:t :member-name "DeviceId"
                                  :http-label common-lisp:t))
                                (:shape-name "UnsubscribeFromDatasetRequest"))

(smithy/sdk/shapes:define-output unsubscribe-from-dataset-response
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name "UnsubscribeFromDatasetResponse"))

(smithy/sdk/shapes:define-input update-records-request common-lisp:nil
                                ((identity-pool-id :target-type
                                  identity-pool-id :required common-lisp:t
                                  :member-name "IdentityPoolId" :http-label
                                  common-lisp:t)
                                 (identity-id :target-type identity-id
                                  :required common-lisp:t :member-name
                                  "IdentityId" :http-label common-lisp:t)
                                 (dataset-name :target-type dataset-name
                                  :required common-lisp:t :member-name
                                  "DatasetName" :http-label common-lisp:t)
                                 (device-id :target-type device-id :member-name
                                  "DeviceId")
                                 (record-patches :target-type record-patch-list
                                  :member-name "RecordPatches")
                                 (sync-session-token :target-type
                                  sync-session-token :required common-lisp:t
                                  :member-name "SyncSessionToken")
                                 (client-context :target-type client-context
                                  :member-name "ClientContext" :http-header
                                  "x-amz-Client-Context"))
                                (:shape-name "UpdateRecordsRequest"))

(smithy/sdk/shapes:define-output update-records-response common-lisp:nil
                                 ((records :target-type record-list
                                   :member-name "Records"))
                                 (:shape-name "UpdateRecordsResponse"))

(smithy/sdk/operation:define-operation bulk-publish :shape-name "BulkPublish"
                                       :input bulk-publish-request :output
                                       bulk-publish-response :errors
                                       (already-streamed-exception
                                        duplicate-request-exception
                                        internal-error-exception
                                        invalid-parameter-exception
                                        not-authorized-exception
                                        resource-not-found-exception)
                                       :method "POST" :uri
                                       "/identitypools/{IdentityPoolId}/bulkpublish"
                                       :code 200)

(smithy/sdk/operation:define-operation delete-dataset :shape-name
                                       "DeleteDataset" :input
                                       delete-dataset-request :output
                                       delete-dataset-response :errors
                                       (internal-error-exception
                                        invalid-parameter-exception
                                        not-authorized-exception
                                        resource-conflict-exception
                                        resource-not-found-exception
                                        too-many-requests-exception)
                                       :method "DELETE" :uri
                                       "/identitypools/{IdentityPoolId}/identities/{IdentityId}/datasets/{DatasetName}"
                                       :code 200)

(smithy/sdk/operation:define-operation describe-dataset :shape-name
                                       "DescribeDataset" :input
                                       describe-dataset-request :output
                                       describe-dataset-response :errors
                                       (internal-error-exception
                                        invalid-parameter-exception
                                        not-authorized-exception
                                        resource-not-found-exception
                                        too-many-requests-exception)
                                       :method "GET" :uri
                                       "/identitypools/{IdentityPoolId}/identities/{IdentityId}/datasets/{DatasetName}"
                                       :code 200)

(smithy/sdk/operation:define-operation describe-identity-pool-usage :shape-name
                                       "DescribeIdentityPoolUsage" :input
                                       describe-identity-pool-usage-request
                                       :output
                                       describe-identity-pool-usage-response
                                       :errors
                                       (internal-error-exception
                                        invalid-parameter-exception
                                        not-authorized-exception
                                        resource-not-found-exception
                                        too-many-requests-exception)
                                       :method "GET" :uri
                                       "/identitypools/{IdentityPoolId}" :code
                                       200)

(smithy/sdk/operation:define-operation describe-identity-usage :shape-name
                                       "DescribeIdentityUsage" :input
                                       describe-identity-usage-request :output
                                       describe-identity-usage-response :errors
                                       (internal-error-exception
                                        invalid-parameter-exception
                                        not-authorized-exception
                                        resource-not-found-exception
                                        too-many-requests-exception)
                                       :method "GET" :uri
                                       "/identitypools/{IdentityPoolId}/identities/{IdentityId}"
                                       :code 200)

(smithy/sdk/operation:define-operation get-bulk-publish-details :shape-name
                                       "GetBulkPublishDetails" :input
                                       get-bulk-publish-details-request :output
                                       get-bulk-publish-details-response
                                       :errors
                                       (internal-error-exception
                                        invalid-parameter-exception
                                        not-authorized-exception
                                        resource-not-found-exception)
                                       :method "POST" :uri
                                       "/identitypools/{IdentityPoolId}/getBulkPublishDetails"
                                       :code 200)

(smithy/sdk/operation:define-operation get-cognito-events :shape-name
                                       "GetCognitoEvents" :input
                                       get-cognito-events-request :output
                                       get-cognito-events-response :errors
                                       (internal-error-exception
                                        invalid-parameter-exception
                                        not-authorized-exception
                                        resource-not-found-exception
                                        too-many-requests-exception)
                                       :method "GET" :uri
                                       "/identitypools/{IdentityPoolId}/events"
                                       :code 200)

(smithy/sdk/operation:define-operation get-identity-pool-configuration
                                       :shape-name
                                       "GetIdentityPoolConfiguration" :input
                                       get-identity-pool-configuration-request
                                       :output
                                       get-identity-pool-configuration-response
                                       :errors
                                       (internal-error-exception
                                        invalid-parameter-exception
                                        not-authorized-exception
                                        resource-not-found-exception
                                        too-many-requests-exception)
                                       :method "GET" :uri
                                       "/identitypools/{IdentityPoolId}/configuration"
                                       :code 200)

(smithy/sdk/operation:define-operation list-datasets :shape-name "ListDatasets"
                                       :input list-datasets-request :output
                                       list-datasets-response :errors
                                       (internal-error-exception
                                        invalid-parameter-exception
                                        not-authorized-exception
                                        too-many-requests-exception)
                                       :method "GET" :uri
                                       "/identitypools/{IdentityPoolId}/identities/{IdentityId}/datasets"
                                       :code 200)

(smithy/sdk/operation:define-operation list-identity-pool-usage :shape-name
                                       "ListIdentityPoolUsage" :input
                                       list-identity-pool-usage-request :output
                                       list-identity-pool-usage-response
                                       :errors
                                       (internal-error-exception
                                        invalid-parameter-exception
                                        not-authorized-exception
                                        too-many-requests-exception)
                                       :method "GET" :uri "/identitypools"
                                       :code 200)

(smithy/sdk/operation:define-operation list-records :shape-name "ListRecords"
                                       :input list-records-request :output
                                       list-records-response :errors
                                       (internal-error-exception
                                        invalid-parameter-exception
                                        not-authorized-exception
                                        too-many-requests-exception)
                                       :method "GET" :uri
                                       "/identitypools/{IdentityPoolId}/identities/{IdentityId}/datasets/{DatasetName}/records"
                                       :code 200)

(smithy/sdk/operation:define-operation register-device :shape-name
                                       "RegisterDevice" :input
                                       register-device-request :output
                                       register-device-response :errors
                                       (internal-error-exception
                                        invalid-configuration-exception
                                        invalid-parameter-exception
                                        not-authorized-exception
                                        resource-not-found-exception
                                        too-many-requests-exception)
                                       :method "POST" :uri
                                       "/identitypools/{IdentityPoolId}/identity/{IdentityId}/device"
                                       :code 200)

(smithy/sdk/operation:define-operation set-cognito-events :shape-name
                                       "SetCognitoEvents" :input
                                       set-cognito-events-request :output
                                       common-lisp:null :errors
                                       (internal-error-exception
                                        invalid-parameter-exception
                                        not-authorized-exception
                                        resource-not-found-exception
                                        too-many-requests-exception)
                                       :method "POST" :uri
                                       "/identitypools/{IdentityPoolId}/events"
                                       :code 200)

(smithy/sdk/operation:define-operation set-identity-pool-configuration
                                       :shape-name
                                       "SetIdentityPoolConfiguration" :input
                                       set-identity-pool-configuration-request
                                       :output
                                       set-identity-pool-configuration-response
                                       :errors
                                       (concurrent-modification-exception
                                        internal-error-exception
                                        invalid-parameter-exception
                                        not-authorized-exception
                                        resource-not-found-exception
                                        too-many-requests-exception)
                                       :method "POST" :uri
                                       "/identitypools/{IdentityPoolId}/configuration"
                                       :code 200)

(smithy/sdk/operation:define-operation subscribe-to-dataset :shape-name
                                       "SubscribeToDataset" :input
                                       subscribe-to-dataset-request :output
                                       subscribe-to-dataset-response :errors
                                       (internal-error-exception
                                        invalid-configuration-exception
                                        invalid-parameter-exception
                                        not-authorized-exception
                                        resource-not-found-exception
                                        too-many-requests-exception)
                                       :method "POST" :uri
                                       "/identitypools/{IdentityPoolId}/identities/{IdentityId}/datasets/{DatasetName}/subscriptions/{DeviceId}"
                                       :code 200)

(smithy/sdk/operation:define-operation unsubscribe-from-dataset :shape-name
                                       "UnsubscribeFromDataset" :input
                                       unsubscribe-from-dataset-request :output
                                       unsubscribe-from-dataset-response
                                       :errors
                                       (internal-error-exception
                                        invalid-configuration-exception
                                        invalid-parameter-exception
                                        not-authorized-exception
                                        resource-not-found-exception
                                        too-many-requests-exception)
                                       :method "DELETE" :uri
                                       "/identitypools/{IdentityPoolId}/identities/{IdentityId}/datasets/{DatasetName}/subscriptions/{DeviceId}"
                                       :code 200)

(smithy/sdk/operation:define-operation update-records :shape-name
                                       "UpdateRecords" :input
                                       update-records-request :output
                                       update-records-response :errors
                                       (internal-error-exception
                                        invalid-lambda-function-output-exception
                                        invalid-parameter-exception
                                        lambda-throttled-exception
                                        limit-exceeded-exception
                                        not-authorized-exception
                                        resource-conflict-exception
                                        resource-not-found-exception
                                        too-many-requests-exception)
                                       :method "POST" :uri
                                       "/identitypools/{IdentityPoolId}/identities/{IdentityId}/datasets/{DatasetName}"
                                       :code 200)
