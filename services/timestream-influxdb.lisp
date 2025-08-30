(uiop/package:define-package #:pira/timestream-influxdb (:use)
                             (:export #:access-denied-exception
                              #:allocated-storage #:amazon-timestream-influx-db
                              #:arn #:bucket #:cluster-deployment-type
                              #:cluster-status #:conflict-exception
                              #:create-db-cluster #:create-db-instance
                              #:create-db-parameter-group #:db-cluster-id
                              #:db-cluster-name #:db-cluster-resource
                              #:db-cluster-summary #:db-cluster-summary-list
                              #:db-instance-for-cluster-summary
                              #:db-instance-for-cluster-summary-list
                              #:db-instance-id #:db-instance-identifier
                              #:db-instance-name #:db-instance-resource
                              #:db-instance-summary #:db-instance-summary-list
                              #:db-instance-type #:db-parameter-group-id
                              #:db-parameter-group-identifier
                              #:db-parameter-group-name
                              #:db-parameter-group-resource
                              #:db-parameter-group-summary
                              #:db-parameter-group-summary-list
                              #:db-storage-type #:delete-db-cluster
                              #:delete-db-instance #:deployment-type #:duration
                              #:duration-type #:failover-mode #:get-db-cluster
                              #:get-db-instance #:get-db-parameter-group
                              #:influx-dbv2parameters #:instance-mode
                              #:internal-server-exception #:list-db-clusters
                              #:list-db-instances
                              #:list-db-instances-for-cluster
                              #:list-db-parameter-groups
                              #:list-tags-for-resource
                              #:log-delivery-configuration #:log-level
                              #:max-results #:network-type #:next-token
                              #:organization #:parameters #:password #:port
                              #:request-tag-map #:resource-not-found-exception
                              #:response-tag-map #:s3configuration
                              #:service-quota-exceeded-exception #:status
                              #:tag-key #:tag-keys #:tag-resource #:tag-value
                              #:throttling-exception #:tracing-type
                              #:untag-resource #:update-db-cluster
                              #:update-db-instance #:username
                              #:validation-exception
                              #:validation-exception-reason
                              #:vpc-security-group-id
                              #:vpc-security-group-id-list #:vpc-subnet-id
                              #:vpc-subnet-id-list #:timestream-influxdb-error))
(common-lisp:in-package #:pira/timestream-influxdb)

(common-lisp:define-condition timestream-influxdb-error
    (pira/error:aws-error)
    common-lisp:nil)

(smithy/sdk/service:define-service amazon-timestream-influx-db :shape-name
                                   "AmazonTimestreamInfluxDB" :version
                                   "2023-01-27" :title "Timestream InfluxDB"
                                   :operations
                                   '(list-tags-for-resource tag-resource
                                     untag-resource)
                                   :traits
                                   '(("aws.api#service"
                                      ("sdkId" . "Timestream InfluxDB")
                                      ("arnNamespace" . "timestream-influxdb"))
                                     ("aws.auth#sigv4"
                                      ("name" . "timestream-influxdb"))
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
                                        . "${DocHomeURL}IAM/latest/UserGuide/reference_policies_condition-keys.html#condition-keys-tagkeys")))
                                     ("aws.iam#disableConditionKeyInference")
                                     ("aws.iam#supportedPrincipalTypes"
                                      . #("Root" "IAMUser" "IAMRole"
                                          "FederatedUser"))
                                     ("aws.protocols#awsJson1_0")))

(smithy/sdk/shapes:define-error access-denied-exception common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "message"))
                                (:shape-name "AccessDeniedException")
                                (:error-code 403)
                                (:base-class timestream-influxdb-error))

(smithy/sdk/shapes:define-type allocated-storage
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type bucket smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum cluster-deployment-type
    common-lisp:nil
  (:multi-node-read-replicas "MULTI_NODE_READ_REPLICAS"))

(smithy/sdk/shapes:define-enum cluster-status
    common-lisp:nil
  (:creating "CREATING")
  (:updating "UPDATING")
  (:deleting "DELETING")
  (:available "AVAILABLE")
  (:failed "FAILED")
  (:deleted "DELETED"))

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
                                (:base-class timestream-influxdb-error))

(smithy/sdk/shapes:define-input create-db-cluster-input common-lisp:nil
                                ((name :target-type db-cluster-name :required
                                  common-lisp:t :member-name "name")
                                 (username :target-type username :member-name
                                  "username")
                                 (password :target-type password :required
                                  common-lisp:t :member-name "password")
                                 (organization :target-type organization
                                  :member-name "organization")
                                 (bucket :target-type bucket :member-name
                                  "bucket")
                                 (port :target-type port :member-name "port")
                                 (db-parameter-group-identifier :target-type
                                  db-parameter-group-identifier :member-name
                                  "dbParameterGroupIdentifier")
                                 (db-instance-type :target-type
                                  db-instance-type :required common-lisp:t
                                  :member-name "dbInstanceType")
                                 (db-storage-type :target-type db-storage-type
                                  :member-name "dbStorageType")
                                 (allocated-storage :target-type
                                  allocated-storage :required common-lisp:t
                                  :member-name "allocatedStorage")
                                 (network-type :target-type network-type
                                  :member-name "networkType")
                                 (publicly-accessible :target-type
                                  smithy/sdk/smithy-types:boolean :member-name
                                  "publiclyAccessible")
                                 (vpc-subnet-ids :target-type
                                  vpc-subnet-id-list :required common-lisp:t
                                  :member-name "vpcSubnetIds")
                                 (vpc-security-group-ids :target-type
                                  vpc-security-group-id-list :required
                                  common-lisp:t :member-name
                                  "vpcSecurityGroupIds")
                                 (deployment-type :target-type
                                  cluster-deployment-type :required
                                  common-lisp:t :member-name "deploymentType")
                                 (failover-mode :target-type failover-mode
                                  :member-name "failoverMode")
                                 (log-delivery-configuration :target-type
                                  log-delivery-configuration :member-name
                                  "logDeliveryConfiguration")
                                 (tags :target-type request-tag-map
                                  :member-name "tags"))
                                (:shape-name "CreateDbClusterInput"))

(smithy/sdk/shapes:define-output create-db-cluster-output common-lisp:nil
                                 ((db-cluster-id :target-type db-cluster-id
                                   :member-name "dbClusterId")
                                  (db-cluster-status :target-type
                                   cluster-status :member-name
                                   "dbClusterStatus"))
                                 (:shape-name "CreateDbClusterOutput"))

(smithy/sdk/shapes:define-input create-db-instance-input common-lisp:nil
                                ((name :target-type db-instance-name :required
                                  common-lisp:t :member-name "name")
                                 (username :target-type username :member-name
                                  "username")
                                 (password :target-type password :required
                                  common-lisp:t :member-name "password")
                                 (organization :target-type organization
                                  :member-name "organization")
                                 (bucket :target-type bucket :member-name
                                  "bucket")
                                 (db-instance-type :target-type
                                  db-instance-type :required common-lisp:t
                                  :member-name "dbInstanceType")
                                 (vpc-subnet-ids :target-type
                                  vpc-subnet-id-list :required common-lisp:t
                                  :member-name "vpcSubnetIds")
                                 (vpc-security-group-ids :target-type
                                  vpc-security-group-id-list :required
                                  common-lisp:t :member-name
                                  "vpcSecurityGroupIds")
                                 (publicly-accessible :target-type
                                  smithy/sdk/smithy-types:boolean :member-name
                                  "publiclyAccessible")
                                 (db-storage-type :target-type db-storage-type
                                  :member-name "dbStorageType")
                                 (allocated-storage :target-type
                                  allocated-storage :required common-lisp:t
                                  :member-name "allocatedStorage")
                                 (db-parameter-group-identifier :target-type
                                  db-parameter-group-identifier :member-name
                                  "dbParameterGroupIdentifier")
                                 (deployment-type :target-type deployment-type
                                  :member-name "deploymentType")
                                 (log-delivery-configuration :target-type
                                  log-delivery-configuration :member-name
                                  "logDeliveryConfiguration")
                                 (tags :target-type request-tag-map
                                  :member-name "tags")
                                 (port :target-type port :member-name "port")
                                 (network-type :target-type network-type
                                  :member-name "networkType"))
                                (:shape-name "CreateDbInstanceInput"))

(smithy/sdk/shapes:define-output create-db-instance-output common-lisp:nil
                                 ((id :target-type db-instance-id :required
                                   common-lisp:t :member-name "id")
                                  (name :target-type db-instance-name :required
                                   common-lisp:t :member-name "name")
                                  (arn :target-type arn :required common-lisp:t
                                   :member-name "arn")
                                  (status :target-type status :member-name
                                   "status")
                                  (endpoint :target-type
                                   smithy/sdk/smithy-types:string :member-name
                                   "endpoint")
                                  (port :target-type port :member-name "port")
                                  (network-type :target-type network-type
                                   :member-name "networkType")
                                  (db-instance-type :target-type
                                   db-instance-type :member-name
                                   "dbInstanceType")
                                  (db-storage-type :target-type db-storage-type
                                   :member-name "dbStorageType")
                                  (allocated-storage :target-type
                                   allocated-storage :member-name
                                   "allocatedStorage")
                                  (deployment-type :target-type deployment-type
                                   :member-name "deploymentType")
                                  (vpc-subnet-ids :target-type
                                   vpc-subnet-id-list :required common-lisp:t
                                   :member-name "vpcSubnetIds")
                                  (publicly-accessible :target-type
                                   smithy/sdk/smithy-types:boolean :member-name
                                   "publiclyAccessible")
                                  (vpc-security-group-ids :target-type
                                   vpc-security-group-id-list :member-name
                                   "vpcSecurityGroupIds")
                                  (db-parameter-group-identifier :target-type
                                   db-parameter-group-identifier :member-name
                                   "dbParameterGroupIdentifier")
                                  (availability-zone :target-type
                                   smithy/sdk/smithy-types:string :member-name
                                   "availabilityZone")
                                  (secondary-availability-zone :target-type
                                   smithy/sdk/smithy-types:string :member-name
                                   "secondaryAvailabilityZone")
                                  (log-delivery-configuration :target-type
                                   log-delivery-configuration :member-name
                                   "logDeliveryConfiguration")
                                  (influx-auth-parameters-secret-arn
                                   :target-type smithy/sdk/smithy-types:string
                                   :member-name
                                   "influxAuthParametersSecretArn")
                                  (db-cluster-id :target-type db-cluster-id
                                   :member-name "dbClusterId")
                                  (instance-mode :target-type instance-mode
                                   :member-name "instanceMode"))
                                 (:shape-name "CreateDbInstanceOutput"))

(smithy/sdk/shapes:define-input create-db-parameter-group-input common-lisp:nil
                                ((name :target-type db-parameter-group-name
                                  :required common-lisp:t :member-name "name")
                                 (description :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "description")
                                 (parameters :target-type parameters
                                  :member-name "parameters")
                                 (tags :target-type request-tag-map
                                  :member-name "tags"))
                                (:shape-name "CreateDbParameterGroupInput"))

(smithy/sdk/shapes:define-output create-db-parameter-group-output
                                 common-lisp:nil
                                 ((id :target-type db-parameter-group-id
                                   :required common-lisp:t :member-name "id")
                                  (name :target-type db-parameter-group-name
                                   :required common-lisp:t :member-name "name")
                                  (arn :target-type arn :required common-lisp:t
                                   :member-name "arn")
                                  (description :target-type
                                   smithy/sdk/smithy-types:string :member-name
                                   "description")
                                  (parameters :target-type parameters
                                   :member-name "parameters"))
                                 (:shape-name "CreateDbParameterGroupOutput"))

(smithy/sdk/shapes:define-type db-cluster-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type db-cluster-name smithy/sdk/smithy-types:string)

common-lisp:nil

(smithy/sdk/shapes:define-structure db-cluster-summary common-lisp:nil
                                    ((id :target-type db-cluster-id :required
                                      common-lisp:t :member-name "id")
                                     (name :target-type db-cluster-name
                                      :required common-lisp:t :member-name
                                      "name")
                                     (arn :target-type arn :required
                                      common-lisp:t :member-name "arn")
                                     (status :target-type cluster-status
                                      :member-name "status")
                                     (endpoint :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "endpoint")
                                     (reader-endpoint :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "readerEndpoint")
                                     (port :target-type port :member-name
                                      "port")
                                     (deployment-type :target-type
                                      cluster-deployment-type :member-name
                                      "deploymentType")
                                     (db-instance-type :target-type
                                      db-instance-type :member-name
                                      "dbInstanceType")
                                     (network-type :target-type network-type
                                      :member-name "networkType")
                                     (db-storage-type :target-type
                                      db-storage-type :member-name
                                      "dbStorageType")
                                     (allocated-storage :target-type
                                      allocated-storage :member-name
                                      "allocatedStorage"))
                                    (:shape-name "DbClusterSummary"))

(smithy/sdk/shapes:define-list db-cluster-summary-list :member
                               db-cluster-summary)

(smithy/sdk/shapes:define-structure db-instance-for-cluster-summary
                                    common-lisp:nil
                                    ((id :target-type db-instance-id :required
                                      common-lisp:t :member-name "id")
                                     (name :target-type db-instance-name
                                      :required common-lisp:t :member-name
                                      "name")
                                     (arn :target-type arn :required
                                      common-lisp:t :member-name "arn")
                                     (status :target-type status :member-name
                                      "status")
                                     (endpoint :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "endpoint")
                                     (port :target-type port :member-name
                                      "port")
                                     (network-type :target-type network-type
                                      :member-name "networkType")
                                     (db-instance-type :target-type
                                      db-instance-type :member-name
                                      "dbInstanceType")
                                     (db-storage-type :target-type
                                      db-storage-type :member-name
                                      "dbStorageType")
                                     (allocated-storage :target-type
                                      allocated-storage :member-name
                                      "allocatedStorage")
                                     (deployment-type :target-type
                                      deployment-type :member-name
                                      "deploymentType")
                                     (instance-mode :target-type instance-mode
                                      :member-name "instanceMode"))
                                    (:shape-name "DbInstanceForClusterSummary"))

(smithy/sdk/shapes:define-list db-instance-for-cluster-summary-list :member
                               db-instance-for-cluster-summary)

(smithy/sdk/shapes:define-type db-instance-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type db-instance-identifier
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type db-instance-name smithy/sdk/smithy-types:string)

common-lisp:nil

(smithy/sdk/shapes:define-structure db-instance-summary common-lisp:nil
                                    ((id :target-type db-instance-id :required
                                      common-lisp:t :member-name "id")
                                     (name :target-type db-instance-name
                                      :required common-lisp:t :member-name
                                      "name")
                                     (arn :target-type arn :required
                                      common-lisp:t :member-name "arn")
                                     (status :target-type status :member-name
                                      "status")
                                     (endpoint :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "endpoint")
                                     (port :target-type port :member-name
                                      "port")
                                     (network-type :target-type network-type
                                      :member-name "networkType")
                                     (db-instance-type :target-type
                                      db-instance-type :member-name
                                      "dbInstanceType")
                                     (db-storage-type :target-type
                                      db-storage-type :member-name
                                      "dbStorageType")
                                     (allocated-storage :target-type
                                      allocated-storage :member-name
                                      "allocatedStorage")
                                     (deployment-type :target-type
                                      deployment-type :member-name
                                      "deploymentType"))
                                    (:shape-name "DbInstanceSummary"))

(smithy/sdk/shapes:define-list db-instance-summary-list :member
                               db-instance-summary)

(smithy/sdk/shapes:define-enum db-instance-type
    common-lisp:nil
  (:db-influx-medium "db.influx.medium")
  (:db-influx-large "db.influx.large")
  (:db-influx-xlarge "db.influx.xlarge")
  (:db-influx-2xlarge "db.influx.2xlarge")
  (:db-influx-4xlarge "db.influx.4xlarge")
  (:db-influx-8xlarge "db.influx.8xlarge")
  (:db-influx-12xlarge "db.influx.12xlarge")
  (:db-influx-16xlarge "db.influx.16xlarge")
  (:db-influx-24xlarge "db.influx.24xlarge"))

(smithy/sdk/shapes:define-type db-parameter-group-id
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type db-parameter-group-identifier
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type db-parameter-group-name
                               smithy/sdk/smithy-types:string)

common-lisp:nil

(smithy/sdk/shapes:define-structure db-parameter-group-summary common-lisp:nil
                                    ((id :target-type db-parameter-group-id
                                      :required common-lisp:t :member-name
                                      "id")
                                     (name :target-type db-parameter-group-name
                                      :required common-lisp:t :member-name
                                      "name")
                                     (arn :target-type arn :required
                                      common-lisp:t :member-name "arn")
                                     (description :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "description"))
                                    (:shape-name "DbParameterGroupSummary"))

(smithy/sdk/shapes:define-list db-parameter-group-summary-list :member
                               db-parameter-group-summary)

(smithy/sdk/shapes:define-enum db-storage-type
    common-lisp:nil
  (:influx-io-included-t1 "InfluxIOIncludedT1")
  (:influx-io-included-t2 "InfluxIOIncludedT2")
  (:influx-io-included-t3 "InfluxIOIncludedT3"))

(smithy/sdk/shapes:define-input delete-db-cluster-input common-lisp:nil
                                ((db-cluster-id :target-type db-cluster-id
                                  :required common-lisp:t :member-name
                                  "dbClusterId"))
                                (:shape-name "DeleteDbClusterInput"))

(smithy/sdk/shapes:define-output delete-db-cluster-output common-lisp:nil
                                 ((db-cluster-status :target-type
                                   cluster-status :member-name
                                   "dbClusterStatus"))
                                 (:shape-name "DeleteDbClusterOutput"))

(smithy/sdk/shapes:define-input delete-db-instance-input common-lisp:nil
                                ((identifier :target-type
                                  db-instance-identifier :required
                                  common-lisp:t :member-name "identifier"))
                                (:shape-name "DeleteDbInstanceInput"))

(smithy/sdk/shapes:define-output delete-db-instance-output common-lisp:nil
                                 ((id :target-type db-instance-id :required
                                   common-lisp:t :member-name "id")
                                  (name :target-type db-instance-name :required
                                   common-lisp:t :member-name "name")
                                  (arn :target-type arn :required common-lisp:t
                                   :member-name "arn")
                                  (status :target-type status :member-name
                                   "status")
                                  (endpoint :target-type
                                   smithy/sdk/smithy-types:string :member-name
                                   "endpoint")
                                  (port :target-type port :member-name "port")
                                  (network-type :target-type network-type
                                   :member-name "networkType")
                                  (db-instance-type :target-type
                                   db-instance-type :member-name
                                   "dbInstanceType")
                                  (db-storage-type :target-type db-storage-type
                                   :member-name "dbStorageType")
                                  (allocated-storage :target-type
                                   allocated-storage :member-name
                                   "allocatedStorage")
                                  (deployment-type :target-type deployment-type
                                   :member-name "deploymentType")
                                  (vpc-subnet-ids :target-type
                                   vpc-subnet-id-list :required common-lisp:t
                                   :member-name "vpcSubnetIds")
                                  (publicly-accessible :target-type
                                   smithy/sdk/smithy-types:boolean :member-name
                                   "publiclyAccessible")
                                  (vpc-security-group-ids :target-type
                                   vpc-security-group-id-list :member-name
                                   "vpcSecurityGroupIds")
                                  (db-parameter-group-identifier :target-type
                                   db-parameter-group-identifier :member-name
                                   "dbParameterGroupIdentifier")
                                  (availability-zone :target-type
                                   smithy/sdk/smithy-types:string :member-name
                                   "availabilityZone")
                                  (secondary-availability-zone :target-type
                                   smithy/sdk/smithy-types:string :member-name
                                   "secondaryAvailabilityZone")
                                  (log-delivery-configuration :target-type
                                   log-delivery-configuration :member-name
                                   "logDeliveryConfiguration")
                                  (influx-auth-parameters-secret-arn
                                   :target-type smithy/sdk/smithy-types:string
                                   :member-name
                                   "influxAuthParametersSecretArn")
                                  (db-cluster-id :target-type db-cluster-id
                                   :member-name "dbClusterId")
                                  (instance-mode :target-type instance-mode
                                   :member-name "instanceMode"))
                                 (:shape-name "DeleteDbInstanceOutput"))

(smithy/sdk/shapes:define-enum deployment-type
    common-lisp:nil
  (:single-az "SINGLE_AZ")
  (:with-multiaz-standby "WITH_MULTIAZ_STANDBY"))

(smithy/sdk/shapes:define-structure duration common-lisp:nil
                                    ((duration-type :target-type duration-type
                                      :required common-lisp:t :member-name
                                      "durationType")
                                     (value :target-type
                                      smithy/sdk/smithy-types:long :required
                                      common-lisp:t :member-name "value"))
                                    (:shape-name "Duration"))

(smithy/sdk/shapes:define-enum duration-type
    common-lisp:nil
  (:hours "hours")
  (:minutes "minutes")
  (:seconds "seconds")
  (:milliseconds "milliseconds"))

(smithy/sdk/shapes:define-enum failover-mode
    common-lisp:nil
  (:automatic "AUTOMATIC")
  (:no-failover "NO_FAILOVER"))

(smithy/sdk/shapes:define-input get-db-cluster-input common-lisp:nil
                                ((db-cluster-id :target-type db-cluster-id
                                  :required common-lisp:t :member-name
                                  "dbClusterId"))
                                (:shape-name "GetDbClusterInput"))

(smithy/sdk/shapes:define-output get-db-cluster-output common-lisp:nil
                                 ((id :target-type db-cluster-id :required
                                   common-lisp:t :member-name "id")
                                  (name :target-type db-cluster-name :required
                                   common-lisp:t :member-name "name")
                                  (arn :target-type arn :required common-lisp:t
                                   :member-name "arn")
                                  (status :target-type cluster-status
                                   :member-name "status")
                                  (endpoint :target-type
                                   smithy/sdk/smithy-types:string :member-name
                                   "endpoint")
                                  (reader-endpoint :target-type
                                   smithy/sdk/smithy-types:string :member-name
                                   "readerEndpoint")
                                  (port :target-type port :member-name "port")
                                  (deployment-type :target-type
                                   cluster-deployment-type :member-name
                                   "deploymentType")
                                  (db-instance-type :target-type
                                   db-instance-type :member-name
                                   "dbInstanceType")
                                  (network-type :target-type network-type
                                   :member-name "networkType")
                                  (db-storage-type :target-type db-storage-type
                                   :member-name "dbStorageType")
                                  (allocated-storage :target-type
                                   allocated-storage :member-name
                                   "allocatedStorage")
                                  (publicly-accessible :target-type
                                   smithy/sdk/smithy-types:boolean :member-name
                                   "publiclyAccessible")
                                  (db-parameter-group-identifier :target-type
                                   db-parameter-group-identifier :member-name
                                   "dbParameterGroupIdentifier")
                                  (log-delivery-configuration :target-type
                                   log-delivery-configuration :member-name
                                   "logDeliveryConfiguration")
                                  (influx-auth-parameters-secret-arn
                                   :target-type smithy/sdk/smithy-types:string
                                   :member-name
                                   "influxAuthParametersSecretArn")
                                  (vpc-subnet-ids :target-type
                                   vpc-subnet-id-list :member-name
                                   "vpcSubnetIds")
                                  (vpc-security-group-ids :target-type
                                   vpc-security-group-id-list :member-name
                                   "vpcSecurityGroupIds")
                                  (failover-mode :target-type failover-mode
                                   :member-name "failoverMode"))
                                 (:shape-name "GetDbClusterOutput"))

(smithy/sdk/shapes:define-input get-db-instance-input common-lisp:nil
                                ((identifier :target-type
                                  db-instance-identifier :required
                                  common-lisp:t :member-name "identifier"))
                                (:shape-name "GetDbInstanceInput"))

(smithy/sdk/shapes:define-output get-db-instance-output common-lisp:nil
                                 ((id :target-type db-instance-id :required
                                   common-lisp:t :member-name "id")
                                  (name :target-type db-instance-name :required
                                   common-lisp:t :member-name "name")
                                  (arn :target-type arn :required common-lisp:t
                                   :member-name "arn")
                                  (status :target-type status :member-name
                                   "status")
                                  (endpoint :target-type
                                   smithy/sdk/smithy-types:string :member-name
                                   "endpoint")
                                  (port :target-type port :member-name "port")
                                  (network-type :target-type network-type
                                   :member-name "networkType")
                                  (db-instance-type :target-type
                                   db-instance-type :member-name
                                   "dbInstanceType")
                                  (db-storage-type :target-type db-storage-type
                                   :member-name "dbStorageType")
                                  (allocated-storage :target-type
                                   allocated-storage :member-name
                                   "allocatedStorage")
                                  (deployment-type :target-type deployment-type
                                   :member-name "deploymentType")
                                  (vpc-subnet-ids :target-type
                                   vpc-subnet-id-list :required common-lisp:t
                                   :member-name "vpcSubnetIds")
                                  (publicly-accessible :target-type
                                   smithy/sdk/smithy-types:boolean :member-name
                                   "publiclyAccessible")
                                  (vpc-security-group-ids :target-type
                                   vpc-security-group-id-list :member-name
                                   "vpcSecurityGroupIds")
                                  (db-parameter-group-identifier :target-type
                                   db-parameter-group-identifier :member-name
                                   "dbParameterGroupIdentifier")
                                  (availability-zone :target-type
                                   smithy/sdk/smithy-types:string :member-name
                                   "availabilityZone")
                                  (secondary-availability-zone :target-type
                                   smithy/sdk/smithy-types:string :member-name
                                   "secondaryAvailabilityZone")
                                  (log-delivery-configuration :target-type
                                   log-delivery-configuration :member-name
                                   "logDeliveryConfiguration")
                                  (influx-auth-parameters-secret-arn
                                   :target-type smithy/sdk/smithy-types:string
                                   :member-name
                                   "influxAuthParametersSecretArn")
                                  (db-cluster-id :target-type db-cluster-id
                                   :member-name "dbClusterId")
                                  (instance-mode :target-type instance-mode
                                   :member-name "instanceMode"))
                                 (:shape-name "GetDbInstanceOutput"))

(smithy/sdk/shapes:define-input get-db-parameter-group-input common-lisp:nil
                                ((identifier :target-type
                                  db-parameter-group-identifier :required
                                  common-lisp:t :member-name "identifier"))
                                (:shape-name "GetDbParameterGroupInput"))

(smithy/sdk/shapes:define-output get-db-parameter-group-output common-lisp:nil
                                 ((id :target-type db-parameter-group-id
                                   :required common-lisp:t :member-name "id")
                                  (name :target-type db-parameter-group-name
                                   :required common-lisp:t :member-name "name")
                                  (arn :target-type arn :required common-lisp:t
                                   :member-name "arn")
                                  (description :target-type
                                   smithy/sdk/smithy-types:string :member-name
                                   "description")
                                  (parameters :target-type parameters
                                   :member-name "parameters"))
                                 (:shape-name "GetDbParameterGroupOutput"))

(smithy/sdk/shapes:define-structure influx-dbv2parameters common-lisp:nil
                                    ((flux-log-enabled :target-type
                                      smithy/sdk/smithy-types:boolean
                                      :member-name "fluxLogEnabled")
                                     (log-level :target-type log-level
                                      :member-name "logLevel")
                                     (no-tasks :target-type
                                      smithy/sdk/smithy-types:boolean
                                      :member-name "noTasks")
                                     (query-concurrency :target-type
                                      smithy/sdk/smithy-types:integer
                                      :member-name "queryConcurrency")
                                     (query-queue-size :target-type
                                      smithy/sdk/smithy-types:integer
                                      :member-name "queryQueueSize")
                                     (tracing-type :target-type tracing-type
                                      :member-name "tracingType")
                                     (metrics-disabled :target-type
                                      smithy/sdk/smithy-types:boolean
                                      :member-name "metricsDisabled")
                                     (http-idle-timeout :target-type duration
                                      :member-name "httpIdleTimeout")
                                     (http-read-header-timeout :target-type
                                      duration :member-name
                                      "httpReadHeaderTimeout")
                                     (http-read-timeout :target-type duration
                                      :member-name "httpReadTimeout")
                                     (http-write-timeout :target-type duration
                                      :member-name "httpWriteTimeout")
                                     (influxql-max-select-buckets :target-type
                                      smithy/sdk/smithy-types:long :member-name
                                      "influxqlMaxSelectBuckets")
                                     (influxql-max-select-point :target-type
                                      smithy/sdk/smithy-types:long :member-name
                                      "influxqlMaxSelectPoint")
                                     (influxql-max-select-series :target-type
                                      smithy/sdk/smithy-types:long :member-name
                                      "influxqlMaxSelectSeries")
                                     (pprof-disabled :target-type
                                      smithy/sdk/smithy-types:boolean
                                      :member-name "pprofDisabled")
                                     (query-initial-memory-bytes :target-type
                                      smithy/sdk/smithy-types:long :member-name
                                      "queryInitialMemoryBytes")
                                     (query-max-memory-bytes :target-type
                                      smithy/sdk/smithy-types:long :member-name
                                      "queryMaxMemoryBytes")
                                     (query-memory-bytes :target-type
                                      smithy/sdk/smithy-types:long :member-name
                                      "queryMemoryBytes")
                                     (session-length :target-type
                                      smithy/sdk/smithy-types:integer
                                      :member-name "sessionLength")
                                     (session-renew-disabled :target-type
                                      smithy/sdk/smithy-types:boolean
                                      :member-name "sessionRenewDisabled")
                                     (storage-cache-max-memory-size
                                      :target-type smithy/sdk/smithy-types:long
                                      :member-name "storageCacheMaxMemorySize")
                                     (storage-cache-snapshot-memory-size
                                      :target-type smithy/sdk/smithy-types:long
                                      :member-name
                                      "storageCacheSnapshotMemorySize")
                                     (storage-cache-snapshot-write-cold-duration
                                      :target-type duration :member-name
                                      "storageCacheSnapshotWriteColdDuration")
                                     (storage-compact-full-write-cold-duration
                                      :target-type duration :member-name
                                      "storageCompactFullWriteColdDuration")
                                     (storage-compact-throughput-burst
                                      :target-type smithy/sdk/smithy-types:long
                                      :member-name
                                      "storageCompactThroughputBurst")
                                     (storage-max-concurrent-compactions
                                      :target-type
                                      smithy/sdk/smithy-types:integer
                                      :member-name
                                      "storageMaxConcurrentCompactions")
                                     (storage-max-index-log-file-size
                                      :target-type smithy/sdk/smithy-types:long
                                      :member-name
                                      "storageMaxIndexLogFileSize")
                                     (storage-no-validate-field-size
                                      :target-type
                                      smithy/sdk/smithy-types:boolean
                                      :member-name
                                      "storageNoValidateFieldSize")
                                     (storage-retention-check-interval
                                      :target-type duration :member-name
                                      "storageRetentionCheckInterval")
                                     (storage-series-file-max-concurrent-snapshot-compactions
                                      :target-type
                                      smithy/sdk/smithy-types:integer
                                      :member-name
                                      "storageSeriesFileMaxConcurrentSnapshotCompactions")
                                     (storage-series-id-set-cache-size
                                      :target-type smithy/sdk/smithy-types:long
                                      :member-name
                                      "storageSeriesIdSetCacheSize")
                                     (storage-wal-max-concurrent-writes
                                      :target-type
                                      smithy/sdk/smithy-types:integer
                                      :member-name
                                      "storageWalMaxConcurrentWrites")
                                     (storage-wal-max-write-delay :target-type
                                      duration :member-name
                                      "storageWalMaxWriteDelay")
                                     (ui-disabled :target-type
                                      smithy/sdk/smithy-types:boolean
                                      :member-name "uiDisabled"))
                                    (:shape-name "InfluxDBv2Parameters"))

(smithy/sdk/shapes:define-enum instance-mode
    common-lisp:nil
  (:primary "PRIMARY")
  (:standby "STANDBY")
  (:replica "REPLICA"))

(smithy/sdk/shapes:define-error internal-server-exception common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "message"))
                                (:shape-name "InternalServerException")
                                (:error-code 500)
                                (:base-class timestream-influxdb-error))

(smithy/sdk/shapes:define-input list-db-clusters-input common-lisp:nil
                                ((next-token :target-type next-token
                                  :member-name "nextToken")
                                 (max-results :target-type max-results
                                  :member-name "maxResults"))
                                (:shape-name "ListDbClustersInput"))

(smithy/sdk/shapes:define-output list-db-clusters-output common-lisp:nil
                                 ((items :target-type db-cluster-summary-list
                                   :required common-lisp:t :member-name
                                   "items")
                                  (next-token :target-type next-token
                                   :member-name "nextToken"))
                                 (:shape-name "ListDbClustersOutput"))

(smithy/sdk/shapes:define-input list-db-instances-for-cluster-input
                                common-lisp:nil
                                ((db-cluster-id :target-type db-cluster-id
                                  :required common-lisp:t :member-name
                                  "dbClusterId")
                                 (next-token :target-type next-token
                                  :member-name "nextToken")
                                 (max-results :target-type max-results
                                  :member-name "maxResults"))
                                (:shape-name "ListDbInstancesForClusterInput"))

(smithy/sdk/shapes:define-output list-db-instances-for-cluster-output
                                 common-lisp:nil
                                 ((items :target-type
                                   db-instance-for-cluster-summary-list
                                   :required common-lisp:t :member-name
                                   "items")
                                  (next-token :target-type next-token
                                   :member-name "nextToken"))
                                 (:shape-name
                                  "ListDbInstancesForClusterOutput"))

(smithy/sdk/shapes:define-input list-db-instances-input common-lisp:nil
                                ((next-token :target-type next-token
                                  :member-name "nextToken")
                                 (max-results :target-type max-results
                                  :member-name "maxResults"))
                                (:shape-name "ListDbInstancesInput"))

(smithy/sdk/shapes:define-output list-db-instances-output common-lisp:nil
                                 ((items :target-type db-instance-summary-list
                                   :required common-lisp:t :member-name
                                   "items")
                                  (next-token :target-type next-token
                                   :member-name "nextToken"))
                                 (:shape-name "ListDbInstancesOutput"))

(smithy/sdk/shapes:define-input list-db-parameter-groups-input common-lisp:nil
                                ((next-token :target-type next-token
                                  :member-name "nextToken")
                                 (max-results :target-type max-results
                                  :member-name "maxResults"))
                                (:shape-name "ListDbParameterGroupsInput"))

(smithy/sdk/shapes:define-output list-db-parameter-groups-output
                                 common-lisp:nil
                                 ((items :target-type
                                   db-parameter-group-summary-list :required
                                   common-lisp:t :member-name "items")
                                  (next-token :target-type next-token
                                   :member-name "nextToken"))
                                 (:shape-name "ListDbParameterGroupsOutput"))

(smithy/sdk/shapes:define-input list-tags-for-resource-request common-lisp:nil
                                ((resource-arn :target-type arn :required
                                  common-lisp:t :member-name "resourceArn"))
                                (:shape-name "ListTagsForResourceRequest"))

(smithy/sdk/shapes:define-output list-tags-for-resource-response
                                 common-lisp:nil
                                 ((tags :target-type response-tag-map
                                   :member-name "tags"))
                                 (:shape-name "ListTagsForResourceResponse"))

(smithy/sdk/shapes:define-structure log-delivery-configuration common-lisp:nil
                                    ((s3configuration :target-type
                                      s3configuration :required common-lisp:t
                                      :member-name "s3Configuration"))
                                    (:shape-name "LogDeliveryConfiguration"))

(smithy/sdk/shapes:define-enum log-level
    common-lisp:nil
  (:debug "debug")
  (:info "info")
  (:error "error"))

(smithy/sdk/shapes:define-type max-results smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-enum network-type
    common-lisp:nil
  (:ipv4 "IPV4")
  (:dual "DUAL"))

(smithy/sdk/shapes:define-type next-token smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type organization smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-union parameters common-lisp:nil
                                ((influx-dbv2 :target-type
                                  influx-dbv2parameters :member-name
                                  "InfluxDBv2"))
                                (:shape-name "Parameters"))

(smithy/sdk/shapes:define-type password smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type port smithy/sdk/smithy-types:integer)

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
                                (:error-code 404)
                                (:base-class timestream-influxdb-error))

(smithy/sdk/shapes:define-map response-tag-map :key tag-key :value tag-value)

(smithy/sdk/shapes:define-structure s3configuration common-lisp:nil
                                    ((bucket-name :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "bucketName")
                                     (enabled :target-type
                                      smithy/sdk/smithy-types:boolean :required
                                      common-lisp:t :member-name "enabled"))
                                    (:shape-name "S3Configuration"))

(smithy/sdk/shapes:define-error service-quota-exceeded-exception
                                common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "message"))
                                (:shape-name "ServiceQuotaExceededException")
                                (:error-code 402)
                                (:base-class timestream-influxdb-error))

(smithy/sdk/shapes:define-enum status
    common-lisp:nil
  (:creating "CREATING")
  (:available "AVAILABLE")
  (:deleting "DELETING")
  (:modifying "MODIFYING")
  (:updating "UPDATING")
  (:deleted "DELETED")
  (:failed "FAILED")
  (:updating-deployment-type "UPDATING_DEPLOYMENT_TYPE")
  (:updating-instance-type "UPDATING_INSTANCE_TYPE"))

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
                                (:error-code 429)
                                (:base-class timestream-influxdb-error))

(smithy/sdk/shapes:define-enum tracing-type
    common-lisp:nil
  (:log "log")
  (:jaeger "jaeger"))

(smithy/sdk/shapes:define-input untag-resource-request common-lisp:nil
                                ((resource-arn :target-type arn :required
                                  common-lisp:t :member-name "resourceArn"
                                  :http-label common-lisp:t)
                                 (tag-keys :target-type tag-keys :required
                                  common-lisp:t :member-name "tagKeys"))
                                (:shape-name "UntagResourceRequest"))

(smithy/sdk/shapes:define-input update-db-cluster-input common-lisp:nil
                                ((db-cluster-id :target-type db-cluster-id
                                  :required common-lisp:t :member-name
                                  "dbClusterId")
                                 (log-delivery-configuration :target-type
                                  log-delivery-configuration :member-name
                                  "logDeliveryConfiguration")
                                 (db-parameter-group-identifier :target-type
                                  db-parameter-group-identifier :member-name
                                  "dbParameterGroupIdentifier")
                                 (port :target-type port :member-name "port")
                                 (db-instance-type :target-type
                                  db-instance-type :member-name
                                  "dbInstanceType")
                                 (failover-mode :target-type failover-mode
                                  :member-name "failoverMode"))
                                (:shape-name "UpdateDbClusterInput"))

(smithy/sdk/shapes:define-output update-db-cluster-output common-lisp:nil
                                 ((db-cluster-status :target-type
                                   cluster-status :member-name
                                   "dbClusterStatus"))
                                 (:shape-name "UpdateDbClusterOutput"))

(smithy/sdk/shapes:define-input update-db-instance-input common-lisp:nil
                                ((identifier :target-type
                                  db-instance-identifier :required
                                  common-lisp:t :member-name "identifier")
                                 (log-delivery-configuration :target-type
                                  log-delivery-configuration :member-name
                                  "logDeliveryConfiguration")
                                 (db-parameter-group-identifier :target-type
                                  db-parameter-group-identifier :member-name
                                  "dbParameterGroupIdentifier")
                                 (port :target-type port :member-name "port")
                                 (db-instance-type :target-type
                                  db-instance-type :member-name
                                  "dbInstanceType")
                                 (deployment-type :target-type deployment-type
                                  :member-name "deploymentType")
                                 (db-storage-type :target-type db-storage-type
                                  :member-name "dbStorageType")
                                 (allocated-storage :target-type
                                  allocated-storage :member-name
                                  "allocatedStorage"))
                                (:shape-name "UpdateDbInstanceInput"))

(smithy/sdk/shapes:define-output update-db-instance-output common-lisp:nil
                                 ((id :target-type db-instance-id :required
                                   common-lisp:t :member-name "id")
                                  (name :target-type db-instance-name :required
                                   common-lisp:t :member-name "name")
                                  (arn :target-type arn :required common-lisp:t
                                   :member-name "arn")
                                  (status :target-type status :member-name
                                   "status")
                                  (endpoint :target-type
                                   smithy/sdk/smithy-types:string :member-name
                                   "endpoint")
                                  (port :target-type port :member-name "port")
                                  (network-type :target-type network-type
                                   :member-name "networkType")
                                  (db-instance-type :target-type
                                   db-instance-type :member-name
                                   "dbInstanceType")
                                  (db-storage-type :target-type db-storage-type
                                   :member-name "dbStorageType")
                                  (allocated-storage :target-type
                                   allocated-storage :member-name
                                   "allocatedStorage")
                                  (deployment-type :target-type deployment-type
                                   :member-name "deploymentType")
                                  (vpc-subnet-ids :target-type
                                   vpc-subnet-id-list :required common-lisp:t
                                   :member-name "vpcSubnetIds")
                                  (publicly-accessible :target-type
                                   smithy/sdk/smithy-types:boolean :member-name
                                   "publiclyAccessible")
                                  (vpc-security-group-ids :target-type
                                   vpc-security-group-id-list :member-name
                                   "vpcSecurityGroupIds")
                                  (db-parameter-group-identifier :target-type
                                   db-parameter-group-identifier :member-name
                                   "dbParameterGroupIdentifier")
                                  (availability-zone :target-type
                                   smithy/sdk/smithy-types:string :member-name
                                   "availabilityZone")
                                  (secondary-availability-zone :target-type
                                   smithy/sdk/smithy-types:string :member-name
                                   "secondaryAvailabilityZone")
                                  (log-delivery-configuration :target-type
                                   log-delivery-configuration :member-name
                                   "logDeliveryConfiguration")
                                  (influx-auth-parameters-secret-arn
                                   :target-type smithy/sdk/smithy-types:string
                                   :member-name
                                   "influxAuthParametersSecretArn")
                                  (db-cluster-id :target-type db-cluster-id
                                   :member-name "dbClusterId")
                                  (instance-mode :target-type instance-mode
                                   :member-name "instanceMode"))
                                 (:shape-name "UpdateDbInstanceOutput"))

(smithy/sdk/shapes:define-type username smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error validation-exception common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "message")
                                 (reason :target-type
                                  validation-exception-reason :required
                                  common-lisp:t :member-name "reason"))
                                (:shape-name "ValidationException")
                                (:error-code 400)
                                (:base-class timestream-influxdb-error))

(smithy/sdk/shapes:define-enum validation-exception-reason
    common-lisp:nil
  (:field-validation-failed "FIELD_VALIDATION_FAILED")
  (:other "OTHER"))

(smithy/sdk/shapes:define-type vpc-security-group-id
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list vpc-security-group-id-list :member
                               vpc-security-group-id)

(smithy/sdk/shapes:define-type vpc-subnet-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list vpc-subnet-id-list :member vpc-subnet-id)

(smithy/sdk/operation:define-operation create-db-cluster :shape-name
                                       "CreateDbCluster" :input
                                       create-db-cluster-input :output
                                       create-db-cluster-output :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation create-db-instance :shape-name
                                       "CreateDbInstance" :input
                                       create-db-instance-input :output
                                       create-db-instance-output :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation create-db-parameter-group :shape-name
                                       "CreateDbParameterGroup" :input
                                       create-db-parameter-group-input :output
                                       create-db-parameter-group-output :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation delete-db-cluster :shape-name
                                       "DeleteDbCluster" :input
                                       delete-db-cluster-input :output
                                       delete-db-cluster-output :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation delete-db-instance :shape-name
                                       "DeleteDbInstance" :input
                                       delete-db-instance-input :output
                                       delete-db-instance-output :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation get-db-cluster :shape-name
                                       "GetDbCluster" :input
                                       get-db-cluster-input :output
                                       get-db-cluster-output :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation get-db-instance :shape-name
                                       "GetDbInstance" :input
                                       get-db-instance-input :output
                                       get-db-instance-output :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation get-db-parameter-group :shape-name
                                       "GetDbParameterGroup" :input
                                       get-db-parameter-group-input :output
                                       get-db-parameter-group-output :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation list-db-clusters :shape-name
                                       "ListDbClusters" :input
                                       list-db-clusters-input :output
                                       list-db-clusters-output :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation list-db-instances :shape-name
                                       "ListDbInstances" :input
                                       list-db-instances-input :output
                                       list-db-instances-output :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation list-db-instances-for-cluster
                                       :shape-name "ListDbInstancesForCluster"
                                       :input
                                       list-db-instances-for-cluster-input
                                       :output
                                       list-db-instances-for-cluster-output
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation list-db-parameter-groups :shape-name
                                       "ListDbParameterGroups" :input
                                       list-db-parameter-groups-input :output
                                       list-db-parameter-groups-output :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation list-tags-for-resource :shape-name
                                       "ListTagsForResource" :input
                                       list-tags-for-resource-request :output
                                       list-tags-for-resource-response :errors
                                       (resource-not-found-exception))

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

(smithy/sdk/operation:define-operation update-db-cluster :shape-name
                                       "UpdateDbCluster" :input
                                       update-db-cluster-input :output
                                       update-db-cluster-output :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation update-db-instance :shape-name
                                       "UpdateDbInstance" :input
                                       update-db-instance-input :output
                                       update-db-instance-output :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception))
