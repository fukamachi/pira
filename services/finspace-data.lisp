(uiop/package:define-package #:pira/finspace-data (:use)
                             (:export #:awshabanero-public-api #:access-key-id
                              #:alias-string #:api-access
                              #:application-permission
                              #:application-permission-list
                              #:associate-user-to-permission-group
                              #:aws-credentials #:boolean #:change-type
                              #:changeset-arn #:changeset-error-info
                              #:changeset-id #:changeset-list
                              #:changeset-summary #:client-token
                              #:column-data-type #:column-definition
                              #:column-description #:column-list #:column-name
                              #:column-name-list #:create-changeset
                              #:create-data-view #:create-dataset
                              #:create-permission-group #:create-user
                              #:credentials #:data-view-arn
                              #:data-view-destination-type
                              #:data-view-destination-type-params
                              #:data-view-error-info #:data-view-id
                              #:data-view-list #:data-view-status
                              #:data-view-summary #:dataset #:dataset-arn
                              #:dataset-description #:dataset-id #:dataset-kind
                              #:dataset-list #:dataset-owner-info
                              #:dataset-status #:dataset-title #:delete-dataset
                              #:delete-permission-group #:disable-user
                              #:disassociate-user-from-permission-group #:email
                              #:enable-user #:error-category #:error-message
                              #:error-message2 #:export-file-format
                              #:first-name #:format-params #:get-changeset
                              #:get-data-view #:get-dataset
                              #:get-external-data-view-access-details
                              #:get-permission-group
                              #:get-programmatic-access-credentials #:get-user
                              #:get-working-location #:id-type
                              #:ingestion-status #:last-name #:list-changesets
                              #:list-data-views #:list-datasets
                              #:list-permission-groups
                              #:list-permission-groups-by-user #:list-users
                              #:list-users-by-permission-group #:owner-name
                              #:pagination-token #:partition-column-list
                              #:password #:permission-group
                              #:permission-group-by-user
                              #:permission-group-by-user-list
                              #:permission-group-description
                              #:permission-group-id #:permission-group-list
                              #:permission-group-membership-status
                              #:permission-group-name #:permission-group-params
                              #:phone-number #:reset-user-password
                              #:resource-permission #:resource-permissions-list
                              #:result-limit #:role-arn #:s3bucket-name
                              #:s3destination-format-options #:s3key
                              #:s3location #:schema-definition #:schema-union
                              #:secret-access-key #:session-duration
                              #:session-token #:sort-column-list
                              #:source-params #:status-code #:string-map-key
                              #:string-map-value #:string-value-length1to250
                              #:string-value-length1to255
                              #:string-value-length1to2552 #:timestamp-epoch
                              #:update-changeset #:update-dataset
                              #:update-permission-group #:update-user #:user
                              #:user-by-permission-group
                              #:user-by-permission-group-list #:user-id
                              #:user-list #:user-status #:user-type
                              #:location-type #:string-value-length1to1024
                              #:string-value-length1to63
                              #:string-value-max-length1000))
(common-lisp:in-package #:pira/finspace-data)

(smithy/sdk/service:define-service awshabanero-public-api :shape-name
                                   "AWSHabaneroPublicAPI" :version "2020-07-13"
                                   :title "FinSpace Public API" :operations
                                   '(associate-user-to-permission-group
                                     create-changeset create-dataset
                                     create-data-view create-permission-group
                                     create-user delete-dataset
                                     delete-permission-group disable-user
                                     disassociate-user-from-permission-group
                                     enable-user get-changeset get-dataset
                                     get-data-view
                                     get-external-data-view-access-details
                                     get-permission-group
                                     get-programmatic-access-credentials
                                     get-user get-working-location
                                     list-changesets list-datasets
                                     list-data-views list-permission-groups
                                     list-permission-groups-by-user list-users
                                     list-users-by-permission-group
                                     reset-user-password update-changeset
                                     update-dataset update-permission-group
                                     update-user)
                                   :traits
                                   '(("aws.api#service"
                                      ("sdkId" . "finspace data")
                                      ("arnNamespace" . "finspace-api")
                                      ("cloudFormationName" . "Finspacedata")
                                      ("cloudTrailEventSource"
                                       . "finspacedata.amazonaws.com")
                                      ("docId" . "finspace-2020-07-13")
                                      ("endpointPrefix" . "finspace-api"))
                                     ("aws.auth#sigv4"
                                      ("name" . "finspace-api"))
                                     ("aws.protocols#restJson1")))

(smithy/sdk/shapes:define-error access-denied-exception common-lisp:nil
                                ((message :target-type error-message2
                                  :member-name "message"))
                                (:shape-name "AccessDeniedException")
                                (:error-code 403))

(smithy/sdk/shapes:define-type access-key-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type alias-string smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum api-access
    common-lisp:nil
  (:enabled "ENABLED")
  (:disabled "DISABLED"))

(smithy/sdk/shapes:define-enum application-permission
    common-lisp:nil
  (:create-dataset "CreateDataset")
  (:manage-clusters "ManageClusters")
  (:manage-users-and-groups "ManageUsersAndGroups")
  (:manage-attribute-sets "ManageAttributeSets")
  (:view-audit-data "ViewAuditData")
  (:access-notebooks "AccessNotebooks")
  (:get-temporary-credentials "GetTemporaryCredentials"))

(smithy/sdk/shapes:define-list application-permission-list :member
                               application-permission)

(smithy/sdk/shapes:define-input associate-user-to-permission-group-request
                                common-lisp:nil
                                ((permission-group-id :target-type
                                  permission-group-id :required common-lisp:t
                                  :member-name "permissionGroupId" :http-label
                                  common-lisp:t)
                                 (user-id :target-type user-id :required
                                  common-lisp:t :member-name "userId"
                                  :http-label common-lisp:t)
                                 (client-token :target-type client-token
                                  :member-name "clientToken"))
                                (:shape-name
                                 "AssociateUserToPermissionGroupRequest"))

(smithy/sdk/shapes:define-output associate-user-to-permission-group-response
                                 common-lisp:nil
                                 ((status-code :target-type status-code
                                   :member-name "statusCode"
                                   :http-response-code common-lisp:t))
                                 (:shape-name
                                  "AssociateUserToPermissionGroupResponse"))

(smithy/sdk/shapes:define-structure aws-credentials common-lisp:nil
                                    ((access-key-id :target-type access-key-id
                                      :member-name "accessKeyId")
                                     (secret-access-key :target-type
                                      secret-access-key :member-name
                                      "secretAccessKey")
                                     (session-token :target-type session-token
                                      :member-name "sessionToken")
                                     (expiration :target-type timestamp-epoch
                                      :member-name "expiration"))
                                    (:shape-name "AwsCredentials"))

(smithy/sdk/shapes:define-type boolean smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-enum change-type
    common-lisp:nil
  (:replace "REPLACE")
  (:append "APPEND")
  (:modify "MODIFY"))

(smithy/sdk/shapes:define-type changeset-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure changeset-error-info common-lisp:nil
                                    ((error-message :target-type error-message
                                      :member-name "errorMessage")
                                     (error-category :target-type
                                      error-category :member-name
                                      "errorCategory"))
                                    (:shape-name "ChangesetErrorInfo"))

(smithy/sdk/shapes:define-type changeset-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list changeset-list :member changeset-summary)

(smithy/sdk/shapes:define-structure changeset-summary common-lisp:nil
                                    ((changeset-id :target-type changeset-id
                                      :member-name "changesetId")
                                     (changeset-arn :target-type changeset-arn
                                      :member-name "changesetArn")
                                     (dataset-id :target-type dataset-id
                                      :member-name "datasetId")
                                     (change-type :target-type change-type
                                      :member-name "changeType")
                                     (source-params :target-type source-params
                                      :member-name "sourceParams")
                                     (format-params :target-type format-params
                                      :member-name "formatParams")
                                     (create-time :target-type timestamp-epoch
                                      :member-name "createTime")
                                     (status :target-type ingestion-status
                                      :member-name "status")
                                     (error-info :target-type
                                      changeset-error-info :member-name
                                      "errorInfo")
                                     (active-until-timestamp :target-type
                                      timestamp-epoch :member-name
                                      "activeUntilTimestamp")
                                     (active-from-timestamp :target-type
                                      timestamp-epoch :member-name
                                      "activeFromTimestamp")
                                     (updates-changeset-id :target-type
                                      changeset-id :member-name
                                      "updatesChangesetId")
                                     (updated-by-changeset-id :target-type
                                      changeset-id :member-name
                                      "updatedByChangesetId"))
                                    (:shape-name "ChangesetSummary"))

(smithy/sdk/shapes:define-type client-token smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum column-data-type
    common-lisp:nil
  (:string "STRING")
  (:char "CHAR")
  (:integer "INTEGER")
  (:tinyint "TINYINT")
  (:smallint "SMALLINT")
  (:bigint "BIGINT")
  (:float "FLOAT")
  (:double "DOUBLE")
  (:date "DATE")
  (:datetime "DATETIME")
  (:boolean "BOOLEAN")
  (:binary "BINARY"))

(smithy/sdk/shapes:define-structure column-definition common-lisp:nil
                                    ((data-type :target-type column-data-type
                                      :member-name "dataType")
                                     (column-name :target-type column-name
                                      :member-name "columnName")
                                     (column-description :target-type
                                      column-description :member-name
                                      "columnDescription"))
                                    (:shape-name "ColumnDefinition"))

(smithy/sdk/shapes:define-type column-description
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list column-list :member column-definition)

(smithy/sdk/shapes:define-type column-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list column-name-list :member column-name)

(smithy/sdk/shapes:define-error conflict-exception common-lisp:nil
                                ((message :target-type error-message2
                                  :member-name "message")
                                 (reason :target-type error-message2
                                  :member-name "reason"))
                                (:shape-name "ConflictException")
                                (:error-code 409))

(smithy/sdk/shapes:define-input create-changeset-request common-lisp:nil
                                ((client-token :target-type client-token
                                  :member-name "clientToken")
                                 (dataset-id :target-type dataset-id :required
                                  common-lisp:t :member-name "datasetId"
                                  :http-label common-lisp:t)
                                 (change-type :target-type change-type
                                  :required common-lisp:t :member-name
                                  "changeType")
                                 (source-params :target-type source-params
                                  :required common-lisp:t :member-name
                                  "sourceParams")
                                 (format-params :target-type format-params
                                  :required common-lisp:t :member-name
                                  "formatParams"))
                                (:shape-name "CreateChangesetRequest"))

(smithy/sdk/shapes:define-output create-changeset-response common-lisp:nil
                                 ((dataset-id :target-type dataset-id
                                   :member-name "datasetId")
                                  (changeset-id :target-type changeset-id
                                   :member-name "changesetId"))
                                 (:shape-name "CreateChangesetResponse"))

(smithy/sdk/shapes:define-input create-data-view-request common-lisp:nil
                                ((client-token :target-type client-token
                                  :member-name "clientToken")
                                 (dataset-id :target-type dataset-id :required
                                  common-lisp:t :member-name "datasetId"
                                  :http-label common-lisp:t)
                                 (auto-update :target-type boolean :member-name
                                  "autoUpdate")
                                 (sort-columns :target-type sort-column-list
                                  :member-name "sortColumns")
                                 (partition-columns :target-type
                                  partition-column-list :member-name
                                  "partitionColumns")
                                 (as-of-timestamp :target-type timestamp-epoch
                                  :member-name "asOfTimestamp")
                                 (destination-type-params :target-type
                                  data-view-destination-type-params :required
                                  common-lisp:t :member-name
                                  "destinationTypeParams"))
                                (:shape-name "CreateDataViewRequest"))

(smithy/sdk/shapes:define-output create-data-view-response common-lisp:nil
                                 ((dataset-id :target-type dataset-id
                                   :member-name "datasetId")
                                  (data-view-id :target-type data-view-id
                                   :member-name "dataViewId"))
                                 (:shape-name "CreateDataViewResponse"))

(smithy/sdk/shapes:define-input create-dataset-request common-lisp:nil
                                ((client-token :target-type client-token
                                  :member-name "clientToken")
                                 (dataset-title :target-type dataset-title
                                  :required common-lisp:t :member-name
                                  "datasetTitle")
                                 (kind :target-type dataset-kind :required
                                  common-lisp:t :member-name "kind")
                                 (dataset-description :target-type
                                  dataset-description :member-name
                                  "datasetDescription")
                                 (owner-info :target-type dataset-owner-info
                                  :member-name "ownerInfo")
                                 (permission-group-params :target-type
                                  permission-group-params :required
                                  common-lisp:t :member-name
                                  "permissionGroupParams")
                                 (alias :target-type alias-string :member-name
                                  "alias")
                                 (schema-definition :target-type schema-union
                                  :member-name "schemaDefinition"))
                                (:shape-name "CreateDatasetRequest"))

(smithy/sdk/shapes:define-output create-dataset-response common-lisp:nil
                                 ((dataset-id :target-type dataset-id
                                   :member-name "datasetId"))
                                 (:shape-name "CreateDatasetResponse"))

(smithy/sdk/shapes:define-input create-permission-group-request common-lisp:nil
                                ((name :target-type permission-group-name
                                  :required common-lisp:t :member-name "name")
                                 (description :target-type
                                  permission-group-description :member-name
                                  "description")
                                 (application-permissions :target-type
                                  application-permission-list :required
                                  common-lisp:t :member-name
                                  "applicationPermissions")
                                 (client-token :target-type client-token
                                  :member-name "clientToken"))
                                (:shape-name "CreatePermissionGroupRequest"))

(smithy/sdk/shapes:define-output create-permission-group-response
                                 common-lisp:nil
                                 ((permission-group-id :target-type
                                   permission-group-id :member-name
                                   "permissionGroupId"))
                                 (:shape-name "CreatePermissionGroupResponse"))

(smithy/sdk/shapes:define-input create-user-request common-lisp:nil
                                ((email-address :target-type email :required
                                  common-lisp:t :member-name "emailAddress")
                                 (type :target-type user-type :required
                                  common-lisp:t :member-name "type")
                                 (first-name :target-type first-name
                                  :member-name "firstName")
                                 (last-name :target-type last-name :member-name
                                  "lastName")
                                 (api-access :target-type api-access
                                  :member-name "apiAccess")
                                 (api-access-principal-arn :target-type
                                  role-arn :member-name
                                  "apiAccessPrincipalArn")
                                 (client-token :target-type client-token
                                  :member-name "clientToken"))
                                (:shape-name "CreateUserRequest"))

(smithy/sdk/shapes:define-output create-user-response common-lisp:nil
                                 ((user-id :target-type user-id :member-name
                                   "userId"))
                                 (:shape-name "CreateUserResponse"))

(smithy/sdk/shapes:define-structure credentials common-lisp:nil
                                    ((access-key-id :target-type
                                      string-value-length1to2552 :member-name
                                      "accessKeyId")
                                     (secret-access-key :target-type
                                      string-value-max-length1000 :member-name
                                      "secretAccessKey")
                                     (session-token :target-type
                                      string-value-max-length1000 :member-name
                                      "sessionToken"))
                                    (:shape-name "Credentials"))

(smithy/sdk/shapes:define-type data-view-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type data-view-destination-type
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure data-view-destination-type-params
                                    common-lisp:nil
                                    ((destination-type :target-type
                                      data-view-destination-type :required
                                      common-lisp:t :member-name
                                      "destinationType")
                                     (s3destination-export-file-format
                                      :target-type export-file-format
                                      :member-name
                                      "s3DestinationExportFileFormat")
                                     (s3destination-export-file-format-options
                                      :target-type s3destination-format-options
                                      :member-name
                                      "s3DestinationExportFileFormatOptions"))
                                    (:shape-name
                                     "DataViewDestinationTypeParams"))

(smithy/sdk/shapes:define-structure data-view-error-info common-lisp:nil
                                    ((error-message :target-type error-message
                                      :member-name "errorMessage")
                                     (error-category :target-type
                                      error-category :member-name
                                      "errorCategory"))
                                    (:shape-name "DataViewErrorInfo"))

(smithy/sdk/shapes:define-type data-view-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list data-view-list :member data-view-summary)

(smithy/sdk/shapes:define-enum data-view-status
    common-lisp:nil
  (:running "RUNNING")
  (:starting "STARTING")
  (:failed "FAILED")
  (:cancelled "CANCELLED")
  (:timeout "TIMEOUT")
  (:success "SUCCESS")
  (:pending "PENDING")
  (:failed-cleanup-failed "FAILED_CLEANUP_FAILED"))

(smithy/sdk/shapes:define-structure data-view-summary common-lisp:nil
                                    ((data-view-id :target-type data-view-id
                                      :member-name "dataViewId")
                                     (data-view-arn :target-type data-view-arn
                                      :member-name "dataViewArn")
                                     (dataset-id :target-type dataset-id
                                      :member-name "datasetId")
                                     (as-of-timestamp :target-type
                                      timestamp-epoch :member-name
                                      "asOfTimestamp")
                                     (partition-columns :target-type
                                      partition-column-list :member-name
                                      "partitionColumns")
                                     (sort-columns :target-type
                                      sort-column-list :member-name
                                      "sortColumns")
                                     (status :target-type data-view-status
                                      :member-name "status")
                                     (error-info :target-type
                                      data-view-error-info :member-name
                                      "errorInfo")
                                     (destination-type-properties :target-type
                                      data-view-destination-type-params
                                      :member-name "destinationTypeProperties")
                                     (auto-update :target-type boolean
                                      :member-name "autoUpdate")
                                     (create-time :target-type timestamp-epoch
                                      :member-name "createTime")
                                     (last-modified-time :target-type
                                      timestamp-epoch :member-name
                                      "lastModifiedTime"))
                                    (:shape-name "DataViewSummary"))

(smithy/sdk/shapes:define-structure dataset common-lisp:nil
                                    ((dataset-id :target-type dataset-id
                                      :member-name "datasetId")
                                     (dataset-arn :target-type dataset-arn
                                      :member-name "datasetArn")
                                     (dataset-title :target-type dataset-title
                                      :member-name "datasetTitle")
                                     (kind :target-type dataset-kind
                                      :member-name "kind")
                                     (dataset-description :target-type
                                      dataset-description :member-name
                                      "datasetDescription")
                                     (owner-info :target-type
                                      dataset-owner-info :member-name
                                      "ownerInfo")
                                     (create-time :target-type timestamp-epoch
                                      :member-name "createTime")
                                     (last-modified-time :target-type
                                      timestamp-epoch :member-name
                                      "lastModifiedTime")
                                     (schema-definition :target-type
                                      schema-union :member-name
                                      "schemaDefinition")
                                     (alias :target-type alias-string
                                      :member-name "alias"))
                                    (:shape-name "Dataset"))

(smithy/sdk/shapes:define-type dataset-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type dataset-description
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type dataset-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum dataset-kind
    common-lisp:nil
  (:tabular "TABULAR")
  (:non-tabular "NON_TABULAR"))

(smithy/sdk/shapes:define-list dataset-list :member dataset)

(smithy/sdk/shapes:define-structure dataset-owner-info common-lisp:nil
                                    ((name :target-type owner-name :member-name
                                      "name")
                                     (phone-number :target-type phone-number
                                      :member-name "phoneNumber")
                                     (email :target-type email :member-name
                                      "email"))
                                    (:shape-name "DatasetOwnerInfo"))

(smithy/sdk/shapes:define-enum dataset-status
    common-lisp:nil
  (:pending "PENDING")
  (:failed "FAILED")
  (:success "SUCCESS")
  (:running "RUNNING"))

(smithy/sdk/shapes:define-type dataset-title smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input delete-dataset-request common-lisp:nil
                                ((client-token :target-type client-token
                                  :member-name "clientToken" :http-query
                                  "clientToken")
                                 (dataset-id :target-type dataset-id :required
                                  common-lisp:t :member-name "datasetId"
                                  :http-label common-lisp:t))
                                (:shape-name "DeleteDatasetRequest"))

(smithy/sdk/shapes:define-output delete-dataset-response common-lisp:nil
                                 ((dataset-id :target-type dataset-id
                                   :member-name "datasetId"))
                                 (:shape-name "DeleteDatasetResponse"))

(smithy/sdk/shapes:define-input delete-permission-group-request common-lisp:nil
                                ((permission-group-id :target-type
                                  permission-group-id :required common-lisp:t
                                  :member-name "permissionGroupId" :http-label
                                  common-lisp:t)
                                 (client-token :target-type client-token
                                  :member-name "clientToken" :http-query
                                  "clientToken"))
                                (:shape-name "DeletePermissionGroupRequest"))

(smithy/sdk/shapes:define-output delete-permission-group-response
                                 common-lisp:nil
                                 ((permission-group-id :target-type
                                   permission-group-id :member-name
                                   "permissionGroupId"))
                                 (:shape-name "DeletePermissionGroupResponse"))

(smithy/sdk/shapes:define-input disable-user-request common-lisp:nil
                                ((user-id :target-type user-id :required
                                  common-lisp:t :member-name "userId"
                                  :http-label common-lisp:t)
                                 (client-token :target-type client-token
                                  :member-name "clientToken"))
                                (:shape-name "DisableUserRequest"))

(smithy/sdk/shapes:define-output disable-user-response common-lisp:nil
                                 ((user-id :target-type user-id :member-name
                                   "userId"))
                                 (:shape-name "DisableUserResponse"))

(smithy/sdk/shapes:define-input disassociate-user-from-permission-group-request
                                common-lisp:nil
                                ((permission-group-id :target-type
                                  permission-group-id :required common-lisp:t
                                  :member-name "permissionGroupId" :http-label
                                  common-lisp:t)
                                 (user-id :target-type user-id :required
                                  common-lisp:t :member-name "userId"
                                  :http-label common-lisp:t)
                                 (client-token :target-type client-token
                                  :member-name "clientToken" :http-query
                                  "clientToken"))
                                (:shape-name
                                 "DisassociateUserFromPermissionGroupRequest"))

(smithy/sdk/shapes:define-output
 disassociate-user-from-permission-group-response common-lisp:nil
 ((status-code :target-type status-code :member-name "statusCode"
   :http-response-code common-lisp:t))
 (:shape-name "DisassociateUserFromPermissionGroupResponse"))

(smithy/sdk/shapes:define-type email smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input enable-user-request common-lisp:nil
                                ((user-id :target-type user-id :required
                                  common-lisp:t :member-name "userId"
                                  :http-label common-lisp:t)
                                 (client-token :target-type client-token
                                  :member-name "clientToken"))
                                (:shape-name "EnableUserRequest"))

(smithy/sdk/shapes:define-output enable-user-response common-lisp:nil
                                 ((user-id :target-type user-id :member-name
                                   "userId"))
                                 (:shape-name "EnableUserResponse"))

(smithy/sdk/shapes:define-enum error-category
    common-lisp:nil
  (:validation "VALIDATION")
  (:service-quota-exceeded "SERVICE_QUOTA_EXCEEDED")
  (:access-denied "ACCESS_DENIED")
  (:resource-not-found "RESOURCE_NOT_FOUND")
  (:throttling "THROTTLING")
  (:internal-service-exception "INTERNAL_SERVICE_EXCEPTION")
  (:cancelled "CANCELLED")
  (:user-recoverable "USER_RECOVERABLE"))

(smithy/sdk/shapes:define-type error-message smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type error-message2 smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum export-file-format
    common-lisp:nil
  (:parquet "PARQUET")
  (:delimited-text "DELIMITED_TEXT"))

(smithy/sdk/shapes:define-type first-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-map format-params :key string-map-key :value
                              string-map-value)

(smithy/sdk/shapes:define-input get-changeset-request common-lisp:nil
                                ((dataset-id :target-type dataset-id :required
                                  common-lisp:t :member-name "datasetId"
                                  :http-label common-lisp:t)
                                 (changeset-id :target-type changeset-id
                                  :required common-lisp:t :member-name
                                  "changesetId" :http-label common-lisp:t))
                                (:shape-name "GetChangesetRequest"))

(smithy/sdk/shapes:define-output get-changeset-response common-lisp:nil
                                 ((changeset-id :target-type changeset-id
                                   :member-name "changesetId")
                                  (changeset-arn :target-type changeset-arn
                                   :member-name "changesetArn")
                                  (dataset-id :target-type dataset-id
                                   :member-name "datasetId")
                                  (change-type :target-type change-type
                                   :member-name "changeType")
                                  (source-params :target-type source-params
                                   :member-name "sourceParams")
                                  (format-params :target-type format-params
                                   :member-name "formatParams")
                                  (create-time :target-type timestamp-epoch
                                   :member-name "createTime")
                                  (status :target-type ingestion-status
                                   :member-name "status")
                                  (error-info :target-type changeset-error-info
                                   :member-name "errorInfo")
                                  (active-until-timestamp :target-type
                                   timestamp-epoch :member-name
                                   "activeUntilTimestamp")
                                  (active-from-timestamp :target-type
                                   timestamp-epoch :member-name
                                   "activeFromTimestamp")
                                  (updates-changeset-id :target-type
                                   changeset-id :member-name
                                   "updatesChangesetId")
                                  (updated-by-changeset-id :target-type
                                   changeset-id :member-name
                                   "updatedByChangesetId"))
                                 (:shape-name "GetChangesetResponse"))

(smithy/sdk/shapes:define-input get-data-view-request common-lisp:nil
                                ((data-view-id :target-type data-view-id
                                  :required common-lisp:t :member-name
                                  "dataViewId" :http-label common-lisp:t)
                                 (dataset-id :target-type dataset-id :required
                                  common-lisp:t :member-name "datasetId"
                                  :http-label common-lisp:t))
                                (:shape-name "GetDataViewRequest"))

(smithy/sdk/shapes:define-output get-data-view-response common-lisp:nil
                                 ((auto-update :target-type boolean
                                   :member-name "autoUpdate")
                                  (partition-columns :target-type
                                   partition-column-list :member-name
                                   "partitionColumns")
                                  (dataset-id :target-type dataset-id
                                   :member-name "datasetId")
                                  (as-of-timestamp :target-type timestamp-epoch
                                   :member-name "asOfTimestamp")
                                  (error-info :target-type data-view-error-info
                                   :member-name "errorInfo")
                                  (last-modified-time :target-type
                                   timestamp-epoch :member-name
                                   "lastModifiedTime")
                                  (create-time :target-type timestamp-epoch
                                   :member-name "createTime")
                                  (sort-columns :target-type sort-column-list
                                   :member-name "sortColumns")
                                  (data-view-id :target-type data-view-id
                                   :member-name "dataViewId")
                                  (data-view-arn :target-type data-view-arn
                                   :member-name "dataViewArn")
                                  (destination-type-params :target-type
                                   data-view-destination-type-params
                                   :member-name "destinationTypeParams")
                                  (status :target-type data-view-status
                                   :member-name "status"))
                                 (:shape-name "GetDataViewResponse"))

(smithy/sdk/shapes:define-input get-dataset-request common-lisp:nil
                                ((dataset-id :target-type
                                  string-value-length1to255 :required
                                  common-lisp:t :member-name "datasetId"
                                  :http-label common-lisp:t))
                                (:shape-name "GetDatasetRequest"))

(smithy/sdk/shapes:define-output get-dataset-response common-lisp:nil
                                 ((dataset-id :target-type dataset-id
                                   :member-name "datasetId")
                                  (dataset-arn :target-type dataset-arn
                                   :member-name "datasetArn")
                                  (dataset-title :target-type dataset-title
                                   :member-name "datasetTitle")
                                  (kind :target-type dataset-kind :member-name
                                   "kind")
                                  (dataset-description :target-type
                                   dataset-description :member-name
                                   "datasetDescription")
                                  (create-time :target-type timestamp-epoch
                                   :member-name "createTime")
                                  (last-modified-time :target-type
                                   timestamp-epoch :member-name
                                   "lastModifiedTime")
                                  (schema-definition :target-type schema-union
                                   :member-name "schemaDefinition")
                                  (alias :target-type alias-string :member-name
                                   "alias")
                                  (status :target-type dataset-status
                                   :member-name "status"))
                                 (:shape-name "GetDatasetResponse"))

(smithy/sdk/shapes:define-input get-external-data-view-access-details-request
                                common-lisp:nil
                                ((data-view-id :target-type data-view-id
                                  :required common-lisp:t :member-name
                                  "dataViewId" :http-label common-lisp:t)
                                 (dataset-id :target-type dataset-id :required
                                  common-lisp:t :member-name "datasetId"
                                  :http-label common-lisp:t))
                                (:shape-name
                                 "GetExternalDataViewAccessDetailsRequest"))

(smithy/sdk/shapes:define-output get-external-data-view-access-details-response
                                 common-lisp:nil
                                 ((credentials :target-type aws-credentials
                                   :member-name "credentials")
                                  (s3location :target-type s3location
                                   :member-name "s3Location"))
                                 (:shape-name
                                  "GetExternalDataViewAccessDetailsResponse"))

(smithy/sdk/shapes:define-input get-permission-group-request common-lisp:nil
                                ((permission-group-id :target-type
                                  permission-group-id :required common-lisp:t
                                  :member-name "permissionGroupId" :http-label
                                  common-lisp:t))
                                (:shape-name "GetPermissionGroupRequest"))

(smithy/sdk/shapes:define-output get-permission-group-response common-lisp:nil
                                 ((permission-group :target-type
                                   permission-group :member-name
                                   "permissionGroup"))
                                 (:shape-name "GetPermissionGroupResponse"))

(smithy/sdk/shapes:define-input get-programmatic-access-credentials-request
                                common-lisp:nil
                                ((duration-in-minutes :target-type
                                  session-duration :member-name
                                  "durationInMinutes" :http-query
                                  "durationInMinutes")
                                 (environment-id :target-type id-type :required
                                  common-lisp:t :member-name "environmentId"
                                  :http-query "environmentId"))
                                (:shape-name
                                 "GetProgrammaticAccessCredentialsRequest"))

(smithy/sdk/shapes:define-output get-programmatic-access-credentials-response
                                 common-lisp:nil
                                 ((credentials :target-type credentials
                                   :member-name "credentials")
                                  (duration-in-minutes :target-type
                                   session-duration :member-name
                                   "durationInMinutes"))
                                 (:shape-name
                                  "GetProgrammaticAccessCredentialsResponse"))

(smithy/sdk/shapes:define-input get-user-request common-lisp:nil
                                ((user-id :target-type user-id :required
                                  common-lisp:t :member-name "userId"
                                  :http-label common-lisp:t))
                                (:shape-name "GetUserRequest"))

(smithy/sdk/shapes:define-output get-user-response common-lisp:nil
                                 ((user-id :target-type user-id :member-name
                                   "userId")
                                  (status :target-type user-status :member-name
                                   "status")
                                  (first-name :target-type first-name
                                   :member-name "firstName")
                                  (last-name :target-type last-name
                                   :member-name "lastName")
                                  (email-address :target-type email
                                   :member-name "emailAddress")
                                  (type :target-type user-type :member-name
                                   "type")
                                  (api-access :target-type api-access
                                   :member-name "apiAccess")
                                  (api-access-principal-arn :target-type
                                   role-arn :member-name
                                   "apiAccessPrincipalArn")
                                  (create-time :target-type timestamp-epoch
                                   :member-name "createTime")
                                  (last-enabled-time :target-type
                                   timestamp-epoch :member-name
                                   "lastEnabledTime")
                                  (last-disabled-time :target-type
                                   timestamp-epoch :member-name
                                   "lastDisabledTime")
                                  (last-modified-time :target-type
                                   timestamp-epoch :member-name
                                   "lastModifiedTime")
                                  (last-login-time :target-type timestamp-epoch
                                   :member-name "lastLoginTime"))
                                 (:shape-name "GetUserResponse"))

(smithy/sdk/shapes:define-input get-working-location-request common-lisp:nil
                                ((location-type :target-type location-type
                                  :member-name "locationType"))
                                (:shape-name "GetWorkingLocationRequest"))

(smithy/sdk/shapes:define-output get-working-location-response common-lisp:nil
                                 ((s3uri :target-type
                                   string-value-length1to1024 :member-name
                                   "s3Uri")
                                  (s3path :target-type
                                   string-value-length1to1024 :member-name
                                   "s3Path")
                                  (s3bucket :target-type
                                   string-value-length1to63 :member-name
                                   "s3Bucket"))
                                 (:shape-name "GetWorkingLocationResponse"))

(smithy/sdk/shapes:define-type id-type smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum ingestion-status
    common-lisp:nil
  (:pending "PENDING")
  (:failed "FAILED")
  (:success "SUCCESS")
  (:running "RUNNING")
  (:stop-requested "STOP_REQUESTED"))

(smithy/sdk/shapes:define-error internal-server-exception common-lisp:nil
                                ((message :target-type error-message2
                                  :member-name "message"))
                                (:shape-name "InternalServerException")
                                (:error-code 500))

(smithy/sdk/shapes:define-type last-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error limit-exceeded-exception common-lisp:nil
                                ((message :target-type error-message2
                                  :member-name "message"))
                                (:shape-name "LimitExceededException")
                                (:error-code 400))

(smithy/sdk/shapes:define-input list-changesets-request common-lisp:nil
                                ((dataset-id :target-type dataset-id :required
                                  common-lisp:t :member-name "datasetId"
                                  :http-label common-lisp:t)
                                 (max-results :target-type result-limit
                                  :member-name "maxResults" :http-query
                                  "maxResults")
                                 (next-token :target-type pagination-token
                                  :member-name "nextToken" :http-query
                                  "nextToken"))
                                (:shape-name "ListChangesetsRequest"))

(smithy/sdk/shapes:define-output list-changesets-response common-lisp:nil
                                 ((changesets :target-type changeset-list
                                   :member-name "changesets")
                                  (next-token :target-type pagination-token
                                   :member-name "nextToken"))
                                 (:shape-name "ListChangesetsResponse"))

(smithy/sdk/shapes:define-input list-data-views-request common-lisp:nil
                                ((dataset-id :target-type dataset-id :required
                                  common-lisp:t :member-name "datasetId"
                                  :http-label common-lisp:t)
                                 (next-token :target-type pagination-token
                                  :member-name "nextToken" :http-query
                                  "nextToken")
                                 (max-results :target-type result-limit
                                  :member-name "maxResults" :http-query
                                  "maxResults"))
                                (:shape-name "ListDataViewsRequest"))

(smithy/sdk/shapes:define-output list-data-views-response common-lisp:nil
                                 ((next-token :target-type pagination-token
                                   :member-name "nextToken")
                                  (data-views :target-type data-view-list
                                   :member-name "dataViews"))
                                 (:shape-name "ListDataViewsResponse"))

(smithy/sdk/shapes:define-input list-datasets-request common-lisp:nil
                                ((next-token :target-type pagination-token
                                  :member-name "nextToken" :http-query
                                  "nextToken")
                                 (max-results :target-type result-limit
                                  :member-name "maxResults" :http-query
                                  "maxResults"))
                                (:shape-name "ListDatasetsRequest"))

(smithy/sdk/shapes:define-output list-datasets-response common-lisp:nil
                                 ((datasets :target-type dataset-list
                                   :member-name "datasets")
                                  (next-token :target-type pagination-token
                                   :member-name "nextToken"))
                                 (:shape-name "ListDatasetsResponse"))

(smithy/sdk/shapes:define-input list-permission-groups-by-user-request
                                common-lisp:nil
                                ((user-id :target-type user-id :required
                                  common-lisp:t :member-name "userId"
                                  :http-label common-lisp:t)
                                 (next-token :target-type pagination-token
                                  :member-name "nextToken" :http-query
                                  "nextToken")
                                 (max-results :target-type result-limit
                                  :required common-lisp:t :member-name
                                  "maxResults" :http-query "maxResults"))
                                (:shape-name
                                 "ListPermissionGroupsByUserRequest"))

(smithy/sdk/shapes:define-output list-permission-groups-by-user-response
                                 common-lisp:nil
                                 ((permission-groups :target-type
                                   permission-group-by-user-list :member-name
                                   "permissionGroups")
                                  (next-token :target-type pagination-token
                                   :member-name "nextToken"))
                                 (:shape-name
                                  "ListPermissionGroupsByUserResponse"))

(smithy/sdk/shapes:define-input list-permission-groups-request common-lisp:nil
                                ((next-token :target-type pagination-token
                                  :member-name "nextToken" :http-query
                                  "nextToken")
                                 (max-results :target-type result-limit
                                  :required common-lisp:t :member-name
                                  "maxResults" :http-query "maxResults"))
                                (:shape-name "ListPermissionGroupsRequest"))

(smithy/sdk/shapes:define-output list-permission-groups-response
                                 common-lisp:nil
                                 ((permission-groups :target-type
                                   permission-group-list :member-name
                                   "permissionGroups")
                                  (next-token :target-type pagination-token
                                   :member-name "nextToken"))
                                 (:shape-name "ListPermissionGroupsResponse"))

(smithy/sdk/shapes:define-input list-users-by-permission-group-request
                                common-lisp:nil
                                ((permission-group-id :target-type
                                  permission-group-id :required common-lisp:t
                                  :member-name "permissionGroupId" :http-label
                                  common-lisp:t)
                                 (next-token :target-type pagination-token
                                  :member-name "nextToken" :http-query
                                  "nextToken")
                                 (max-results :target-type result-limit
                                  :required common-lisp:t :member-name
                                  "maxResults" :http-query "maxResults"))
                                (:shape-name
                                 "ListUsersByPermissionGroupRequest"))

(smithy/sdk/shapes:define-output list-users-by-permission-group-response
                                 common-lisp:nil
                                 ((users :target-type
                                   user-by-permission-group-list :member-name
                                   "users")
                                  (next-token :target-type pagination-token
                                   :member-name "nextToken"))
                                 (:shape-name
                                  "ListUsersByPermissionGroupResponse"))

(smithy/sdk/shapes:define-input list-users-request common-lisp:nil
                                ((next-token :target-type pagination-token
                                  :member-name "nextToken" :http-query
                                  "nextToken")
                                 (max-results :target-type result-limit
                                  :required common-lisp:t :member-name
                                  "maxResults" :http-query "maxResults"))
                                (:shape-name "ListUsersRequest"))

(smithy/sdk/shapes:define-output list-users-response common-lisp:nil
                                 ((users :target-type user-list :member-name
                                   "users")
                                  (next-token :target-type pagination-token
                                   :member-name "nextToken"))
                                 (:shape-name "ListUsersResponse"))

(smithy/sdk/shapes:define-type owner-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type pagination-token smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list partition-column-list :member
                               string-value-length1to255)

(smithy/sdk/shapes:define-type password smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure permission-group common-lisp:nil
                                    ((permission-group-id :target-type
                                      permission-group-id :member-name
                                      "permissionGroupId")
                                     (name :target-type permission-group-name
                                      :member-name "name")
                                     (description :target-type
                                      permission-group-description :member-name
                                      "description")
                                     (application-permissions :target-type
                                      application-permission-list :member-name
                                      "applicationPermissions")
                                     (create-time :target-type timestamp-epoch
                                      :member-name "createTime")
                                     (last-modified-time :target-type
                                      timestamp-epoch :member-name
                                      "lastModifiedTime")
                                     (membership-status :target-type
                                      permission-group-membership-status
                                      :member-name "membershipStatus"))
                                    (:shape-name "PermissionGroup"))

(smithy/sdk/shapes:define-structure permission-group-by-user common-lisp:nil
                                    ((permission-group-id :target-type
                                      permission-group-id :member-name
                                      "permissionGroupId")
                                     (name :target-type permission-group-name
                                      :member-name "name")
                                     (membership-status :target-type
                                      permission-group-membership-status
                                      :member-name "membershipStatus"))
                                    (:shape-name "PermissionGroupByUser"))

(smithy/sdk/shapes:define-list permission-group-by-user-list :member
                               permission-group-by-user)

(smithy/sdk/shapes:define-type permission-group-description
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type permission-group-id
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list permission-group-list :member permission-group)

(smithy/sdk/shapes:define-enum permission-group-membership-status
    common-lisp:nil
  (:addition-in-progress "ADDITION_IN_PROGRESS")
  (:addition-success "ADDITION_SUCCESS")
  (:removal-in-progress "REMOVAL_IN_PROGRESS"))

(smithy/sdk/shapes:define-type permission-group-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure permission-group-params common-lisp:nil
                                    ((permission-group-id :target-type
                                      permission-group-id :member-name
                                      "permissionGroupId")
                                     (dataset-permissions :target-type
                                      resource-permissions-list :member-name
                                      "datasetPermissions"))
                                    (:shape-name "PermissionGroupParams"))

(smithy/sdk/shapes:define-type phone-number smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input reset-user-password-request common-lisp:nil
                                ((user-id :target-type user-id :required
                                  common-lisp:t :member-name "userId"
                                  :http-label common-lisp:t)
                                 (client-token :target-type client-token
                                  :member-name "clientToken"))
                                (:shape-name "ResetUserPasswordRequest"))

(smithy/sdk/shapes:define-output reset-user-password-response common-lisp:nil
                                 ((user-id :target-type user-id :member-name
                                   "userId")
                                  (temporary-password :target-type password
                                   :member-name "temporaryPassword"))
                                 (:shape-name "ResetUserPasswordResponse"))

(smithy/sdk/shapes:define-error resource-not-found-exception common-lisp:nil
                                ((message :target-type error-message2
                                  :member-name "message")
                                 (reason :target-type error-message2
                                  :member-name "reason"))
                                (:shape-name "ResourceNotFoundException")
                                (:error-code 404))

(smithy/sdk/shapes:define-structure resource-permission common-lisp:nil
                                    ((permission :target-type
                                      string-value-length1to250 :member-name
                                      "permission"))
                                    (:shape-name "ResourcePermission"))

(smithy/sdk/shapes:define-list resource-permissions-list :member
                               resource-permission)

(smithy/sdk/shapes:define-type result-limit smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type role-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type s3bucket-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-map s3destination-format-options :key string-map-key
                              :value string-map-value)

(smithy/sdk/shapes:define-type s3key smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure s3location common-lisp:nil
                                    ((bucket :target-type s3bucket-name
                                      :required common-lisp:t :member-name
                                      "bucket")
                                     (key :target-type s3key :required
                                      common-lisp:t :member-name "key"))
                                    (:shape-name "S3Location"))

(smithy/sdk/shapes:define-structure schema-definition common-lisp:nil
                                    ((columns :target-type column-list
                                      :member-name "columns")
                                     (primary-key-columns :target-type
                                      column-name-list :member-name
                                      "primaryKeyColumns"))
                                    (:shape-name "SchemaDefinition"))

(smithy/sdk/shapes:define-structure schema-union common-lisp:nil
                                    ((tabular-schema-config :target-type
                                      schema-definition :member-name
                                      "tabularSchemaConfig"))
                                    (:shape-name "SchemaUnion"))

(smithy/sdk/shapes:define-type secret-access-key smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type session-duration smithy/sdk/smithy-types:long)

(smithy/sdk/shapes:define-type session-token smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list sort-column-list :member
                               string-value-length1to255)

(smithy/sdk/shapes:define-map source-params :key string-map-key :value
                              string-map-value)

(smithy/sdk/shapes:define-type status-code smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type string-map-key smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type string-map-value smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type string-value-length1to250
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type string-value-length1to255
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type string-value-length1to2552
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error throttling-exception common-lisp:nil
                                common-lisp:nil
                                (:shape-name "ThrottlingException")
                                (:error-code 429))

(smithy/sdk/shapes:define-type timestamp-epoch smithy/sdk/smithy-types:long)

(smithy/sdk/shapes:define-input update-changeset-request common-lisp:nil
                                ((client-token :target-type client-token
                                  :member-name "clientToken")
                                 (dataset-id :target-type dataset-id :required
                                  common-lisp:t :member-name "datasetId"
                                  :http-label common-lisp:t)
                                 (changeset-id :target-type changeset-id
                                  :required common-lisp:t :member-name
                                  "changesetId" :http-label common-lisp:t)
                                 (source-params :target-type source-params
                                  :required common-lisp:t :member-name
                                  "sourceParams")
                                 (format-params :target-type format-params
                                  :required common-lisp:t :member-name
                                  "formatParams"))
                                (:shape-name "UpdateChangesetRequest"))

(smithy/sdk/shapes:define-output update-changeset-response common-lisp:nil
                                 ((changeset-id :target-type changeset-id
                                   :member-name "changesetId")
                                  (dataset-id :target-type dataset-id
                                   :member-name "datasetId"))
                                 (:shape-name "UpdateChangesetResponse"))

(smithy/sdk/shapes:define-input update-dataset-request common-lisp:nil
                                ((client-token :target-type client-token
                                  :member-name "clientToken")
                                 (dataset-id :target-type dataset-id :required
                                  common-lisp:t :member-name "datasetId"
                                  :http-label common-lisp:t)
                                 (dataset-title :target-type dataset-title
                                  :required common-lisp:t :member-name
                                  "datasetTitle")
                                 (kind :target-type dataset-kind :required
                                  common-lisp:t :member-name "kind")
                                 (dataset-description :target-type
                                  dataset-description :member-name
                                  "datasetDescription")
                                 (alias :target-type alias-string :member-name
                                  "alias")
                                 (schema-definition :target-type schema-union
                                  :member-name "schemaDefinition"))
                                (:shape-name "UpdateDatasetRequest"))

(smithy/sdk/shapes:define-output update-dataset-response common-lisp:nil
                                 ((dataset-id :target-type dataset-id
                                   :member-name "datasetId"))
                                 (:shape-name "UpdateDatasetResponse"))

(smithy/sdk/shapes:define-input update-permission-group-request common-lisp:nil
                                ((permission-group-id :target-type
                                  permission-group-id :required common-lisp:t
                                  :member-name "permissionGroupId" :http-label
                                  common-lisp:t)
                                 (name :target-type permission-group-name
                                  :member-name "name")
                                 (description :target-type
                                  permission-group-description :member-name
                                  "description")
                                 (application-permissions :target-type
                                  application-permission-list :member-name
                                  "applicationPermissions")
                                 (client-token :target-type client-token
                                  :member-name "clientToken"))
                                (:shape-name "UpdatePermissionGroupRequest"))

(smithy/sdk/shapes:define-output update-permission-group-response
                                 common-lisp:nil
                                 ((permission-group-id :target-type
                                   permission-group-id :member-name
                                   "permissionGroupId"))
                                 (:shape-name "UpdatePermissionGroupResponse"))

(smithy/sdk/shapes:define-input update-user-request common-lisp:nil
                                ((user-id :target-type user-id :required
                                  common-lisp:t :member-name "userId"
                                  :http-label common-lisp:t)
                                 (type :target-type user-type :member-name
                                  "type")
                                 (first-name :target-type first-name
                                  :member-name "firstName")
                                 (last-name :target-type last-name :member-name
                                  "lastName")
                                 (api-access :target-type api-access
                                  :member-name "apiAccess")
                                 (api-access-principal-arn :target-type
                                  role-arn :member-name
                                  "apiAccessPrincipalArn")
                                 (client-token :target-type client-token
                                  :member-name "clientToken"))
                                (:shape-name "UpdateUserRequest"))

(smithy/sdk/shapes:define-output update-user-response common-lisp:nil
                                 ((user-id :target-type user-id :member-name
                                   "userId"))
                                 (:shape-name "UpdateUserResponse"))

(smithy/sdk/shapes:define-structure user common-lisp:nil
                                    ((user-id :target-type user-id :member-name
                                      "userId")
                                     (status :target-type user-status
                                      :member-name "status")
                                     (first-name :target-type first-name
                                      :member-name "firstName")
                                     (last-name :target-type last-name
                                      :member-name "lastName")
                                     (email-address :target-type email
                                      :member-name "emailAddress")
                                     (type :target-type user-type :member-name
                                      "type")
                                     (api-access :target-type api-access
                                      :member-name "apiAccess")
                                     (api-access-principal-arn :target-type
                                      role-arn :member-name
                                      "apiAccessPrincipalArn")
                                     (create-time :target-type timestamp-epoch
                                      :member-name "createTime")
                                     (last-enabled-time :target-type
                                      timestamp-epoch :member-name
                                      "lastEnabledTime")
                                     (last-disabled-time :target-type
                                      timestamp-epoch :member-name
                                      "lastDisabledTime")
                                     (last-modified-time :target-type
                                      timestamp-epoch :member-name
                                      "lastModifiedTime")
                                     (last-login-time :target-type
                                      timestamp-epoch :member-name
                                      "lastLoginTime"))
                                    (:shape-name "User"))

(smithy/sdk/shapes:define-structure user-by-permission-group common-lisp:nil
                                    ((user-id :target-type user-id :member-name
                                      "userId")
                                     (status :target-type user-status
                                      :member-name "status")
                                     (first-name :target-type first-name
                                      :member-name "firstName")
                                     (last-name :target-type last-name
                                      :member-name "lastName")
                                     (email-address :target-type email
                                      :member-name "emailAddress")
                                     (type :target-type user-type :member-name
                                      "type")
                                     (api-access :target-type api-access
                                      :member-name "apiAccess")
                                     (api-access-principal-arn :target-type
                                      role-arn :member-name
                                      "apiAccessPrincipalArn")
                                     (membership-status :target-type
                                      permission-group-membership-status
                                      :member-name "membershipStatus"))
                                    (:shape-name "UserByPermissionGroup"))

(smithy/sdk/shapes:define-list user-by-permission-group-list :member
                               user-by-permission-group)

(smithy/sdk/shapes:define-type user-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list user-list :member user)

(smithy/sdk/shapes:define-enum user-status
    common-lisp:nil
  (:creating "CREATING")
  (:enabled "ENABLED")
  (:disabled "DISABLED"))

(smithy/sdk/shapes:define-enum user-type
    common-lisp:nil
  (:super-user "SUPER_USER")
  (:app-user "APP_USER"))

(smithy/sdk/shapes:define-error validation-exception common-lisp:nil
                                ((message :target-type error-message2
                                  :member-name "message")
                                 (reason :target-type error-message2
                                  :member-name "reason"))
                                (:shape-name "ValidationException")
                                (:error-code 400))

(smithy/sdk/shapes:define-enum location-type
    common-lisp:nil
  (:ingestion "INGESTION")
  (:sagemaker "SAGEMAKER"))

(smithy/sdk/shapes:define-type string-value-length1to1024
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type string-value-length1to63
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type string-value-max-length1000
                               smithy/sdk/smithy-types:string)

(smithy/sdk/operation:define-operation associate-user-to-permission-group
                                       :shape-name
                                       "AssociateUserToPermissionGroup" :input
                                       associate-user-to-permission-group-request
                                       :output
                                       associate-user-to-permission-group-response
                                       :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/permission-group/{permissionGroupId}/users/{userId}"
                                       :code 200)

(smithy/sdk/operation:define-operation create-changeset :shape-name
                                       "CreateChangeset" :input
                                       create-changeset-request :output
                                       create-changeset-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        limit-exceeded-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/datasets/{datasetId}/changesetsv2"
                                       :code 200)

(smithy/sdk/operation:define-operation create-data-view :shape-name
                                       "CreateDataView" :input
                                       create-data-view-request :output
                                       create-data-view-response :errors
                                       (conflict-exception
                                        internal-server-exception
                                        limit-exceeded-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/datasets/{datasetId}/dataviewsv2"
                                       :code 200)

(smithy/sdk/operation:define-operation create-dataset :shape-name
                                       "CreateDataset" :input
                                       create-dataset-request :output
                                       create-dataset-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        limit-exceeded-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri "/datasetsv2" :code
                                       200)

(smithy/sdk/operation:define-operation create-permission-group :shape-name
                                       "CreatePermissionGroup" :input
                                       create-permission-group-request :output
                                       create-permission-group-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        limit-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri "/permission-group"
                                       :code 200)

(smithy/sdk/operation:define-operation create-user :shape-name "CreateUser"
                                       :input create-user-request :output
                                       create-user-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        limit-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri "/user" :code 200)

(smithy/sdk/operation:define-operation delete-dataset :shape-name
                                       "DeleteDataset" :input
                                       delete-dataset-request :output
                                       delete-dataset-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        limit-exceeded-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "DELETE" :uri
                                       "/datasetsv2/{datasetId}" :code 200)

(smithy/sdk/operation:define-operation delete-permission-group :shape-name
                                       "DeletePermissionGroup" :input
                                       delete-permission-group-request :output
                                       delete-permission-group-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        limit-exceeded-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "DELETE" :uri
                                       "/permission-group/{permissionGroupId}"
                                       :code 200)

(smithy/sdk/operation:define-operation disable-user :shape-name "DisableUser"
                                       :input disable-user-request :output
                                       disable-user-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/user/{userId}/disable" :code 200)

(smithy/sdk/operation:define-operation disassociate-user-from-permission-group
                                       :shape-name
                                       "DisassociateUserFromPermissionGroup"
                                       :input
                                       disassociate-user-from-permission-group-request
                                       :output
                                       disassociate-user-from-permission-group-response
                                       :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "DELETE" :uri
                                       "/permission-group/{permissionGroupId}/users/{userId}"
                                       :code 200)

(smithy/sdk/operation:define-operation enable-user :shape-name "EnableUser"
                                       :input enable-user-request :output
                                       enable-user-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        limit-exceeded-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/user/{userId}/enable" :code 200)

(smithy/sdk/operation:define-operation get-changeset :shape-name "GetChangeset"
                                       :input get-changeset-request :output
                                       get-changeset-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/datasets/{datasetId}/changesetsv2/{changesetId}"
                                       :code 200)

(smithy/sdk/operation:define-operation get-data-view :shape-name "GetDataView"
                                       :input get-data-view-request :output
                                       get-data-view-response :errors
                                       (conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/datasets/{datasetId}/dataviewsv2/{dataViewId}"
                                       :code 200)

(smithy/sdk/operation:define-operation get-dataset :shape-name "GetDataset"
                                       :input get-dataset-request :output
                                       get-dataset-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/datasetsv2/{datasetId}" :code 200)

(smithy/sdk/operation:define-operation get-external-data-view-access-details
                                       :shape-name
                                       "GetExternalDataViewAccessDetails"
                                       :input
                                       get-external-data-view-access-details-request
                                       :output
                                       get-external-data-view-access-details-response
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/datasets/{datasetId}/dataviewsv2/{dataViewId}/external-access-details"
                                       :code 200)

(smithy/sdk/operation:define-operation get-permission-group :shape-name
                                       "GetPermissionGroup" :input
                                       get-permission-group-request :output
                                       get-permission-group-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/permission-group/{permissionGroupId}"
                                       :code 200)

(smithy/sdk/operation:define-operation get-programmatic-access-credentials
                                       :shape-name
                                       "GetProgrammaticAccessCredentials"
                                       :input
                                       get-programmatic-access-credentials-request
                                       :output
                                       get-programmatic-access-credentials-response
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/credentials/programmatic" :code 200)

(smithy/sdk/operation:define-operation get-user :shape-name "GetUser" :input
                                       get-user-request :output
                                       get-user-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri "/user/{userId}"
                                       :code 200)

(smithy/sdk/operation:define-operation get-working-location :shape-name
                                       "GetWorkingLocation" :input
                                       get-working-location-request :output
                                       get-working-location-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri "/workingLocationV1"
                                       :code 200)

(smithy/sdk/operation:define-operation list-changesets :shape-name
                                       "ListChangesets" :input
                                       list-changesets-request :output
                                       list-changesets-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/datasets/{datasetId}/changesetsv2"
                                       :code 200)

(smithy/sdk/operation:define-operation list-data-views :shape-name
                                       "ListDataViews" :input
                                       list-data-views-request :output
                                       list-data-views-response :errors
                                       (conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/datasets/{datasetId}/dataviewsv2"
                                       :code 200)

(smithy/sdk/operation:define-operation list-datasets :shape-name "ListDatasets"
                                       :input list-datasets-request :output
                                       list-datasets-response :errors
                                       (conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri "/datasetsv2" :code
                                       200)

(smithy/sdk/operation:define-operation list-permission-groups :shape-name
                                       "ListPermissionGroups" :input
                                       list-permission-groups-request :output
                                       list-permission-groups-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri "/permission-group"
                                       :code 200)

(smithy/sdk/operation:define-operation list-permission-groups-by-user
                                       :shape-name "ListPermissionGroupsByUser"
                                       :input
                                       list-permission-groups-by-user-request
                                       :output
                                       list-permission-groups-by-user-response
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/user/{userId}/permission-groups" :code
                                       200)

(smithy/sdk/operation:define-operation list-users :shape-name "ListUsers"
                                       :input list-users-request :output
                                       list-users-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri "/user" :code 200)

(smithy/sdk/operation:define-operation list-users-by-permission-group
                                       :shape-name "ListUsersByPermissionGroup"
                                       :input
                                       list-users-by-permission-group-request
                                       :output
                                       list-users-by-permission-group-response
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/permission-group/{permissionGroupId}/users"
                                       :code 200)

(smithy/sdk/operation:define-operation reset-user-password :shape-name
                                       "ResetUserPassword" :input
                                       reset-user-password-request :output
                                       reset-user-password-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/user/{userId}/password" :code 200)

(smithy/sdk/operation:define-operation update-changeset :shape-name
                                       "UpdateChangeset" :input
                                       update-changeset-request :output
                                       update-changeset-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "PUT" :uri
                                       "/datasets/{datasetId}/changesetsv2/{changesetId}"
                                       :code 200)

(smithy/sdk/operation:define-operation update-dataset :shape-name
                                       "UpdateDataset" :input
                                       update-dataset-request :output
                                       update-dataset-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "PUT" :uri
                                       "/datasetsv2/{datasetId}" :code 200)

(smithy/sdk/operation:define-operation update-permission-group :shape-name
                                       "UpdatePermissionGroup" :input
                                       update-permission-group-request :output
                                       update-permission-group-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "PUT" :uri
                                       "/permission-group/{permissionGroupId}"
                                       :code 200)

(smithy/sdk/operation:define-operation update-user :shape-name "UpdateUser"
                                       :input update-user-request :output
                                       update-user-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "PUT" :uri "/user/{userId}"
                                       :code 200)
