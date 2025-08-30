(uiop/package:define-package #:pira/dataexchange (:use)
                             (:export #:accept-data-grant
                              #:acceptance-state-filter-value
                              #:acceptance-state-filter-values
                              #:access-denied-exception #:action
                              #:api-description #:api-gateway-api-asset #:arn
                              #:asset-destination-entry #:asset-details
                              #:asset-entry #:asset-name #:asset-source-entry
                              #:asset-type
                              #:auto-export-revision-destination-entry
                              #:auto-export-revision-to-s3request-details
                              #:aws-account-id #:cancel-job
                              #:cancel-job-request #:client-token #:code
                              #:conflict-exception #:create-data-grant
                              #:create-data-set #:create-data-set-request
                              #:create-data-set-response #:create-event-action
                              #:create-event-action-request
                              #:create-event-action-response #:create-job
                              #:create-job-request #:create-job-response
                              #:create-revision #:create-revision-request
                              #:create-revision-response
                              #:create-s3data-access-from-s3bucket-request-details
                              #:create-s3data-access-from-s3bucket-response-details
                              #:data-exchange #:data-grant-acceptance-state
                              #:data-grant-arn #:data-grant-description
                              #:data-grant-id #:data-grant-name
                              #:data-grant-summary-entry #:data-set-entry
                              #:data-update-request-details
                              #:database-lftag-policy
                              #:database-lftag-policy-and-permissions
                              #:database-lftag-policy-permission #:delete-asset
                              #:delete-asset-request #:delete-data-grant
                              #:delete-data-set #:delete-data-set-request
                              #:delete-event-action
                              #:delete-event-action-request #:delete-revision
                              #:delete-revision-request
                              #:deprecation-request-details #:description
                              #:details #:event #:event-action-entry
                              #:exception-cause
                              #:export-asset-to-signed-url-request-details
                              #:export-asset-to-signed-url-response-details
                              #:export-assets-to-s3request-details
                              #:export-assets-to-s3response-details
                              #:export-revisions-to-s3request-details
                              #:export-revisions-to-s3response-details
                              #:export-server-side-encryption #:get-asset
                              #:get-asset-request #:get-asset-response
                              #:get-data-grant #:get-data-set
                              #:get-data-set-request #:get-data-set-response
                              #:get-event-action #:get-event-action-request
                              #:get-event-action-response #:get-job
                              #:get-job-request #:get-job-response
                              #:get-received-data-grant #:get-revision
                              #:get-revision-request #:get-revision-response
                              #:grant-distribution-scope #:id
                              #:import-asset-from-api-gateway-api-request-details
                              #:import-asset-from-api-gateway-api-response-details
                              #:import-asset-from-signed-url-job-error-details
                              #:import-asset-from-signed-url-request-details
                              #:import-asset-from-signed-url-response-details
                              #:import-assets-from-lake-formation-tag-policy-request-details
                              #:import-assets-from-lake-formation-tag-policy-response-details
                              #:import-assets-from-redshift-data-shares-request-details
                              #:import-assets-from-redshift-data-shares-response-details
                              #:import-assets-from-s3request-details
                              #:import-assets-from-s3response-details
                              #:internal-server-exception #:job-entry
                              #:job-error #:job-error-limit-name
                              #:job-error-resource-types #:kms-key-arn
                              #:kms-key-to-grant #:lfpermission
                              #:lfresource-details #:lfresource-type #:lftag
                              #:lftag-policy-details
                              #:lake-formation-data-permission-asset
                              #:lake-formation-data-permission-details
                              #:lake-formation-data-permission-type
                              #:lake-formation-tag-policy-details #:limit-name
                              #:list-data-grants #:list-data-set-revisions
                              #:list-data-set-revisions-request
                              #:list-data-set-revisions-response
                              #:list-data-sets #:list-data-sets-request
                              #:list-data-sets-response #:list-event-actions
                              #:list-event-actions-request
                              #:list-event-actions-response #:list-jobs
                              #:list-jobs-request #:list-jobs-response
                              #:list-of-asset-destination-entry
                              #:list-of-asset-entry
                              #:list-of-asset-source-entry
                              #:list-of-data-grant-summary-entry
                              #:list-of-data-set-entry
                              #:list-of-database-lftag-policy-permissions
                              #:list-of-event-action-entry #:list-of-job-entry
                              #:list-of-job-error #:list-of-kms-keys-to-grant
                              #:list-of-lfpermissions #:list-of-lftag-values
                              #:list-of-lftags
                              #:list-of-lake-formation-tag-policies
                              #:list-of-received-data-grant-summaries-entry
                              #:list-of-redshift-data-share-asset-source-entry
                              #:list-of-redshift-data-shares
                              #:list-of-revision-destination-entry
                              #:list-of-revision-entry
                              #:list-of-s3data-accesses
                              #:list-of-schema-change-details
                              #:list-of-table-tag-policy-lfpermissions
                              #:list-of-string #:list-received-data-grants
                              #:list-revision-assets
                              #:list-revision-assets-request
                              #:list-revision-assets-response
                              #:list-tags-for-resource
                              #:list-tags-for-resource-request
                              #:list-tags-for-resource-response #:map-of-string
                              #:max-results #:name #:next-token
                              #:notification-details #:notification-type
                              #:origin #:origin-details #:protocol-type
                              #:received-data-grant-summaries-entry
                              #:receiver-principal #:redshift-data-share-asset
                              #:redshift-data-share-asset-source-entry
                              #:redshift-data-share-details #:request-details
                              #:resource-not-found-exception #:resource-type
                              #:response-details #:revision-destination-entry
                              #:revision-entry #:revision-published
                              #:revoke-revision #:revoke-revision-request
                              #:revoke-revision-response #:role-arn
                              #:s3data-access-asset
                              #:s3data-access-asset-source-entry
                              #:s3data-access-details #:s3snapshot-asset
                              #:schema-change-details
                              #:schema-change-request-details
                              #:schema-change-type #:scope-details
                              #:send-api-asset #:send-api-asset-request
                              #:send-api-asset-response
                              #:send-data-set-notification #:sender-principal
                              #:server-side-encryption-types
                              #:service-limit-exceeded-exception #:start-job
                              #:start-job-request #:start-job-response #:state
                              #:table-lftag-policy
                              #:table-lftag-policy-and-permissions
                              #:table-tag-policy-lfpermission #:tag-resource
                              #:tag-resource-request #:throttling-exception
                              #:timestamp #:type #:untag-resource
                              #:untag-resource-request #:update-asset
                              #:update-asset-request #:update-asset-response
                              #:update-data-set #:update-data-set-request
                              #:update-data-set-response #:update-event-action
                              #:update-event-action-request
                              #:update-event-action-response #:update-revision
                              #:update-revision-request
                              #:update-revision-response #:validation-exception
                              #:boolean #:double #:double-min0 #:string
                              #:string-min0max16384 #:string-min0max4096
                              #:string-min10max512
                              #:string-min24max24pattern-aza-z094aza-z092aza-z093
                              #:dataexchange-error))
(common-lisp:in-package #:pira/dataexchange)

(common-lisp:define-condition dataexchange-error
    (pira/error:aws-error)
    common-lisp:nil)

(smithy/sdk/service:define-service data-exchange :shape-name "DataExchange"
                                   :version "2017-07-25" :title
                                   "AWS Data Exchange" :operations
                                   '(accept-data-grant cancel-job
                                     create-data-grant create-data-set
                                     create-event-action create-job
                                     create-revision delete-asset
                                     delete-data-grant delete-data-set
                                     delete-event-action delete-revision
                                     get-asset get-data-grant get-data-set
                                     get-event-action get-job
                                     get-received-data-grant get-revision
                                     list-data-grants list-data-set-revisions
                                     list-data-sets list-event-actions
                                     list-jobs list-received-data-grants
                                     list-revision-assets
                                     list-tags-for-resource revoke-revision
                                     send-api-asset send-data-set-notification
                                     start-job tag-resource untag-resource
                                     update-asset update-data-set
                                     update-event-action update-revision)
                                   :traits
                                   '(("aws.api#service"
                                      ("sdkId" . "DataExchange")
                                      ("arnNamespace" . "dataexchange")
                                      ("cloudTrailEventSource"
                                       . "dataexchange.amazonaws.com")
                                      ("endpointPrefix" . "dataexchange"))
                                     ("aws.auth#sigv4"
                                      ("name" . "dataexchange"))
                                     ("aws.protocols#restJson1")))

(smithy/sdk/shapes:define-input accept-data-grant-request common-lisp:nil
                                ((data-grant-arn :target-type data-grant-arn
                                  :required common-lisp:t :member-name
                                  "DataGrantArn" :http-label common-lisp:t))
                                (:shape-name "AcceptDataGrantRequest"))

(smithy/sdk/shapes:define-output accept-data-grant-response common-lisp:nil
                                 ((name :target-type data-grant-name :required
                                   common-lisp:t :member-name "Name")
                                  (sender-principal :target-type
                                   sender-principal :member-name
                                   "SenderPrincipal")
                                  (receiver-principal :target-type
                                   receiver-principal :required common-lisp:t
                                   :member-name "ReceiverPrincipal")
                                  (description :target-type
                                   data-grant-description :member-name
                                   "Description")
                                  (acceptance-state :target-type
                                   data-grant-acceptance-state :required
                                   common-lisp:t :member-name
                                   "AcceptanceState")
                                  (accepted-at :target-type timestamp
                                   :member-name "AcceptedAt")
                                  (ends-at :target-type timestamp :member-name
                                   "EndsAt")
                                  (grant-distribution-scope :target-type
                                   grant-distribution-scope :required
                                   common-lisp:t :member-name
                                   "GrantDistributionScope")
                                  (data-set-id :target-type id :required
                                   common-lisp:t :member-name "DataSetId")
                                  (id :target-type id :required common-lisp:t
                                   :member-name "Id")
                                  (arn :target-type arn :required common-lisp:t
                                   :member-name "Arn")
                                  (created-at :target-type timestamp :required
                                   common-lisp:t :member-name "CreatedAt")
                                  (updated-at :target-type timestamp :required
                                   common-lisp:t :member-name "UpdatedAt"))
                                 (:shape-name "AcceptDataGrantResponse"))

(smithy/sdk/shapes:define-type acceptance-state-filter-value
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list acceptance-state-filter-values :member
                               acceptance-state-filter-value)

(smithy/sdk/shapes:define-error access-denied-exception common-lisp:nil
                                ((message :target-type string :required
                                  common-lisp:t :member-name "Message"))
                                (:shape-name "AccessDeniedException")
                                (:error-code 403)
                                (:base-class dataexchange-error))

(smithy/sdk/shapes:define-structure action common-lisp:nil
                                    ((export-revision-to-s3 :target-type
                                      auto-export-revision-to-s3request-details
                                      :member-name "ExportRevisionToS3"))
                                    (:shape-name "Action"))

(smithy/sdk/shapes:define-type api-description smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure api-gateway-api-asset common-lisp:nil
                                    ((api-description :target-type
                                      api-description :member-name
                                      "ApiDescription")
                                     (api-endpoint :target-type string
                                      :member-name "ApiEndpoint")
                                     (api-id :target-type string :member-name
                                      "ApiId")
                                     (api-key :target-type string :member-name
                                      "ApiKey")
                                     (api-name :target-type string :member-name
                                      "ApiName")
                                     (api-specification-download-url
                                      :target-type string :member-name
                                      "ApiSpecificationDownloadUrl")
                                     (api-specification-download-url-expires-at
                                      :target-type timestamp :member-name
                                      "ApiSpecificationDownloadUrlExpiresAt")
                                     (protocol-type :target-type protocol-type
                                      :member-name "ProtocolType")
                                     (stage :target-type string :member-name
                                      "Stage"))
                                    (:shape-name "ApiGatewayApiAsset"))

(smithy/sdk/shapes:define-type arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure asset-destination-entry common-lisp:nil
                                    ((asset-id :target-type id :required
                                      common-lisp:t :member-name "AssetId")
                                     (bucket :target-type string :required
                                      common-lisp:t :member-name "Bucket")
                                     (key :target-type string :member-name
                                      "Key"))
                                    (:shape-name "AssetDestinationEntry"))

(smithy/sdk/shapes:define-structure asset-details common-lisp:nil
                                    ((s3snapshot-asset :target-type
                                      s3snapshot-asset :member-name
                                      "S3SnapshotAsset")
                                     (redshift-data-share-asset :target-type
                                      redshift-data-share-asset :member-name
                                      "RedshiftDataShareAsset")
                                     (api-gateway-api-asset :target-type
                                      api-gateway-api-asset :member-name
                                      "ApiGatewayApiAsset")
                                     (s3data-access-asset :target-type
                                      s3data-access-asset :member-name
                                      "S3DataAccessAsset")
                                     (lake-formation-data-permission-asset
                                      :target-type
                                      lake-formation-data-permission-asset
                                      :member-name
                                      "LakeFormationDataPermissionAsset"))
                                    (:shape-name "AssetDetails"))

(smithy/sdk/shapes:define-structure asset-entry common-lisp:nil
                                    ((arn :target-type arn :required
                                      common-lisp:t :member-name "Arn")
                                     (asset-details :target-type asset-details
                                      :required common-lisp:t :member-name
                                      "AssetDetails")
                                     (asset-type :target-type asset-type
                                      :required common-lisp:t :member-name
                                      "AssetType")
                                     (created-at :target-type timestamp
                                      :required common-lisp:t :member-name
                                      "CreatedAt")
                                     (data-set-id :target-type id :required
                                      common-lisp:t :member-name "DataSetId")
                                     (id :target-type id :required
                                      common-lisp:t :member-name "Id")
                                     (name :target-type asset-name :required
                                      common-lisp:t :member-name "Name")
                                     (revision-id :target-type id :required
                                      common-lisp:t :member-name "RevisionId")
                                     (source-id :target-type id :member-name
                                      "SourceId")
                                     (updated-at :target-type timestamp
                                      :required common-lisp:t :member-name
                                      "UpdatedAt"))
                                    (:shape-name "AssetEntry"))

(smithy/sdk/shapes:define-type asset-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure asset-source-entry common-lisp:nil
                                    ((bucket :target-type string :required
                                      common-lisp:t :member-name "Bucket")
                                     (key :target-type string :required
                                      common-lisp:t :member-name "Key"))
                                    (:shape-name "AssetSourceEntry"))

(smithy/sdk/shapes:define-type asset-type smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure auto-export-revision-destination-entry
                                    common-lisp:nil
                                    ((bucket :target-type string :required
                                      common-lisp:t :member-name "Bucket")
                                     (key-pattern :target-type string
                                      :member-name "KeyPattern"))
                                    (:shape-name
                                     "AutoExportRevisionDestinationEntry"))

(smithy/sdk/shapes:define-structure auto-export-revision-to-s3request-details
                                    common-lisp:nil
                                    ((encryption :target-type
                                      export-server-side-encryption
                                      :member-name "Encryption")
                                     (revision-destination :target-type
                                      auto-export-revision-destination-entry
                                      :required common-lisp:t :member-name
                                      "RevisionDestination"))
                                    (:shape-name
                                     "AutoExportRevisionToS3RequestDetails"))

(smithy/sdk/shapes:define-type aws-account-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input cancel-job-request common-lisp:nil
                                ((job-id :target-type id :required
                                  common-lisp:t :member-name "JobId"
                                  :http-label common-lisp:t))
                                (:shape-name "CancelJobRequest"))

(smithy/sdk/shapes:define-type client-token smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type code smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error conflict-exception common-lisp:nil
                                ((message :target-type string :required
                                  common-lisp:t :member-name "Message")
                                 (resource-id :target-type string :member-name
                                  "ResourceId")
                                 (resource-type :target-type resource-type
                                  :member-name "ResourceType"))
                                (:shape-name "ConflictException")
                                (:error-code 409)
                                (:base-class dataexchange-error))

(smithy/sdk/shapes:define-input create-data-grant-request common-lisp:nil
                                ((name :target-type data-grant-name :required
                                  common-lisp:t :member-name "Name")
                                 (grant-distribution-scope :target-type
                                  grant-distribution-scope :required
                                  common-lisp:t :member-name
                                  "GrantDistributionScope")
                                 (receiver-principal :target-type
                                  receiver-principal :required common-lisp:t
                                  :member-name "ReceiverPrincipal")
                                 (source-data-set-id :target-type id :required
                                  common-lisp:t :member-name "SourceDataSetId")
                                 (ends-at :target-type timestamp :member-name
                                  "EndsAt")
                                 (description :target-type description
                                  :member-name "Description")
                                 (tags :target-type map-of-string :member-name
                                  "Tags"))
                                (:shape-name "CreateDataGrantRequest"))

(smithy/sdk/shapes:define-output create-data-grant-response common-lisp:nil
                                 ((name :target-type data-grant-name :required
                                   common-lisp:t :member-name "Name")
                                  (sender-principal :target-type
                                   sender-principal :required common-lisp:t
                                   :member-name "SenderPrincipal")
                                  (receiver-principal :target-type
                                   receiver-principal :required common-lisp:t
                                   :member-name "ReceiverPrincipal")
                                  (description :target-type
                                   data-grant-description :member-name
                                   "Description")
                                  (acceptance-state :target-type
                                   data-grant-acceptance-state :required
                                   common-lisp:t :member-name
                                   "AcceptanceState")
                                  (accepted-at :target-type timestamp
                                   :member-name "AcceptedAt")
                                  (ends-at :target-type timestamp :member-name
                                   "EndsAt")
                                  (grant-distribution-scope :target-type
                                   grant-distribution-scope :required
                                   common-lisp:t :member-name
                                   "GrantDistributionScope")
                                  (data-set-id :target-type id :required
                                   common-lisp:t :member-name "DataSetId")
                                  (source-data-set-id :target-type id :required
                                   common-lisp:t :member-name
                                   "SourceDataSetId")
                                  (id :target-type id :required common-lisp:t
                                   :member-name "Id")
                                  (arn :target-type arn :required common-lisp:t
                                   :member-name "Arn")
                                  (created-at :target-type timestamp :required
                                   common-lisp:t :member-name "CreatedAt")
                                  (updated-at :target-type timestamp :required
                                   common-lisp:t :member-name "UpdatedAt")
                                  (tags :target-type map-of-string :member-name
                                   "Tags"))
                                 (:shape-name "CreateDataGrantResponse"))

(smithy/sdk/shapes:define-structure create-data-set-request common-lisp:nil
                                    ((asset-type :target-type asset-type
                                      :required common-lisp:t :member-name
                                      "AssetType")
                                     (description :target-type description
                                      :required common-lisp:t :member-name
                                      "Description")
                                     (name :target-type name :required
                                      common-lisp:t :member-name "Name")
                                     (tags :target-type map-of-string
                                      :member-name "Tags"))
                                    (:shape-name "CreateDataSetRequest"))

(smithy/sdk/shapes:define-structure create-data-set-response common-lisp:nil
                                    ((arn :target-type arn :member-name "Arn")
                                     (asset-type :target-type asset-type
                                      :member-name "AssetType")
                                     (created-at :target-type timestamp
                                      :member-name "CreatedAt")
                                     (description :target-type description
                                      :member-name "Description")
                                     (id :target-type id :member-name "Id")
                                     (name :target-type name :member-name
                                      "Name")
                                     (origin :target-type origin :member-name
                                      "Origin")
                                     (origin-details :target-type
                                      origin-details :member-name
                                      "OriginDetails")
                                     (source-id :target-type id :member-name
                                      "SourceId")
                                     (tags :target-type map-of-string
                                      :member-name "Tags")
                                     (updated-at :target-type timestamp
                                      :member-name "UpdatedAt"))
                                    (:shape-name "CreateDataSetResponse"))

(smithy/sdk/shapes:define-structure create-event-action-request common-lisp:nil
                                    ((action :target-type action :required
                                      common-lisp:t :member-name "Action")
                                     (event :target-type event :required
                                      common-lisp:t :member-name "Event")
                                     (tags :target-type map-of-string
                                      :member-name "Tags"))
                                    (:shape-name "CreateEventActionRequest"))

(smithy/sdk/shapes:define-structure create-event-action-response
                                    common-lisp:nil
                                    ((action :target-type action :member-name
                                      "Action")
                                     (arn :target-type arn :member-name "Arn")
                                     (created-at :target-type timestamp
                                      :member-name "CreatedAt")
                                     (event :target-type event :member-name
                                      "Event")
                                     (id :target-type id :member-name "Id")
                                     (tags :target-type map-of-string
                                      :member-name "Tags")
                                     (updated-at :target-type timestamp
                                      :member-name "UpdatedAt"))
                                    (:shape-name "CreateEventActionResponse"))

(smithy/sdk/shapes:define-structure create-job-request common-lisp:nil
                                    ((details :target-type request-details
                                      :required common-lisp:t :member-name
                                      "Details")
                                     (type :target-type type :required
                                      common-lisp:t :member-name "Type"))
                                    (:shape-name "CreateJobRequest"))

(smithy/sdk/shapes:define-structure create-job-response common-lisp:nil
                                    ((arn :target-type arn :member-name "Arn")
                                     (created-at :target-type timestamp
                                      :member-name "CreatedAt")
                                     (details :target-type response-details
                                      :member-name "Details")
                                     (errors :target-type list-of-job-error
                                      :member-name "Errors")
                                     (id :target-type id :member-name "Id")
                                     (state :target-type state :member-name
                                      "State")
                                     (type :target-type type :member-name
                                      "Type")
                                     (updated-at :target-type timestamp
                                      :member-name "UpdatedAt"))
                                    (:shape-name "CreateJobResponse"))

(smithy/sdk/shapes:define-input create-revision-request common-lisp:nil
                                ((comment :target-type string-min0max16384
                                  :member-name "Comment")
                                 (data-set-id :target-type id :required
                                  common-lisp:t :member-name "DataSetId"
                                  :http-label common-lisp:t)
                                 (tags :target-type map-of-string :member-name
                                  "Tags"))
                                (:shape-name "CreateRevisionRequest"))

(smithy/sdk/shapes:define-structure create-revision-response common-lisp:nil
                                    ((arn :target-type arn :member-name "Arn")
                                     (comment :target-type string-min0max16384
                                      :member-name "Comment")
                                     (created-at :target-type timestamp
                                      :member-name "CreatedAt")
                                     (data-set-id :target-type id :member-name
                                      "DataSetId")
                                     (finalized :target-type boolean
                                      :member-name "Finalized")
                                     (id :target-type id :member-name "Id")
                                     (source-id :target-type id :member-name
                                      "SourceId")
                                     (tags :target-type map-of-string
                                      :member-name "Tags")
                                     (updated-at :target-type timestamp
                                      :member-name "UpdatedAt")
                                     (revocation-comment :target-type
                                      string-min10max512 :member-name
                                      "RevocationComment")
                                     (revoked :target-type boolean :member-name
                                      "Revoked")
                                     (revoked-at :target-type timestamp
                                      :member-name "RevokedAt"))
                                    (:shape-name "CreateRevisionResponse"))

(smithy/sdk/shapes:define-structure
 create-s3data-access-from-s3bucket-request-details common-lisp:nil
 ((asset-source :target-type s3data-access-asset-source-entry :required
   common-lisp:t :member-name "AssetSource")
  (data-set-id :target-type id :required common-lisp:t :member-name
   "DataSetId")
  (revision-id :target-type id :required common-lisp:t :member-name
   "RevisionId"))
 (:shape-name "CreateS3DataAccessFromS3BucketRequestDetails"))

(smithy/sdk/shapes:define-structure
 create-s3data-access-from-s3bucket-response-details common-lisp:nil
 ((asset-source :target-type s3data-access-asset-source-entry :required
   common-lisp:t :member-name "AssetSource")
  (data-set-id :target-type id :required common-lisp:t :member-name
   "DataSetId")
  (revision-id :target-type id :required common-lisp:t :member-name
   "RevisionId"))
 (:shape-name "CreateS3DataAccessFromS3BucketResponseDetails"))

(smithy/sdk/shapes:define-type data-grant-acceptance-state
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type data-grant-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type data-grant-description
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type data-grant-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type data-grant-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure data-grant-summary-entry common-lisp:nil
                                    ((name :target-type data-grant-name
                                      :required common-lisp:t :member-name
                                      "Name")
                                     (sender-principal :target-type
                                      sender-principal :required common-lisp:t
                                      :member-name "SenderPrincipal")
                                     (receiver-principal :target-type
                                      receiver-principal :required
                                      common-lisp:t :member-name
                                      "ReceiverPrincipal")
                                     (acceptance-state :target-type
                                      data-grant-acceptance-state :required
                                      common-lisp:t :member-name
                                      "AcceptanceState")
                                     (accepted-at :target-type timestamp
                                      :member-name "AcceptedAt")
                                     (ends-at :target-type timestamp
                                      :member-name "EndsAt")
                                     (data-set-id :target-type id :required
                                      common-lisp:t :member-name "DataSetId")
                                     (source-data-set-id :target-type id
                                      :required common-lisp:t :member-name
                                      "SourceDataSetId")
                                     (id :target-type id :required
                                      common-lisp:t :member-name "Id")
                                     (arn :target-type arn :required
                                      common-lisp:t :member-name "Arn")
                                     (created-at :target-type timestamp
                                      :required common-lisp:t :member-name
                                      "CreatedAt")
                                     (updated-at :target-type timestamp
                                      :required common-lisp:t :member-name
                                      "UpdatedAt"))
                                    (:shape-name "DataGrantSummaryEntry"))

(smithy/sdk/shapes:define-structure data-set-entry common-lisp:nil
                                    ((arn :target-type arn :required
                                      common-lisp:t :member-name "Arn")
                                     (asset-type :target-type asset-type
                                      :required common-lisp:t :member-name
                                      "AssetType")
                                     (created-at :target-type timestamp
                                      :required common-lisp:t :member-name
                                      "CreatedAt")
                                     (description :target-type description
                                      :required common-lisp:t :member-name
                                      "Description")
                                     (id :target-type id :required
                                      common-lisp:t :member-name "Id")
                                     (name :target-type name :required
                                      common-lisp:t :member-name "Name")
                                     (origin :target-type origin :required
                                      common-lisp:t :member-name "Origin")
                                     (origin-details :target-type
                                      origin-details :member-name
                                      "OriginDetails")
                                     (source-id :target-type id :member-name
                                      "SourceId")
                                     (updated-at :target-type timestamp
                                      :required common-lisp:t :member-name
                                      "UpdatedAt"))
                                    (:shape-name "DataSetEntry"))

(smithy/sdk/shapes:define-structure data-update-request-details common-lisp:nil
                                    ((data-updated-at :target-type timestamp
                                      :member-name "DataUpdatedAt"))
                                    (:shape-name "DataUpdateRequestDetails"))

(smithy/sdk/shapes:define-structure database-lftag-policy common-lisp:nil
                                    ((expression :target-type list-of-lftags
                                      :required common-lisp:t :member-name
                                      "Expression"))
                                    (:shape-name "DatabaseLFTagPolicy"))

(smithy/sdk/shapes:define-structure database-lftag-policy-and-permissions
                                    common-lisp:nil
                                    ((expression :target-type list-of-lftags
                                      :required common-lisp:t :member-name
                                      "Expression")
                                     (permissions :target-type
                                      list-of-database-lftag-policy-permissions
                                      :required common-lisp:t :member-name
                                      "Permissions"))
                                    (:shape-name
                                     "DatabaseLFTagPolicyAndPermissions"))

(smithy/sdk/shapes:define-type database-lftag-policy-permission
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input delete-asset-request common-lisp:nil
                                ((asset-id :target-type id :required
                                  common-lisp:t :member-name "AssetId"
                                  :http-label common-lisp:t)
                                 (data-set-id :target-type id :required
                                  common-lisp:t :member-name "DataSetId"
                                  :http-label common-lisp:t)
                                 (revision-id :target-type id :required
                                  common-lisp:t :member-name "RevisionId"
                                  :http-label common-lisp:t))
                                (:shape-name "DeleteAssetRequest"))

(smithy/sdk/shapes:define-input delete-data-grant-request common-lisp:nil
                                ((data-grant-id :target-type data-grant-id
                                  :required common-lisp:t :member-name
                                  "DataGrantId" :http-label common-lisp:t))
                                (:shape-name "DeleteDataGrantRequest"))

(smithy/sdk/shapes:define-input delete-data-set-request common-lisp:nil
                                ((data-set-id :target-type id :required
                                  common-lisp:t :member-name "DataSetId"
                                  :http-label common-lisp:t))
                                (:shape-name "DeleteDataSetRequest"))

(smithy/sdk/shapes:define-input delete-event-action-request common-lisp:nil
                                ((event-action-id :target-type string :required
                                  common-lisp:t :member-name "EventActionId"
                                  :http-label common-lisp:t))
                                (:shape-name "DeleteEventActionRequest"))

(smithy/sdk/shapes:define-input delete-revision-request common-lisp:nil
                                ((data-set-id :target-type id :required
                                  common-lisp:t :member-name "DataSetId"
                                  :http-label common-lisp:t)
                                 (revision-id :target-type id :required
                                  common-lisp:t :member-name "RevisionId"
                                  :http-label common-lisp:t))
                                (:shape-name "DeleteRevisionRequest"))

(smithy/sdk/shapes:define-structure deprecation-request-details common-lisp:nil
                                    ((deprecation-at :target-type timestamp
                                      :required common-lisp:t :member-name
                                      "DeprecationAt"))
                                    (:shape-name "DeprecationRequestDetails"))

(smithy/sdk/shapes:define-type description smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure details common-lisp:nil
                                    ((import-asset-from-signed-url-job-error-details
                                      :target-type
                                      import-asset-from-signed-url-job-error-details
                                      :member-name
                                      "ImportAssetFromSignedUrlJobErrorDetails")
                                     (import-assets-from-s3job-error-details
                                      :target-type list-of-asset-source-entry
                                      :member-name
                                      "ImportAssetsFromS3JobErrorDetails"))
                                    (:shape-name "Details"))

(smithy/sdk/shapes:define-structure event common-lisp:nil
                                    ((revision-published :target-type
                                      revision-published :member-name
                                      "RevisionPublished"))
                                    (:shape-name "Event"))

(smithy/sdk/shapes:define-structure event-action-entry common-lisp:nil
                                    ((action :target-type action :required
                                      common-lisp:t :member-name "Action")
                                     (arn :target-type arn :required
                                      common-lisp:t :member-name "Arn")
                                     (created-at :target-type timestamp
                                      :required common-lisp:t :member-name
                                      "CreatedAt")
                                     (event :target-type event :required
                                      common-lisp:t :member-name "Event")
                                     (id :target-type id :required
                                      common-lisp:t :member-name "Id")
                                     (updated-at :target-type timestamp
                                      :required common-lisp:t :member-name
                                      "UpdatedAt"))
                                    (:shape-name "EventActionEntry"))

(smithy/sdk/shapes:define-type exception-cause smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure export-asset-to-signed-url-request-details
                                    common-lisp:nil
                                    ((asset-id :target-type id :required
                                      common-lisp:t :member-name "AssetId")
                                     (data-set-id :target-type id :required
                                      common-lisp:t :member-name "DataSetId")
                                     (revision-id :target-type id :required
                                      common-lisp:t :member-name "RevisionId"))
                                    (:shape-name
                                     "ExportAssetToSignedUrlRequestDetails"))

(smithy/sdk/shapes:define-structure export-asset-to-signed-url-response-details
                                    common-lisp:nil
                                    ((asset-id :target-type id :required
                                      common-lisp:t :member-name "AssetId")
                                     (data-set-id :target-type id :required
                                      common-lisp:t :member-name "DataSetId")
                                     (revision-id :target-type id :required
                                      common-lisp:t :member-name "RevisionId")
                                     (signed-url :target-type string
                                      :member-name "SignedUrl")
                                     (signed-url-expires-at :target-type
                                      timestamp :member-name
                                      "SignedUrlExpiresAt"))
                                    (:shape-name
                                     "ExportAssetToSignedUrlResponseDetails"))

(smithy/sdk/shapes:define-structure export-assets-to-s3request-details
                                    common-lisp:nil
                                    ((asset-destinations :target-type
                                      list-of-asset-destination-entry :required
                                      common-lisp:t :member-name
                                      "AssetDestinations")
                                     (data-set-id :target-type id :required
                                      common-lisp:t :member-name "DataSetId")
                                     (encryption :target-type
                                      export-server-side-encryption
                                      :member-name "Encryption")
                                     (revision-id :target-type id :required
                                      common-lisp:t :member-name "RevisionId"))
                                    (:shape-name
                                     "ExportAssetsToS3RequestDetails"))

(smithy/sdk/shapes:define-structure export-assets-to-s3response-details
                                    common-lisp:nil
                                    ((asset-destinations :target-type
                                      list-of-asset-destination-entry :required
                                      common-lisp:t :member-name
                                      "AssetDestinations")
                                     (data-set-id :target-type id :required
                                      common-lisp:t :member-name "DataSetId")
                                     (encryption :target-type
                                      export-server-side-encryption
                                      :member-name "Encryption")
                                     (revision-id :target-type id :required
                                      common-lisp:t :member-name "RevisionId"))
                                    (:shape-name
                                     "ExportAssetsToS3ResponseDetails"))

(smithy/sdk/shapes:define-structure export-revisions-to-s3request-details
                                    common-lisp:nil
                                    ((data-set-id :target-type id :required
                                      common-lisp:t :member-name "DataSetId")
                                     (encryption :target-type
                                      export-server-side-encryption
                                      :member-name "Encryption")
                                     (revision-destinations :target-type
                                      list-of-revision-destination-entry
                                      :required common-lisp:t :member-name
                                      "RevisionDestinations"))
                                    (:shape-name
                                     "ExportRevisionsToS3RequestDetails"))

(smithy/sdk/shapes:define-structure export-revisions-to-s3response-details
                                    common-lisp:nil
                                    ((data-set-id :target-type id :required
                                      common-lisp:t :member-name "DataSetId")
                                     (encryption :target-type
                                      export-server-side-encryption
                                      :member-name "Encryption")
                                     (revision-destinations :target-type
                                      list-of-revision-destination-entry
                                      :required common-lisp:t :member-name
                                      "RevisionDestinations")
                                     (event-action-arn :target-type string
                                      :member-name "EventActionArn"))
                                    (:shape-name
                                     "ExportRevisionsToS3ResponseDetails"))

(smithy/sdk/shapes:define-structure export-server-side-encryption
                                    common-lisp:nil
                                    ((kms-key-arn :target-type string
                                      :member-name "KmsKeyArn")
                                     (type :target-type
                                      server-side-encryption-types :required
                                      common-lisp:t :member-name "Type"))
                                    (:shape-name "ExportServerSideEncryption"))

(smithy/sdk/shapes:define-input get-asset-request common-lisp:nil
                                ((asset-id :target-type id :required
                                  common-lisp:t :member-name "AssetId"
                                  :http-label common-lisp:t)
                                 (data-set-id :target-type id :required
                                  common-lisp:t :member-name "DataSetId"
                                  :http-label common-lisp:t)
                                 (revision-id :target-type id :required
                                  common-lisp:t :member-name "RevisionId"
                                  :http-label common-lisp:t))
                                (:shape-name "GetAssetRequest"))

(smithy/sdk/shapes:define-structure get-asset-response common-lisp:nil
                                    ((arn :target-type arn :member-name "Arn")
                                     (asset-details :target-type asset-details
                                      :member-name "AssetDetails")
                                     (asset-type :target-type asset-type
                                      :member-name "AssetType")
                                     (created-at :target-type timestamp
                                      :member-name "CreatedAt")
                                     (data-set-id :target-type id :member-name
                                      "DataSetId")
                                     (id :target-type id :member-name "Id")
                                     (name :target-type asset-name :member-name
                                      "Name")
                                     (revision-id :target-type id :member-name
                                      "RevisionId")
                                     (source-id :target-type id :member-name
                                      "SourceId")
                                     (updated-at :target-type timestamp
                                      :member-name "UpdatedAt"))
                                    (:shape-name "GetAssetResponse"))

(smithy/sdk/shapes:define-input get-data-grant-request common-lisp:nil
                                ((data-grant-id :target-type data-grant-id
                                  :required common-lisp:t :member-name
                                  "DataGrantId" :http-label common-lisp:t))
                                (:shape-name "GetDataGrantRequest"))

(smithy/sdk/shapes:define-output get-data-grant-response common-lisp:nil
                                 ((name :target-type data-grant-name :required
                                   common-lisp:t :member-name "Name")
                                  (sender-principal :target-type
                                   sender-principal :required common-lisp:t
                                   :member-name "SenderPrincipal")
                                  (receiver-principal :target-type
                                   receiver-principal :required common-lisp:t
                                   :member-name "ReceiverPrincipal")
                                  (description :target-type
                                   data-grant-description :member-name
                                   "Description")
                                  (acceptance-state :target-type
                                   data-grant-acceptance-state :required
                                   common-lisp:t :member-name
                                   "AcceptanceState")
                                  (accepted-at :target-type timestamp
                                   :member-name "AcceptedAt")
                                  (ends-at :target-type timestamp :member-name
                                   "EndsAt")
                                  (grant-distribution-scope :target-type
                                   grant-distribution-scope :required
                                   common-lisp:t :member-name
                                   "GrantDistributionScope")
                                  (data-set-id :target-type id :required
                                   common-lisp:t :member-name "DataSetId")
                                  (source-data-set-id :target-type id :required
                                   common-lisp:t :member-name
                                   "SourceDataSetId")
                                  (id :target-type id :required common-lisp:t
                                   :member-name "Id")
                                  (arn :target-type arn :required common-lisp:t
                                   :member-name "Arn")
                                  (created-at :target-type timestamp :required
                                   common-lisp:t :member-name "CreatedAt")
                                  (updated-at :target-type timestamp :required
                                   common-lisp:t :member-name "UpdatedAt")
                                  (tags :target-type map-of-string :member-name
                                   "Tags"))
                                 (:shape-name "GetDataGrantResponse"))

(smithy/sdk/shapes:define-input get-data-set-request common-lisp:nil
                                ((data-set-id :target-type id :required
                                  common-lisp:t :member-name "DataSetId"
                                  :http-label common-lisp:t))
                                (:shape-name "GetDataSetRequest"))

(smithy/sdk/shapes:define-structure get-data-set-response common-lisp:nil
                                    ((arn :target-type arn :member-name "Arn")
                                     (asset-type :target-type asset-type
                                      :member-name "AssetType")
                                     (created-at :target-type timestamp
                                      :member-name "CreatedAt")
                                     (description :target-type description
                                      :member-name "Description")
                                     (id :target-type id :member-name "Id")
                                     (name :target-type name :member-name
                                      "Name")
                                     (origin :target-type origin :member-name
                                      "Origin")
                                     (origin-details :target-type
                                      origin-details :member-name
                                      "OriginDetails")
                                     (source-id :target-type id :member-name
                                      "SourceId")
                                     (tags :target-type map-of-string
                                      :member-name "Tags")
                                     (updated-at :target-type timestamp
                                      :member-name "UpdatedAt"))
                                    (:shape-name "GetDataSetResponse"))

(smithy/sdk/shapes:define-input get-event-action-request common-lisp:nil
                                ((event-action-id :target-type string :required
                                  common-lisp:t :member-name "EventActionId"
                                  :http-label common-lisp:t))
                                (:shape-name "GetEventActionRequest"))

(smithy/sdk/shapes:define-structure get-event-action-response common-lisp:nil
                                    ((action :target-type action :member-name
                                      "Action")
                                     (arn :target-type arn :member-name "Arn")
                                     (created-at :target-type timestamp
                                      :member-name "CreatedAt")
                                     (event :target-type event :member-name
                                      "Event")
                                     (id :target-type id :member-name "Id")
                                     (tags :target-type map-of-string
                                      :member-name "Tags")
                                     (updated-at :target-type timestamp
                                      :member-name "UpdatedAt"))
                                    (:shape-name "GetEventActionResponse"))

(smithy/sdk/shapes:define-input get-job-request common-lisp:nil
                                ((job-id :target-type id :required
                                  common-lisp:t :member-name "JobId"
                                  :http-label common-lisp:t))
                                (:shape-name "GetJobRequest"))

(smithy/sdk/shapes:define-structure get-job-response common-lisp:nil
                                    ((arn :target-type arn :member-name "Arn")
                                     (created-at :target-type timestamp
                                      :member-name "CreatedAt")
                                     (details :target-type response-details
                                      :member-name "Details")
                                     (errors :target-type list-of-job-error
                                      :member-name "Errors")
                                     (id :target-type id :member-name "Id")
                                     (state :target-type state :member-name
                                      "State")
                                     (type :target-type type :member-name
                                      "Type")
                                     (updated-at :target-type timestamp
                                      :member-name "UpdatedAt"))
                                    (:shape-name "GetJobResponse"))

(smithy/sdk/shapes:define-input get-received-data-grant-request common-lisp:nil
                                ((data-grant-arn :target-type data-grant-arn
                                  :required common-lisp:t :member-name
                                  "DataGrantArn" :http-label common-lisp:t))
                                (:shape-name "GetReceivedDataGrantRequest"))

(smithy/sdk/shapes:define-output get-received-data-grant-response
                                 common-lisp:nil
                                 ((name :target-type data-grant-name :required
                                   common-lisp:t :member-name "Name")
                                  (sender-principal :target-type
                                   sender-principal :member-name
                                   "SenderPrincipal")
                                  (receiver-principal :target-type
                                   receiver-principal :required common-lisp:t
                                   :member-name "ReceiverPrincipal")
                                  (description :target-type
                                   data-grant-description :member-name
                                   "Description")
                                  (acceptance-state :target-type
                                   data-grant-acceptance-state :required
                                   common-lisp:t :member-name
                                   "AcceptanceState")
                                  (accepted-at :target-type timestamp
                                   :member-name "AcceptedAt")
                                  (ends-at :target-type timestamp :member-name
                                   "EndsAt")
                                  (grant-distribution-scope :target-type
                                   grant-distribution-scope :required
                                   common-lisp:t :member-name
                                   "GrantDistributionScope")
                                  (data-set-id :target-type id :required
                                   common-lisp:t :member-name "DataSetId")
                                  (id :target-type id :required common-lisp:t
                                   :member-name "Id")
                                  (arn :target-type arn :required common-lisp:t
                                   :member-name "Arn")
                                  (created-at :target-type timestamp :required
                                   common-lisp:t :member-name "CreatedAt")
                                  (updated-at :target-type timestamp :required
                                   common-lisp:t :member-name "UpdatedAt"))
                                 (:shape-name "GetReceivedDataGrantResponse"))

(smithy/sdk/shapes:define-input get-revision-request common-lisp:nil
                                ((data-set-id :target-type id :required
                                  common-lisp:t :member-name "DataSetId"
                                  :http-label common-lisp:t)
                                 (revision-id :target-type id :required
                                  common-lisp:t :member-name "RevisionId"
                                  :http-label common-lisp:t))
                                (:shape-name "GetRevisionRequest"))

(smithy/sdk/shapes:define-structure get-revision-response common-lisp:nil
                                    ((arn :target-type arn :member-name "Arn")
                                     (comment :target-type string-min0max16384
                                      :member-name "Comment")
                                     (created-at :target-type timestamp
                                      :member-name "CreatedAt")
                                     (data-set-id :target-type id :member-name
                                      "DataSetId")
                                     (finalized :target-type boolean
                                      :member-name "Finalized")
                                     (id :target-type id :member-name "Id")
                                     (source-id :target-type id :member-name
                                      "SourceId")
                                     (tags :target-type map-of-string
                                      :member-name "Tags")
                                     (updated-at :target-type timestamp
                                      :member-name "UpdatedAt")
                                     (revocation-comment :target-type
                                      string-min10max512 :member-name
                                      "RevocationComment")
                                     (revoked :target-type boolean :member-name
                                      "Revoked")
                                     (revoked-at :target-type timestamp
                                      :member-name "RevokedAt"))
                                    (:shape-name "GetRevisionResponse"))

(smithy/sdk/shapes:define-type grant-distribution-scope
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure
 import-asset-from-api-gateway-api-request-details common-lisp:nil
 ((api-description :target-type api-description :member-name "ApiDescription")
  (api-id :target-type string :required common-lisp:t :member-name "ApiId")
  (api-key :target-type string :member-name "ApiKey")
  (api-name :target-type string :required common-lisp:t :member-name "ApiName")
  (api-specification-md5hash :target-type
   string-min24max24pattern-aza-z094aza-z092aza-z093 :required common-lisp:t
   :member-name "ApiSpecificationMd5Hash")
  (data-set-id :target-type id :required common-lisp:t :member-name
   "DataSetId")
  (protocol-type :target-type protocol-type :required common-lisp:t
   :member-name "ProtocolType")
  (revision-id :target-type id :required common-lisp:t :member-name
   "RevisionId")
  (stage :target-type string :required common-lisp:t :member-name "Stage"))
 (:shape-name "ImportAssetFromApiGatewayApiRequestDetails"))

(smithy/sdk/shapes:define-structure
 import-asset-from-api-gateway-api-response-details common-lisp:nil
 ((api-description :target-type api-description :member-name "ApiDescription")
  (api-id :target-type string :required common-lisp:t :member-name "ApiId")
  (api-key :target-type string :member-name "ApiKey")
  (api-name :target-type string :required common-lisp:t :member-name "ApiName")
  (api-specification-md5hash :target-type
   string-min24max24pattern-aza-z094aza-z092aza-z093 :required common-lisp:t
   :member-name "ApiSpecificationMd5Hash")
  (api-specification-upload-url :target-type string :required common-lisp:t
   :member-name "ApiSpecificationUploadUrl")
  (api-specification-upload-url-expires-at :target-type timestamp :required
   common-lisp:t :member-name "ApiSpecificationUploadUrlExpiresAt")
  (data-set-id :target-type id :required common-lisp:t :member-name
   "DataSetId")
  (protocol-type :target-type protocol-type :required common-lisp:t
   :member-name "ProtocolType")
  (revision-id :target-type id :required common-lisp:t :member-name
   "RevisionId")
  (stage :target-type string :required common-lisp:t :member-name "Stage"))
 (:shape-name "ImportAssetFromApiGatewayApiResponseDetails"))

(smithy/sdk/shapes:define-structure
 import-asset-from-signed-url-job-error-details common-lisp:nil
 ((asset-name :target-type asset-name :required common-lisp:t :member-name
   "AssetName"))
 (:shape-name "ImportAssetFromSignedUrlJobErrorDetails"))

(smithy/sdk/shapes:define-structure
 import-asset-from-signed-url-request-details common-lisp:nil
 ((asset-name :target-type asset-name :required common-lisp:t :member-name
   "AssetName")
  (data-set-id :target-type id :required common-lisp:t :member-name
   "DataSetId")
  (md5hash :target-type string-min24max24pattern-aza-z094aza-z092aza-z093
   :required common-lisp:t :member-name "Md5Hash")
  (revision-id :target-type id :required common-lisp:t :member-name
   "RevisionId"))
 (:shape-name "ImportAssetFromSignedUrlRequestDetails"))

(smithy/sdk/shapes:define-structure
 import-asset-from-signed-url-response-details common-lisp:nil
 ((asset-name :target-type asset-name :required common-lisp:t :member-name
   "AssetName")
  (data-set-id :target-type id :required common-lisp:t :member-name
   "DataSetId")
  (md5hash :target-type string-min24max24pattern-aza-z094aza-z092aza-z093
   :member-name "Md5Hash")
  (revision-id :target-type id :required common-lisp:t :member-name
   "RevisionId")
  (signed-url :target-type string :member-name "SignedUrl")
  (signed-url-expires-at :target-type timestamp :member-name
   "SignedUrlExpiresAt"))
 (:shape-name "ImportAssetFromSignedUrlResponseDetails"))

(smithy/sdk/shapes:define-structure
 import-assets-from-lake-formation-tag-policy-request-details common-lisp:nil
 ((catalog-id :target-type aws-account-id :required common-lisp:t :member-name
   "CatalogId")
  (database :target-type database-lftag-policy-and-permissions :member-name
   "Database")
  (table :target-type table-lftag-policy-and-permissions :member-name "Table")
  (role-arn :target-type role-arn :required common-lisp:t :member-name
   "RoleArn")
  (data-set-id :target-type id :required common-lisp:t :member-name
   "DataSetId")
  (revision-id :target-type id :required common-lisp:t :member-name
   "RevisionId"))
 (:shape-name "ImportAssetsFromLakeFormationTagPolicyRequestDetails"))

(smithy/sdk/shapes:define-structure
 import-assets-from-lake-formation-tag-policy-response-details common-lisp:nil
 ((catalog-id :target-type aws-account-id :required common-lisp:t :member-name
   "CatalogId")
  (database :target-type database-lftag-policy-and-permissions :member-name
   "Database")
  (table :target-type table-lftag-policy-and-permissions :member-name "Table")
  (role-arn :target-type role-arn :required common-lisp:t :member-name
   "RoleArn")
  (data-set-id :target-type id :required common-lisp:t :member-name
   "DataSetId")
  (revision-id :target-type id :required common-lisp:t :member-name
   "RevisionId"))
 (:shape-name "ImportAssetsFromLakeFormationTagPolicyResponseDetails"))

(smithy/sdk/shapes:define-structure
 import-assets-from-redshift-data-shares-request-details common-lisp:nil
 ((asset-sources :target-type list-of-redshift-data-share-asset-source-entry
   :required common-lisp:t :member-name "AssetSources")
  (data-set-id :target-type id :required common-lisp:t :member-name
   "DataSetId")
  (revision-id :target-type id :required common-lisp:t :member-name
   "RevisionId"))
 (:shape-name "ImportAssetsFromRedshiftDataSharesRequestDetails"))

(smithy/sdk/shapes:define-structure
 import-assets-from-redshift-data-shares-response-details common-lisp:nil
 ((asset-sources :target-type list-of-redshift-data-share-asset-source-entry
   :required common-lisp:t :member-name "AssetSources")
  (data-set-id :target-type id :required common-lisp:t :member-name
   "DataSetId")
  (revision-id :target-type id :required common-lisp:t :member-name
   "RevisionId"))
 (:shape-name "ImportAssetsFromRedshiftDataSharesResponseDetails"))

(smithy/sdk/shapes:define-structure import-assets-from-s3request-details
                                    common-lisp:nil
                                    ((asset-sources :target-type
                                      list-of-asset-source-entry :required
                                      common-lisp:t :member-name
                                      "AssetSources")
                                     (data-set-id :target-type id :required
                                      common-lisp:t :member-name "DataSetId")
                                     (revision-id :target-type id :required
                                      common-lisp:t :member-name "RevisionId"))
                                    (:shape-name
                                     "ImportAssetsFromS3RequestDetails"))

(smithy/sdk/shapes:define-structure import-assets-from-s3response-details
                                    common-lisp:nil
                                    ((asset-sources :target-type
                                      list-of-asset-source-entry :required
                                      common-lisp:t :member-name
                                      "AssetSources")
                                     (data-set-id :target-type id :required
                                      common-lisp:t :member-name "DataSetId")
                                     (revision-id :target-type id :required
                                      common-lisp:t :member-name "RevisionId"))
                                    (:shape-name
                                     "ImportAssetsFromS3ResponseDetails"))

(smithy/sdk/shapes:define-error internal-server-exception common-lisp:nil
                                ((message :target-type string :required
                                  common-lisp:t :member-name "Message"))
                                (:shape-name "InternalServerException")
                                (:error-code 500)
                                (:base-class dataexchange-error))

(smithy/sdk/shapes:define-structure job-entry common-lisp:nil
                                    ((arn :target-type arn :required
                                      common-lisp:t :member-name "Arn")
                                     (created-at :target-type timestamp
                                      :required common-lisp:t :member-name
                                      "CreatedAt")
                                     (details :target-type response-details
                                      :required common-lisp:t :member-name
                                      "Details")
                                     (errors :target-type list-of-job-error
                                      :member-name "Errors")
                                     (id :target-type id :required
                                      common-lisp:t :member-name "Id")
                                     (state :target-type state :required
                                      common-lisp:t :member-name "State")
                                     (type :target-type type :required
                                      common-lisp:t :member-name "Type")
                                     (updated-at :target-type timestamp
                                      :required common-lisp:t :member-name
                                      "UpdatedAt"))
                                    (:shape-name "JobEntry"))

(smithy/sdk/shapes:define-structure job-error common-lisp:nil
                                    ((code :target-type code :required
                                      common-lisp:t :member-name "Code")
                                     (details :target-type details :member-name
                                      "Details")
                                     (limit-name :target-type
                                      job-error-limit-name :member-name
                                      "LimitName")
                                     (limit-value :target-type double
                                      :member-name "LimitValue")
                                     (message :target-type string :required
                                      common-lisp:t :member-name "Message")
                                     (resource-id :target-type string
                                      :member-name "ResourceId")
                                     (resource-type :target-type
                                      job-error-resource-types :member-name
                                      "ResourceType"))
                                    (:shape-name "JobError"))

(smithy/sdk/shapes:define-type job-error-limit-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type job-error-resource-types
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type kms-key-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure kms-key-to-grant common-lisp:nil
                                    ((kms-key-arn :target-type kms-key-arn
                                      :required common-lisp:t :member-name
                                      "KmsKeyArn"))
                                    (:shape-name "KmsKeyToGrant"))

(smithy/sdk/shapes:define-type lfpermission smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure lfresource-details common-lisp:nil
                                    ((database :target-type
                                      database-lftag-policy :member-name
                                      "Database")
                                     (table :target-type table-lftag-policy
                                      :member-name "Table"))
                                    (:shape-name "LFResourceDetails"))

(smithy/sdk/shapes:define-type lfresource-type smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure lftag common-lisp:nil
                                    ((tag-key :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "TagKey")
                                     (tag-values :target-type
                                      list-of-lftag-values :required
                                      common-lisp:t :member-name "TagValues"))
                                    (:shape-name "LFTag"))

(smithy/sdk/shapes:define-structure lftag-policy-details common-lisp:nil
                                    ((catalog-id :target-type aws-account-id
                                      :required common-lisp:t :member-name
                                      "CatalogId")
                                     (resource-type :target-type
                                      lfresource-type :required common-lisp:t
                                      :member-name "ResourceType")
                                     (resource-details :target-type
                                      lfresource-details :required
                                      common-lisp:t :member-name
                                      "ResourceDetails"))
                                    (:shape-name "LFTagPolicyDetails"))

(smithy/sdk/shapes:define-structure lake-formation-data-permission-asset
                                    common-lisp:nil
                                    ((lake-formation-data-permission-details
                                      :target-type
                                      lake-formation-data-permission-details
                                      :required common-lisp:t :member-name
                                      "LakeFormationDataPermissionDetails")
                                     (lake-formation-data-permission-type
                                      :target-type
                                      lake-formation-data-permission-type
                                      :required common-lisp:t :member-name
                                      "LakeFormationDataPermissionType")
                                     (permissions :target-type
                                      list-of-lfpermissions :required
                                      common-lisp:t :member-name "Permissions")
                                     (role-arn :target-type role-arn
                                      :member-name "RoleArn"))
                                    (:shape-name
                                     "LakeFormationDataPermissionAsset"))

(smithy/sdk/shapes:define-structure lake-formation-data-permission-details
                                    common-lisp:nil
                                    ((lftag-policy :target-type
                                      lftag-policy-details :member-name
                                      "LFTagPolicy"))
                                    (:shape-name
                                     "LakeFormationDataPermissionDetails"))

(smithy/sdk/shapes:define-type lake-formation-data-permission-type
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure lake-formation-tag-policy-details
                                    common-lisp:nil
                                    ((database :target-type string :member-name
                                      "Database")
                                     (table :target-type string :member-name
                                      "Table"))
                                    (:shape-name
                                     "LakeFormationTagPolicyDetails"))

(smithy/sdk/shapes:define-type limit-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input list-data-grants-request common-lisp:nil
                                ((max-results :target-type max-results
                                  :member-name "MaxResults" :http-query
                                  "maxResults")
                                 (next-token :target-type string :member-name
                                  "NextToken" :http-query "nextToken"))
                                (:shape-name "ListDataGrantsRequest"))

(smithy/sdk/shapes:define-output list-data-grants-response common-lisp:nil
                                 ((data-grant-summaries :target-type
                                   list-of-data-grant-summary-entry
                                   :member-name "DataGrantSummaries")
                                  (next-token :target-type next-token
                                   :member-name "NextToken"))
                                 (:shape-name "ListDataGrantsResponse"))

(smithy/sdk/shapes:define-input list-data-set-revisions-request common-lisp:nil
                                ((data-set-id :target-type id :required
                                  common-lisp:t :member-name "DataSetId"
                                  :http-label common-lisp:t)
                                 (max-results :target-type max-results
                                  :member-name "MaxResults" :http-query
                                  "maxResults")
                                 (next-token :target-type string :member-name
                                  "NextToken" :http-query "nextToken"))
                                (:shape-name "ListDataSetRevisionsRequest"))

(smithy/sdk/shapes:define-structure list-data-set-revisions-response
                                    common-lisp:nil
                                    ((next-token :target-type next-token
                                      :member-name "NextToken")
                                     (revisions :target-type
                                      list-of-revision-entry :member-name
                                      "Revisions"))
                                    (:shape-name
                                     "ListDataSetRevisionsResponse"))

(smithy/sdk/shapes:define-input list-data-sets-request common-lisp:nil
                                ((max-results :target-type max-results
                                  :member-name "MaxResults" :http-query
                                  "maxResults")
                                 (next-token :target-type string :member-name
                                  "NextToken" :http-query "nextToken")
                                 (origin :target-type string :member-name
                                  "Origin" :http-query "origin"))
                                (:shape-name "ListDataSetsRequest"))

(smithy/sdk/shapes:define-structure list-data-sets-response common-lisp:nil
                                    ((data-sets :target-type
                                      list-of-data-set-entry :member-name
                                      "DataSets")
                                     (next-token :target-type next-token
                                      :member-name "NextToken"))
                                    (:shape-name "ListDataSetsResponse"))

(smithy/sdk/shapes:define-input list-event-actions-request common-lisp:nil
                                ((event-source-id :target-type string
                                  :member-name "EventSourceId" :http-query
                                  "eventSourceId")
                                 (max-results :target-type max-results
                                  :member-name "MaxResults" :http-query
                                  "maxResults")
                                 (next-token :target-type string :member-name
                                  "NextToken" :http-query "nextToken"))
                                (:shape-name "ListEventActionsRequest"))

(smithy/sdk/shapes:define-structure list-event-actions-response common-lisp:nil
                                    ((event-actions :target-type
                                      list-of-event-action-entry :member-name
                                      "EventActions")
                                     (next-token :target-type next-token
                                      :member-name "NextToken"))
                                    (:shape-name "ListEventActionsResponse"))

(smithy/sdk/shapes:define-input list-jobs-request common-lisp:nil
                                ((data-set-id :target-type string :member-name
                                  "DataSetId" :http-query "dataSetId")
                                 (max-results :target-type max-results
                                  :member-name "MaxResults" :http-query
                                  "maxResults")
                                 (next-token :target-type string :member-name
                                  "NextToken" :http-query "nextToken")
                                 (revision-id :target-type string :member-name
                                  "RevisionId" :http-query "revisionId"))
                                (:shape-name "ListJobsRequest"))

(smithy/sdk/shapes:define-structure list-jobs-response common-lisp:nil
                                    ((jobs :target-type list-of-job-entry
                                      :member-name "Jobs")
                                     (next-token :target-type next-token
                                      :member-name "NextToken"))
                                    (:shape-name "ListJobsResponse"))

(smithy/sdk/shapes:define-list list-of-asset-destination-entry :member
                               asset-destination-entry)

(smithy/sdk/shapes:define-list list-of-asset-entry :member asset-entry)

(smithy/sdk/shapes:define-list list-of-asset-source-entry :member
                               asset-source-entry)

(smithy/sdk/shapes:define-list list-of-data-grant-summary-entry :member
                               data-grant-summary-entry)

(smithy/sdk/shapes:define-list list-of-data-set-entry :member data-set-entry)

(smithy/sdk/shapes:define-list list-of-database-lftag-policy-permissions
                               :member database-lftag-policy-permission)

(smithy/sdk/shapes:define-list list-of-event-action-entry :member
                               event-action-entry)

(smithy/sdk/shapes:define-list list-of-job-entry :member job-entry)

(smithy/sdk/shapes:define-list list-of-job-error :member job-error)

(smithy/sdk/shapes:define-list list-of-kms-keys-to-grant :member
                               kms-key-to-grant)

(smithy/sdk/shapes:define-list list-of-lfpermissions :member lfpermission)

(smithy/sdk/shapes:define-list list-of-lftag-values :member
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list list-of-lftags :member lftag)

(smithy/sdk/shapes:define-list list-of-lake-formation-tag-policies :member
                               lake-formation-tag-policy-details)

(smithy/sdk/shapes:define-list list-of-received-data-grant-summaries-entry
                               :member received-data-grant-summaries-entry)

(smithy/sdk/shapes:define-list list-of-redshift-data-share-asset-source-entry
                               :member redshift-data-share-asset-source-entry)

(smithy/sdk/shapes:define-list list-of-redshift-data-shares :member
                               redshift-data-share-details)

(smithy/sdk/shapes:define-list list-of-revision-destination-entry :member
                               revision-destination-entry)

(smithy/sdk/shapes:define-list list-of-revision-entry :member revision-entry)

(smithy/sdk/shapes:define-list list-of-s3data-accesses :member
                               s3data-access-details)

(smithy/sdk/shapes:define-list list-of-schema-change-details :member
                               schema-change-details)

(smithy/sdk/shapes:define-list list-of-table-tag-policy-lfpermissions :member
                               table-tag-policy-lfpermission)

(smithy/sdk/shapes:define-list list-of-string :member string)

(smithy/sdk/shapes:define-input list-received-data-grants-request
                                common-lisp:nil
                                ((max-results :target-type max-results
                                  :member-name "MaxResults" :http-query
                                  "maxResults")
                                 (next-token :target-type string :member-name
                                  "NextToken" :http-query "nextToken")
                                 (acceptance-state :target-type
                                  acceptance-state-filter-values :member-name
                                  "AcceptanceState" :http-query
                                  "acceptanceState"))
                                (:shape-name "ListReceivedDataGrantsRequest"))

(smithy/sdk/shapes:define-output list-received-data-grants-response
                                 common-lisp:nil
                                 ((data-grant-summaries :target-type
                                   list-of-received-data-grant-summaries-entry
                                   :member-name "DataGrantSummaries")
                                  (next-token :target-type next-token
                                   :member-name "NextToken"))
                                 (:shape-name "ListReceivedDataGrantsResponse"))

(smithy/sdk/shapes:define-input list-revision-assets-request common-lisp:nil
                                ((data-set-id :target-type id :required
                                  common-lisp:t :member-name "DataSetId"
                                  :http-label common-lisp:t)
                                 (max-results :target-type max-results
                                  :member-name "MaxResults" :http-query
                                  "maxResults")
                                 (next-token :target-type string :member-name
                                  "NextToken" :http-query "nextToken")
                                 (revision-id :target-type id :required
                                  common-lisp:t :member-name "RevisionId"
                                  :http-label common-lisp:t))
                                (:shape-name "ListRevisionAssetsRequest"))

(smithy/sdk/shapes:define-structure list-revision-assets-response
                                    common-lisp:nil
                                    ((assets :target-type list-of-asset-entry
                                      :member-name "Assets")
                                     (next-token :target-type next-token
                                      :member-name "NextToken"))
                                    (:shape-name "ListRevisionAssetsResponse"))

(smithy/sdk/shapes:define-input list-tags-for-resource-request common-lisp:nil
                                ((resource-arn :target-type string :required
                                  common-lisp:t :member-name "ResourceArn"
                                  :http-label common-lisp:t))
                                (:shape-name "ListTagsForResourceRequest"))

(smithy/sdk/shapes:define-structure list-tags-for-resource-response
                                    common-lisp:nil
                                    ((tags :target-type map-of-string
                                      :member-name "Tags" :json-name "tags"))
                                    (:shape-name "ListTagsForResourceResponse"))

(smithy/sdk/shapes:define-map map-of-string :key string :value string)

(smithy/sdk/shapes:define-type max-results smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type next-token smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure notification-details common-lisp:nil
                                    ((data-update :target-type
                                      data-update-request-details :member-name
                                      "DataUpdate")
                                     (deprecation :target-type
                                      deprecation-request-details :member-name
                                      "Deprecation")
                                     (schema-change :target-type
                                      schema-change-request-details
                                      :member-name "SchemaChange"))
                                    (:shape-name "NotificationDetails"))

(smithy/sdk/shapes:define-type notification-type smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type origin smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure origin-details common-lisp:nil
                                    ((product-id :target-type string
                                      :member-name "ProductId")
                                     (data-grant-id :target-type string
                                      :member-name "DataGrantId"))
                                    (:shape-name "OriginDetails"))

(smithy/sdk/shapes:define-type protocol-type smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure received-data-grant-summaries-entry
                                    common-lisp:nil
                                    ((name :target-type data-grant-name
                                      :required common-lisp:t :member-name
                                      "Name")
                                     (sender-principal :target-type
                                      sender-principal :required common-lisp:t
                                      :member-name "SenderPrincipal")
                                     (receiver-principal :target-type
                                      receiver-principal :required
                                      common-lisp:t :member-name
                                      "ReceiverPrincipal")
                                     (acceptance-state :target-type
                                      data-grant-acceptance-state :required
                                      common-lisp:t :member-name
                                      "AcceptanceState")
                                     (accepted-at :target-type timestamp
                                      :member-name "AcceptedAt")
                                     (ends-at :target-type timestamp
                                      :member-name "EndsAt")
                                     (data-set-id :target-type id :required
                                      common-lisp:t :member-name "DataSetId")
                                     (id :target-type id :required
                                      common-lisp:t :member-name "Id")
                                     (arn :target-type arn :required
                                      common-lisp:t :member-name "Arn")
                                     (created-at :target-type timestamp
                                      :required common-lisp:t :member-name
                                      "CreatedAt")
                                     (updated-at :target-type timestamp
                                      :required common-lisp:t :member-name
                                      "UpdatedAt"))
                                    (:shape-name
                                     "ReceivedDataGrantSummariesEntry"))

(smithy/sdk/shapes:define-type receiver-principal
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure redshift-data-share-asset common-lisp:nil
                                    ((arn :target-type string :required
                                      common-lisp:t :member-name "Arn"))
                                    (:shape-name "RedshiftDataShareAsset"))

(smithy/sdk/shapes:define-structure redshift-data-share-asset-source-entry
                                    common-lisp:nil
                                    ((data-share-arn :target-type string
                                      :required common-lisp:t :member-name
                                      "DataShareArn"))
                                    (:shape-name
                                     "RedshiftDataShareAssetSourceEntry"))

(smithy/sdk/shapes:define-structure redshift-data-share-details common-lisp:nil
                                    ((arn :target-type string :required
                                      common-lisp:t :member-name "Arn")
                                     (database :target-type string :required
                                      common-lisp:t :member-name "Database")
                                     (function :target-type string :member-name
                                      "Function")
                                     (table :target-type string :member-name
                                      "Table")
                                     (schema :target-type string :member-name
                                      "Schema")
                                     (view :target-type string :member-name
                                      "View"))
                                    (:shape-name "RedshiftDataShareDetails"))

(smithy/sdk/shapes:define-structure request-details common-lisp:nil
                                    ((export-asset-to-signed-url :target-type
                                      export-asset-to-signed-url-request-details
                                      :member-name "ExportAssetToSignedUrl")
                                     (export-assets-to-s3 :target-type
                                      export-assets-to-s3request-details
                                      :member-name "ExportAssetsToS3")
                                     (export-revisions-to-s3 :target-type
                                      export-revisions-to-s3request-details
                                      :member-name "ExportRevisionsToS3")
                                     (import-asset-from-signed-url :target-type
                                      import-asset-from-signed-url-request-details
                                      :member-name "ImportAssetFromSignedUrl")
                                     (import-assets-from-s3 :target-type
                                      import-assets-from-s3request-details
                                      :member-name "ImportAssetsFromS3")
                                     (import-assets-from-redshift-data-shares
                                      :target-type
                                      import-assets-from-redshift-data-shares-request-details
                                      :member-name
                                      "ImportAssetsFromRedshiftDataShares")
                                     (import-asset-from-api-gateway-api
                                      :target-type
                                      import-asset-from-api-gateway-api-request-details
                                      :member-name
                                      "ImportAssetFromApiGatewayApi")
                                     (create-s3data-access-from-s3bucket
                                      :target-type
                                      create-s3data-access-from-s3bucket-request-details
                                      :member-name
                                      "CreateS3DataAccessFromS3Bucket")
                                     (import-assets-from-lake-formation-tag-policy
                                      :target-type
                                      import-assets-from-lake-formation-tag-policy-request-details
                                      :member-name
                                      "ImportAssetsFromLakeFormationTagPolicy"))
                                    (:shape-name "RequestDetails"))

(smithy/sdk/shapes:define-error resource-not-found-exception common-lisp:nil
                                ((message :target-type string :required
                                  common-lisp:t :member-name "Message")
                                 (resource-id :target-type string :member-name
                                  "ResourceId")
                                 (resource-type :target-type resource-type
                                  :member-name "ResourceType"))
                                (:shape-name "ResourceNotFoundException")
                                (:error-code 404)
                                (:base-class dataexchange-error))

(smithy/sdk/shapes:define-type resource-type smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure response-details common-lisp:nil
                                    ((export-asset-to-signed-url :target-type
                                      export-asset-to-signed-url-response-details
                                      :member-name "ExportAssetToSignedUrl")
                                     (export-assets-to-s3 :target-type
                                      export-assets-to-s3response-details
                                      :member-name "ExportAssetsToS3")
                                     (export-revisions-to-s3 :target-type
                                      export-revisions-to-s3response-details
                                      :member-name "ExportRevisionsToS3")
                                     (import-asset-from-signed-url :target-type
                                      import-asset-from-signed-url-response-details
                                      :member-name "ImportAssetFromSignedUrl")
                                     (import-assets-from-s3 :target-type
                                      import-assets-from-s3response-details
                                      :member-name "ImportAssetsFromS3")
                                     (import-assets-from-redshift-data-shares
                                      :target-type
                                      import-assets-from-redshift-data-shares-response-details
                                      :member-name
                                      "ImportAssetsFromRedshiftDataShares")
                                     (import-asset-from-api-gateway-api
                                      :target-type
                                      import-asset-from-api-gateway-api-response-details
                                      :member-name
                                      "ImportAssetFromApiGatewayApi")
                                     (create-s3data-access-from-s3bucket
                                      :target-type
                                      create-s3data-access-from-s3bucket-response-details
                                      :member-name
                                      "CreateS3DataAccessFromS3Bucket")
                                     (import-assets-from-lake-formation-tag-policy
                                      :target-type
                                      import-assets-from-lake-formation-tag-policy-response-details
                                      :member-name
                                      "ImportAssetsFromLakeFormationTagPolicy"))
                                    (:shape-name "ResponseDetails"))

(smithy/sdk/shapes:define-structure revision-destination-entry common-lisp:nil
                                    ((bucket :target-type string :required
                                      common-lisp:t :member-name "Bucket")
                                     (key-pattern :target-type string
                                      :member-name "KeyPattern")
                                     (revision-id :target-type id :required
                                      common-lisp:t :member-name "RevisionId"))
                                    (:shape-name "RevisionDestinationEntry"))

(smithy/sdk/shapes:define-structure revision-entry common-lisp:nil
                                    ((arn :target-type arn :required
                                      common-lisp:t :member-name "Arn")
                                     (comment :target-type string-min0max16384
                                      :member-name "Comment")
                                     (created-at :target-type timestamp
                                      :required common-lisp:t :member-name
                                      "CreatedAt")
                                     (data-set-id :target-type id :required
                                      common-lisp:t :member-name "DataSetId")
                                     (finalized :target-type boolean
                                      :member-name "Finalized")
                                     (id :target-type id :required
                                      common-lisp:t :member-name "Id")
                                     (source-id :target-type id :member-name
                                      "SourceId")
                                     (updated-at :target-type timestamp
                                      :required common-lisp:t :member-name
                                      "UpdatedAt")
                                     (revocation-comment :target-type
                                      string-min10max512 :member-name
                                      "RevocationComment")
                                     (revoked :target-type boolean :member-name
                                      "Revoked")
                                     (revoked-at :target-type timestamp
                                      :member-name "RevokedAt"))
                                    (:shape-name "RevisionEntry"))

(smithy/sdk/shapes:define-structure revision-published common-lisp:nil
                                    ((data-set-id :target-type id :required
                                      common-lisp:t :member-name "DataSetId"))
                                    (:shape-name "RevisionPublished"))

(smithy/sdk/shapes:define-input revoke-revision-request common-lisp:nil
                                ((data-set-id :target-type id :required
                                  common-lisp:t :member-name "DataSetId"
                                  :http-label common-lisp:t)
                                 (revision-id :target-type id :required
                                  common-lisp:t :member-name "RevisionId"
                                  :http-label common-lisp:t)
                                 (revocation-comment :target-type
                                  string-min10max512 :required common-lisp:t
                                  :member-name "RevocationComment"))
                                (:shape-name "RevokeRevisionRequest"))

(smithy/sdk/shapes:define-structure revoke-revision-response common-lisp:nil
                                    ((arn :target-type arn :member-name "Arn")
                                     (comment :target-type string-min0max16384
                                      :member-name "Comment")
                                     (created-at :target-type timestamp
                                      :member-name "CreatedAt")
                                     (data-set-id :target-type id :member-name
                                      "DataSetId")
                                     (finalized :target-type boolean
                                      :member-name "Finalized")
                                     (id :target-type id :member-name "Id")
                                     (source-id :target-type id :member-name
                                      "SourceId")
                                     (updated-at :target-type timestamp
                                      :member-name "UpdatedAt")
                                     (revocation-comment :target-type
                                      string-min10max512 :member-name
                                      "RevocationComment")
                                     (revoked :target-type boolean :member-name
                                      "Revoked")
                                     (revoked-at :target-type timestamp
                                      :member-name "RevokedAt"))
                                    (:shape-name "RevokeRevisionResponse"))

(smithy/sdk/shapes:define-type role-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure s3data-access-asset common-lisp:nil
                                    ((bucket :target-type string :required
                                      common-lisp:t :member-name "Bucket")
                                     (key-prefixes :target-type list-of-string
                                      :member-name "KeyPrefixes")
                                     (keys :target-type list-of-string
                                      :member-name "Keys")
                                     (s3access-point-alias :target-type string
                                      :member-name "S3AccessPointAlias")
                                     (s3access-point-arn :target-type string
                                      :member-name "S3AccessPointArn")
                                     (kms-keys-to-grant :target-type
                                      list-of-kms-keys-to-grant :member-name
                                      "KmsKeysToGrant"))
                                    (:shape-name "S3DataAccessAsset"))

(smithy/sdk/shapes:define-structure s3data-access-asset-source-entry
                                    common-lisp:nil
                                    ((bucket :target-type string :required
                                      common-lisp:t :member-name "Bucket")
                                     (key-prefixes :target-type list-of-string
                                      :member-name "KeyPrefixes")
                                     (keys :target-type list-of-string
                                      :member-name "Keys")
                                     (kms-keys-to-grant :target-type
                                      list-of-kms-keys-to-grant :member-name
                                      "KmsKeysToGrant"))
                                    (:shape-name
                                     "S3DataAccessAssetSourceEntry"))

(smithy/sdk/shapes:define-structure s3data-access-details common-lisp:nil
                                    ((key-prefixes :target-type list-of-string
                                      :member-name "KeyPrefixes")
                                     (keys :target-type list-of-string
                                      :member-name "Keys"))
                                    (:shape-name "S3DataAccessDetails"))

(smithy/sdk/shapes:define-structure s3snapshot-asset common-lisp:nil
                                    ((size :target-type double-min0 :required
                                      common-lisp:t :member-name "Size"))
                                    (:shape-name "S3SnapshotAsset"))

(smithy/sdk/shapes:define-structure schema-change-details common-lisp:nil
                                    ((name :target-type string :required
                                      common-lisp:t :member-name "Name")
                                     (type :target-type schema-change-type
                                      :required common-lisp:t :member-name
                                      "Type")
                                     (description :target-type string
                                      :member-name "Description"))
                                    (:shape-name "SchemaChangeDetails"))

(smithy/sdk/shapes:define-structure schema-change-request-details
                                    common-lisp:nil
                                    ((changes :target-type
                                      list-of-schema-change-details
                                      :member-name "Changes")
                                     (schema-change-at :target-type timestamp
                                      :required common-lisp:t :member-name
                                      "SchemaChangeAt"))
                                    (:shape-name "SchemaChangeRequestDetails"))

(smithy/sdk/shapes:define-type schema-change-type
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure scope-details common-lisp:nil
                                    ((lake-formation-tag-policies :target-type
                                      list-of-lake-formation-tag-policies
                                      :member-name "LakeFormationTagPolicies")
                                     (redshift-data-shares :target-type
                                      list-of-redshift-data-shares :member-name
                                      "RedshiftDataShares")
                                     (s3data-accesses :target-type
                                      list-of-s3data-accesses :member-name
                                      "S3DataAccesses"))
                                    (:shape-name "ScopeDetails"))

(smithy/sdk/shapes:define-input send-api-asset-request common-lisp:nil
                                ((body :target-type string :member-name "Body"
                                  :http-payload common-lisp:t)
                                 (query-string-parameters :target-type
                                  map-of-string :member-name
                                  "QueryStringParameters" :http-query-params
                                  common-lisp:t)
                                 (asset-id :target-type string :required
                                  common-lisp:t :member-name "AssetId"
                                  :http-header "x-amzn-dataexchange-asset-id")
                                 (data-set-id :target-type string :required
                                  common-lisp:t :member-name "DataSetId"
                                  :http-header
                                  "x-amzn-dataexchange-data-set-id")
                                 (request-headers :target-type map-of-string
                                  :member-name "RequestHeaders"
                                  :http-prefix-headers
                                  "x-amzn-dataexchange-header-")
                                 (method :target-type string :member-name
                                  "Method" :http-header
                                  "x-amzn-dataexchange-http-method")
                                 (path :target-type string :member-name "Path"
                                  :http-header "x-amzn-dataexchange-path")
                                 (revision-id :target-type string :required
                                  common-lisp:t :member-name "RevisionId"
                                  :http-header
                                  "x-amzn-dataexchange-revision-id"))
                                (:shape-name "SendApiAssetRequest"))

(smithy/sdk/shapes:define-interface send-api-asset-response common-lisp:nil
                                    ((body :target-type string :member-name
                                      "Body" :http-payload common-lisp:t)
                                     (response-headers :target-type
                                      map-of-string :member-name
                                      "ResponseHeaders" :http-prefix-headers
                                      ""))
                                    (:shape-name "SendApiAssetResponse"))

(smithy/sdk/shapes:define-input send-data-set-notification-request
                                common-lisp:nil
                                ((scope :target-type scope-details :member-name
                                  "Scope")
                                 (client-token :target-type client-token
                                  :member-name "ClientToken")
                                 (comment :target-type string-min0max4096
                                  :member-name "Comment")
                                 (data-set-id :target-type id :required
                                  common-lisp:t :member-name "DataSetId"
                                  :http-label common-lisp:t)
                                 (details :target-type notification-details
                                  :member-name "Details")
                                 (type :target-type notification-type :required
                                  common-lisp:t :member-name "Type"))
                                (:shape-name "SendDataSetNotificationRequest"))

(smithy/sdk/shapes:define-output send-data-set-notification-response
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name
                                  "SendDataSetNotificationResponse"))

(smithy/sdk/shapes:define-type sender-principal smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type server-side-encryption-types
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error service-limit-exceeded-exception
                                common-lisp:nil
                                ((limit-name :target-type limit-name
                                  :member-name "LimitName")
                                 (limit-value :target-type double :member-name
                                  "LimitValue")
                                 (message :target-type string :required
                                  common-lisp:t :member-name "Message"))
                                (:shape-name "ServiceLimitExceededException")
                                (:error-code 402)
                                (:base-class dataexchange-error))

(smithy/sdk/shapes:define-input start-job-request common-lisp:nil
                                ((job-id :target-type id :required
                                  common-lisp:t :member-name "JobId"
                                  :http-label common-lisp:t))
                                (:shape-name "StartJobRequest"))

(smithy/sdk/shapes:define-structure start-job-response common-lisp:nil
                                    common-lisp:nil
                                    (:shape-name "StartJobResponse"))

(smithy/sdk/shapes:define-type state smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure table-lftag-policy common-lisp:nil
                                    ((expression :target-type list-of-lftags
                                      :required common-lisp:t :member-name
                                      "Expression"))
                                    (:shape-name "TableLFTagPolicy"))

(smithy/sdk/shapes:define-structure table-lftag-policy-and-permissions
                                    common-lisp:nil
                                    ((expression :target-type list-of-lftags
                                      :required common-lisp:t :member-name
                                      "Expression")
                                     (permissions :target-type
                                      list-of-table-tag-policy-lfpermissions
                                      :required common-lisp:t :member-name
                                      "Permissions"))
                                    (:shape-name
                                     "TableLFTagPolicyAndPermissions"))

(smithy/sdk/shapes:define-type table-tag-policy-lfpermission
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input tag-resource-request common-lisp:nil
                                ((resource-arn :target-type string :required
                                  common-lisp:t :member-name "ResourceArn"
                                  :http-label common-lisp:t)
                                 (tags :target-type map-of-string :required
                                  common-lisp:t :member-name "Tags" :json-name
                                  "tags"))
                                (:shape-name "TagResourceRequest"))

(smithy/sdk/shapes:define-error throttling-exception common-lisp:nil
                                ((message :target-type string :required
                                  common-lisp:t :member-name "Message"))
                                (:shape-name "ThrottlingException")
                                (:error-code 429)
                                (:base-class dataexchange-error))

(smithy/sdk/shapes:define-type timestamp smithy/sdk/smithy-types:timestamp
                               :timestamp-format "date-time")

(smithy/sdk/shapes:define-type type smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input untag-resource-request common-lisp:nil
                                ((resource-arn :target-type string :required
                                  common-lisp:t :member-name "ResourceArn"
                                  :http-label common-lisp:t)
                                 (tag-keys :target-type list-of-string
                                  :required common-lisp:t :member-name
                                  "TagKeys" :http-query "tagKeys"))
                                (:shape-name "UntagResourceRequest"))

(smithy/sdk/shapes:define-input update-asset-request common-lisp:nil
                                ((asset-id :target-type id :required
                                  common-lisp:t :member-name "AssetId"
                                  :http-label common-lisp:t)
                                 (data-set-id :target-type id :required
                                  common-lisp:t :member-name "DataSetId"
                                  :http-label common-lisp:t)
                                 (name :target-type asset-name :required
                                  common-lisp:t :member-name "Name")
                                 (revision-id :target-type id :required
                                  common-lisp:t :member-name "RevisionId"
                                  :http-label common-lisp:t))
                                (:shape-name "UpdateAssetRequest"))

(smithy/sdk/shapes:define-structure update-asset-response common-lisp:nil
                                    ((arn :target-type arn :member-name "Arn")
                                     (asset-details :target-type asset-details
                                      :member-name "AssetDetails")
                                     (asset-type :target-type asset-type
                                      :member-name "AssetType")
                                     (created-at :target-type timestamp
                                      :member-name "CreatedAt")
                                     (data-set-id :target-type id :member-name
                                      "DataSetId")
                                     (id :target-type id :member-name "Id")
                                     (name :target-type asset-name :member-name
                                      "Name")
                                     (revision-id :target-type id :member-name
                                      "RevisionId")
                                     (source-id :target-type id :member-name
                                      "SourceId")
                                     (updated-at :target-type timestamp
                                      :member-name "UpdatedAt"))
                                    (:shape-name "UpdateAssetResponse"))

(smithy/sdk/shapes:define-input update-data-set-request common-lisp:nil
                                ((data-set-id :target-type id :required
                                  common-lisp:t :member-name "DataSetId"
                                  :http-label common-lisp:t)
                                 (description :target-type description
                                  :member-name "Description")
                                 (name :target-type name :member-name "Name"))
                                (:shape-name "UpdateDataSetRequest"))

(smithy/sdk/shapes:define-structure update-data-set-response common-lisp:nil
                                    ((arn :target-type arn :member-name "Arn")
                                     (asset-type :target-type asset-type
                                      :member-name "AssetType")
                                     (created-at :target-type timestamp
                                      :member-name "CreatedAt")
                                     (description :target-type description
                                      :member-name "Description")
                                     (id :target-type id :member-name "Id")
                                     (name :target-type name :member-name
                                      "Name")
                                     (origin :target-type origin :member-name
                                      "Origin")
                                     (origin-details :target-type
                                      origin-details :member-name
                                      "OriginDetails")
                                     (source-id :target-type id :member-name
                                      "SourceId")
                                     (updated-at :target-type timestamp
                                      :member-name "UpdatedAt"))
                                    (:shape-name "UpdateDataSetResponse"))

(smithy/sdk/shapes:define-input update-event-action-request common-lisp:nil
                                ((action :target-type action :member-name
                                  "Action")
                                 (event-action-id :target-type string :required
                                  common-lisp:t :member-name "EventActionId"
                                  :http-label common-lisp:t))
                                (:shape-name "UpdateEventActionRequest"))

(smithy/sdk/shapes:define-structure update-event-action-response
                                    common-lisp:nil
                                    ((action :target-type action :member-name
                                      "Action")
                                     (arn :target-type arn :member-name "Arn")
                                     (created-at :target-type timestamp
                                      :member-name "CreatedAt")
                                     (event :target-type event :member-name
                                      "Event")
                                     (id :target-type id :member-name "Id")
                                     (updated-at :target-type timestamp
                                      :member-name "UpdatedAt"))
                                    (:shape-name "UpdateEventActionResponse"))

(smithy/sdk/shapes:define-input update-revision-request common-lisp:nil
                                ((comment :target-type string-min0max16384
                                  :member-name "Comment")
                                 (data-set-id :target-type id :required
                                  common-lisp:t :member-name "DataSetId"
                                  :http-label common-lisp:t)
                                 (finalized :target-type boolean :member-name
                                  "Finalized")
                                 (revision-id :target-type id :required
                                  common-lisp:t :member-name "RevisionId"
                                  :http-label common-lisp:t))
                                (:shape-name "UpdateRevisionRequest"))

(smithy/sdk/shapes:define-structure update-revision-response common-lisp:nil
                                    ((arn :target-type arn :member-name "Arn")
                                     (comment :target-type string-min0max16384
                                      :member-name "Comment")
                                     (created-at :target-type timestamp
                                      :member-name "CreatedAt")
                                     (data-set-id :target-type id :member-name
                                      "DataSetId")
                                     (finalized :target-type boolean
                                      :member-name "Finalized")
                                     (id :target-type id :member-name "Id")
                                     (source-id :target-type id :member-name
                                      "SourceId")
                                     (updated-at :target-type timestamp
                                      :member-name "UpdatedAt")
                                     (revocation-comment :target-type
                                      string-min10max512 :member-name
                                      "RevocationComment")
                                     (revoked :target-type boolean :member-name
                                      "Revoked")
                                     (revoked-at :target-type timestamp
                                      :member-name "RevokedAt"))
                                    (:shape-name "UpdateRevisionResponse"))

(smithy/sdk/shapes:define-error validation-exception common-lisp:nil
                                ((message :target-type string :required
                                  common-lisp:t :member-name "Message")
                                 (exception-cause :target-type exception-cause
                                  :member-name "ExceptionCause"))
                                (:shape-name "ValidationException")
                                (:error-code 400)
                                (:base-class dataexchange-error))

(smithy/sdk/shapes:define-type boolean smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-type double smithy/sdk/smithy-types:double)

(smithy/sdk/shapes:define-type double-min0 smithy/sdk/smithy-types:double)

(smithy/sdk/shapes:define-type string smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type string-min0max16384
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type string-min0max4096
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type string-min10max512
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type
 string-min24max24pattern-aza-z094aza-z092aza-z093
 smithy/sdk/smithy-types:string)

(smithy/sdk/operation:define-operation accept-data-grant :shape-name
                                       "AcceptDataGrant" :input
                                       accept-data-grant-request :output
                                       accept-data-grant-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/v1/data-grants/{DataGrantArn}/accept"
                                       :code 200)

(smithy/sdk/operation:define-operation cancel-job :shape-name "CancelJob"
                                       :input cancel-job-request :output
                                       common-lisp:null :errors
                                       (conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "DELETE" :uri "/v1/jobs/{JobId}"
                                       :code 204)

(smithy/sdk/operation:define-operation create-data-grant :shape-name
                                       "CreateDataGrant" :input
                                       create-data-grant-request :output
                                       create-data-grant-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-limit-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri "/v1/data-grants"
                                       :code 201)

(smithy/sdk/operation:define-operation create-data-set :shape-name
                                       "CreateDataSet" :input
                                       create-data-set-request :output
                                       create-data-set-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        service-limit-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri "/v1/data-sets"
                                       :code 201)

(smithy/sdk/operation:define-operation create-event-action :shape-name
                                       "CreateEventAction" :input
                                       create-event-action-request :output
                                       create-event-action-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        service-limit-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri "/v1/event-actions"
                                       :code 201)

(smithy/sdk/operation:define-operation create-job :shape-name "CreateJob"
                                       :input create-job-request :output
                                       create-job-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri "/v1/jobs" :code 201)

(smithy/sdk/operation:define-operation create-revision :shape-name
                                       "CreateRevision" :input
                                       create-revision-request :output
                                       create-revision-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/v1/data-sets/{DataSetId}/revisions"
                                       :code 201)

(smithy/sdk/operation:define-operation delete-asset :shape-name "DeleteAsset"
                                       :input delete-asset-request :output
                                       common-lisp:null :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "DELETE" :uri
                                       "/v1/data-sets/{DataSetId}/revisions/{RevisionId}/assets/{AssetId}"
                                       :code 204)

(smithy/sdk/operation:define-operation delete-data-grant :shape-name
                                       "DeleteDataGrant" :input
                                       delete-data-grant-request :output
                                       common-lisp:null :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "DELETE" :uri
                                       "/v1/data-grants/{DataGrantId}" :code
                                       204)

(smithy/sdk/operation:define-operation delete-data-set :shape-name
                                       "DeleteDataSet" :input
                                       delete-data-set-request :output
                                       common-lisp:null :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "DELETE" :uri
                                       "/v1/data-sets/{DataSetId}" :code 204)

(smithy/sdk/operation:define-operation delete-event-action :shape-name
                                       "DeleteEventAction" :input
                                       delete-event-action-request :output
                                       common-lisp:null :errors
                                       (internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "DELETE" :uri
                                       "/v1/event-actions/{EventActionId}"
                                       :code 204)

(smithy/sdk/operation:define-operation delete-revision :shape-name
                                       "DeleteRevision" :input
                                       delete-revision-request :output
                                       common-lisp:null :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "DELETE" :uri
                                       "/v1/data-sets/{DataSetId}/revisions/{RevisionId}"
                                       :code 204)

(smithy/sdk/operation:define-operation get-asset :shape-name "GetAsset" :input
                                       get-asset-request :output
                                       get-asset-response :errors
                                       (internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/v1/data-sets/{DataSetId}/revisions/{RevisionId}/assets/{AssetId}"
                                       :code 200)

(smithy/sdk/operation:define-operation get-data-grant :shape-name
                                       "GetDataGrant" :input
                                       get-data-grant-request :output
                                       get-data-grant-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/v1/data-grants/{DataGrantId}" :code
                                       200)

(smithy/sdk/operation:define-operation get-data-set :shape-name "GetDataSet"
                                       :input get-data-set-request :output
                                       get-data-set-response :errors
                                       (internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/v1/data-sets/{DataSetId}" :code 200)

(smithy/sdk/operation:define-operation get-event-action :shape-name
                                       "GetEventAction" :input
                                       get-event-action-request :output
                                       get-event-action-response :errors
                                       (internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/v1/event-actions/{EventActionId}"
                                       :code 200)

(smithy/sdk/operation:define-operation get-job :shape-name "GetJob" :input
                                       get-job-request :output get-job-response
                                       :errors
                                       (internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri "/v1/jobs/{JobId}"
                                       :code 200)

(smithy/sdk/operation:define-operation get-received-data-grant :shape-name
                                       "GetReceivedDataGrant" :input
                                       get-received-data-grant-request :output
                                       get-received-data-grant-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/v1/received-data-grants/{DataGrantArn}"
                                       :code 200)

(smithy/sdk/operation:define-operation get-revision :shape-name "GetRevision"
                                       :input get-revision-request :output
                                       get-revision-response :errors
                                       (internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/v1/data-sets/{DataSetId}/revisions/{RevisionId}"
                                       :code 200)

(smithy/sdk/operation:define-operation list-data-grants :shape-name
                                       "ListDataGrants" :input
                                       list-data-grants-request :output
                                       list-data-grants-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri "/v1/data-grants"
                                       :code 200)

(smithy/sdk/operation:define-operation list-data-set-revisions :shape-name
                                       "ListDataSetRevisions" :input
                                       list-data-set-revisions-request :output
                                       list-data-set-revisions-response :errors
                                       (internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/v1/data-sets/{DataSetId}/revisions"
                                       :code 200)

(smithy/sdk/operation:define-operation list-data-sets :shape-name
                                       "ListDataSets" :input
                                       list-data-sets-request :output
                                       list-data-sets-response :errors
                                       (internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri "/v1/data-sets" :code
                                       200)

(smithy/sdk/operation:define-operation list-event-actions :shape-name
                                       "ListEventActions" :input
                                       list-event-actions-request :output
                                       list-event-actions-response :errors
                                       (internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri "/v1/event-actions"
                                       :code 200)

(smithy/sdk/operation:define-operation list-jobs :shape-name "ListJobs" :input
                                       list-jobs-request :output
                                       list-jobs-response :errors
                                       (internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri "/v1/jobs" :code 200)

(smithy/sdk/operation:define-operation list-received-data-grants :shape-name
                                       "ListReceivedDataGrants" :input
                                       list-received-data-grants-request
                                       :output
                                       list-received-data-grants-response
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/v1/received-data-grants" :code 200)

(smithy/sdk/operation:define-operation list-revision-assets :shape-name
                                       "ListRevisionAssets" :input
                                       list-revision-assets-request :output
                                       list-revision-assets-response :errors
                                       (internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/v1/data-sets/{DataSetId}/revisions/{RevisionId}/assets"
                                       :code 200)

(smithy/sdk/operation:define-operation list-tags-for-resource :shape-name
                                       "ListTagsForResource" :input
                                       list-tags-for-resource-request :output
                                       list-tags-for-resource-response :errors
                                       common-lisp:nil :method "GET" :uri
                                       "/tags/{ResourceArn}" :code 200)

(smithy/sdk/operation:define-operation revoke-revision :shape-name
                                       "RevokeRevision" :input
                                       revoke-revision-request :output
                                       revoke-revision-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/v1/data-sets/{DataSetId}/revisions/{RevisionId}/revoke"
                                       :code 200)

(smithy/sdk/operation:define-operation send-api-asset :shape-name
                                       "SendApiAsset" :input
                                       send-api-asset-request :output
                                       send-api-asset-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri "/v1" :code 200
                                       :endpoint-host-prefix "api-fulfill.")

(smithy/sdk/operation:define-operation send-data-set-notification :shape-name
                                       "SendDataSetNotification" :input
                                       send-data-set-notification-request
                                       :output
                                       send-data-set-notification-response
                                       :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/v1/data-sets/{DataSetId}/notification"
                                       :code 202)

(smithy/sdk/operation:define-operation start-job :shape-name "StartJob" :input
                                       start-job-request :output
                                       start-job-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "PATCH" :uri "/v1/jobs/{JobId}"
                                       :code 202)

(smithy/sdk/operation:define-operation tag-resource :shape-name "TagResource"
                                       :input tag-resource-request :output
                                       common-lisp:null :errors common-lisp:nil
                                       :method "POST" :uri
                                       "/tags/{ResourceArn}" :code 204)

(smithy/sdk/operation:define-operation untag-resource :shape-name
                                       "UntagResource" :input
                                       untag-resource-request :output
                                       common-lisp:null :errors common-lisp:nil
                                       :method "DELETE" :uri
                                       "/tags/{ResourceArn}" :code 204)

(smithy/sdk/operation:define-operation update-asset :shape-name "UpdateAsset"
                                       :input update-asset-request :output
                                       update-asset-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "PATCH" :uri
                                       "/v1/data-sets/{DataSetId}/revisions/{RevisionId}/assets/{AssetId}"
                                       :code 200)

(smithy/sdk/operation:define-operation update-data-set :shape-name
                                       "UpdateDataSet" :input
                                       update-data-set-request :output
                                       update-data-set-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "PATCH" :uri
                                       "/v1/data-sets/{DataSetId}" :code 200)

(smithy/sdk/operation:define-operation update-event-action :shape-name
                                       "UpdateEventAction" :input
                                       update-event-action-request :output
                                       update-event-action-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "PATCH" :uri
                                       "/v1/event-actions/{EventActionId}"
                                       :code 200)

(smithy/sdk/operation:define-operation update-revision :shape-name
                                       "UpdateRevision" :input
                                       update-revision-request :output
                                       update-revision-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "PATCH" :uri
                                       "/v1/data-sets/{DataSetId}/revisions/{RevisionId}"
                                       :code 200)
