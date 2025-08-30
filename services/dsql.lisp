(uiop/package:define-package #:pira/dsql (:use)
                             (:export #:access-denied-exception #:arn
                              #:client-token #:cluster #:cluster-arn
                              #:cluster-arn-list #:cluster-creation-time
                              #:cluster-id #:cluster-list #:cluster-status
                              #:cluster-summary #:conflict-exception
                              #:create-cluster #:dsql #:delete-cluster
                              #:deletion-protection-enabled
                              #:encryption-details #:encryption-status
                              #:encryption-type #:get-cluster
                              #:get-vpc-endpoint-service-name
                              #:internal-server-exception #:kms-encryption-key
                              #:kms-key-arn #:list-clusters
                              #:list-tags-for-resource #:max-results
                              #:multi-region-properties #:next-token #:region
                              #:resource-not-found-exception #:service-name
                              #:service-quota-exceeded-exception #:tag-key
                              #:tag-key-list #:tag-map #:tag-resource
                              #:tag-value #:throttling-exception
                              #:untag-resource #:update-cluster
                              #:validation-exception
                              #:validation-exception-field
                              #:validation-exception-field-list
                              #:validation-exception-reason #:dsql-error))
(common-lisp:in-package #:pira/dsql)

(common-lisp:define-condition dsql-error
    (pira/error:aws-error)
    common-lisp:nil)

(smithy/sdk/service:define-service dsql :shape-name "DSQL" :version
                                   "2018-05-10" :title "Amazon Aurora DSQL"
                                   :operations
                                   '(list-tags-for-resource tag-resource
                                     untag-resource)
                                   :errors
                                   '(access-denied-exception
                                     internal-server-exception
                                     throttling-exception validation-exception)
                                   :traits
                                   '(("aws.api#service" ("sdkId" . "DSQL")
                                      ("arnNamespace" . "dsql")
                                      ("endpointPrefix" . "dsql")
                                      ("cloudTrailEventSource"
                                       . "dsql.amazonaws.com"))
                                     ("aws.auth#sigv4" ("name" . "dsql"))
                                     ("aws.endpoints#dualStackOnlyEndpoints")
                                     ("aws.endpoints#standardRegionalEndpoints")
                                     ("aws.protocols#restJson1")))

(smithy/sdk/shapes:define-error access-denied-exception common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "message"))
                                (:shape-name "AccessDeniedException")
                                (:error-code 403) (:base-class dsql-error))

(smithy/sdk/shapes:define-type arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type client-token smithy/sdk/smithy-types:string)

common-lisp:nil

(smithy/sdk/shapes:define-type cluster-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list cluster-arn-list :member cluster-arn)

(smithy/sdk/shapes:define-type cluster-creation-time
                               smithy/sdk/smithy-types:timestamp)

(smithy/sdk/shapes:define-type cluster-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list cluster-list :member cluster-summary)

(smithy/sdk/shapes:define-enum cluster-status
    common-lisp:nil
  (:creating "CREATING")
  (:active "ACTIVE")
  (:idle "IDLE")
  (:inactive "INACTIVE")
  (:updating "UPDATING")
  (:deleting "DELETING")
  (:deleted "DELETED")
  (:failed "FAILED")
  (:pending-setup "PENDING_SETUP")
  (:pending-delete "PENDING_DELETE"))

(smithy/sdk/shapes:define-structure cluster-summary common-lisp:nil
                                    ((identifier :target-type cluster-id
                                      :required common-lisp:t :member-name
                                      "identifier")
                                     (arn :target-type cluster-arn :required
                                      common-lisp:t :member-name "arn"))
                                    (:shape-name "ClusterSummary"))

(smithy/sdk/shapes:define-error conflict-exception common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "message")
                                 (resource-id :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "resourceId")
                                 (resource-type :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "resourceType"))
                                (:shape-name "ConflictException")
                                (:error-code 409) (:base-class dsql-error))

(smithy/sdk/shapes:define-input create-cluster-input common-lisp:nil
                                ((deletion-protection-enabled :target-type
                                  deletion-protection-enabled :member-name
                                  "deletionProtectionEnabled")
                                 (kms-encryption-key :target-type
                                  kms-encryption-key :member-name
                                  "kmsEncryptionKey")
                                 (tags :target-type tag-map :member-name
                                  "tags")
                                 (client-token :target-type client-token
                                  :member-name "clientToken")
                                 (multi-region-properties :target-type
                                  multi-region-properties :member-name
                                  "multiRegionProperties"))
                                (:shape-name "CreateClusterInput"))

(smithy/sdk/shapes:define-output create-cluster-output common-lisp:nil
                                 ((identifier :target-type cluster-id :required
                                   common-lisp:t :member-name "identifier")
                                  (arn :target-type cluster-arn :required
                                   common-lisp:t :member-name "arn")
                                  (status :target-type cluster-status :required
                                   common-lisp:t :member-name "status")
                                  (creation-time :target-type
                                   cluster-creation-time :required
                                   common-lisp:t :member-name "creationTime")
                                  (multi-region-properties :target-type
                                   multi-region-properties :member-name
                                   "multiRegionProperties")
                                  (encryption-details :target-type
                                   encryption-details :member-name
                                   "encryptionDetails")
                                  (deletion-protection-enabled :target-type
                                   deletion-protection-enabled :required
                                   common-lisp:t :member-name
                                   "deletionProtectionEnabled"))
                                 (:shape-name "CreateClusterOutput"))

(smithy/sdk/shapes:define-input delete-cluster-input common-lisp:nil
                                ((identifier :target-type cluster-id :required
                                  common-lisp:t :member-name "identifier"
                                  :http-label common-lisp:t)
                                 (client-token :target-type client-token
                                  :member-name "clientToken" :http-query
                                  "client-token"))
                                (:shape-name "DeleteClusterInput"))

(smithy/sdk/shapes:define-output delete-cluster-output common-lisp:nil
                                 ((identifier :target-type cluster-id :required
                                   common-lisp:t :member-name "identifier")
                                  (arn :target-type cluster-arn :required
                                   common-lisp:t :member-name "arn")
                                  (status :target-type cluster-status :required
                                   common-lisp:t :member-name "status")
                                  (creation-time :target-type
                                   cluster-creation-time :required
                                   common-lisp:t :member-name "creationTime"))
                                 (:shape-name "DeleteClusterOutput"))

(smithy/sdk/shapes:define-type deletion-protection-enabled
                               smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-structure encryption-details common-lisp:nil
                                    ((encryption-type :target-type
                                      encryption-type :required common-lisp:t
                                      :member-name "encryptionType")
                                     (kms-key-arn :target-type kms-key-arn
                                      :member-name "kmsKeyArn")
                                     (encryption-status :target-type
                                      encryption-status :required common-lisp:t
                                      :member-name "encryptionStatus"))
                                    (:shape-name "EncryptionDetails"))

(smithy/sdk/shapes:define-enum encryption-status
    common-lisp:nil
  (:enabled "ENABLED")
  (:updating "UPDATING")
  (:kms-key-inaccessible "KMS_KEY_INACCESSIBLE")
  (:enabling "ENABLING"))

(smithy/sdk/shapes:define-enum encryption-type
    common-lisp:nil
  (:aws-owned-kms-key "AWS_OWNED_KMS_KEY")
  (:customer-managed-kms-key "CUSTOMER_MANAGED_KMS_KEY"))

(smithy/sdk/shapes:define-input get-cluster-input common-lisp:nil
                                ((identifier :target-type cluster-id :required
                                  common-lisp:t :member-name "identifier"
                                  :http-label common-lisp:t))
                                (:shape-name "GetClusterInput"))

(smithy/sdk/shapes:define-output get-cluster-output common-lisp:nil
                                 ((identifier :target-type cluster-id :required
                                   common-lisp:t :member-name "identifier")
                                  (arn :target-type cluster-arn :required
                                   common-lisp:t :member-name "arn")
                                  (status :target-type cluster-status :required
                                   common-lisp:t :member-name "status")
                                  (creation-time :target-type
                                   cluster-creation-time :required
                                   common-lisp:t :member-name "creationTime")
                                  (deletion-protection-enabled :target-type
                                   deletion-protection-enabled :required
                                   common-lisp:t :member-name
                                   "deletionProtectionEnabled")
                                  (multi-region-properties :target-type
                                   multi-region-properties :member-name
                                   "multiRegionProperties")
                                  (tags :target-type tag-map :member-name
                                   "tags")
                                  (encryption-details :target-type
                                   encryption-details :member-name
                                   "encryptionDetails"))
                                 (:shape-name "GetClusterOutput"))

(smithy/sdk/shapes:define-input get-vpc-endpoint-service-name-input
                                common-lisp:nil
                                ((identifier :target-type cluster-id :required
                                  common-lisp:t :member-name "identifier"
                                  :http-label common-lisp:t))
                                (:shape-name "GetVpcEndpointServiceNameInput"))

(smithy/sdk/shapes:define-output get-vpc-endpoint-service-name-output
                                 common-lisp:nil
                                 ((service-name :target-type service-name
                                   :required common-lisp:t :member-name
                                   "serviceName"))
                                 (:shape-name
                                  "GetVpcEndpointServiceNameOutput"))

(smithy/sdk/shapes:define-error internal-server-exception common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "message")
                                 (retry-after-seconds :target-type
                                  smithy/sdk/smithy-types:integer :member-name
                                  "retryAfterSeconds" :http-header
                                  "Retry-After"))
                                (:shape-name "InternalServerException")
                                (:error-code 500) (:base-class dsql-error))

(smithy/sdk/shapes:define-type kms-encryption-key
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type kms-key-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input list-clusters-input common-lisp:nil
                                ((max-results :target-type max-results
                                  :member-name "maxResults" :http-query
                                  "max-results")
                                 (next-token :target-type next-token
                                  :member-name "nextToken" :http-query
                                  "next-token"))
                                (:shape-name "ListClustersInput"))

(smithy/sdk/shapes:define-output list-clusters-output common-lisp:nil
                                 ((next-token :target-type next-token
                                   :member-name "nextToken")
                                  (clusters :target-type cluster-list :required
                                   common-lisp:t :member-name "clusters"))
                                 (:shape-name "ListClustersOutput"))

(smithy/sdk/shapes:define-input list-tags-for-resource-input common-lisp:nil
                                ((resource-arn :target-type arn :required
                                  common-lisp:t :member-name "resourceArn"
                                  :http-label common-lisp:t))
                                (:shape-name "ListTagsForResourceInput"))

(smithy/sdk/shapes:define-output list-tags-for-resource-output common-lisp:nil
                                 ((tags :target-type tag-map :member-name
                                   "tags"))
                                 (:shape-name "ListTagsForResourceOutput"))

(smithy/sdk/shapes:define-type max-results smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-structure multi-region-properties common-lisp:nil
                                    ((witness-region :target-type region
                                      :member-name "witnessRegion")
                                     (clusters :target-type cluster-arn-list
                                      :member-name "clusters"))
                                    (:shape-name "MultiRegionProperties"))

(smithy/sdk/shapes:define-type next-token smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type region smithy/sdk/smithy-types:string)

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
                                (:error-code 404) (:base-class dsql-error))

(smithy/sdk/shapes:define-type service-name smithy/sdk/smithy-types:string)

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
                                (:error-code 402) (:base-class dsql-error))

(smithy/sdk/shapes:define-type tag-key smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list tag-key-list :member tag-key)

(smithy/sdk/shapes:define-map tag-map :key tag-key :value tag-value)

(smithy/sdk/shapes:define-input tag-resource-input common-lisp:nil
                                ((resource-arn :target-type arn :required
                                  common-lisp:t :member-name "resourceArn"
                                  :http-label common-lisp:t)
                                 (tags :target-type tag-map :required
                                  common-lisp:t :member-name "tags"))
                                (:shape-name "TagResourceInput"))

(smithy/sdk/shapes:define-type tag-value smithy/sdk/smithy-types:string)

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
                                 (retry-after-seconds :target-type
                                  smithy/sdk/smithy-types:integer :member-name
                                  "retryAfterSeconds" :http-header
                                  "Retry-After"))
                                (:shape-name "ThrottlingException")
                                (:error-code 429) (:base-class dsql-error))

(smithy/sdk/shapes:define-input untag-resource-input common-lisp:nil
                                ((resource-arn :target-type arn :required
                                  common-lisp:t :member-name "resourceArn"
                                  :http-label common-lisp:t)
                                 (tag-keys :target-type tag-key-list :required
                                  common-lisp:t :member-name "tagKeys"
                                  :http-query "tagKeys"))
                                (:shape-name "UntagResourceInput"))

(smithy/sdk/shapes:define-input update-cluster-input common-lisp:nil
                                ((identifier :target-type cluster-id :required
                                  common-lisp:t :member-name "identifier"
                                  :http-label common-lisp:t)
                                 (deletion-protection-enabled :target-type
                                  deletion-protection-enabled :member-name
                                  "deletionProtectionEnabled")
                                 (kms-encryption-key :target-type
                                  kms-encryption-key :member-name
                                  "kmsEncryptionKey")
                                 (client-token :target-type client-token
                                  :member-name "clientToken")
                                 (multi-region-properties :target-type
                                  multi-region-properties :member-name
                                  "multiRegionProperties"))
                                (:shape-name "UpdateClusterInput"))

(smithy/sdk/shapes:define-output update-cluster-output common-lisp:nil
                                 ((identifier :target-type cluster-id :required
                                   common-lisp:t :member-name "identifier")
                                  (arn :target-type cluster-arn :required
                                   common-lisp:t :member-name "arn")
                                  (status :target-type cluster-status :required
                                   common-lisp:t :member-name "status")
                                  (creation-time :target-type
                                   cluster-creation-time :required
                                   common-lisp:t :member-name "creationTime"))
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
                                (:error-code 400) (:base-class dsql-error))

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
  (:deletion-protection-enabled "deletionProtectionEnabled")
  (:other "other"))

(smithy/sdk/operation:define-operation create-cluster :shape-name
                                       "CreateCluster" :input
                                       create-cluster-input :output
                                       create-cluster-output :errors
                                       (conflict-exception
                                        service-quota-exceeded-exception
                                        validation-exception)
                                       :method "POST" :uri "/cluster" :code 200)

(smithy/sdk/operation:define-operation delete-cluster :shape-name
                                       "DeleteCluster" :input
                                       delete-cluster-input :output
                                       delete-cluster-output :errors
                                       (conflict-exception
                                        resource-not-found-exception)
                                       :method "DELETE" :uri
                                       "/cluster/{identifier}" :code 200)

(smithy/sdk/operation:define-operation get-cluster :shape-name "GetCluster"
                                       :input get-cluster-input :output
                                       get-cluster-output :errors
                                       (resource-not-found-exception) :method
                                       "GET" :uri "/cluster/{identifier}" :code
                                       200)

(smithy/sdk/operation:define-operation get-vpc-endpoint-service-name
                                       :shape-name "GetVpcEndpointServiceName"
                                       :input
                                       get-vpc-endpoint-service-name-input
                                       :output
                                       get-vpc-endpoint-service-name-output
                                       :errors
                                       (internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/clusters/{identifier}/vpc-endpoint-service-name"
                                       :code 200)

(smithy/sdk/operation:define-operation list-clusters :shape-name "ListClusters"
                                       :input list-clusters-input :output
                                       list-clusters-output :errors
                                       (resource-not-found-exception) :method
                                       "GET" :uri "/cluster" :code 200)

(smithy/sdk/operation:define-operation list-tags-for-resource :shape-name
                                       "ListTagsForResource" :input
                                       list-tags-for-resource-input :output
                                       list-tags-for-resource-output :errors
                                       (resource-not-found-exception) :method
                                       "GET" :uri "/tags/{resourceArn}")

(smithy/sdk/operation:define-operation tag-resource :shape-name "TagResource"
                                       :input tag-resource-input :output
                                       common-lisp:null :errors
                                       (resource-not-found-exception
                                        service-quota-exceeded-exception)
                                       :method "POST" :uri
                                       "/tags/{resourceArn}")

(smithy/sdk/operation:define-operation untag-resource :shape-name
                                       "UntagResource" :input
                                       untag-resource-input :output
                                       common-lisp:null :errors
                                       (resource-not-found-exception) :method
                                       "DELETE" :uri "/tags/{resourceArn}")

(smithy/sdk/operation:define-operation update-cluster :shape-name
                                       "UpdateCluster" :input
                                       update-cluster-input :output
                                       update-cluster-output :errors
                                       (conflict-exception
                                        resource-not-found-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/cluster/{identifier}" :code 200)
