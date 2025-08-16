(uiop/package:define-package #:pira/dax (:use)
                             (:export #:amazon-daxv3 #:availability-zone-list
                              #:aws-query-error-message #:change-type #:cluster
                              #:cluster-endpoint-encryption-type #:cluster-list
                              #:cluster-name-list #:create-cluster
                              #:create-parameter-group #:create-subnet-group
                              #:decrease-replication-factor #:delete-cluster
                              #:delete-parameter-group #:delete-subnet-group
                              #:describe-clusters #:describe-default-parameters
                              #:describe-events #:describe-parameter-groups
                              #:describe-parameters #:describe-subnet-groups
                              #:endpoint #:event #:event-list
                              #:exception-message #:increase-replication-factor
                              #:integer #:integer-optional #:is-modifiable
                              #:key-list #:list-tags #:node
                              #:node-identifier-list #:node-list
                              #:node-type-specific-value
                              #:node-type-specific-value-list
                              #:notification-configuration #:parameter
                              #:parameter-group #:parameter-group-list
                              #:parameter-group-name-list
                              #:parameter-group-status #:parameter-list
                              #:parameter-name-value
                              #:parameter-name-value-list #:parameter-type
                              #:reboot-node #:ssedescription #:sseenabled
                              #:ssespecification #:ssestatus
                              #:security-group-identifier-list
                              #:security-group-membership
                              #:security-group-membership-list #:source-type
                              #:string #:subnet #:subnet-group
                              #:subnet-group-list #:subnet-group-name-list
                              #:subnet-identifier-list #:subnet-list #:tstamp
                              #:tag #:tag-list #:tag-resource #:untag-resource
                              #:update-cluster #:update-parameter-group
                              #:update-subnet-group))
(common-lisp:in-package #:pira/dax)

(smithy/sdk/service:define-service amazon-daxv3 :shape-name "AmazonDAXV3"
                                   :version "2017-04-19" :title
                                   "Amazon DynamoDB Accelerator (DAX)"
                                   :xml-namespace
                                   '(:uri
                                     "http://dax.amazonaws.com/doc/2017-04-19/"
                                     :prefix common-lisp:nil)
                                   :traits
                                   '(("aws.api#service" ("sdkId" . "DAX")
                                      ("arnNamespace" . "dax")
                                      ("cloudFormationName" . "DAX")
                                      ("cloudTrailEventSource"
                                       . "dax.amazonaws.com")
                                      ("endpointPrefix" . "dax"))
                                     ("aws.auth#sigv4" ("name" . "dax"))
                                     ("aws.protocols#awsJson1_1")))

(smithy/sdk/shapes:define-list availability-zone-list :member string)

(smithy/sdk/shapes:define-type aws-query-error-message
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum change-type
    common-lisp:nil
  (:immediate "IMMEDIATE")
  (:requires-reboot "REQUIRES_REBOOT"))

(smithy/sdk/shapes:define-structure cluster common-lisp:nil
                                    ((cluster-name :target-type string
                                      :member-name "ClusterName")
                                     (description :target-type string
                                      :member-name "Description")
                                     (cluster-arn :target-type string
                                      :member-name "ClusterArn")
                                     (total-nodes :target-type integer-optional
                                      :member-name "TotalNodes")
                                     (active-nodes :target-type
                                      integer-optional :member-name
                                      "ActiveNodes")
                                     (node-type :target-type string
                                      :member-name "NodeType")
                                     (status :target-type string :member-name
                                      "Status")
                                     (cluster-discovery-endpoint :target-type
                                      endpoint :member-name
                                      "ClusterDiscoveryEndpoint")
                                     (node-ids-to-remove :target-type
                                      node-identifier-list :member-name
                                      "NodeIdsToRemove")
                                     (nodes :target-type node-list :member-name
                                      "Nodes")
                                     (preferred-maintenance-window :target-type
                                      string :member-name
                                      "PreferredMaintenanceWindow")
                                     (notification-configuration :target-type
                                      notification-configuration :member-name
                                      "NotificationConfiguration")
                                     (subnet-group :target-type string
                                      :member-name "SubnetGroup")
                                     (security-groups :target-type
                                      security-group-membership-list
                                      :member-name "SecurityGroups")
                                     (iam-role-arn :target-type string
                                      :member-name "IamRoleArn")
                                     (parameter-group :target-type
                                      parameter-group-status :member-name
                                      "ParameterGroup")
                                     (ssedescription :target-type
                                      ssedescription :member-name
                                      "SSEDescription")
                                     (cluster-endpoint-encryption-type
                                      :target-type
                                      cluster-endpoint-encryption-type
                                      :member-name
                                      "ClusterEndpointEncryptionType"))
                                    (:shape-name "Cluster"))

(smithy/sdk/shapes:define-error cluster-already-exists-fault common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name "ClusterAlreadyExistsFault")
                                (:error-name "ClusterAlreadyExists")
                                (:error-code 400))

(smithy/sdk/shapes:define-enum cluster-endpoint-encryption-type
    common-lisp:nil
  (:none "NONE")
  (:tls "TLS"))

(smithy/sdk/shapes:define-list cluster-list :member cluster)

(smithy/sdk/shapes:define-list cluster-name-list :member string)

(smithy/sdk/shapes:define-error cluster-not-found-fault common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name "ClusterNotFoundFault")
                                (:error-name "ClusterNotFound")
                                (:error-code 404))

(smithy/sdk/shapes:define-error cluster-quota-for-customer-exceeded-fault
                                common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name
                                 "ClusterQuotaForCustomerExceededFault")
                                (:error-name "ClusterQuotaForCustomerExceeded")
                                (:error-code 400))

(smithy/sdk/shapes:define-input create-cluster-request common-lisp:nil
                                ((cluster-name :target-type string :required
                                  common-lisp:t :member-name "ClusterName")
                                 (node-type :target-type string :required
                                  common-lisp:t :member-name "NodeType")
                                 (description :target-type string :member-name
                                  "Description")
                                 (replication-factor :target-type integer
                                  :required common-lisp:t :member-name
                                  "ReplicationFactor")
                                 (availability-zones :target-type
                                  availability-zone-list :member-name
                                  "AvailabilityZones")
                                 (subnet-group-name :target-type string
                                  :member-name "SubnetGroupName")
                                 (security-group-ids :target-type
                                  security-group-identifier-list :member-name
                                  "SecurityGroupIds")
                                 (preferred-maintenance-window :target-type
                                  string :member-name
                                  "PreferredMaintenanceWindow")
                                 (notification-topic-arn :target-type string
                                  :member-name "NotificationTopicArn")
                                 (iam-role-arn :target-type string :required
                                  common-lisp:t :member-name "IamRoleArn")
                                 (parameter-group-name :target-type string
                                  :member-name "ParameterGroupName")
                                 (tags :target-type tag-list :member-name
                                  "Tags")
                                 (ssespecification :target-type
                                  ssespecification :member-name
                                  "SSESpecification")
                                 (cluster-endpoint-encryption-type :target-type
                                  cluster-endpoint-encryption-type :member-name
                                  "ClusterEndpointEncryptionType"))
                                (:shape-name "CreateClusterRequest"))

(smithy/sdk/shapes:define-output create-cluster-response common-lisp:nil
                                 ((cluster :target-type cluster :member-name
                                   "Cluster"))
                                 (:shape-name "CreateClusterResponse"))

(smithy/sdk/shapes:define-input create-parameter-group-request common-lisp:nil
                                ((parameter-group-name :target-type string
                                  :required common-lisp:t :member-name
                                  "ParameterGroupName")
                                 (description :target-type string :member-name
                                  "Description"))
                                (:shape-name "CreateParameterGroupRequest"))

(smithy/sdk/shapes:define-output create-parameter-group-response
                                 common-lisp:nil
                                 ((parameter-group :target-type parameter-group
                                   :member-name "ParameterGroup"))
                                 (:shape-name "CreateParameterGroupResponse"))

(smithy/sdk/shapes:define-input create-subnet-group-request common-lisp:nil
                                ((subnet-group-name :target-type string
                                  :required common-lisp:t :member-name
                                  "SubnetGroupName")
                                 (description :target-type string :member-name
                                  "Description")
                                 (subnet-ids :target-type
                                  subnet-identifier-list :required
                                  common-lisp:t :member-name "SubnetIds"))
                                (:shape-name "CreateSubnetGroupRequest"))

(smithy/sdk/shapes:define-output create-subnet-group-response common-lisp:nil
                                 ((subnet-group :target-type subnet-group
                                   :member-name "SubnetGroup"))
                                 (:shape-name "CreateSubnetGroupResponse"))

(smithy/sdk/shapes:define-input decrease-replication-factor-request
                                common-lisp:nil
                                ((cluster-name :target-type string :required
                                  common-lisp:t :member-name "ClusterName")
                                 (new-replication-factor :target-type integer
                                  :required common-lisp:t :member-name
                                  "NewReplicationFactor")
                                 (availability-zones :target-type
                                  availability-zone-list :member-name
                                  "AvailabilityZones")
                                 (node-ids-to-remove :target-type
                                  node-identifier-list :member-name
                                  "NodeIdsToRemove"))
                                (:shape-name
                                 "DecreaseReplicationFactorRequest"))

(smithy/sdk/shapes:define-output decrease-replication-factor-response
                                 common-lisp:nil
                                 ((cluster :target-type cluster :member-name
                                   "Cluster"))
                                 (:shape-name
                                  "DecreaseReplicationFactorResponse"))

(smithy/sdk/shapes:define-input delete-cluster-request common-lisp:nil
                                ((cluster-name :target-type string :required
                                  common-lisp:t :member-name "ClusterName"))
                                (:shape-name "DeleteClusterRequest"))

(smithy/sdk/shapes:define-output delete-cluster-response common-lisp:nil
                                 ((cluster :target-type cluster :member-name
                                   "Cluster"))
                                 (:shape-name "DeleteClusterResponse"))

(smithy/sdk/shapes:define-input delete-parameter-group-request common-lisp:nil
                                ((parameter-group-name :target-type string
                                  :required common-lisp:t :member-name
                                  "ParameterGroupName"))
                                (:shape-name "DeleteParameterGroupRequest"))

(smithy/sdk/shapes:define-output delete-parameter-group-response
                                 common-lisp:nil
                                 ((deletion-message :target-type string
                                   :member-name "DeletionMessage"))
                                 (:shape-name "DeleteParameterGroupResponse"))

(smithy/sdk/shapes:define-input delete-subnet-group-request common-lisp:nil
                                ((subnet-group-name :target-type string
                                  :required common-lisp:t :member-name
                                  "SubnetGroupName"))
                                (:shape-name "DeleteSubnetGroupRequest"))

(smithy/sdk/shapes:define-output delete-subnet-group-response common-lisp:nil
                                 ((deletion-message :target-type string
                                   :member-name "DeletionMessage"))
                                 (:shape-name "DeleteSubnetGroupResponse"))

(smithy/sdk/shapes:define-input describe-clusters-request common-lisp:nil
                                ((cluster-names :target-type cluster-name-list
                                  :member-name "ClusterNames")
                                 (max-results :target-type integer-optional
                                  :member-name "MaxResults")
                                 (next-token :target-type string :member-name
                                  "NextToken"))
                                (:shape-name "DescribeClustersRequest"))

(smithy/sdk/shapes:define-output describe-clusters-response common-lisp:nil
                                 ((next-token :target-type string :member-name
                                   "NextToken")
                                  (clusters :target-type cluster-list
                                   :member-name "Clusters"))
                                 (:shape-name "DescribeClustersResponse"))

(smithy/sdk/shapes:define-input describe-default-parameters-request
                                common-lisp:nil
                                ((max-results :target-type integer-optional
                                  :member-name "MaxResults")
                                 (next-token :target-type string :member-name
                                  "NextToken"))
                                (:shape-name
                                 "DescribeDefaultParametersRequest"))

(smithy/sdk/shapes:define-output describe-default-parameters-response
                                 common-lisp:nil
                                 ((next-token :target-type string :member-name
                                   "NextToken")
                                  (parameters :target-type parameter-list
                                   :member-name "Parameters"))
                                 (:shape-name
                                  "DescribeDefaultParametersResponse"))

(smithy/sdk/shapes:define-input describe-events-request common-lisp:nil
                                ((source-name :target-type string :member-name
                                  "SourceName")
                                 (source-type :target-type source-type
                                  :member-name "SourceType")
                                 (start-time :target-type tstamp :member-name
                                  "StartTime")
                                 (end-time :target-type tstamp :member-name
                                  "EndTime")
                                 (duration :target-type integer-optional
                                  :member-name "Duration")
                                 (max-results :target-type integer-optional
                                  :member-name "MaxResults")
                                 (next-token :target-type string :member-name
                                  "NextToken"))
                                (:shape-name "DescribeEventsRequest"))

(smithy/sdk/shapes:define-output describe-events-response common-lisp:nil
                                 ((next-token :target-type string :member-name
                                   "NextToken")
                                  (events :target-type event-list :member-name
                                   "Events"))
                                 (:shape-name "DescribeEventsResponse"))

(smithy/sdk/shapes:define-input describe-parameter-groups-request
                                common-lisp:nil
                                ((parameter-group-names :target-type
                                  parameter-group-name-list :member-name
                                  "ParameterGroupNames")
                                 (max-results :target-type integer-optional
                                  :member-name "MaxResults")
                                 (next-token :target-type string :member-name
                                  "NextToken"))
                                (:shape-name "DescribeParameterGroupsRequest"))

(smithy/sdk/shapes:define-output describe-parameter-groups-response
                                 common-lisp:nil
                                 ((next-token :target-type string :member-name
                                   "NextToken")
                                  (parameter-groups :target-type
                                   parameter-group-list :member-name
                                   "ParameterGroups"))
                                 (:shape-name
                                  "DescribeParameterGroupsResponse"))

(smithy/sdk/shapes:define-input describe-parameters-request common-lisp:nil
                                ((parameter-group-name :target-type string
                                  :required common-lisp:t :member-name
                                  "ParameterGroupName")
                                 (source :target-type string :member-name
                                  "Source")
                                 (max-results :target-type integer-optional
                                  :member-name "MaxResults")
                                 (next-token :target-type string :member-name
                                  "NextToken"))
                                (:shape-name "DescribeParametersRequest"))

(smithy/sdk/shapes:define-output describe-parameters-response common-lisp:nil
                                 ((next-token :target-type string :member-name
                                   "NextToken")
                                  (parameters :target-type parameter-list
                                   :member-name "Parameters"))
                                 (:shape-name "DescribeParametersResponse"))

(smithy/sdk/shapes:define-input describe-subnet-groups-request common-lisp:nil
                                ((subnet-group-names :target-type
                                  subnet-group-name-list :member-name
                                  "SubnetGroupNames")
                                 (max-results :target-type integer-optional
                                  :member-name "MaxResults")
                                 (next-token :target-type string :member-name
                                  "NextToken"))
                                (:shape-name "DescribeSubnetGroupsRequest"))

(smithy/sdk/shapes:define-output describe-subnet-groups-response
                                 common-lisp:nil
                                 ((next-token :target-type string :member-name
                                   "NextToken")
                                  (subnet-groups :target-type subnet-group-list
                                   :member-name "SubnetGroups"))
                                 (:shape-name "DescribeSubnetGroupsResponse"))

(smithy/sdk/shapes:define-structure endpoint common-lisp:nil
                                    ((address :target-type string :member-name
                                      "Address")
                                     (port :target-type integer :member-name
                                      "Port")
                                     (url :target-type string :member-name
                                      "URL"))
                                    (:shape-name "Endpoint"))

(smithy/sdk/shapes:define-structure event common-lisp:nil
                                    ((source-name :target-type string
                                      :member-name "SourceName")
                                     (source-type :target-type source-type
                                      :member-name "SourceType")
                                     (message :target-type string :member-name
                                      "Message")
                                     (date :target-type tstamp :member-name
                                      "Date"))
                                    (:shape-name "Event"))

(smithy/sdk/shapes:define-list event-list :member event)

(smithy/sdk/shapes:define-type exception-message smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input increase-replication-factor-request
                                common-lisp:nil
                                ((cluster-name :target-type string :required
                                  common-lisp:t :member-name "ClusterName")
                                 (new-replication-factor :target-type integer
                                  :required common-lisp:t :member-name
                                  "NewReplicationFactor")
                                 (availability-zones :target-type
                                  availability-zone-list :member-name
                                  "AvailabilityZones"))
                                (:shape-name
                                 "IncreaseReplicationFactorRequest"))

(smithy/sdk/shapes:define-output increase-replication-factor-response
                                 common-lisp:nil
                                 ((cluster :target-type cluster :member-name
                                   "Cluster"))
                                 (:shape-name
                                  "IncreaseReplicationFactorResponse"))

(smithy/sdk/shapes:define-error insufficient-cluster-capacity-fault
                                common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name
                                 "InsufficientClusterCapacityFault")
                                (:error-name "InsufficientClusterCapacity")
                                (:error-code 400))

(smithy/sdk/shapes:define-type integer smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type integer-optional smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-error invalid-arnfault common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name "InvalidARNFault")
                                (:error-name "InvalidARN") (:error-code 400))

(smithy/sdk/shapes:define-error invalid-cluster-state-fault common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name "InvalidClusterStateFault")
                                (:error-name "InvalidClusterState")
                                (:error-code 400))

(smithy/sdk/shapes:define-error invalid-parameter-combination-exception
                                common-lisp:nil
                                ((message :target-type aws-query-error-message
                                  :member-name "message"))
                                (:shape-name
                                 "InvalidParameterCombinationException")
                                (:error-name "InvalidParameterCombination")
                                (:error-code 400))

(smithy/sdk/shapes:define-error invalid-parameter-group-state-fault
                                common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name "InvalidParameterGroupStateFault")
                                (:error-name "InvalidParameterGroupState")
                                (:error-code 400))

(smithy/sdk/shapes:define-error invalid-parameter-value-exception
                                common-lisp:nil
                                ((message :target-type aws-query-error-message
                                  :member-name "message"))
                                (:shape-name "InvalidParameterValueException")
                                (:error-name "InvalidParameterValue")
                                (:error-code 400))

(smithy/sdk/shapes:define-error invalid-subnet common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name "InvalidSubnet")
                                (:error-name "InvalidSubnet") (:error-code 400))

(smithy/sdk/shapes:define-error invalid-vpcnetwork-state-fault common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name "InvalidVPCNetworkStateFault")
                                (:error-name "InvalidVPCNetworkStateFault")
                                (:error-code 400))

(smithy/sdk/shapes:define-enum is-modifiable
    common-lisp:nil
  (:true "TRUE")
  (:false "FALSE")
  (:conditional "CONDITIONAL"))

(smithy/sdk/shapes:define-list key-list :member string)

(smithy/sdk/shapes:define-input list-tags-request common-lisp:nil
                                ((resource-name :target-type string :required
                                  common-lisp:t :member-name "ResourceName")
                                 (next-token :target-type string :member-name
                                  "NextToken"))
                                (:shape-name "ListTagsRequest"))

(smithy/sdk/shapes:define-output list-tags-response common-lisp:nil
                                 ((tags :target-type tag-list :member-name
                                   "Tags")
                                  (next-token :target-type string :member-name
                                   "NextToken"))
                                 (:shape-name "ListTagsResponse"))

(smithy/sdk/shapes:define-structure node common-lisp:nil
                                    ((node-id :target-type string :member-name
                                      "NodeId")
                                     (endpoint :target-type endpoint
                                      :member-name "Endpoint")
                                     (node-create-time :target-type tstamp
                                      :member-name "NodeCreateTime")
                                     (availability-zone :target-type string
                                      :member-name "AvailabilityZone")
                                     (node-status :target-type string
                                      :member-name "NodeStatus")
                                     (parameter-group-status :target-type
                                      string :member-name
                                      "ParameterGroupStatus"))
                                    (:shape-name "Node"))

(smithy/sdk/shapes:define-list node-identifier-list :member string)

(smithy/sdk/shapes:define-list node-list :member node)

(smithy/sdk/shapes:define-error node-not-found-fault common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name "NodeNotFoundFault")
                                (:error-name "NodeNotFound") (:error-code 404))

(smithy/sdk/shapes:define-error node-quota-for-cluster-exceeded-fault
                                common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name
                                 "NodeQuotaForClusterExceededFault")
                                (:error-name "NodeQuotaForClusterExceeded")
                                (:error-code 400))

(smithy/sdk/shapes:define-error node-quota-for-customer-exceeded-fault
                                common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name
                                 "NodeQuotaForCustomerExceededFault")
                                (:error-name "NodeQuotaForCustomerExceeded")
                                (:error-code 400))

(smithy/sdk/shapes:define-structure node-type-specific-value common-lisp:nil
                                    ((node-type :target-type string
                                      :member-name "NodeType")
                                     (value :target-type string :member-name
                                      "Value"))
                                    (:shape-name "NodeTypeSpecificValue"))

(smithy/sdk/shapes:define-list node-type-specific-value-list :member
                               node-type-specific-value)

(smithy/sdk/shapes:define-structure notification-configuration common-lisp:nil
                                    ((topic-arn :target-type string
                                      :member-name "TopicArn")
                                     (topic-status :target-type string
                                      :member-name "TopicStatus"))
                                    (:shape-name "NotificationConfiguration"))

(smithy/sdk/shapes:define-structure parameter common-lisp:nil
                                    ((parameter-name :target-type string
                                      :member-name "ParameterName")
                                     (parameter-type :target-type
                                      parameter-type :member-name
                                      "ParameterType")
                                     (parameter-value :target-type string
                                      :member-name "ParameterValue")
                                     (node-type-specific-values :target-type
                                      node-type-specific-value-list
                                      :member-name "NodeTypeSpecificValues")
                                     (description :target-type string
                                      :member-name "Description")
                                     (source :target-type string :member-name
                                      "Source")
                                     (data-type :target-type string
                                      :member-name "DataType")
                                     (allowed-values :target-type string
                                      :member-name "AllowedValues")
                                     (is-modifiable :target-type is-modifiable
                                      :member-name "IsModifiable")
                                     (change-type :target-type change-type
                                      :member-name "ChangeType"))
                                    (:shape-name "Parameter"))

(smithy/sdk/shapes:define-structure parameter-group common-lisp:nil
                                    ((parameter-group-name :target-type string
                                      :member-name "ParameterGroupName")
                                     (description :target-type string
                                      :member-name "Description"))
                                    (:shape-name "ParameterGroup"))

(smithy/sdk/shapes:define-error parameter-group-already-exists-fault
                                common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name
                                 "ParameterGroupAlreadyExistsFault")
                                (:error-name "ParameterGroupAlreadyExists")
                                (:error-code 400))

(smithy/sdk/shapes:define-list parameter-group-list :member parameter-group)

(smithy/sdk/shapes:define-list parameter-group-name-list :member string)

(smithy/sdk/shapes:define-error parameter-group-not-found-fault common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name "ParameterGroupNotFoundFault")
                                (:error-name "ParameterGroupNotFound")
                                (:error-code 404))

(smithy/sdk/shapes:define-error parameter-group-quota-exceeded-fault
                                common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name
                                 "ParameterGroupQuotaExceededFault")
                                (:error-name "ParameterGroupQuotaExceeded")
                                (:error-code 400))

(smithy/sdk/shapes:define-structure parameter-group-status common-lisp:nil
                                    ((parameter-group-name :target-type string
                                      :member-name "ParameterGroupName")
                                     (parameter-apply-status :target-type
                                      string :member-name
                                      "ParameterApplyStatus")
                                     (node-ids-to-reboot :target-type
                                      node-identifier-list :member-name
                                      "NodeIdsToReboot"))
                                    (:shape-name "ParameterGroupStatus"))

(smithy/sdk/shapes:define-list parameter-list :member parameter)

(smithy/sdk/shapes:define-structure parameter-name-value common-lisp:nil
                                    ((parameter-name :target-type string
                                      :member-name "ParameterName")
                                     (parameter-value :target-type string
                                      :member-name "ParameterValue"))
                                    (:shape-name "ParameterNameValue"))

(smithy/sdk/shapes:define-list parameter-name-value-list :member
                               parameter-name-value)

(smithy/sdk/shapes:define-enum parameter-type
    common-lisp:nil
  (:default "DEFAULT")
  (:node-type-specific "NODE_TYPE_SPECIFIC"))

(smithy/sdk/shapes:define-input reboot-node-request common-lisp:nil
                                ((cluster-name :target-type string :required
                                  common-lisp:t :member-name "ClusterName")
                                 (node-id :target-type string :required
                                  common-lisp:t :member-name "NodeId"))
                                (:shape-name "RebootNodeRequest"))

(smithy/sdk/shapes:define-output reboot-node-response common-lisp:nil
                                 ((cluster :target-type cluster :member-name
                                   "Cluster"))
                                 (:shape-name "RebootNodeResponse"))

(smithy/sdk/shapes:define-structure ssedescription common-lisp:nil
                                    ((status :target-type ssestatus
                                      :member-name "Status"))
                                    (:shape-name "SSEDescription"))

(smithy/sdk/shapes:define-type sseenabled smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-structure ssespecification common-lisp:nil
                                    ((enabled :target-type sseenabled :required
                                      common-lisp:t :member-name "Enabled"))
                                    (:shape-name "SSESpecification"))

(smithy/sdk/shapes:define-enum ssestatus
    common-lisp:nil
  (:enabling "ENABLING")
  (:enabled "ENABLED")
  (:disabling "DISABLING")
  (:disabled "DISABLED"))

(smithy/sdk/shapes:define-list security-group-identifier-list :member string)

(smithy/sdk/shapes:define-structure security-group-membership common-lisp:nil
                                    ((security-group-identifier :target-type
                                      string :member-name
                                      "SecurityGroupIdentifier")
                                     (status :target-type string :member-name
                                      "Status"))
                                    (:shape-name "SecurityGroupMembership"))

(smithy/sdk/shapes:define-list security-group-membership-list :member
                               security-group-membership)

(smithy/sdk/shapes:define-error service-linked-role-not-found-fault
                                common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name "ServiceLinkedRoleNotFoundFault")
                                (:error-name "ServiceLinkedRoleNotFoundFault")
                                (:error-code 400))

(smithy/sdk/shapes:define-error service-quota-exceeded-exception
                                common-lisp:nil common-lisp:nil
                                (:shape-name "ServiceQuotaExceededException")
                                (:error-name "ServiceQuotaExceeded")
                                (:error-code 402))

(smithy/sdk/shapes:define-enum source-type
    common-lisp:nil
  (:cluster "CLUSTER")
  (:parameter-group "PARAMETER_GROUP")
  (:subnet-group "SUBNET_GROUP"))

(smithy/sdk/shapes:define-type string smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure subnet common-lisp:nil
                                    ((subnet-identifier :target-type string
                                      :member-name "SubnetIdentifier")
                                     (subnet-availability-zone :target-type
                                      string :member-name
                                      "SubnetAvailabilityZone"))
                                    (:shape-name "Subnet"))

(smithy/sdk/shapes:define-structure subnet-group common-lisp:nil
                                    ((subnet-group-name :target-type string
                                      :member-name "SubnetGroupName")
                                     (description :target-type string
                                      :member-name "Description")
                                     (vpc-id :target-type string :member-name
                                      "VpcId")
                                     (subnets :target-type subnet-list
                                      :member-name "Subnets"))
                                    (:shape-name "SubnetGroup"))

(smithy/sdk/shapes:define-error subnet-group-already-exists-fault
                                common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name "SubnetGroupAlreadyExistsFault")
                                (:error-name "SubnetGroupAlreadyExists")
                                (:error-code 400))

(smithy/sdk/shapes:define-error subnet-group-in-use-fault common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name "SubnetGroupInUseFault")
                                (:error-name "SubnetGroupInUse")
                                (:error-code 400))

(smithy/sdk/shapes:define-list subnet-group-list :member subnet-group)

(smithy/sdk/shapes:define-list subnet-group-name-list :member string)

(smithy/sdk/shapes:define-error subnet-group-not-found-fault common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name "SubnetGroupNotFoundFault")
                                (:error-name "SubnetGroupNotFoundFault")
                                (:error-code 404))

(smithy/sdk/shapes:define-error subnet-group-quota-exceeded-fault
                                common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name "SubnetGroupQuotaExceededFault")
                                (:error-name "SubnetGroupQuotaExceeded")
                                (:error-code 400))

(smithy/sdk/shapes:define-list subnet-identifier-list :member string)

(smithy/sdk/shapes:define-error subnet-in-use common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name "SubnetInUse")
                                (:error-name "SubnetInUse") (:error-code 400))

(smithy/sdk/shapes:define-list subnet-list :member subnet)

(smithy/sdk/shapes:define-error subnet-quota-exceeded-fault common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name "SubnetQuotaExceededFault")
                                (:error-name "SubnetQuotaExceededFault")
                                (:error-code 400))

(smithy/sdk/shapes:define-type tstamp smithy/sdk/smithy-types:timestamp)

(smithy/sdk/shapes:define-structure tag common-lisp:nil
                                    ((key :target-type string :member-name
                                      "Key")
                                     (value :target-type string :member-name
                                      "Value"))
                                    (:shape-name "Tag"))

(smithy/sdk/shapes:define-list tag-list :member tag)

(smithy/sdk/shapes:define-error tag-not-found-fault common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name "TagNotFoundFault")
                                (:error-name "TagNotFound") (:error-code 404))

(smithy/sdk/shapes:define-error tag-quota-per-resource-exceeded common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name "TagQuotaPerResourceExceeded")
                                (:error-name "TagQuotaPerResourceExceeded")
                                (:error-code 400))

(smithy/sdk/shapes:define-input tag-resource-request common-lisp:nil
                                ((resource-name :target-type string :required
                                  common-lisp:t :member-name "ResourceName")
                                 (tags :target-type tag-list :required
                                  common-lisp:t :member-name "Tags"))
                                (:shape-name "TagResourceRequest"))

(smithy/sdk/shapes:define-output tag-resource-response common-lisp:nil
                                 ((tags :target-type tag-list :member-name
                                   "Tags"))
                                 (:shape-name "TagResourceResponse"))

(smithy/sdk/shapes:define-input untag-resource-request common-lisp:nil
                                ((resource-name :target-type string :required
                                  common-lisp:t :member-name "ResourceName")
                                 (tag-keys :target-type key-list :required
                                  common-lisp:t :member-name "TagKeys"))
                                (:shape-name "UntagResourceRequest"))

(smithy/sdk/shapes:define-output untag-resource-response common-lisp:nil
                                 ((tags :target-type tag-list :member-name
                                   "Tags"))
                                 (:shape-name "UntagResourceResponse"))

(smithy/sdk/shapes:define-input update-cluster-request common-lisp:nil
                                ((cluster-name :target-type string :required
                                  common-lisp:t :member-name "ClusterName")
                                 (description :target-type string :member-name
                                  "Description")
                                 (preferred-maintenance-window :target-type
                                  string :member-name
                                  "PreferredMaintenanceWindow")
                                 (notification-topic-arn :target-type string
                                  :member-name "NotificationTopicArn")
                                 (notification-topic-status :target-type string
                                  :member-name "NotificationTopicStatus")
                                 (parameter-group-name :target-type string
                                  :member-name "ParameterGroupName")
                                 (security-group-ids :target-type
                                  security-group-identifier-list :member-name
                                  "SecurityGroupIds"))
                                (:shape-name "UpdateClusterRequest"))

(smithy/sdk/shapes:define-output update-cluster-response common-lisp:nil
                                 ((cluster :target-type cluster :member-name
                                   "Cluster"))
                                 (:shape-name "UpdateClusterResponse"))

(smithy/sdk/shapes:define-input update-parameter-group-request common-lisp:nil
                                ((parameter-group-name :target-type string
                                  :required common-lisp:t :member-name
                                  "ParameterGroupName")
                                 (parameter-name-values :target-type
                                  parameter-name-value-list :required
                                  common-lisp:t :member-name
                                  "ParameterNameValues"))
                                (:shape-name "UpdateParameterGroupRequest"))

(smithy/sdk/shapes:define-output update-parameter-group-response
                                 common-lisp:nil
                                 ((parameter-group :target-type parameter-group
                                   :member-name "ParameterGroup"))
                                 (:shape-name "UpdateParameterGroupResponse"))

(smithy/sdk/shapes:define-input update-subnet-group-request common-lisp:nil
                                ((subnet-group-name :target-type string
                                  :required common-lisp:t :member-name
                                  "SubnetGroupName")
                                 (description :target-type string :member-name
                                  "Description")
                                 (subnet-ids :target-type
                                  subnet-identifier-list :member-name
                                  "SubnetIds"))
                                (:shape-name "UpdateSubnetGroupRequest"))

(smithy/sdk/shapes:define-output update-subnet-group-response common-lisp:nil
                                 ((subnet-group :target-type subnet-group
                                   :member-name "SubnetGroup"))
                                 (:shape-name "UpdateSubnetGroupResponse"))

(smithy/sdk/operation:define-operation create-cluster :shape-name
                                       "CreateCluster" :input
                                       create-cluster-request :output
                                       create-cluster-response :errors
                                       (cluster-already-exists-fault
                                        cluster-quota-for-customer-exceeded-fault
                                        insufficient-cluster-capacity-fault
                                        invalid-cluster-state-fault
                                        invalid-parameter-combination-exception
                                        invalid-parameter-group-state-fault
                                        invalid-parameter-value-exception
                                        invalid-vpcnetwork-state-fault
                                        node-quota-for-cluster-exceeded-fault
                                        node-quota-for-customer-exceeded-fault
                                        parameter-group-not-found-fault
                                        service-linked-role-not-found-fault
                                        service-quota-exceeded-exception
                                        subnet-group-not-found-fault
                                        tag-quota-per-resource-exceeded))

(smithy/sdk/operation:define-operation create-parameter-group :shape-name
                                       "CreateParameterGroup" :input
                                       create-parameter-group-request :output
                                       create-parameter-group-response :errors
                                       (invalid-parameter-combination-exception
                                        invalid-parameter-group-state-fault
                                        invalid-parameter-value-exception
                                        parameter-group-already-exists-fault
                                        parameter-group-quota-exceeded-fault
                                        service-linked-role-not-found-fault))

(smithy/sdk/operation:define-operation create-subnet-group :shape-name
                                       "CreateSubnetGroup" :input
                                       create-subnet-group-request :output
                                       create-subnet-group-response :errors
                                       (invalid-subnet
                                        service-linked-role-not-found-fault
                                        subnet-group-already-exists-fault
                                        subnet-group-quota-exceeded-fault
                                        subnet-quota-exceeded-fault))

(smithy/sdk/operation:define-operation decrease-replication-factor :shape-name
                                       "DecreaseReplicationFactor" :input
                                       decrease-replication-factor-request
                                       :output
                                       decrease-replication-factor-response
                                       :errors
                                       (cluster-not-found-fault
                                        invalid-cluster-state-fault
                                        invalid-parameter-combination-exception
                                        invalid-parameter-value-exception
                                        node-not-found-fault
                                        service-linked-role-not-found-fault))

(smithy/sdk/operation:define-operation delete-cluster :shape-name
                                       "DeleteCluster" :input
                                       delete-cluster-request :output
                                       delete-cluster-response :errors
                                       (cluster-not-found-fault
                                        invalid-cluster-state-fault
                                        invalid-parameter-combination-exception
                                        invalid-parameter-value-exception
                                        service-linked-role-not-found-fault))

(smithy/sdk/operation:define-operation delete-parameter-group :shape-name
                                       "DeleteParameterGroup" :input
                                       delete-parameter-group-request :output
                                       delete-parameter-group-response :errors
                                       (invalid-parameter-combination-exception
                                        invalid-parameter-group-state-fault
                                        invalid-parameter-value-exception
                                        parameter-group-not-found-fault
                                        service-linked-role-not-found-fault))

(smithy/sdk/operation:define-operation delete-subnet-group :shape-name
                                       "DeleteSubnetGroup" :input
                                       delete-subnet-group-request :output
                                       delete-subnet-group-response :errors
                                       (service-linked-role-not-found-fault
                                        subnet-group-in-use-fault
                                        subnet-group-not-found-fault))

(smithy/sdk/operation:define-operation describe-clusters :shape-name
                                       "DescribeClusters" :input
                                       describe-clusters-request :output
                                       describe-clusters-response :errors
                                       (cluster-not-found-fault
                                        invalid-parameter-combination-exception
                                        invalid-parameter-value-exception
                                        service-linked-role-not-found-fault))

(smithy/sdk/operation:define-operation describe-default-parameters :shape-name
                                       "DescribeDefaultParameters" :input
                                       describe-default-parameters-request
                                       :output
                                       describe-default-parameters-response
                                       :errors
                                       (invalid-parameter-combination-exception
                                        invalid-parameter-value-exception
                                        service-linked-role-not-found-fault))

(smithy/sdk/operation:define-operation describe-events :shape-name
                                       "DescribeEvents" :input
                                       describe-events-request :output
                                       describe-events-response :errors
                                       (invalid-parameter-combination-exception
                                        invalid-parameter-value-exception
                                        service-linked-role-not-found-fault))

(smithy/sdk/operation:define-operation describe-parameter-groups :shape-name
                                       "DescribeParameterGroups" :input
                                       describe-parameter-groups-request
                                       :output
                                       describe-parameter-groups-response
                                       :errors
                                       (invalid-parameter-combination-exception
                                        invalid-parameter-value-exception
                                        parameter-group-not-found-fault
                                        service-linked-role-not-found-fault))

(smithy/sdk/operation:define-operation describe-parameters :shape-name
                                       "DescribeParameters" :input
                                       describe-parameters-request :output
                                       describe-parameters-response :errors
                                       (invalid-parameter-combination-exception
                                        invalid-parameter-value-exception
                                        parameter-group-not-found-fault
                                        service-linked-role-not-found-fault))

(smithy/sdk/operation:define-operation describe-subnet-groups :shape-name
                                       "DescribeSubnetGroups" :input
                                       describe-subnet-groups-request :output
                                       describe-subnet-groups-response :errors
                                       (service-linked-role-not-found-fault
                                        subnet-group-not-found-fault))

(smithy/sdk/operation:define-operation increase-replication-factor :shape-name
                                       "IncreaseReplicationFactor" :input
                                       increase-replication-factor-request
                                       :output
                                       increase-replication-factor-response
                                       :errors
                                       (cluster-not-found-fault
                                        insufficient-cluster-capacity-fault
                                        invalid-cluster-state-fault
                                        invalid-parameter-combination-exception
                                        invalid-parameter-value-exception
                                        invalid-vpcnetwork-state-fault
                                        node-quota-for-cluster-exceeded-fault
                                        node-quota-for-customer-exceeded-fault
                                        service-linked-role-not-found-fault))

(smithy/sdk/operation:define-operation list-tags :shape-name "ListTags" :input
                                       list-tags-request :output
                                       list-tags-response :errors
                                       (cluster-not-found-fault
                                        invalid-arnfault
                                        invalid-cluster-state-fault
                                        invalid-parameter-combination-exception
                                        invalid-parameter-value-exception
                                        service-linked-role-not-found-fault))

(smithy/sdk/operation:define-operation reboot-node :shape-name "RebootNode"
                                       :input reboot-node-request :output
                                       reboot-node-response :errors
                                       (cluster-not-found-fault
                                        invalid-cluster-state-fault
                                        invalid-parameter-combination-exception
                                        invalid-parameter-value-exception
                                        node-not-found-fault
                                        service-linked-role-not-found-fault))

(smithy/sdk/operation:define-operation tag-resource :shape-name "TagResource"
                                       :input tag-resource-request :output
                                       tag-resource-response :errors
                                       (cluster-not-found-fault
                                        invalid-arnfault
                                        invalid-cluster-state-fault
                                        invalid-parameter-combination-exception
                                        invalid-parameter-value-exception
                                        service-linked-role-not-found-fault
                                        tag-quota-per-resource-exceeded))

(smithy/sdk/operation:define-operation untag-resource :shape-name
                                       "UntagResource" :input
                                       untag-resource-request :output
                                       untag-resource-response :errors
                                       (cluster-not-found-fault
                                        invalid-arnfault
                                        invalid-cluster-state-fault
                                        invalid-parameter-combination-exception
                                        invalid-parameter-value-exception
                                        service-linked-role-not-found-fault
                                        tag-not-found-fault))

(smithy/sdk/operation:define-operation update-cluster :shape-name
                                       "UpdateCluster" :input
                                       update-cluster-request :output
                                       update-cluster-response :errors
                                       (cluster-not-found-fault
                                        invalid-cluster-state-fault
                                        invalid-parameter-combination-exception
                                        invalid-parameter-group-state-fault
                                        invalid-parameter-value-exception
                                        parameter-group-not-found-fault
                                        service-linked-role-not-found-fault))

(smithy/sdk/operation:define-operation update-parameter-group :shape-name
                                       "UpdateParameterGroup" :input
                                       update-parameter-group-request :output
                                       update-parameter-group-response :errors
                                       (invalid-parameter-combination-exception
                                        invalid-parameter-group-state-fault
                                        invalid-parameter-value-exception
                                        parameter-group-not-found-fault
                                        service-linked-role-not-found-fault))

(smithy/sdk/operation:define-operation update-subnet-group :shape-name
                                       "UpdateSubnetGroup" :input
                                       update-subnet-group-request :output
                                       update-subnet-group-response :errors
                                       (invalid-subnet
                                        service-linked-role-not-found-fault
                                        subnet-group-not-found-fault
                                        subnet-in-use
                                        subnet-quota-exceeded-fault))
