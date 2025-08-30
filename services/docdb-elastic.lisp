(uiop/package:define-package #:pira/docdb-elastic (:use)
                             (:export #:access-denied-exception
                              #:apply-pending-maintenance-action #:arn #:auth
                              #:chimera-db-lionfish-service-lambda #:cluster
                              #:cluster-in-list #:cluster-list
                              #:cluster-snapshot #:cluster-snapshot-in-list
                              #:cluster-snapshot-list #:conflict-exception
                              #:copy-cluster-snapshot #:create-cluster
                              #:create-cluster-input #:create-cluster-output
                              #:create-cluster-snapshot
                              #:create-cluster-snapshot-input
                              #:create-cluster-snapshot-output #:delete-cluster
                              #:delete-cluster-input #:delete-cluster-output
                              #:delete-cluster-snapshot
                              #:delete-cluster-snapshot-input
                              #:delete-cluster-snapshot-output #:get-cluster
                              #:get-cluster-input #:get-cluster-output
                              #:get-cluster-snapshot
                              #:get-cluster-snapshot-input
                              #:get-cluster-snapshot-output
                              #:get-pending-maintenance-action #:input-string
                              #:internal-server-exception
                              #:list-cluster-snapshots
                              #:list-cluster-snapshots-input
                              #:list-cluster-snapshots-output #:list-clusters
                              #:list-clusters-input #:list-clusters-output
                              #:list-pending-maintenance-actions
                              #:list-tags-for-resource
                              #:list-tags-for-resource-request
                              #:list-tags-for-resource-response #:opt-in-type
                              #:pagination-token #:password
                              #:pending-maintenance-action-details
                              #:pending-maintenance-action-details-list
                              #:resource-not-found-exception
                              #:resource-pending-maintenance-action
                              #:resource-pending-maintenance-action-list
                              #:restore-cluster-from-snapshot
                              #:restore-cluster-from-snapshot-input
                              #:restore-cluster-from-snapshot-output
                              #:service-quota-exceeded-exception #:shard
                              #:shard-list #:snapshot-type #:start-cluster
                              #:status #:stop-cluster #:string-list #:tag-key
                              #:tag-key-list #:tag-map #:tag-resource
                              #:tag-resource-request #:tag-resource-response
                              #:tag-value #:throttling-exception
                              #:untag-resource #:untag-resource-request
                              #:untag-resource-response #:update-cluster
                              #:update-cluster-input #:update-cluster-output
                              #:validation-exception
                              #:validation-exception-field
                              #:validation-exception-field-list
                              #:validation-exception-reason
                              #:docdb-elastic-error))
(common-lisp:in-package #:pira/docdb-elastic)

(common-lisp:define-condition docdb-elastic-error
    (pira/error:aws-error)
    common-lisp:nil)

(smithy/sdk/service:define-service chimera-db-lionfish-service-lambda
                                   :shape-name "ChimeraDbLionfishServiceLambda"
                                   :version "2022-11-28" :title
                                   "Amazon DocumentDB Elastic Clusters"
                                   :operations
                                   '(apply-pending-maintenance-action
                                     copy-cluster-snapshot create-cluster
                                     create-cluster-snapshot delete-cluster
                                     delete-cluster-snapshot get-cluster
                                     get-cluster-snapshot
                                     get-pending-maintenance-action
                                     list-clusters list-cluster-snapshots
                                     list-pending-maintenance-actions
                                     list-tags-for-resource
                                     restore-cluster-from-snapshot
                                     start-cluster stop-cluster tag-resource
                                     untag-resource update-cluster)
                                   :traits
                                   '(("aws.api#service"
                                      ("sdkId" . "DocDB Elastic")
                                      ("arnNamespace" . "docdb-elastic")
                                      ("cloudTrailEventSource"
                                       . "CASCADES_EVENT_SOURCE"))
                                     ("aws.auth#sigv4"
                                      ("name" . "docdb-elastic"))
                                     ("aws.protocols#restJson1")))

(smithy/sdk/shapes:define-error access-denied-exception common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "message"))
                                (:shape-name "AccessDeniedException")
                                (:error-code 403)
                                (:base-class docdb-elastic-error))

(smithy/sdk/shapes:define-input apply-pending-maintenance-action-input
                                common-lisp:nil
                                ((resource-arn :target-type input-string
                                  :required common-lisp:t :member-name
                                  "resourceArn")
                                 (apply-action :target-type input-string
                                  :required common-lisp:t :member-name
                                  "applyAction")
                                 (opt-in-type :target-type opt-in-type
                                  :required common-lisp:t :member-name
                                  "optInType")
                                 (apply-on :target-type input-string
                                  :member-name "applyOn"))
                                (:shape-name
                                 "ApplyPendingMaintenanceActionInput"))

(smithy/sdk/shapes:define-output apply-pending-maintenance-action-output
                                 common-lisp:nil
                                 ((resource-pending-maintenance-action
                                   :target-type
                                   resource-pending-maintenance-action
                                   :required common-lisp:t :member-name
                                   "resourcePendingMaintenanceAction"))
                                 (:shape-name
                                  "ApplyPendingMaintenanceActionOutput"))

(smithy/sdk/shapes:define-type arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type auth smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure cluster common-lisp:nil
                                    ((cluster-name :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "clusterName")
                                     (cluster-arn :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "clusterArn")
                                     (status :target-type status :required
                                      common-lisp:t :member-name "status")
                                     (cluster-endpoint :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name
                                      "clusterEndpoint")
                                     (create-time :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "createTime")
                                     (admin-user-name :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name
                                      "adminUserName")
                                     (auth-type :target-type auth :required
                                      common-lisp:t :member-name "authType")
                                     (shard-capacity :target-type
                                      smithy/sdk/smithy-types:integer :required
                                      common-lisp:t :member-name
                                      "shardCapacity")
                                     (shard-count :target-type
                                      smithy/sdk/smithy-types:integer :required
                                      common-lisp:t :member-name "shardCount")
                                     (vpc-security-group-ids :target-type
                                      string-list :required common-lisp:t
                                      :member-name "vpcSecurityGroupIds")
                                     (subnet-ids :target-type string-list
                                      :required common-lisp:t :member-name
                                      "subnetIds")
                                     (preferred-maintenance-window :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name
                                      "preferredMaintenanceWindow")
                                     (kms-key-id :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "kmsKeyId")
                                     (shards :target-type shard-list
                                      :member-name "shards")
                                     (backup-retention-period :target-type
                                      smithy/sdk/smithy-types:integer
                                      :member-name "backupRetentionPeriod")
                                     (preferred-backup-window :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "preferredBackupWindow")
                                     (shard-instance-count :target-type
                                      smithy/sdk/smithy-types:integer
                                      :member-name "shardInstanceCount"))
                                    (:shape-name "Cluster"))

(smithy/sdk/shapes:define-structure cluster-in-list common-lisp:nil
                                    ((cluster-name :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "clusterName")
                                     (cluster-arn :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "clusterArn")
                                     (status :target-type status :required
                                      common-lisp:t :member-name "status"))
                                    (:shape-name "ClusterInList"))

(smithy/sdk/shapes:define-list cluster-list :member cluster-in-list)

(smithy/sdk/shapes:define-structure cluster-snapshot common-lisp:nil
                                    ((subnet-ids :target-type string-list
                                      :required common-lisp:t :member-name
                                      "subnetIds")
                                     (snapshot-name :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name
                                      "snapshotName")
                                     (snapshot-arn :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "snapshotArn")
                                     (snapshot-creation-time :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name
                                      "snapshotCreationTime")
                                     (cluster-arn :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "clusterArn")
                                     (cluster-creation-time :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name
                                      "clusterCreationTime")
                                     (status :target-type status :required
                                      common-lisp:t :member-name "status")
                                     (vpc-security-group-ids :target-type
                                      string-list :required common-lisp:t
                                      :member-name "vpcSecurityGroupIds")
                                     (admin-user-name :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name
                                      "adminUserName")
                                     (kms-key-id :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "kmsKeyId")
                                     (snapshot-type :target-type snapshot-type
                                      :member-name "snapshotType"))
                                    (:shape-name "ClusterSnapshot"))

(smithy/sdk/shapes:define-structure cluster-snapshot-in-list common-lisp:nil
                                    ((snapshot-name :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name
                                      "snapshotName")
                                     (snapshot-arn :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "snapshotArn")
                                     (cluster-arn :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "clusterArn")
                                     (status :target-type status :required
                                      common-lisp:t :member-name "status")
                                     (snapshot-creation-time :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name
                                      "snapshotCreationTime"))
                                    (:shape-name "ClusterSnapshotInList"))

(smithy/sdk/shapes:define-list cluster-snapshot-list :member
                               cluster-snapshot-in-list)

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
                                (:error-code 409)
                                (:base-class docdb-elastic-error))

(smithy/sdk/shapes:define-input copy-cluster-snapshot-input common-lisp:nil
                                ((snapshot-arn :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "snapshotArn"
                                  :http-label common-lisp:t)
                                 (target-snapshot-name :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name
                                  "targetSnapshotName")
                                 (kms-key-id :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "kmsKeyId")
                                 (copy-tags :target-type
                                  smithy/sdk/smithy-types:boolean :member-name
                                  "copyTags")
                                 (tags :target-type tag-map :member-name
                                  "tags"))
                                (:shape-name "CopyClusterSnapshotInput"))

(smithy/sdk/shapes:define-output copy-cluster-snapshot-output common-lisp:nil
                                 ((snapshot :target-type cluster-snapshot
                                   :required common-lisp:t :member-name
                                   "snapshot"))
                                 (:shape-name "CopyClusterSnapshotOutput"))

(smithy/sdk/shapes:define-structure create-cluster-input common-lisp:nil
                                    ((cluster-name :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "clusterName")
                                     (auth-type :target-type auth :required
                                      common-lisp:t :member-name "authType")
                                     (admin-user-name :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name
                                      "adminUserName")
                                     (admin-user-password :target-type password
                                      :required common-lisp:t :member-name
                                      "adminUserPassword")
                                     (shard-capacity :target-type
                                      smithy/sdk/smithy-types:integer :required
                                      common-lisp:t :member-name
                                      "shardCapacity")
                                     (shard-count :target-type
                                      smithy/sdk/smithy-types:integer :required
                                      common-lisp:t :member-name "shardCount")
                                     (vpc-security-group-ids :target-type
                                      string-list :member-name
                                      "vpcSecurityGroupIds")
                                     (subnet-ids :target-type string-list
                                      :member-name "subnetIds")
                                     (kms-key-id :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "kmsKeyId")
                                     (client-token :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "clientToken")
                                     (preferred-maintenance-window :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name
                                      "preferredMaintenanceWindow")
                                     (tags :target-type tag-map :member-name
                                      "tags")
                                     (backup-retention-period :target-type
                                      smithy/sdk/smithy-types:integer
                                      :member-name "backupRetentionPeriod")
                                     (preferred-backup-window :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "preferredBackupWindow")
                                     (shard-instance-count :target-type
                                      smithy/sdk/smithy-types:integer
                                      :member-name "shardInstanceCount"))
                                    (:shape-name "CreateClusterInput"))

(smithy/sdk/shapes:define-structure create-cluster-output common-lisp:nil
                                    ((cluster :target-type cluster :required
                                      common-lisp:t :member-name "cluster"))
                                    (:shape-name "CreateClusterOutput"))

(smithy/sdk/shapes:define-structure create-cluster-snapshot-input
                                    common-lisp:nil
                                    ((cluster-arn :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "clusterArn")
                                     (snapshot-name :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name
                                      "snapshotName")
                                     (tags :target-type tag-map :member-name
                                      "tags"))
                                    (:shape-name "CreateClusterSnapshotInput"))

(smithy/sdk/shapes:define-structure create-cluster-snapshot-output
                                    common-lisp:nil
                                    ((snapshot :target-type cluster-snapshot
                                      :required common-lisp:t :member-name
                                      "snapshot"))
                                    (:shape-name "CreateClusterSnapshotOutput"))

(smithy/sdk/shapes:define-input delete-cluster-input common-lisp:nil
                                ((cluster-arn :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "clusterArn"
                                  :http-label common-lisp:t))
                                (:shape-name "DeleteClusterInput"))

(smithy/sdk/shapes:define-structure delete-cluster-output common-lisp:nil
                                    ((cluster :target-type cluster :required
                                      common-lisp:t :member-name "cluster"))
                                    (:shape-name "DeleteClusterOutput"))

(smithy/sdk/shapes:define-input delete-cluster-snapshot-input common-lisp:nil
                                ((snapshot-arn :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "snapshotArn"
                                  :http-label common-lisp:t))
                                (:shape-name "DeleteClusterSnapshotInput"))

(smithy/sdk/shapes:define-structure delete-cluster-snapshot-output
                                    common-lisp:nil
                                    ((snapshot :target-type cluster-snapshot
                                      :required common-lisp:t :member-name
                                      "snapshot"))
                                    (:shape-name "DeleteClusterSnapshotOutput"))

(smithy/sdk/shapes:define-input get-cluster-input common-lisp:nil
                                ((cluster-arn :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "clusterArn"
                                  :http-label common-lisp:t))
                                (:shape-name "GetClusterInput"))

(smithy/sdk/shapes:define-structure get-cluster-output common-lisp:nil
                                    ((cluster :target-type cluster :required
                                      common-lisp:t :member-name "cluster"))
                                    (:shape-name "GetClusterOutput"))

(smithy/sdk/shapes:define-input get-cluster-snapshot-input common-lisp:nil
                                ((snapshot-arn :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "snapshotArn"
                                  :http-label common-lisp:t))
                                (:shape-name "GetClusterSnapshotInput"))

(smithy/sdk/shapes:define-structure get-cluster-snapshot-output common-lisp:nil
                                    ((snapshot :target-type cluster-snapshot
                                      :required common-lisp:t :member-name
                                      "snapshot"))
                                    (:shape-name "GetClusterSnapshotOutput"))

(smithy/sdk/shapes:define-input get-pending-maintenance-action-input
                                common-lisp:nil
                                ((resource-arn :target-type input-string
                                  :required common-lisp:t :member-name
                                  "resourceArn" :http-label common-lisp:t))
                                (:shape-name
                                 "GetPendingMaintenanceActionInput"))

(smithy/sdk/shapes:define-output get-pending-maintenance-action-output
                                 common-lisp:nil
                                 ((resource-pending-maintenance-action
                                   :target-type
                                   resource-pending-maintenance-action
                                   :required common-lisp:t :member-name
                                   "resourcePendingMaintenanceAction"))
                                 (:shape-name
                                  "GetPendingMaintenanceActionOutput"))

(smithy/sdk/shapes:define-type input-string smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error internal-server-exception common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "message"))
                                (:shape-name "InternalServerException")
                                (:error-code 500)
                                (:base-class docdb-elastic-error))

(smithy/sdk/shapes:define-input list-cluster-snapshots-input common-lisp:nil
                                ((cluster-arn :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "clusterArn" :http-query "clusterArn")
                                 (next-token :target-type pagination-token
                                  :member-name "nextToken" :http-query
                                  "nextToken")
                                 (max-results :target-type
                                  smithy/sdk/smithy-types:integer :member-name
                                  "maxResults" :http-query "maxResults")
                                 (snapshot-type :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "snapshotType" :http-query "snapshotType"))
                                (:shape-name "ListClusterSnapshotsInput"))

(smithy/sdk/shapes:define-structure list-cluster-snapshots-output
                                    common-lisp:nil
                                    ((snapshots :target-type
                                      cluster-snapshot-list :member-name
                                      "snapshots")
                                     (next-token :target-type pagination-token
                                      :member-name "nextToken"))
                                    (:shape-name "ListClusterSnapshotsOutput"))

(smithy/sdk/shapes:define-input list-clusters-input common-lisp:nil
                                ((next-token :target-type pagination-token
                                  :member-name "nextToken" :http-query
                                  "nextToken")
                                 (max-results :target-type
                                  smithy/sdk/smithy-types:integer :member-name
                                  "maxResults" :http-query "maxResults"))
                                (:shape-name "ListClustersInput"))

(smithy/sdk/shapes:define-structure list-clusters-output common-lisp:nil
                                    ((clusters :target-type cluster-list
                                      :member-name "clusters")
                                     (next-token :target-type pagination-token
                                      :member-name "nextToken"))
                                    (:shape-name "ListClustersOutput"))

(smithy/sdk/shapes:define-input list-pending-maintenance-actions-input
                                common-lisp:nil
                                ((next-token :target-type pagination-token
                                  :member-name "nextToken" :http-query
                                  "nextToken")
                                 (max-results :target-type
                                  smithy/sdk/smithy-types:integer :member-name
                                  "maxResults" :http-query "maxResults"))
                                (:shape-name
                                 "ListPendingMaintenanceActionsInput"))

(smithy/sdk/shapes:define-output list-pending-maintenance-actions-output
                                 common-lisp:nil
                                 ((resource-pending-maintenance-actions
                                   :target-type
                                   resource-pending-maintenance-action-list
                                   :required common-lisp:t :member-name
                                   "resourcePendingMaintenanceActions")
                                  (next-token :target-type pagination-token
                                   :member-name "nextToken"))
                                 (:shape-name
                                  "ListPendingMaintenanceActionsOutput"))

(smithy/sdk/shapes:define-input list-tags-for-resource-request common-lisp:nil
                                ((resource-arn :target-type arn :required
                                  common-lisp:t :member-name "resourceArn"
                                  :http-label common-lisp:t))
                                (:shape-name "ListTagsForResourceRequest"))

(smithy/sdk/shapes:define-structure list-tags-for-resource-response
                                    common-lisp:nil
                                    ((tags :target-type tag-map :member-name
                                      "tags"))
                                    (:shape-name "ListTagsForResourceResponse"))

(smithy/sdk/shapes:define-type opt-in-type smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type pagination-token smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type password smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure pending-maintenance-action-details
                                    common-lisp:nil
                                    ((action :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "action")
                                     (auto-applied-after-date :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "autoAppliedAfterDate")
                                     (forced-apply-date :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "forcedApplyDate")
                                     (opt-in-status :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "optInStatus")
                                     (current-apply-date :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "currentApplyDate")
                                     (description :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "description"))
                                    (:shape-name
                                     "PendingMaintenanceActionDetails"))

(smithy/sdk/shapes:define-list pending-maintenance-action-details-list :member
                               pending-maintenance-action-details)

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
                                (:error-code 404)
                                (:base-class docdb-elastic-error))

(smithy/sdk/shapes:define-structure resource-pending-maintenance-action
                                    common-lisp:nil
                                    ((resource-arn :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "resourceArn")
                                     (pending-maintenance-action-details
                                      :target-type
                                      pending-maintenance-action-details-list
                                      :member-name
                                      "pendingMaintenanceActionDetails"))
                                    (:shape-name
                                     "ResourcePendingMaintenanceAction"))

(smithy/sdk/shapes:define-list resource-pending-maintenance-action-list :member
                               resource-pending-maintenance-action)

(smithy/sdk/shapes:define-input restore-cluster-from-snapshot-input
                                common-lisp:nil
                                ((cluster-name :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "clusterName")
                                 (snapshot-arn :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "snapshotArn"
                                  :http-label common-lisp:t)
                                 (vpc-security-group-ids :target-type
                                  string-list :member-name
                                  "vpcSecurityGroupIds")
                                 (subnet-ids :target-type string-list
                                  :member-name "subnetIds")
                                 (kms-key-id :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "kmsKeyId")
                                 (tags :target-type tag-map :member-name
                                  "tags")
                                 (shard-capacity :target-type
                                  smithy/sdk/smithy-types:integer :member-name
                                  "shardCapacity")
                                 (shard-instance-count :target-type
                                  smithy/sdk/smithy-types:integer :member-name
                                  "shardInstanceCount"))
                                (:shape-name "RestoreClusterFromSnapshotInput"))

(smithy/sdk/shapes:define-structure restore-cluster-from-snapshot-output
                                    common-lisp:nil
                                    ((cluster :target-type cluster :required
                                      common-lisp:t :member-name "cluster"))
                                    (:shape-name
                                     "RestoreClusterFromSnapshotOutput"))

(smithy/sdk/shapes:define-error service-quota-exceeded-exception
                                common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "message"))
                                (:shape-name "ServiceQuotaExceededException")
                                (:error-code 402)
                                (:base-class docdb-elastic-error))

(smithy/sdk/shapes:define-structure shard common-lisp:nil
                                    ((shard-id :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "shardId")
                                     (create-time :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "createTime")
                                     (status :target-type status :required
                                      common-lisp:t :member-name "status"))
                                    (:shape-name "Shard"))

(smithy/sdk/shapes:define-list shard-list :member shard)

(smithy/sdk/shapes:define-type snapshot-type smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input start-cluster-input common-lisp:nil
                                ((cluster-arn :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "clusterArn"
                                  :http-label common-lisp:t))
                                (:shape-name "StartClusterInput"))

(smithy/sdk/shapes:define-output start-cluster-output common-lisp:nil
                                 ((cluster :target-type cluster :required
                                   common-lisp:t :member-name "cluster"))
                                 (:shape-name "StartClusterOutput"))

(smithy/sdk/shapes:define-type status smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input stop-cluster-input common-lisp:nil
                                ((cluster-arn :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "clusterArn"
                                  :http-label common-lisp:t))
                                (:shape-name "StopClusterInput"))

(smithy/sdk/shapes:define-output stop-cluster-output common-lisp:nil
                                 ((cluster :target-type cluster :required
                                   common-lisp:t :member-name "cluster"))
                                 (:shape-name "StopClusterOutput"))

(smithy/sdk/shapes:define-list string-list :member
                               smithy/sdk/smithy-types:string)

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

(smithy/sdk/shapes:define-structure tag-resource-response common-lisp:nil
                                    common-lisp:nil
                                    (:shape-name "TagResourceResponse"))

(smithy/sdk/shapes:define-type tag-value smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error throttling-exception common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "message")
                                 (retry-after-seconds :target-type
                                  smithy/sdk/smithy-types:integer :member-name
                                  "retryAfterSeconds" :http-header
                                  "Retry-After"))
                                (:shape-name "ThrottlingException")
                                (:error-code 429)
                                (:base-class docdb-elastic-error))

(smithy/sdk/shapes:define-input untag-resource-request common-lisp:nil
                                ((resource-arn :target-type arn :required
                                  common-lisp:t :member-name "resourceArn"
                                  :http-label common-lisp:t)
                                 (tag-keys :target-type tag-key-list :required
                                  common-lisp:t :member-name "tagKeys"
                                  :http-query "tagKeys"))
                                (:shape-name "UntagResourceRequest"))

(smithy/sdk/shapes:define-structure untag-resource-response common-lisp:nil
                                    common-lisp:nil
                                    (:shape-name "UntagResourceResponse"))

(smithy/sdk/shapes:define-input update-cluster-input common-lisp:nil
                                ((cluster-arn :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "clusterArn"
                                  :http-label common-lisp:t)
                                 (auth-type :target-type auth :member-name
                                  "authType")
                                 (shard-capacity :target-type
                                  smithy/sdk/smithy-types:integer :member-name
                                  "shardCapacity")
                                 (shard-count :target-type
                                  smithy/sdk/smithy-types:integer :member-name
                                  "shardCount")
                                 (vpc-security-group-ids :target-type
                                  string-list :member-name
                                  "vpcSecurityGroupIds")
                                 (subnet-ids :target-type string-list
                                  :member-name "subnetIds")
                                 (admin-user-password :target-type password
                                  :member-name "adminUserPassword")
                                 (client-token :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "clientToken")
                                 (preferred-maintenance-window :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "preferredMaintenanceWindow")
                                 (backup-retention-period :target-type
                                  smithy/sdk/smithy-types:integer :member-name
                                  "backupRetentionPeriod")
                                 (preferred-backup-window :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "preferredBackupWindow")
                                 (shard-instance-count :target-type
                                  smithy/sdk/smithy-types:integer :member-name
                                  "shardInstanceCount"))
                                (:shape-name "UpdateClusterInput"))

(smithy/sdk/shapes:define-structure update-cluster-output common-lisp:nil
                                    ((cluster :target-type cluster :required
                                      common-lisp:t :member-name "cluster"))
                                    (:shape-name "UpdateClusterOutput"))

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
                                (:error-code 400)
                                (:base-class docdb-elastic-error))

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

(smithy/sdk/shapes:define-type validation-exception-reason
                               smithy/sdk/smithy-types:string)

(smithy/sdk/operation:define-operation apply-pending-maintenance-action
                                       :shape-name
                                       "ApplyPendingMaintenanceAction" :input
                                       apply-pending-maintenance-action-input
                                       :output
                                       apply-pending-maintenance-action-output
                                       :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri "/pending-action"
                                       :code 200)

(smithy/sdk/operation:define-operation copy-cluster-snapshot :shape-name
                                       "CopyClusterSnapshot" :input
                                       copy-cluster-snapshot-input :output
                                       copy-cluster-snapshot-output :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/cluster-snapshot/{snapshotArn}/copy"
                                       :code 200)

(smithy/sdk/operation:define-operation create-cluster :shape-name
                                       "CreateCluster" :input
                                       create-cluster-input :output
                                       create-cluster-output :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri "/cluster" :code 200)

(smithy/sdk/operation:define-operation create-cluster-snapshot :shape-name
                                       "CreateClusterSnapshot" :input
                                       create-cluster-snapshot-input :output
                                       create-cluster-snapshot-output :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri "/cluster-snapshot"
                                       :code 200)

(smithy/sdk/operation:define-operation delete-cluster :shape-name
                                       "DeleteCluster" :input
                                       delete-cluster-input :output
                                       delete-cluster-output :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "DELETE" :uri
                                       "/cluster/{clusterArn}" :code 200)

(smithy/sdk/operation:define-operation delete-cluster-snapshot :shape-name
                                       "DeleteClusterSnapshot" :input
                                       delete-cluster-snapshot-input :output
                                       delete-cluster-snapshot-output :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "DELETE" :uri
                                       "/cluster-snapshot/{snapshotArn}" :code
                                       200)

(smithy/sdk/operation:define-operation get-cluster :shape-name "GetCluster"
                                       :input get-cluster-input :output
                                       get-cluster-output :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/cluster/{clusterArn}" :code 200)

(smithy/sdk/operation:define-operation get-cluster-snapshot :shape-name
                                       "GetClusterSnapshot" :input
                                       get-cluster-snapshot-input :output
                                       get-cluster-snapshot-output :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/cluster-snapshot/{snapshotArn}" :code
                                       200)

(smithy/sdk/operation:define-operation get-pending-maintenance-action
                                       :shape-name
                                       "GetPendingMaintenanceAction" :input
                                       get-pending-maintenance-action-input
                                       :output
                                       get-pending-maintenance-action-output
                                       :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/pending-action/{resourceArn}" :code
                                       200)

(smithy/sdk/operation:define-operation list-cluster-snapshots :shape-name
                                       "ListClusterSnapshots" :input
                                       list-cluster-snapshots-input :output
                                       list-cluster-snapshots-output :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri "/cluster-snapshots"
                                       :code 200)

(smithy/sdk/operation:define-operation list-clusters :shape-name "ListClusters"
                                       :input list-clusters-input :output
                                       list-clusters-output :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri "/clusters" :code 200)

(smithy/sdk/operation:define-operation list-pending-maintenance-actions
                                       :shape-name
                                       "ListPendingMaintenanceActions" :input
                                       list-pending-maintenance-actions-input
                                       :output
                                       list-pending-maintenance-actions-output
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri "/pending-actions"
                                       :code 200)

(smithy/sdk/operation:define-operation list-tags-for-resource :shape-name
                                       "ListTagsForResource" :input
                                       list-tags-for-resource-request :output
                                       list-tags-for-resource-response :errors
                                       (internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri "/tags/{resourceArn}")

(smithy/sdk/operation:define-operation restore-cluster-from-snapshot
                                       :shape-name "RestoreClusterFromSnapshot"
                                       :input
                                       restore-cluster-from-snapshot-input
                                       :output
                                       restore-cluster-from-snapshot-output
                                       :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/cluster-snapshot/{snapshotArn}/restore"
                                       :code 200)

(smithy/sdk/operation:define-operation start-cluster :shape-name "StartCluster"
                                       :input start-cluster-input :output
                                       start-cluster-output :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/cluster/{clusterArn}/start" :code 200)

(smithy/sdk/operation:define-operation stop-cluster :shape-name "StopCluster"
                                       :input stop-cluster-input :output
                                       stop-cluster-output :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/cluster/{clusterArn}/stop" :code 200)

(smithy/sdk/operation:define-operation tag-resource :shape-name "TagResource"
                                       :input tag-resource-request :output
                                       tag-resource-response :errors
                                       (internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/tags/{resourceArn}")

(smithy/sdk/operation:define-operation untag-resource :shape-name
                                       "UntagResource" :input
                                       untag-resource-request :output
                                       untag-resource-response :errors
                                       (internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "DELETE" :uri
                                       "/tags/{resourceArn}")

(smithy/sdk/operation:define-operation update-cluster :shape-name
                                       "UpdateCluster" :input
                                       update-cluster-input :output
                                       update-cluster-output :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "PUT" :uri
                                       "/cluster/{clusterArn}" :code 200)
