(uiop/package:define-package #:pira/cloud9 (:use)
                             (:export #:awscloud9workspace-management-service
                              #:automatic-stop-time-minutes
                              #:bad-request-exception
                              #:bounded-environment-id-list
                              #:client-request-token
                              #:concurrent-access-exception
                              #:conflict-exception #:connection-type
                              #:create-environment-ec2
                              #:create-environment-membership
                              #:delete-environment
                              #:delete-environment-membership
                              #:describe-environment-memberships
                              #:describe-environment-status
                              #:describe-environments #:environment
                              #:environment-arn #:environment-description
                              #:environment-id #:environment-id-list
                              #:environment-lifecycle
                              #:environment-lifecycle-status #:environment-list
                              #:environment-member #:environment-members-list
                              #:environment-name #:environment-status
                              #:environment-type #:forbidden-exception
                              #:image-id #:instance-type #:integer
                              #:internal-server-error-exception
                              #:limit-exceeded-exception #:list-environments
                              #:list-tags-for-resource
                              #:managed-credentials-action
                              #:managed-credentials-status #:max-results
                              #:member-permissions #:not-found-exception
                              #:nullable-boolean #:permissions
                              #:permissions-list #:string #:subnet-id #:tag
                              #:tag-key #:tag-key-list #:tag-list
                              #:tag-resource #:tag-value #:timestamp
                              #:too-many-requests-exception #:untag-resource
                              #:update-environment
                              #:update-environment-membership #:user-arn
                              #:cloud9-error))
(common-lisp:in-package #:pira/cloud9)

(common-lisp:define-condition cloud9-error
    (pira/error:aws-error)
    common-lisp:nil)

(smithy/sdk/service:define-service awscloud9workspace-management-service
                                   :shape-name
                                   "AWSCloud9WorkspaceManagementService"
                                   :version "2017-09-23" :title "AWS Cloud9"
                                   :operations
                                   '(create-environment-ec2
                                     create-environment-membership
                                     delete-environment
                                     delete-environment-membership
                                     describe-environment-memberships
                                     describe-environments
                                     describe-environment-status
                                     list-environments list-tags-for-resource
                                     tag-resource untag-resource
                                     update-environment
                                     update-environment-membership)
                                   :traits
                                   '(("aws.api#service" ("sdkId" . "Cloud9")
                                      ("arnNamespace" . "cloud9")
                                      ("cloudFormationName" . "Cloud9")
                                      ("cloudTrailEventSource"
                                       . "cloud9.amazonaws.com")
                                      ("endpointPrefix" . "cloud9"))
                                     ("aws.auth#sigv4" ("name" . "cloud9"))
                                     ("aws.protocols#awsJson1_1")))

(smithy/sdk/shapes:define-type automatic-stop-time-minutes
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-error bad-request-exception common-lisp:nil
                                ((message :target-type string :member-name
                                  "message")
                                 (class-name :target-type string :member-name
                                  "className")
                                 (code :target-type integer :member-name
                                  "code"))
                                (:shape-name "BadRequestException")
                                (:error-code 400) (:base-class cloud9-error))

(smithy/sdk/shapes:define-list bounded-environment-id-list :member
                               environment-id)

(smithy/sdk/shapes:define-type client-request-token
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error concurrent-access-exception common-lisp:nil
                                ((message :target-type string :member-name
                                  "message")
                                 (class-name :target-type string :member-name
                                  "className")
                                 (code :target-type integer :member-name
                                  "code"))
                                (:shape-name "ConcurrentAccessException")
                                (:error-code 400) (:base-class cloud9-error))

(smithy/sdk/shapes:define-error conflict-exception common-lisp:nil
                                ((message :target-type string :member-name
                                  "message")
                                 (class-name :target-type string :member-name
                                  "className")
                                 (code :target-type integer :member-name
                                  "code"))
                                (:shape-name "ConflictException")
                                (:error-code 400) (:base-class cloud9-error))

(smithy/sdk/shapes:define-enum connection-type
    common-lisp:nil
  (:connect-ssh "CONNECT_SSH")
  (:connect-ssm "CONNECT_SSM"))

(smithy/sdk/shapes:define-input create-environment-ec2request common-lisp:nil
                                ((name :target-type environment-name :required
                                  common-lisp:t :member-name "name")
                                 (description :target-type
                                  environment-description :member-name
                                  "description")
                                 (client-request-token :target-type
                                  client-request-token :member-name
                                  "clientRequestToken")
                                 (instance-type :target-type instance-type
                                  :required common-lisp:t :member-name
                                  "instanceType")
                                 (subnet-id :target-type subnet-id :member-name
                                  "subnetId")
                                 (image-id :target-type image-id :required
                                  common-lisp:t :member-name "imageId")
                                 (automatic-stop-time-minutes :target-type
                                  automatic-stop-time-minutes :member-name
                                  "automaticStopTimeMinutes")
                                 (owner-arn :target-type user-arn :member-name
                                  "ownerArn")
                                 (tags :target-type tag-list :member-name
                                  "tags")
                                 (connection-type :target-type connection-type
                                  :member-name "connectionType")
                                 (dry-run :target-type nullable-boolean
                                  :member-name "dryRun"))
                                (:shape-name "CreateEnvironmentEC2Request"))

(smithy/sdk/shapes:define-output create-environment-ec2result common-lisp:nil
                                 ((environment-id :target-type environment-id
                                   :member-name "environmentId"))
                                 (:shape-name "CreateEnvironmentEC2Result"))

(smithy/sdk/shapes:define-input create-environment-membership-request
                                common-lisp:nil
                                ((environment-id :target-type environment-id
                                  :required common-lisp:t :member-name
                                  "environmentId")
                                 (user-arn :target-type user-arn :required
                                  common-lisp:t :member-name "userArn")
                                 (permissions :target-type member-permissions
                                  :required common-lisp:t :member-name
                                  "permissions"))
                                (:shape-name
                                 "CreateEnvironmentMembershipRequest"))

(smithy/sdk/shapes:define-output create-environment-membership-result
                                 common-lisp:nil
                                 ((membership :target-type environment-member
                                   :required common-lisp:t :member-name
                                   "membership"))
                                 (:shape-name
                                  "CreateEnvironmentMembershipResult"))

(smithy/sdk/shapes:define-input delete-environment-membership-request
                                common-lisp:nil
                                ((environment-id :target-type environment-id
                                  :required common-lisp:t :member-name
                                  "environmentId")
                                 (user-arn :target-type user-arn :required
                                  common-lisp:t :member-name "userArn"))
                                (:shape-name
                                 "DeleteEnvironmentMembershipRequest"))

(smithy/sdk/shapes:define-output delete-environment-membership-result
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name
                                  "DeleteEnvironmentMembershipResult"))

(smithy/sdk/shapes:define-input delete-environment-request common-lisp:nil
                                ((environment-id :target-type environment-id
                                  :required common-lisp:t :member-name
                                  "environmentId"))
                                (:shape-name "DeleteEnvironmentRequest"))

(smithy/sdk/shapes:define-output delete-environment-result common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "DeleteEnvironmentResult"))

(smithy/sdk/shapes:define-input describe-environment-memberships-request
                                common-lisp:nil
                                ((user-arn :target-type user-arn :member-name
                                  "userArn")
                                 (environment-id :target-type environment-id
                                  :member-name "environmentId")
                                 (permissions :target-type permissions-list
                                  :member-name "permissions")
                                 (next-token :target-type string :member-name
                                  "nextToken")
                                 (max-results :target-type max-results
                                  :member-name "maxResults"))
                                (:shape-name
                                 "DescribeEnvironmentMembershipsRequest"))

(smithy/sdk/shapes:define-output describe-environment-memberships-result
                                 common-lisp:nil
                                 ((memberships :target-type
                                   environment-members-list :member-name
                                   "memberships")
                                  (next-token :target-type string :member-name
                                   "nextToken"))
                                 (:shape-name
                                  "DescribeEnvironmentMembershipsResult"))

(smithy/sdk/shapes:define-input describe-environment-status-request
                                common-lisp:nil
                                ((environment-id :target-type environment-id
                                  :required common-lisp:t :member-name
                                  "environmentId"))
                                (:shape-name
                                 "DescribeEnvironmentStatusRequest"))

(smithy/sdk/shapes:define-output describe-environment-status-result
                                 common-lisp:nil
                                 ((status :target-type environment-status
                                   :required common-lisp:t :member-name
                                   "status")
                                  (message :target-type string :required
                                   common-lisp:t :member-name "message"))
                                 (:shape-name
                                  "DescribeEnvironmentStatusResult"))

(smithy/sdk/shapes:define-input describe-environments-request common-lisp:nil
                                ((environment-ids :target-type
                                  bounded-environment-id-list :required
                                  common-lisp:t :member-name "environmentIds"))
                                (:shape-name "DescribeEnvironmentsRequest"))

(smithy/sdk/shapes:define-output describe-environments-result common-lisp:nil
                                 ((environments :target-type environment-list
                                   :member-name "environments"))
                                 (:shape-name "DescribeEnvironmentsResult"))

(smithy/sdk/shapes:define-structure environment common-lisp:nil
                                    ((id :target-type environment-id
                                      :member-name "id")
                                     (name :target-type environment-name
                                      :member-name "name")
                                     (description :target-type
                                      environment-description :member-name
                                      "description")
                                     (type :target-type environment-type
                                      :required common-lisp:t :member-name
                                      "type")
                                     (connection-type :target-type
                                      connection-type :member-name
                                      "connectionType")
                                     (arn :target-type string :required
                                      common-lisp:t :member-name "arn")
                                     (owner-arn :target-type string :required
                                      common-lisp:t :member-name "ownerArn")
                                     (lifecycle :target-type
                                      environment-lifecycle :member-name
                                      "lifecycle")
                                     (managed-credentials-status :target-type
                                      managed-credentials-status :member-name
                                      "managedCredentialsStatus"))
                                    (:shape-name "Environment"))

(smithy/sdk/shapes:define-type environment-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type environment-description
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type environment-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list environment-id-list :member environment-id)

(smithy/sdk/shapes:define-structure environment-lifecycle common-lisp:nil
                                    ((status :target-type
                                      environment-lifecycle-status :member-name
                                      "status")
                                     (reason :target-type string :member-name
                                      "reason")
                                     (failure-resource :target-type string
                                      :member-name "failureResource"))
                                    (:shape-name "EnvironmentLifecycle"))

(smithy/sdk/shapes:define-enum environment-lifecycle-status
    common-lisp:nil
  (:creating "CREATING")
  (:created "CREATED")
  (:create-failed "CREATE_FAILED")
  (:deleting "DELETING")
  (:delete-failed "DELETE_FAILED"))

(smithy/sdk/shapes:define-list environment-list :member environment)

(smithy/sdk/shapes:define-structure environment-member common-lisp:nil
                                    ((permissions :target-type permissions
                                      :required common-lisp:t :member-name
                                      "permissions")
                                     (user-id :target-type string :required
                                      common-lisp:t :member-name "userId")
                                     (user-arn :target-type user-arn :required
                                      common-lisp:t :member-name "userArn")
                                     (environment-id :target-type
                                      environment-id :required common-lisp:t
                                      :member-name "environmentId")
                                     (last-access :target-type timestamp
                                      :member-name "lastAccess"))
                                    (:shape-name "EnvironmentMember"))

(smithy/sdk/shapes:define-list environment-members-list :member
                               environment-member)

(smithy/sdk/shapes:define-type environment-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum environment-status
    common-lisp:nil
  (:error "error")
  (:creating "creating")
  (:connecting "connecting")
  (:ready "ready")
  (:stopping "stopping")
  (:stopped "stopped")
  (:deleting "deleting"))

(smithy/sdk/shapes:define-enum environment-type
    common-lisp:nil
  (:ssh "ssh")
  (:ec2 "ec2"))

(smithy/sdk/shapes:define-error forbidden-exception common-lisp:nil
                                ((message :target-type string :member-name
                                  "message")
                                 (class-name :target-type string :member-name
                                  "className")
                                 (code :target-type integer :member-name
                                  "code"))
                                (:shape-name "ForbiddenException")
                                (:error-code 400) (:base-class cloud9-error))

(smithy/sdk/shapes:define-type image-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type instance-type smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type integer smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-error internal-server-error-exception common-lisp:nil
                                ((message :target-type string :member-name
                                  "message")
                                 (class-name :target-type string :member-name
                                  "className")
                                 (code :target-type integer :member-name
                                  "code"))
                                (:shape-name "InternalServerErrorException")
                                (:error-code 500) (:base-class cloud9-error))

(smithy/sdk/shapes:define-error limit-exceeded-exception common-lisp:nil
                                ((message :target-type string :member-name
                                  "message")
                                 (class-name :target-type string :member-name
                                  "className")
                                 (code :target-type integer :member-name
                                  "code"))
                                (:shape-name "LimitExceededException")
                                (:error-code 400) (:base-class cloud9-error))

(smithy/sdk/shapes:define-input list-environments-request common-lisp:nil
                                ((next-token :target-type string :member-name
                                  "nextToken")
                                 (max-results :target-type max-results
                                  :member-name "maxResults"))
                                (:shape-name "ListEnvironmentsRequest"))

(smithy/sdk/shapes:define-output list-environments-result common-lisp:nil
                                 ((next-token :target-type string :member-name
                                   "nextToken")
                                  (environment-ids :target-type
                                   environment-id-list :member-name
                                   "environmentIds"))
                                 (:shape-name "ListEnvironmentsResult"))

(smithy/sdk/shapes:define-input list-tags-for-resource-request common-lisp:nil
                                ((resource-arn :target-type environment-arn
                                  :required common-lisp:t :member-name
                                  "ResourceARN"))
                                (:shape-name "ListTagsForResourceRequest"))

(smithy/sdk/shapes:define-output list-tags-for-resource-response
                                 common-lisp:nil
                                 ((tags :target-type tag-list :member-name
                                   "Tags"))
                                 (:shape-name "ListTagsForResourceResponse"))

(smithy/sdk/shapes:define-enum managed-credentials-action
    common-lisp:nil
  (:enable "ENABLE")
  (:disable "DISABLE"))

(smithy/sdk/shapes:define-enum managed-credentials-status
    common-lisp:nil
  (:enabled-on-create "ENABLED_ON_CREATE")
  (:enabled-by-owner "ENABLED_BY_OWNER")
  (:disabled-by-default "DISABLED_BY_DEFAULT")
  (:disabled-by-owner "DISABLED_BY_OWNER")
  (:disabled-by-collaborator "DISABLED_BY_COLLABORATOR")
  (:pending-removal-by-collaborator "PENDING_REMOVAL_BY_COLLABORATOR")
  (:pending-start-removal-by-collaborator
   "PENDING_START_REMOVAL_BY_COLLABORATOR")
  (:pending-removal-by-owner "PENDING_REMOVAL_BY_OWNER")
  (:pending-start-removal-by-owner "PENDING_START_REMOVAL_BY_OWNER")
  (:failed-removal-by-collaborator "FAILED_REMOVAL_BY_COLLABORATOR")
  (:failed-removal-by-owner "FAILED_REMOVAL_BY_OWNER"))

(smithy/sdk/shapes:define-type max-results smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-enum member-permissions
    common-lisp:nil
  (:read-write "read-write")
  (:read-only "read-only"))

(smithy/sdk/shapes:define-error not-found-exception common-lisp:nil
                                ((message :target-type string :member-name
                                  "message")
                                 (class-name :target-type string :member-name
                                  "className")
                                 (code :target-type integer :member-name
                                  "code"))
                                (:shape-name "NotFoundException")
                                (:error-code 400) (:base-class cloud9-error))

(smithy/sdk/shapes:define-type nullable-boolean smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-enum permissions
    common-lisp:nil
  (:owner "owner")
  (:read-write "read-write")
  (:read-only "read-only"))

(smithy/sdk/shapes:define-list permissions-list :member permissions)

(smithy/sdk/shapes:define-type string smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type subnet-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure tag common-lisp:nil
                                    ((key :target-type tag-key :required
                                      common-lisp:t :member-name "Key")
                                     (value :target-type tag-value :required
                                      common-lisp:t :member-name "Value"))
                                    (:shape-name "Tag"))

(smithy/sdk/shapes:define-type tag-key smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list tag-key-list :member tag-key)

(smithy/sdk/shapes:define-list tag-list :member tag)

(smithy/sdk/shapes:define-input tag-resource-request common-lisp:nil
                                ((resource-arn :target-type environment-arn
                                  :required common-lisp:t :member-name
                                  "ResourceARN")
                                 (tags :target-type tag-list :required
                                  common-lisp:t :member-name "Tags"))
                                (:shape-name "TagResourceRequest"))

(smithy/sdk/shapes:define-output tag-resource-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "TagResourceResponse"))

(smithy/sdk/shapes:define-type tag-value smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type timestamp smithy/sdk/smithy-types:timestamp)

(smithy/sdk/shapes:define-error too-many-requests-exception common-lisp:nil
                                ((message :target-type string :member-name
                                  "message")
                                 (class-name :target-type string :member-name
                                  "className")
                                 (code :target-type integer :member-name
                                  "code"))
                                (:shape-name "TooManyRequestsException")
                                (:error-code 400) (:base-class cloud9-error))

(smithy/sdk/shapes:define-input untag-resource-request common-lisp:nil
                                ((resource-arn :target-type environment-arn
                                  :required common-lisp:t :member-name
                                  "ResourceARN")
                                 (tag-keys :target-type tag-key-list :required
                                  common-lisp:t :member-name "TagKeys"))
                                (:shape-name "UntagResourceRequest"))

(smithy/sdk/shapes:define-output untag-resource-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "UntagResourceResponse"))

(smithy/sdk/shapes:define-input update-environment-membership-request
                                common-lisp:nil
                                ((environment-id :target-type environment-id
                                  :required common-lisp:t :member-name
                                  "environmentId")
                                 (user-arn :target-type user-arn :required
                                  common-lisp:t :member-name "userArn")
                                 (permissions :target-type member-permissions
                                  :required common-lisp:t :member-name
                                  "permissions"))
                                (:shape-name
                                 "UpdateEnvironmentMembershipRequest"))

(smithy/sdk/shapes:define-output update-environment-membership-result
                                 common-lisp:nil
                                 ((membership :target-type environment-member
                                   :member-name "membership"))
                                 (:shape-name
                                  "UpdateEnvironmentMembershipResult"))

(smithy/sdk/shapes:define-input update-environment-request common-lisp:nil
                                ((environment-id :target-type environment-id
                                  :required common-lisp:t :member-name
                                  "environmentId")
                                 (name :target-type environment-name
                                  :member-name "name")
                                 (description :target-type
                                  environment-description :member-name
                                  "description")
                                 (managed-credentials-action :target-type
                                  managed-credentials-action :member-name
                                  "managedCredentialsAction"))
                                (:shape-name "UpdateEnvironmentRequest"))

(smithy/sdk/shapes:define-output update-environment-result common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "UpdateEnvironmentResult"))

(smithy/sdk/shapes:define-type user-arn smithy/sdk/smithy-types:string)

(smithy/sdk/operation:define-operation create-environment-ec2 :shape-name
                                       "CreateEnvironmentEC2" :input
                                       create-environment-ec2request :output
                                       create-environment-ec2result :errors
                                       (bad-request-exception
                                        conflict-exception forbidden-exception
                                        internal-server-error-exception
                                        limit-exceeded-exception
                                        not-found-exception
                                        too-many-requests-exception))

(smithy/sdk/operation:define-operation create-environment-membership
                                       :shape-name
                                       "CreateEnvironmentMembership" :input
                                       create-environment-membership-request
                                       :output
                                       create-environment-membership-result
                                       :errors
                                       (bad-request-exception
                                        conflict-exception forbidden-exception
                                        internal-server-error-exception
                                        limit-exceeded-exception
                                        not-found-exception
                                        too-many-requests-exception))

(smithy/sdk/operation:define-operation delete-environment :shape-name
                                       "DeleteEnvironment" :input
                                       delete-environment-request :output
                                       delete-environment-result :errors
                                       (bad-request-exception
                                        conflict-exception forbidden-exception
                                        internal-server-error-exception
                                        limit-exceeded-exception
                                        not-found-exception
                                        too-many-requests-exception))

(smithy/sdk/operation:define-operation delete-environment-membership
                                       :shape-name
                                       "DeleteEnvironmentMembership" :input
                                       delete-environment-membership-request
                                       :output
                                       delete-environment-membership-result
                                       :errors
                                       (bad-request-exception
                                        conflict-exception forbidden-exception
                                        internal-server-error-exception
                                        limit-exceeded-exception
                                        not-found-exception
                                        too-many-requests-exception))

(smithy/sdk/operation:define-operation describe-environment-memberships
                                       :shape-name
                                       "DescribeEnvironmentMemberships" :input
                                       describe-environment-memberships-request
                                       :output
                                       describe-environment-memberships-result
                                       :errors
                                       (bad-request-exception
                                        conflict-exception forbidden-exception
                                        internal-server-error-exception
                                        limit-exceeded-exception
                                        not-found-exception
                                        too-many-requests-exception))

(smithy/sdk/operation:define-operation describe-environment-status :shape-name
                                       "DescribeEnvironmentStatus" :input
                                       describe-environment-status-request
                                       :output
                                       describe-environment-status-result
                                       :errors
                                       (bad-request-exception
                                        conflict-exception forbidden-exception
                                        internal-server-error-exception
                                        limit-exceeded-exception
                                        not-found-exception
                                        too-many-requests-exception))

(smithy/sdk/operation:define-operation describe-environments :shape-name
                                       "DescribeEnvironments" :input
                                       describe-environments-request :output
                                       describe-environments-result :errors
                                       (bad-request-exception
                                        conflict-exception forbidden-exception
                                        internal-server-error-exception
                                        limit-exceeded-exception
                                        not-found-exception
                                        too-many-requests-exception))

(smithy/sdk/operation:define-operation list-environments :shape-name
                                       "ListEnvironments" :input
                                       list-environments-request :output
                                       list-environments-result :errors
                                       (bad-request-exception
                                        conflict-exception forbidden-exception
                                        internal-server-error-exception
                                        limit-exceeded-exception
                                        not-found-exception
                                        too-many-requests-exception))

(smithy/sdk/operation:define-operation list-tags-for-resource :shape-name
                                       "ListTagsForResource" :input
                                       list-tags-for-resource-request :output
                                       list-tags-for-resource-response :errors
                                       (bad-request-exception
                                        internal-server-error-exception
                                        not-found-exception))

(smithy/sdk/operation:define-operation tag-resource :shape-name "TagResource"
                                       :input tag-resource-request :output
                                       tag-resource-response :errors
                                       (bad-request-exception
                                        concurrent-access-exception
                                        internal-server-error-exception
                                        not-found-exception))

(smithy/sdk/operation:define-operation untag-resource :shape-name
                                       "UntagResource" :input
                                       untag-resource-request :output
                                       untag-resource-response :errors
                                       (bad-request-exception
                                        concurrent-access-exception
                                        internal-server-error-exception
                                        not-found-exception))

(smithy/sdk/operation:define-operation update-environment :shape-name
                                       "UpdateEnvironment" :input
                                       update-environment-request :output
                                       update-environment-result :errors
                                       (bad-request-exception
                                        conflict-exception forbidden-exception
                                        internal-server-error-exception
                                        limit-exceeded-exception
                                        not-found-exception
                                        too-many-requests-exception))

(smithy/sdk/operation:define-operation update-environment-membership
                                       :shape-name
                                       "UpdateEnvironmentMembership" :input
                                       update-environment-membership-request
                                       :output
                                       update-environment-membership-result
                                       :errors
                                       (bad-request-exception
                                        conflict-exception forbidden-exception
                                        internal-server-error-exception
                                        limit-exceeded-exception
                                        not-found-exception
                                        too-many-requests-exception))
