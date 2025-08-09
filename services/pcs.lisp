(uiop/package:define-package #:pira/pcs (:use)
                             (:export #:awsparallel-computing-service
                              #:accounting #:accounting-mode
                              #:accounting-request #:ami-id #:arn
                              #:bootstrap-id #:cluster #:cluster-identifier
                              #:cluster-list #:cluster-name #:cluster-resource
                              #:cluster-slurm-configuration
                              #:cluster-slurm-configuration-request
                              #:cluster-status #:cluster-summary
                              #:compute-node-group
                              #:compute-node-group-configuration
                              #:compute-node-group-configuration-list
                              #:compute-node-group-identifier
                              #:compute-node-group-list
                              #:compute-node-group-name
                              #:compute-node-group-resource
                              #:compute-node-group-slurm-configuration
                              #:compute-node-group-slurm-configuration-request
                              #:compute-node-group-status
                              #:compute-node-group-summary #:create-cluster
                              #:create-compute-node-group #:create-queue
                              #:custom-launch-template #:delete-cluster
                              #:delete-compute-node-group #:delete-queue
                              #:endpoint #:endpoint-type #:endpoints
                              #:error-info #:error-info-list #:get-cluster
                              #:get-compute-node-group #:get-queue
                              #:instance-config #:instance-list
                              #:instance-profile-arn #:list-clusters
                              #:list-compute-node-groups #:list-queues
                              #:list-tags-for-resource #:max-results
                              #:network-type #:networking #:networking-request
                              #:purchase-option #:queue #:queue-identifier
                              #:queue-list #:queue-name #:queue-resource
                              #:queue-status #:queue-summary
                              #:register-compute-node-group-instance
                              #:request-tag-map #:response-tag-map
                              #:sbclient-token #:scaling-configuration
                              #:scaling-configuration-request #:scheduler
                              #:scheduler-request #:scheduler-type
                              #:security-group-id #:security-group-id-list
                              #:shared-secret #:size #:slurm-auth-key
                              #:slurm-custom-setting #:slurm-custom-settings
                              #:spot-allocation-strategy #:spot-options
                              #:string-list #:subnet-id #:subnet-id-list
                              #:tag-key #:tag-keys #:tag-resource #:tag-value
                              #:untag-resource #:update-compute-node-group
                              #:update-compute-node-group-slurm-configuration-request
                              #:update-queue #:validation-exception-field
                              #:validation-exception-field-list
                              #:validation-exception-reason))
(common-lisp:in-package #:pira/pcs)

(smithy/sdk/service:define-service awsparallel-computing-service :shape-name
                                   "AWSParallelComputingService" :version
                                   "2023-02-10" :title
                                   "AWS Parallel Computing Service" :traits
                                   '(("aws.api#service" ("sdkId" . "PCS")
                                      ("arnNamespace" . "pcs"))
                                     ("aws.auth#sigv4" ("name" . "pcs"))
                                     ("aws.iam#defineConditionKeys"
                                      ("aws:ResourceTag/${TagKey}"
                                       ("type" . "String")
                                       ("documentation"
                                        . "Filters access by a tag key and value pair of a resource")
                                       ("externalDocumentation"
                                        . "${DocHomeURL}IAM/latest/UserGuide/reference_policies_condition-keys.html#condition-keys-resourcetag"))
                                      ("aws:RequestTag/${TagKey}"
                                       ("type" . "String")
                                       ("documentation"
                                        . "Filters access by a tag key and value pair that is allowed in the request")
                                       ("externalDocumentation"
                                        . "${DocHomeURL}IAM/latest/UserGuide/reference_policies_condition-keys.html#condition-keys-requesttag"))
                                      ("aws:TagKeys" ("type" . "ArrayOfString")
                                       ("documentation"
                                        . "Filters access by a list of tag keys that are allowed in the request")
                                       ("externalDocumentation"
                                        . "${DocHomeURL}IAM/latest/UserGuide/reference_policies_condition-keys.html#condition-keys-tagkeys"))
                                      ("pcs:ResourceName" ("type" . "String")
                                       ("documentation"
                                        . "Filters creation of resources with a certain name")))
                                     ("aws.iam#disableConditionKeyInference")
                                     ("aws.protocols#awsJson1_0")))

(smithy/sdk/shapes:define-error access-denied-exception common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "message"))
                                (:shape-name "AccessDeniedException")
                                (:error-code 403))

(smithy/sdk/shapes:define-structure accounting common-lisp:nil
                                    ((mode :target-type accounting-mode
                                      :required common-lisp:t :member-name
                                      "mode")
                                     (default-purge-time-in-days :target-type
                                      smithy/sdk/smithy-types:integer
                                      :member-name "defaultPurgeTimeInDays"))
                                    (:shape-name "Accounting"))

(smithy/sdk/shapes:define-enum accounting-mode
    common-lisp:nil
  (:standard "STANDARD")
  (:none "NONE"))

(smithy/sdk/shapes:define-structure accounting-request common-lisp:nil
                                    ((mode :target-type accounting-mode
                                      :required common-lisp:t :member-name
                                      "mode")
                                     (default-purge-time-in-days :target-type
                                      smithy/sdk/smithy-types:integer
                                      :member-name "defaultPurgeTimeInDays"))
                                    (:shape-name "AccountingRequest"))

(smithy/sdk/shapes:define-type ami-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type bootstrap-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure cluster common-lisp:nil
                                    ((name :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "name")
                                     (id :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "id")
                                     (arn :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "arn")
                                     (status :target-type cluster-status
                                      :required common-lisp:t :member-name
                                      "status")
                                     (created-at :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :required common-lisp:t :member-name
                                      "createdAt" :timestamp-format
                                      "date-time")
                                     (modified-at :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :required common-lisp:t :member-name
                                      "modifiedAt" :timestamp-format
                                      "date-time")
                                     (scheduler :target-type scheduler
                                      :required common-lisp:t :member-name
                                      "scheduler")
                                     (size :target-type size :required
                                      common-lisp:t :member-name "size")
                                     (slurm-configuration :target-type
                                      cluster-slurm-configuration :member-name
                                      "slurmConfiguration")
                                     (networking :target-type networking
                                      :required common-lisp:t :member-name
                                      "networking")
                                     (endpoints :target-type endpoints
                                      :member-name "endpoints")
                                     (error-info :target-type error-info-list
                                      :member-name "errorInfo"))
                                    (:shape-name "Cluster"))

(smithy/sdk/shapes:define-type cluster-identifier
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list cluster-list :member cluster-summary)

(smithy/sdk/shapes:define-type cluster-name smithy/sdk/smithy-types:string)

common-lisp:nil

(smithy/sdk/shapes:define-structure cluster-slurm-configuration common-lisp:nil
                                    ((scale-down-idle-time-in-seconds
                                      :target-type
                                      smithy/sdk/smithy-types:integer
                                      :member-name
                                      "scaleDownIdleTimeInSeconds")
                                     (slurm-custom-settings :target-type
                                      slurm-custom-settings :member-name
                                      "slurmCustomSettings")
                                     (auth-key :target-type slurm-auth-key
                                      :member-name "authKey")
                                     (accounting :target-type accounting
                                      :member-name "accounting"))
                                    (:shape-name "ClusterSlurmConfiguration"))

(smithy/sdk/shapes:define-structure cluster-slurm-configuration-request
                                    common-lisp:nil
                                    ((scale-down-idle-time-in-seconds
                                      :target-type
                                      smithy/sdk/smithy-types:integer
                                      :member-name
                                      "scaleDownIdleTimeInSeconds")
                                     (slurm-custom-settings :target-type
                                      slurm-custom-settings :member-name
                                      "slurmCustomSettings")
                                     (accounting :target-type
                                      accounting-request :member-name
                                      "accounting"))
                                    (:shape-name
                                     "ClusterSlurmConfigurationRequest"))

(smithy/sdk/shapes:define-enum cluster-status
    common-lisp:nil
  (:creating "CREATING")
  (:active "ACTIVE")
  (:updating "UPDATING")
  (:deleting "DELETING")
  (:create-failed "CREATE_FAILED")
  (:delete-failed "DELETE_FAILED")
  (:update-failed "UPDATE_FAILED")
  (:suspending "SUSPENDING")
  (:suspended "SUSPENDED"))

(smithy/sdk/shapes:define-structure cluster-summary common-lisp:nil
                                    ((name :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "name")
                                     (id :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "id")
                                     (arn :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "arn")
                                     (created-at :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :required common-lisp:t :member-name
                                      "createdAt" :timestamp-format
                                      "date-time")
                                     (modified-at :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :required common-lisp:t :member-name
                                      "modifiedAt" :timestamp-format
                                      "date-time")
                                     (status :target-type cluster-status
                                      :required common-lisp:t :member-name
                                      "status"))
                                    (:shape-name "ClusterSummary"))

(smithy/sdk/shapes:define-structure compute-node-group common-lisp:nil
                                    ((name :target-type compute-node-group-name
                                      :required common-lisp:t :member-name
                                      "name")
                                     (id :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "id")
                                     (arn :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "arn")
                                     (cluster-id :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "clusterId")
                                     (created-at :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :required common-lisp:t :member-name
                                      "createdAt" :timestamp-format
                                      "date-time")
                                     (modified-at :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :required common-lisp:t :member-name
                                      "modifiedAt" :timestamp-format
                                      "date-time")
                                     (status :target-type
                                      compute-node-group-status :required
                                      common-lisp:t :member-name "status")
                                     (ami-id :target-type ami-id :member-name
                                      "amiId")
                                     (subnet-ids :target-type subnet-id-list
                                      :required common-lisp:t :member-name
                                      "subnetIds")
                                     (purchase-option :target-type
                                      purchase-option :member-name
                                      "purchaseOption")
                                     (custom-launch-template :target-type
                                      custom-launch-template :required
                                      common-lisp:t :member-name
                                      "customLaunchTemplate")
                                     (iam-instance-profile-arn :target-type
                                      instance-profile-arn :required
                                      common-lisp:t :member-name
                                      "iamInstanceProfileArn")
                                     (scaling-configuration :target-type
                                      scaling-configuration :required
                                      common-lisp:t :member-name
                                      "scalingConfiguration")
                                     (instance-configs :target-type
                                      instance-list :required common-lisp:t
                                      :member-name "instanceConfigs")
                                     (spot-options :target-type spot-options
                                      :member-name "spotOptions")
                                     (slurm-configuration :target-type
                                      compute-node-group-slurm-configuration
                                      :member-name "slurmConfiguration")
                                     (error-info :target-type error-info-list
                                      :member-name "errorInfo"))
                                    (:shape-name "ComputeNodeGroup"))

(smithy/sdk/shapes:define-structure compute-node-group-configuration
                                    common-lisp:nil
                                    ((compute-node-group-id :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "computeNodeGroupId"))
                                    (:shape-name
                                     "ComputeNodeGroupConfiguration"))

(smithy/sdk/shapes:define-list compute-node-group-configuration-list :member
                               compute-node-group-configuration)

(smithy/sdk/shapes:define-type compute-node-group-identifier
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list compute-node-group-list :member
                               compute-node-group-summary)

(smithy/sdk/shapes:define-type compute-node-group-name
                               smithy/sdk/smithy-types:string)

common-lisp:nil

(smithy/sdk/shapes:define-structure compute-node-group-slurm-configuration
                                    common-lisp:nil
                                    ((slurm-custom-settings :target-type
                                      slurm-custom-settings :member-name
                                      "slurmCustomSettings"))
                                    (:shape-name
                                     "ComputeNodeGroupSlurmConfiguration"))

(smithy/sdk/shapes:define-structure
 compute-node-group-slurm-configuration-request common-lisp:nil
 ((slurm-custom-settings :target-type slurm-custom-settings :member-name
   "slurmCustomSettings"))
 (:shape-name "ComputeNodeGroupSlurmConfigurationRequest"))

(smithy/sdk/shapes:define-enum compute-node-group-status
    common-lisp:nil
  (:creating "CREATING")
  (:active "ACTIVE")
  (:updating "UPDATING")
  (:deleting "DELETING")
  (:create-failed "CREATE_FAILED")
  (:delete-failed "DELETE_FAILED")
  (:update-failed "UPDATE_FAILED")
  (:deleted "DELETED")
  (:suspending "SUSPENDING")
  (:suspended "SUSPENDED"))

(smithy/sdk/shapes:define-structure compute-node-group-summary common-lisp:nil
                                    ((name :target-type compute-node-group-name
                                      :required common-lisp:t :member-name
                                      "name")
                                     (id :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "id")
                                     (arn :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "arn")
                                     (cluster-id :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "clusterId")
                                     (created-at :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :required common-lisp:t :member-name
                                      "createdAt" :timestamp-format
                                      "date-time")
                                     (modified-at :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :required common-lisp:t :member-name
                                      "modifiedAt" :timestamp-format
                                      "date-time")
                                     (status :target-type
                                      compute-node-group-status :required
                                      common-lisp:t :member-name "status"))
                                    (:shape-name "ComputeNodeGroupSummary"))

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

(smithy/sdk/shapes:define-input create-cluster-request common-lisp:nil
                                ((cluster-name :target-type cluster-name
                                  :required common-lisp:t :member-name
                                  "clusterName")
                                 (scheduler :target-type scheduler-request
                                  :required common-lisp:t :member-name
                                  "scheduler")
                                 (size :target-type size :required
                                  common-lisp:t :member-name "size")
                                 (networking :target-type networking-request
                                  :required common-lisp:t :member-name
                                  "networking")
                                 (slurm-configuration :target-type
                                  cluster-slurm-configuration-request
                                  :member-name "slurmConfiguration")
                                 (client-token :target-type sbclient-token
                                  :member-name "clientToken")
                                 (tags :target-type request-tag-map
                                  :member-name "tags"))
                                (:shape-name "CreateClusterRequest"))

(smithy/sdk/shapes:define-output create-cluster-response common-lisp:nil
                                 ((cluster :target-type cluster :member-name
                                   "cluster"))
                                 (:shape-name "CreateClusterResponse"))

(smithy/sdk/shapes:define-input create-compute-node-group-request
                                common-lisp:nil
                                ((cluster-identifier :target-type
                                  cluster-identifier :required common-lisp:t
                                  :member-name "clusterIdentifier")
                                 (compute-node-group-name :target-type
                                  compute-node-group-name :required
                                  common-lisp:t :member-name
                                  "computeNodeGroupName")
                                 (ami-id :target-type ami-id :member-name
                                  "amiId")
                                 (subnet-ids :target-type string-list :required
                                  common-lisp:t :member-name "subnetIds")
                                 (purchase-option :target-type purchase-option
                                  :member-name "purchaseOption")
                                 (custom-launch-template :target-type
                                  custom-launch-template :required
                                  common-lisp:t :member-name
                                  "customLaunchTemplate")
                                 (iam-instance-profile-arn :target-type
                                  instance-profile-arn :required common-lisp:t
                                  :member-name "iamInstanceProfileArn")
                                 (scaling-configuration :target-type
                                  scaling-configuration-request :required
                                  common-lisp:t :member-name
                                  "scalingConfiguration")
                                 (instance-configs :target-type instance-list
                                  :required common-lisp:t :member-name
                                  "instanceConfigs")
                                 (spot-options :target-type spot-options
                                  :member-name "spotOptions")
                                 (slurm-configuration :target-type
                                  compute-node-group-slurm-configuration-request
                                  :member-name "slurmConfiguration")
                                 (client-token :target-type sbclient-token
                                  :member-name "clientToken")
                                 (tags :target-type request-tag-map
                                  :member-name "tags"))
                                (:shape-name "CreateComputeNodeGroupRequest"))

(smithy/sdk/shapes:define-output create-compute-node-group-response
                                 common-lisp:nil
                                 ((compute-node-group :target-type
                                   compute-node-group :member-name
                                   "computeNodeGroup"))
                                 (:shape-name "CreateComputeNodeGroupResponse"))

(smithy/sdk/shapes:define-input create-queue-request common-lisp:nil
                                ((cluster-identifier :target-type
                                  cluster-identifier :required common-lisp:t
                                  :member-name "clusterIdentifier")
                                 (queue-name :target-type queue-name :required
                                  common-lisp:t :member-name "queueName")
                                 (compute-node-group-configurations
                                  :target-type
                                  compute-node-group-configuration-list
                                  :member-name
                                  "computeNodeGroupConfigurations")
                                 (client-token :target-type sbclient-token
                                  :member-name "clientToken")
                                 (tags :target-type request-tag-map
                                  :member-name "tags"))
                                (:shape-name "CreateQueueRequest"))

(smithy/sdk/shapes:define-output create-queue-response common-lisp:nil
                                 ((queue :target-type queue :member-name
                                   "queue"))
                                 (:shape-name "CreateQueueResponse"))

(smithy/sdk/shapes:define-structure custom-launch-template common-lisp:nil
                                    ((id :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "id")
                                     (version :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "version"))
                                    (:shape-name "CustomLaunchTemplate"))

(smithy/sdk/shapes:define-input delete-cluster-request common-lisp:nil
                                ((cluster-identifier :target-type
                                  cluster-identifier :required common-lisp:t
                                  :member-name "clusterIdentifier")
                                 (client-token :target-type sbclient-token
                                  :member-name "clientToken"))
                                (:shape-name "DeleteClusterRequest"))

(smithy/sdk/shapes:define-output delete-cluster-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "DeleteClusterResponse"))

(smithy/sdk/shapes:define-input delete-compute-node-group-request
                                common-lisp:nil
                                ((cluster-identifier :target-type
                                  cluster-identifier :required common-lisp:t
                                  :member-name "clusterIdentifier")
                                 (compute-node-group-identifier :target-type
                                  compute-node-group-identifier :required
                                  common-lisp:t :member-name
                                  "computeNodeGroupIdentifier")
                                 (client-token :target-type sbclient-token
                                  :member-name "clientToken"))
                                (:shape-name "DeleteComputeNodeGroupRequest"))

(smithy/sdk/shapes:define-output delete-compute-node-group-response
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name "DeleteComputeNodeGroupResponse"))

(smithy/sdk/shapes:define-input delete-queue-request common-lisp:nil
                                ((cluster-identifier :target-type
                                  cluster-identifier :required common-lisp:t
                                  :member-name "clusterIdentifier")
                                 (queue-identifier :target-type
                                  queue-identifier :required common-lisp:t
                                  :member-name "queueIdentifier")
                                 (client-token :target-type sbclient-token
                                  :member-name "clientToken"))
                                (:shape-name "DeleteQueueRequest"))

(smithy/sdk/shapes:define-output delete-queue-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "DeleteQueueResponse"))

(smithy/sdk/shapes:define-structure endpoint common-lisp:nil
                                    ((type :target-type endpoint-type :required
                                      common-lisp:t :member-name "type")
                                     (private-ip-address :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name
                                      "privateIpAddress")
                                     (public-ip-address :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "publicIpAddress")
                                     (ipv6address :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "ipv6Address")
                                     (port :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "port"))
                                    (:shape-name "Endpoint"))

(smithy/sdk/shapes:define-enum endpoint-type
    common-lisp:nil
  (:slurmctld "SLURMCTLD")
  (:slurmdbd "SLURMDBD"))

(smithy/sdk/shapes:define-list endpoints :member endpoint)

(smithy/sdk/shapes:define-structure error-info common-lisp:nil
                                    ((code :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "code")
                                     (message :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "message"))
                                    (:shape-name "ErrorInfo"))

(smithy/sdk/shapes:define-list error-info-list :member error-info)

(smithy/sdk/shapes:define-input get-cluster-request common-lisp:nil
                                ((cluster-identifier :target-type
                                  cluster-identifier :required common-lisp:t
                                  :member-name "clusterIdentifier"))
                                (:shape-name "GetClusterRequest"))

(smithy/sdk/shapes:define-output get-cluster-response common-lisp:nil
                                 ((cluster :target-type cluster :member-name
                                   "cluster"))
                                 (:shape-name "GetClusterResponse"))

(smithy/sdk/shapes:define-input get-compute-node-group-request common-lisp:nil
                                ((cluster-identifier :target-type
                                  cluster-identifier :required common-lisp:t
                                  :member-name "clusterIdentifier")
                                 (compute-node-group-identifier :target-type
                                  compute-node-group-identifier :required
                                  common-lisp:t :member-name
                                  "computeNodeGroupIdentifier"))
                                (:shape-name "GetComputeNodeGroupRequest"))

(smithy/sdk/shapes:define-output get-compute-node-group-response
                                 common-lisp:nil
                                 ((compute-node-group :target-type
                                   compute-node-group :member-name
                                   "computeNodeGroup"))
                                 (:shape-name "GetComputeNodeGroupResponse"))

(smithy/sdk/shapes:define-input get-queue-request common-lisp:nil
                                ((cluster-identifier :target-type
                                  cluster-identifier :required common-lisp:t
                                  :member-name "clusterIdentifier")
                                 (queue-identifier :target-type
                                  queue-identifier :required common-lisp:t
                                  :member-name "queueIdentifier"))
                                (:shape-name "GetQueueRequest"))

(smithy/sdk/shapes:define-output get-queue-response common-lisp:nil
                                 ((queue :target-type queue :member-name
                                   "queue"))
                                 (:shape-name "GetQueueResponse"))

(smithy/sdk/shapes:define-structure instance-config common-lisp:nil
                                    ((instance-type :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "instanceType"))
                                    (:shape-name "InstanceConfig"))

(smithy/sdk/shapes:define-list instance-list :member instance-config)

(smithy/sdk/shapes:define-type instance-profile-arn
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error internal-server-exception common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "message"))
                                (:shape-name "InternalServerException")
                                (:error-code 500))

(smithy/sdk/shapes:define-input list-clusters-request common-lisp:nil
                                ((next-token :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "nextToken" :http-query "nextToken")
                                 (max-results :target-type max-results
                                  :member-name "maxResults" :http-query
                                  "maxResults"))
                                (:shape-name "ListClustersRequest"))

(smithy/sdk/shapes:define-output list-clusters-response common-lisp:nil
                                 ((clusters :target-type cluster-list :required
                                   common-lisp:t :member-name "clusters")
                                  (next-token :target-type
                                   smithy/sdk/smithy-types:string :member-name
                                   "nextToken"))
                                 (:shape-name "ListClustersResponse"))

(smithy/sdk/shapes:define-input list-compute-node-groups-request
                                common-lisp:nil
                                ((cluster-identifier :target-type
                                  cluster-identifier :required common-lisp:t
                                  :member-name "clusterIdentifier")
                                 (next-token :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "nextToken")
                                 (max-results :target-type max-results
                                  :member-name "maxResults"))
                                (:shape-name "ListComputeNodeGroupsRequest"))

(smithy/sdk/shapes:define-output list-compute-node-groups-response
                                 common-lisp:nil
                                 ((compute-node-groups :target-type
                                   compute-node-group-list :required
                                   common-lisp:t :member-name
                                   "computeNodeGroups")
                                  (next-token :target-type
                                   smithy/sdk/smithy-types:string :member-name
                                   "nextToken"))
                                 (:shape-name "ListComputeNodeGroupsResponse"))

(smithy/sdk/shapes:define-input list-queues-request common-lisp:nil
                                ((cluster-identifier :target-type
                                  cluster-identifier :required common-lisp:t
                                  :member-name "clusterIdentifier")
                                 (next-token :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "nextToken")
                                 (max-results :target-type max-results
                                  :member-name "maxResults"))
                                (:shape-name "ListQueuesRequest"))

(smithy/sdk/shapes:define-output list-queues-response common-lisp:nil
                                 ((queues :target-type queue-list :required
                                   common-lisp:t :member-name "queues")
                                  (next-token :target-type
                                   smithy/sdk/smithy-types:string :member-name
                                   "nextToken"))
                                 (:shape-name "ListQueuesResponse"))

(smithy/sdk/shapes:define-input list-tags-for-resource-request common-lisp:nil
                                ((resource-arn :target-type arn :required
                                  common-lisp:t :member-name "resourceArn"))
                                (:shape-name "ListTagsForResourceRequest"))

(smithy/sdk/shapes:define-output list-tags-for-resource-response
                                 common-lisp:nil
                                 ((tags :target-type response-tag-map
                                   :member-name "tags"))
                                 (:shape-name "ListTagsForResourceResponse"))

(smithy/sdk/shapes:define-type max-results smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-enum network-type
    common-lisp:nil
  (:ipv4 "IPV4")
  (:ipv6 "IPV6"))

(smithy/sdk/shapes:define-structure networking common-lisp:nil
                                    ((subnet-ids :target-type subnet-id-list
                                      :member-name "subnetIds")
                                     (security-group-ids :target-type
                                      security-group-id-list :member-name
                                      "securityGroupIds")
                                     (network-type :target-type network-type
                                      :member-name "networkType"))
                                    (:shape-name "Networking"))

(smithy/sdk/shapes:define-structure networking-request common-lisp:nil
                                    ((subnet-ids :target-type subnet-id-list
                                      :member-name "subnetIds")
                                     (security-group-ids :target-type
                                      security-group-id-list :member-name
                                      "securityGroupIds")
                                     (network-type :target-type network-type
                                      :member-name "networkType"))
                                    (:shape-name "NetworkingRequest"))

(smithy/sdk/shapes:define-enum purchase-option
    common-lisp:nil
  (:ondemand "ONDEMAND")
  (:spot "SPOT"))

(smithy/sdk/shapes:define-structure queue common-lisp:nil
                                    ((name :target-type queue-name :required
                                      common-lisp:t :member-name "name")
                                     (id :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "id")
                                     (arn :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "arn")
                                     (cluster-id :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "clusterId")
                                     (created-at :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :required common-lisp:t :member-name
                                      "createdAt" :timestamp-format
                                      "date-time")
                                     (modified-at :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :required common-lisp:t :member-name
                                      "modifiedAt" :timestamp-format
                                      "date-time")
                                     (status :target-type queue-status
                                      :required common-lisp:t :member-name
                                      "status")
                                     (compute-node-group-configurations
                                      :target-type
                                      compute-node-group-configuration-list
                                      :required common-lisp:t :member-name
                                      "computeNodeGroupConfigurations")
                                     (error-info :target-type error-info-list
                                      :member-name "errorInfo"))
                                    (:shape-name "Queue"))

(smithy/sdk/shapes:define-type queue-identifier smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list queue-list :member queue-summary)

(smithy/sdk/shapes:define-type queue-name smithy/sdk/smithy-types:string)

common-lisp:nil

(smithy/sdk/shapes:define-enum queue-status
    common-lisp:nil
  (:creating "CREATING")
  (:active "ACTIVE")
  (:updating "UPDATING")
  (:deleting "DELETING")
  (:create-failed "CREATE_FAILED")
  (:delete-failed "DELETE_FAILED")
  (:update-failed "UPDATE_FAILED")
  (:suspending "SUSPENDING")
  (:suspended "SUSPENDED"))

(smithy/sdk/shapes:define-structure queue-summary common-lisp:nil
                                    ((name :target-type queue-name :required
                                      common-lisp:t :member-name "name")
                                     (id :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "id")
                                     (arn :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "arn")
                                     (cluster-id :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "clusterId")
                                     (created-at :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :required common-lisp:t :member-name
                                      "createdAt" :timestamp-format
                                      "date-time")
                                     (modified-at :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :required common-lisp:t :member-name
                                      "modifiedAt" :timestamp-format
                                      "date-time")
                                     (status :target-type queue-status
                                      :required common-lisp:t :member-name
                                      "status"))
                                    (:shape-name "QueueSummary"))

(smithy/sdk/shapes:define-input register-compute-node-group-instance-request
                                common-lisp:nil
                                ((cluster-identifier :target-type
                                  cluster-identifier :required common-lisp:t
                                  :member-name "clusterIdentifier")
                                 (bootstrap-id :target-type bootstrap-id
                                  :required common-lisp:t :member-name
                                  "bootstrapId"))
                                (:shape-name
                                 "RegisterComputeNodeGroupInstanceRequest"))

(smithy/sdk/shapes:define-output register-compute-node-group-instance-response
                                 common-lisp:nil
                                 ((node-id :target-type
                                   smithy/sdk/smithy-types:string :required
                                   common-lisp:t :member-name "nodeID")
                                  (shared-secret :target-type shared-secret
                                   :required common-lisp:t :member-name
                                   "sharedSecret")
                                  (endpoints :target-type endpoints :required
                                   common-lisp:t :member-name "endpoints"))
                                 (:shape-name
                                  "RegisterComputeNodeGroupInstanceResponse"))

(smithy/sdk/shapes:define-map request-tag-map :key tag-key :value tag-value)

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

(smithy/sdk/shapes:define-map response-tag-map :key tag-key :value tag-value)

(smithy/sdk/shapes:define-type sbclient-token smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure scaling-configuration common-lisp:nil
                                    ((min-instance-count :target-type
                                      smithy/sdk/smithy-types:integer :required
                                      common-lisp:t :member-name
                                      "minInstanceCount")
                                     (max-instance-count :target-type
                                      smithy/sdk/smithy-types:integer :required
                                      common-lisp:t :member-name
                                      "maxInstanceCount"))
                                    (:shape-name "ScalingConfiguration"))

(smithy/sdk/shapes:define-structure scaling-configuration-request
                                    common-lisp:nil
                                    ((min-instance-count :target-type
                                      smithy/sdk/smithy-types:integer :required
                                      common-lisp:t :member-name
                                      "minInstanceCount")
                                     (max-instance-count :target-type
                                      smithy/sdk/smithy-types:integer :required
                                      common-lisp:t :member-name
                                      "maxInstanceCount"))
                                    (:shape-name "ScalingConfigurationRequest"))

(smithy/sdk/shapes:define-structure scheduler common-lisp:nil
                                    ((type :target-type scheduler-type
                                      :required common-lisp:t :member-name
                                      "type")
                                     (version :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "version"))
                                    (:shape-name "Scheduler"))

(smithy/sdk/shapes:define-structure scheduler-request common-lisp:nil
                                    ((type :target-type scheduler-type
                                      :required common-lisp:t :member-name
                                      "type")
                                     (version :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "version"))
                                    (:shape-name "SchedulerRequest"))

(smithy/sdk/shapes:define-enum scheduler-type
    common-lisp:nil
  (:slurm "SLURM"))

(smithy/sdk/shapes:define-type security-group-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list security-group-id-list :member security-group-id)

(smithy/sdk/shapes:define-error service-quota-exceeded-exception
                                common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "message")
                                 (service-code :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "serviceCode")
                                 (resource-id :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "resourceId")
                                 (resource-type :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "resourceType")
                                 (quota-code :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "quotaCode"))
                                (:shape-name "ServiceQuotaExceededException")
                                (:error-code 402))

(smithy/sdk/shapes:define-type shared-secret smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum size
    common-lisp:nil
  (:small "SMALL")
  (:medium "MEDIUM")
  (:large "LARGE"))

(smithy/sdk/shapes:define-structure slurm-auth-key common-lisp:nil
                                    ((secret-arn :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "secretArn")
                                     (secret-version :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name
                                      "secretVersion"))
                                    (:shape-name "SlurmAuthKey"))

(smithy/sdk/shapes:define-structure slurm-custom-setting common-lisp:nil
                                    ((parameter-name :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name
                                      "parameterName")
                                     (parameter-value :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name
                                      "parameterValue"))
                                    (:shape-name "SlurmCustomSetting"))

(smithy/sdk/shapes:define-list slurm-custom-settings :member
                               slurm-custom-setting)

(smithy/sdk/shapes:define-enum spot-allocation-strategy
    common-lisp:nil
  (:lowest-price "lowest-price")
  (:capacity-optimized "capacity-optimized")
  (:price-capacity-optimized "price-capacity-optimized"))

(smithy/sdk/shapes:define-structure spot-options common-lisp:nil
                                    ((allocation-strategy :target-type
                                      spot-allocation-strategy :member-name
                                      "allocationStrategy"))
                                    (:shape-name "SpotOptions"))

(smithy/sdk/shapes:define-list string-list :member
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type subnet-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list subnet-id-list :member subnet-id)

(smithy/sdk/shapes:define-type tag-key smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list tag-keys :member tag-key)

(smithy/sdk/shapes:define-input tag-resource-request common-lisp:nil
                                ((resource-arn :target-type arn :required
                                  common-lisp:t :member-name "resourceArn")
                                 (tags :target-type request-tag-map :required
                                  common-lisp:t :member-name "tags"))
                                (:shape-name "TagResourceRequest"))

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
                                (:error-code 429))

(smithy/sdk/shapes:define-input untag-resource-request common-lisp:nil
                                ((resource-arn :target-type arn :required
                                  common-lisp:t :member-name "resourceArn"
                                  :http-label common-lisp:t)
                                 (tag-keys :target-type tag-keys :required
                                  common-lisp:t :member-name "tagKeys"))
                                (:shape-name "UntagResourceRequest"))

(smithy/sdk/shapes:define-input update-compute-node-group-request
                                common-lisp:nil
                                ((cluster-identifier :target-type
                                  cluster-identifier :required common-lisp:t
                                  :member-name "clusterIdentifier")
                                 (compute-node-group-identifier :target-type
                                  compute-node-group-identifier :required
                                  common-lisp:t :member-name
                                  "computeNodeGroupIdentifier")
                                 (ami-id :target-type ami-id :member-name
                                  "amiId")
                                 (subnet-ids :target-type string-list
                                  :member-name "subnetIds")
                                 (custom-launch-template :target-type
                                  custom-launch-template :member-name
                                  "customLaunchTemplate")
                                 (purchase-option :target-type purchase-option
                                  :member-name "purchaseOption")
                                 (spot-options :target-type spot-options
                                  :member-name "spotOptions")
                                 (scaling-configuration :target-type
                                  scaling-configuration-request :member-name
                                  "scalingConfiguration")
                                 (iam-instance-profile-arn :target-type
                                  instance-profile-arn :member-name
                                  "iamInstanceProfileArn")
                                 (slurm-configuration :target-type
                                  update-compute-node-group-slurm-configuration-request
                                  :member-name "slurmConfiguration")
                                 (client-token :target-type sbclient-token
                                  :member-name "clientToken"))
                                (:shape-name "UpdateComputeNodeGroupRequest"))

(smithy/sdk/shapes:define-output update-compute-node-group-response
                                 common-lisp:nil
                                 ((compute-node-group :target-type
                                   compute-node-group :member-name
                                   "computeNodeGroup"))
                                 (:shape-name "UpdateComputeNodeGroupResponse"))

(smithy/sdk/shapes:define-structure
 update-compute-node-group-slurm-configuration-request common-lisp:nil
 ((slurm-custom-settings :target-type slurm-custom-settings :member-name
   "slurmCustomSettings"))
 (:shape-name "UpdateComputeNodeGroupSlurmConfigurationRequest"))

(smithy/sdk/shapes:define-input update-queue-request common-lisp:nil
                                ((cluster-identifier :target-type
                                  cluster-identifier :required common-lisp:t
                                  :member-name "clusterIdentifier")
                                 (queue-identifier :target-type
                                  queue-identifier :required common-lisp:t
                                  :member-name "queueIdentifier")
                                 (compute-node-group-configurations
                                  :target-type
                                  compute-node-group-configuration-list
                                  :member-name
                                  "computeNodeGroupConfigurations")
                                 (client-token :target-type sbclient-token
                                  :member-name "clientToken"))
                                (:shape-name "UpdateQueueRequest"))

(smithy/sdk/shapes:define-output update-queue-response common-lisp:nil
                                 ((queue :target-type queue :member-name
                                   "queue"))
                                 (:shape-name "UpdateQueueResponse"))

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

(smithy/sdk/operation:define-operation create-cluster :shape-name
                                       "CreateCluster" :input
                                       create-cluster-request :output
                                       create-cluster-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation create-compute-node-group :shape-name
                                       "CreateComputeNodeGroup" :input
                                       create-compute-node-group-request
                                       :output
                                       create-compute-node-group-response
                                       :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation create-queue :shape-name "CreateQueue"
                                       :input create-queue-request :output
                                       create-queue-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation delete-cluster :shape-name
                                       "DeleteCluster" :input
                                       delete-cluster-request :output
                                       delete-cluster-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation delete-compute-node-group :shape-name
                                       "DeleteComputeNodeGroup" :input
                                       delete-compute-node-group-request
                                       :output
                                       delete-compute-node-group-response
                                       :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation delete-queue :shape-name "DeleteQueue"
                                       :input delete-queue-request :output
                                       delete-queue-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation get-cluster :shape-name "GetCluster"
                                       :input get-cluster-request :output
                                       get-cluster-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation get-compute-node-group :shape-name
                                       "GetComputeNodeGroup" :input
                                       get-compute-node-group-request :output
                                       get-compute-node-group-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation get-queue :shape-name "GetQueue" :input
                                       get-queue-request :output
                                       get-queue-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation list-clusters :shape-name "ListClusters"
                                       :input list-clusters-request :output
                                       list-clusters-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation list-compute-node-groups :shape-name
                                       "ListComputeNodeGroups" :input
                                       list-compute-node-groups-request :output
                                       list-compute-node-groups-response
                                       :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation list-queues :shape-name "ListQueues"
                                       :input list-queues-request :output
                                       list-queues-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation list-tags-for-resource :shape-name
                                       "ListTagsForResource" :input
                                       list-tags-for-resource-request :output
                                       list-tags-for-resource-response :errors
                                       (resource-not-found-exception))

(smithy/sdk/operation:define-operation register-compute-node-group-instance
                                       :shape-name
                                       "RegisterComputeNodeGroupInstance"
                                       :input
                                       register-compute-node-group-instance-request
                                       :output
                                       register-compute-node-group-instance-response
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception))

(smithy/sdk/operation:define-operation tag-resource :shape-name "TagResource"
                                       :input tag-resource-request :output
                                       common-lisp:null :errors
                                       (resource-not-found-exception
                                        service-quota-exceeded-exception))

(smithy/sdk/operation:define-operation untag-resource :shape-name
                                       "UntagResource" :input
                                       untag-resource-request :output
                                       common-lisp:null :errors
                                       (resource-not-found-exception))

(smithy/sdk/operation:define-operation update-compute-node-group :shape-name
                                       "UpdateComputeNodeGroup" :input
                                       update-compute-node-group-request
                                       :output
                                       update-compute-node-group-response
                                       :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation update-queue :shape-name "UpdateQueue"
                                       :input update-queue-request :output
                                       update-queue-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception))
