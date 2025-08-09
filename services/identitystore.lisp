(uiop/package:define-package #:pira/identitystore (:use)
                             (:export #:awsidentity-store
                              #:access-denied-exception #:address #:addresses
                              #:alternate-identifier #:attribute-operation
                              #:attribute-operations #:attribute-path
                              #:attribute-value #:conflict-exception
                              #:conflict-exception-reason #:create-group
                              #:create-group-membership
                              #:create-group-membership-request
                              #:create-group-membership-response
                              #:create-group-request #:create-group-response
                              #:create-user #:create-user-request
                              #:create-user-response #:delete-group
                              #:delete-group-membership
                              #:delete-group-membership-request
                              #:delete-group-membership-response
                              #:delete-group-request #:delete-group-response
                              #:delete-user #:delete-user-request
                              #:delete-user-response #:describe-group
                              #:describe-group-membership
                              #:describe-group-membership-request
                              #:describe-group-membership-response
                              #:describe-group-request
                              #:describe-group-response #:describe-user
                              #:describe-user-request #:describe-user-response
                              #:email #:emails #:exception-message
                              #:external-id #:external-id-identifier
                              #:external-id-issuer #:external-ids #:filter
                              #:filters #:get-group-id #:get-group-id-request
                              #:get-group-id-response #:get-group-membership-id
                              #:get-group-membership-id-request
                              #:get-group-membership-id-response #:get-user-id
                              #:get-user-id-request #:get-user-id-response
                              #:group #:group-display-name #:group-ids
                              #:group-membership
                              #:group-membership-existence-result
                              #:group-membership-existence-results
                              #:group-membership-resource #:group-memberships
                              #:group-resource #:groups #:identity-store-id
                              #:internal-server-exception #:is-member-in-groups
                              #:is-member-in-groups-request
                              #:is-member-in-groups-response
                              #:list-group-memberships
                              #:list-group-memberships-for-member
                              #:list-group-memberships-for-member-request
                              #:list-group-memberships-for-member-response
                              #:list-group-memberships-request
                              #:list-group-memberships-response #:list-groups
                              #:list-groups-request #:list-groups-response
                              #:list-users #:list-users-request
                              #:list-users-response #:max-results #:member-id
                              #:name #:next-token #:phone-number
                              #:phone-numbers #:request-id #:resource-id
                              #:resource-not-found-exception #:resource-type
                              #:retry-after-seconds #:sensitive-boolean-type
                              #:sensitive-string-type
                              #:service-quota-exceeded-exception
                              #:throttling-exception #:unique-attribute
                              #:update-group #:update-group-request
                              #:update-group-response #:update-user
                              #:update-user-request #:update-user-response
                              #:user #:user-name #:user-resource #:users
                              #:validation-exception))
(common-lisp:in-package #:pira/identitystore)

(smithy/sdk/service:define-service awsidentity-store :shape-name
                                   "AWSIdentityStore" :version "2020-06-15"
                                   :title "AWS SSO Identity Store" :errors
                                   '(access-denied-exception
                                     internal-server-exception
                                     throttling-exception)
                                   :traits
                                   '(("aws.api#service"
                                      ("sdkId" . "identitystore")
                                      ("arnNamespace" . "identitystore")
                                      ("cloudFormationName" . "IdentityStore")
                                      ("cloudTrailEventSource"
                                       . "identitystore.amazonaws.com")
                                      ("endpointPrefix" . "identitystore"))
                                     ("aws.auth#sigv4"
                                      ("name" . "identitystore"))
                                     ("aws.protocols#awsJson1_1")))

(smithy/sdk/shapes:define-error access-denied-exception common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "Message")
                                 (request-id :target-type request-id
                                  :member-name "RequestId"))
                                (:shape-name "AccessDeniedException")
                                (:error-code 403))

(smithy/sdk/shapes:define-structure address common-lisp:nil
                                    ((street-address :target-type
                                      sensitive-string-type :member-name
                                      "StreetAddress")
                                     (locality :target-type
                                      sensitive-string-type :member-name
                                      "Locality")
                                     (region :target-type sensitive-string-type
                                      :member-name "Region")
                                     (postal-code :target-type
                                      sensitive-string-type :member-name
                                      "PostalCode")
                                     (country :target-type
                                      sensitive-string-type :member-name
                                      "Country")
                                     (formatted :target-type
                                      sensitive-string-type :member-name
                                      "Formatted")
                                     (type :target-type sensitive-string-type
                                      :member-name "Type")
                                     (primary :target-type
                                      sensitive-boolean-type :member-name
                                      "Primary"))
                                    (:shape-name "Address"))

(smithy/sdk/shapes:define-list addresses :member address)

(smithy/sdk/shapes:define-union alternate-identifier common-lisp:nil
                                ((external-id :target-type external-id
                                  :member-name "ExternalId")
                                 (unique-attribute :target-type
                                  unique-attribute :member-name
                                  "UniqueAttribute"))
                                (:shape-name "AlternateIdentifier"))

(smithy/sdk/shapes:define-structure attribute-operation common-lisp:nil
                                    ((attribute-path :target-type
                                      attribute-path :required common-lisp:t
                                      :member-name "AttributePath")
                                     (attribute-value :target-type
                                      attribute-value :member-name
                                      "AttributeValue"))
                                    (:shape-name "AttributeOperation"))

(smithy/sdk/shapes:define-list attribute-operations :member attribute-operation)

(smithy/sdk/shapes:define-type attribute-path smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type attribute-value smithy/sdk/smithy-types:document)

(smithy/sdk/shapes:define-error conflict-exception common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "Message")
                                 (request-id :target-type request-id
                                  :member-name "RequestId")
                                 (reason :target-type conflict-exception-reason
                                  :member-name "Reason"))
                                (:shape-name "ConflictException")
                                (:error-code 409))

(smithy/sdk/shapes:define-type conflict-exception-reason
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure create-group-membership-request
                                    common-lisp:nil
                                    ((identity-store-id :target-type
                                      identity-store-id :required common-lisp:t
                                      :member-name "IdentityStoreId")
                                     (group-id :target-type resource-id
                                      :required common-lisp:t :member-name
                                      "GroupId")
                                     (member-id :target-type member-id
                                      :required common-lisp:t :member-name
                                      "MemberId"))
                                    (:shape-name
                                     "CreateGroupMembershipRequest"))

(smithy/sdk/shapes:define-structure create-group-membership-response
                                    common-lisp:nil
                                    ((membership-id :target-type resource-id
                                      :required common-lisp:t :member-name
                                      "MembershipId")
                                     (identity-store-id :target-type
                                      identity-store-id :required common-lisp:t
                                      :member-name "IdentityStoreId"))
                                    (:shape-name
                                     "CreateGroupMembershipResponse"))

(smithy/sdk/shapes:define-structure create-group-request common-lisp:nil
                                    ((identity-store-id :target-type
                                      identity-store-id :required common-lisp:t
                                      :member-name "IdentityStoreId")
                                     (display-name :target-type
                                      group-display-name :member-name
                                      "DisplayName")
                                     (description :target-type
                                      sensitive-string-type :member-name
                                      "Description"))
                                    (:shape-name "CreateGroupRequest"))

(smithy/sdk/shapes:define-structure create-group-response common-lisp:nil
                                    ((group-id :target-type resource-id
                                      :required common-lisp:t :member-name
                                      "GroupId")
                                     (identity-store-id :target-type
                                      identity-store-id :required common-lisp:t
                                      :member-name "IdentityStoreId"))
                                    (:shape-name "CreateGroupResponse"))

(smithy/sdk/shapes:define-structure create-user-request common-lisp:nil
                                    ((identity-store-id :target-type
                                      identity-store-id :required common-lisp:t
                                      :member-name "IdentityStoreId")
                                     (user-name :target-type user-name
                                      :member-name "UserName")
                                     (name :target-type name :member-name
                                      "Name")
                                     (display-name :target-type
                                      sensitive-string-type :member-name
                                      "DisplayName")
                                     (nick-name :target-type
                                      sensitive-string-type :member-name
                                      "NickName")
                                     (profile-url :target-type
                                      sensitive-string-type :member-name
                                      "ProfileUrl")
                                     (emails :target-type emails :member-name
                                      "Emails")
                                     (addresses :target-type addresses
                                      :member-name "Addresses")
                                     (phone-numbers :target-type phone-numbers
                                      :member-name "PhoneNumbers")
                                     (user-type :target-type
                                      sensitive-string-type :member-name
                                      "UserType")
                                     (title :target-type sensitive-string-type
                                      :member-name "Title")
                                     (preferred-language :target-type
                                      sensitive-string-type :member-name
                                      "PreferredLanguage")
                                     (locale :target-type sensitive-string-type
                                      :member-name "Locale")
                                     (timezone :target-type
                                      sensitive-string-type :member-name
                                      "Timezone"))
                                    (:shape-name "CreateUserRequest"))

(smithy/sdk/shapes:define-structure create-user-response common-lisp:nil
                                    ((user-id :target-type resource-id
                                      :required common-lisp:t :member-name
                                      "UserId")
                                     (identity-store-id :target-type
                                      identity-store-id :required common-lisp:t
                                      :member-name "IdentityStoreId"))
                                    (:shape-name "CreateUserResponse"))

(smithy/sdk/shapes:define-structure delete-group-membership-request
                                    common-lisp:nil
                                    ((identity-store-id :target-type
                                      identity-store-id :required common-lisp:t
                                      :member-name "IdentityStoreId")
                                     (membership-id :target-type resource-id
                                      :required common-lisp:t :member-name
                                      "MembershipId"))
                                    (:shape-name
                                     "DeleteGroupMembershipRequest"))

(smithy/sdk/shapes:define-structure delete-group-membership-response
                                    common-lisp:nil common-lisp:nil
                                    (:shape-name
                                     "DeleteGroupMembershipResponse"))

(smithy/sdk/shapes:define-structure delete-group-request common-lisp:nil
                                    ((identity-store-id :target-type
                                      identity-store-id :required common-lisp:t
                                      :member-name "IdentityStoreId")
                                     (group-id :target-type resource-id
                                      :required common-lisp:t :member-name
                                      "GroupId"))
                                    (:shape-name "DeleteGroupRequest"))

(smithy/sdk/shapes:define-structure delete-group-response common-lisp:nil
                                    common-lisp:nil
                                    (:shape-name "DeleteGroupResponse"))

(smithy/sdk/shapes:define-structure delete-user-request common-lisp:nil
                                    ((identity-store-id :target-type
                                      identity-store-id :required common-lisp:t
                                      :member-name "IdentityStoreId")
                                     (user-id :target-type resource-id
                                      :required common-lisp:t :member-name
                                      "UserId"))
                                    (:shape-name "DeleteUserRequest"))

(smithy/sdk/shapes:define-structure delete-user-response common-lisp:nil
                                    common-lisp:nil
                                    (:shape-name "DeleteUserResponse"))

(smithy/sdk/shapes:define-structure describe-group-membership-request
                                    common-lisp:nil
                                    ((identity-store-id :target-type
                                      identity-store-id :required common-lisp:t
                                      :member-name "IdentityStoreId")
                                     (membership-id :target-type resource-id
                                      :required common-lisp:t :member-name
                                      "MembershipId"))
                                    (:shape-name
                                     "DescribeGroupMembershipRequest"))

(smithy/sdk/shapes:define-structure describe-group-membership-response
                                    common-lisp:nil
                                    ((identity-store-id :target-type
                                      identity-store-id :required common-lisp:t
                                      :member-name "IdentityStoreId")
                                     (membership-id :target-type resource-id
                                      :required common-lisp:t :member-name
                                      "MembershipId")
                                     (group-id :target-type resource-id
                                      :required common-lisp:t :member-name
                                      "GroupId")
                                     (member-id :target-type member-id
                                      :required common-lisp:t :member-name
                                      "MemberId"))
                                    (:shape-name
                                     "DescribeGroupMembershipResponse"))

(smithy/sdk/shapes:define-structure describe-group-request common-lisp:nil
                                    ((identity-store-id :target-type
                                      identity-store-id :required common-lisp:t
                                      :member-name "IdentityStoreId")
                                     (group-id :target-type resource-id
                                      :required common-lisp:t :member-name
                                      "GroupId"))
                                    (:shape-name "DescribeGroupRequest"))

(smithy/sdk/shapes:define-structure describe-group-response common-lisp:nil
                                    ((group-id :target-type resource-id
                                      :required common-lisp:t :member-name
                                      "GroupId")
                                     (display-name :target-type
                                      group-display-name :member-name
                                      "DisplayName")
                                     (external-ids :target-type external-ids
                                      :member-name "ExternalIds")
                                     (description :target-type
                                      sensitive-string-type :member-name
                                      "Description")
                                     (identity-store-id :target-type
                                      identity-store-id :required common-lisp:t
                                      :member-name "IdentityStoreId"))
                                    (:shape-name "DescribeGroupResponse"))

(smithy/sdk/shapes:define-structure describe-user-request common-lisp:nil
                                    ((identity-store-id :target-type
                                      identity-store-id :required common-lisp:t
                                      :member-name "IdentityStoreId")
                                     (user-id :target-type resource-id
                                      :required common-lisp:t :member-name
                                      "UserId"))
                                    (:shape-name "DescribeUserRequest"))

(smithy/sdk/shapes:define-structure describe-user-response common-lisp:nil
                                    ((user-name :target-type user-name
                                      :member-name "UserName")
                                     (user-id :target-type resource-id
                                      :required common-lisp:t :member-name
                                      "UserId")
                                     (external-ids :target-type external-ids
                                      :member-name "ExternalIds")
                                     (name :target-type name :member-name
                                      "Name")
                                     (display-name :target-type
                                      sensitive-string-type :member-name
                                      "DisplayName")
                                     (nick-name :target-type
                                      sensitive-string-type :member-name
                                      "NickName")
                                     (profile-url :target-type
                                      sensitive-string-type :member-name
                                      "ProfileUrl")
                                     (emails :target-type emails :member-name
                                      "Emails")
                                     (addresses :target-type addresses
                                      :member-name "Addresses")
                                     (phone-numbers :target-type phone-numbers
                                      :member-name "PhoneNumbers")
                                     (user-type :target-type
                                      sensitive-string-type :member-name
                                      "UserType")
                                     (title :target-type sensitive-string-type
                                      :member-name "Title")
                                     (preferred-language :target-type
                                      sensitive-string-type :member-name
                                      "PreferredLanguage")
                                     (locale :target-type sensitive-string-type
                                      :member-name "Locale")
                                     (timezone :target-type
                                      sensitive-string-type :member-name
                                      "Timezone")
                                     (identity-store-id :target-type
                                      identity-store-id :required common-lisp:t
                                      :member-name "IdentityStoreId"))
                                    (:shape-name "DescribeUserResponse"))

(smithy/sdk/shapes:define-structure email common-lisp:nil
                                    ((value :target-type sensitive-string-type
                                      :member-name "Value")
                                     (type :target-type sensitive-string-type
                                      :member-name "Type")
                                     (primary :target-type
                                      sensitive-boolean-type :member-name
                                      "Primary"))
                                    (:shape-name "Email"))

(smithy/sdk/shapes:define-list emails :member email)

(smithy/sdk/shapes:define-type exception-message smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure external-id common-lisp:nil
                                    ((issuer :target-type external-id-issuer
                                      :required common-lisp:t :member-name
                                      "Issuer")
                                     (id :target-type external-id-identifier
                                      :required common-lisp:t :member-name
                                      "Id"))
                                    (:shape-name "ExternalId"))

(smithy/sdk/shapes:define-type external-id-identifier
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type external-id-issuer
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list external-ids :member external-id)

(smithy/sdk/shapes:define-structure filter common-lisp:nil
                                    ((attribute-path :target-type
                                      attribute-path :required common-lisp:t
                                      :member-name "AttributePath")
                                     (attribute-value :target-type
                                      sensitive-string-type :required
                                      common-lisp:t :member-name
                                      "AttributeValue"))
                                    (:shape-name "Filter"))

(smithy/sdk/shapes:define-list filters :member filter)

(smithy/sdk/shapes:define-structure get-group-id-request common-lisp:nil
                                    ((identity-store-id :target-type
                                      identity-store-id :required common-lisp:t
                                      :member-name "IdentityStoreId")
                                     (alternate-identifier :target-type
                                      alternate-identifier :required
                                      common-lisp:t :member-name
                                      "AlternateIdentifier"))
                                    (:shape-name "GetGroupIdRequest"))

(smithy/sdk/shapes:define-structure get-group-id-response common-lisp:nil
                                    ((group-id :target-type resource-id
                                      :required common-lisp:t :member-name
                                      "GroupId")
                                     (identity-store-id :target-type
                                      identity-store-id :required common-lisp:t
                                      :member-name "IdentityStoreId"))
                                    (:shape-name "GetGroupIdResponse"))

(smithy/sdk/shapes:define-structure get-group-membership-id-request
                                    common-lisp:nil
                                    ((identity-store-id :target-type
                                      identity-store-id :required common-lisp:t
                                      :member-name "IdentityStoreId")
                                     (group-id :target-type resource-id
                                      :required common-lisp:t :member-name
                                      "GroupId")
                                     (member-id :target-type member-id
                                      :required common-lisp:t :member-name
                                      "MemberId"))
                                    (:shape-name "GetGroupMembershipIdRequest"))

(smithy/sdk/shapes:define-structure get-group-membership-id-response
                                    common-lisp:nil
                                    ((membership-id :target-type resource-id
                                      :required common-lisp:t :member-name
                                      "MembershipId")
                                     (identity-store-id :target-type
                                      identity-store-id :required common-lisp:t
                                      :member-name "IdentityStoreId"))
                                    (:shape-name
                                     "GetGroupMembershipIdResponse"))

(smithy/sdk/shapes:define-structure get-user-id-request common-lisp:nil
                                    ((identity-store-id :target-type
                                      identity-store-id :required common-lisp:t
                                      :member-name "IdentityStoreId")
                                     (alternate-identifier :target-type
                                      alternate-identifier :required
                                      common-lisp:t :member-name
                                      "AlternateIdentifier"))
                                    (:shape-name "GetUserIdRequest"))

(smithy/sdk/shapes:define-structure get-user-id-response common-lisp:nil
                                    ((user-id :target-type resource-id
                                      :required common-lisp:t :member-name
                                      "UserId")
                                     (identity-store-id :target-type
                                      identity-store-id :required common-lisp:t
                                      :member-name "IdentityStoreId"))
                                    (:shape-name "GetUserIdResponse"))

(smithy/sdk/shapes:define-structure group common-lisp:nil
                                    ((group-id :target-type resource-id
                                      :required common-lisp:t :member-name
                                      "GroupId")
                                     (display-name :target-type
                                      group-display-name :member-name
                                      "DisplayName")
                                     (external-ids :target-type external-ids
                                      :member-name "ExternalIds")
                                     (description :target-type
                                      sensitive-string-type :member-name
                                      "Description")
                                     (identity-store-id :target-type
                                      identity-store-id :required common-lisp:t
                                      :member-name "IdentityStoreId"))
                                    (:shape-name "Group"))

(smithy/sdk/shapes:define-type group-display-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list group-ids :member resource-id)

(smithy/sdk/shapes:define-structure group-membership common-lisp:nil
                                    ((identity-store-id :target-type
                                      identity-store-id :required common-lisp:t
                                      :member-name "IdentityStoreId")
                                     (membership-id :target-type resource-id
                                      :member-name "MembershipId")
                                     (group-id :target-type resource-id
                                      :member-name "GroupId")
                                     (member-id :target-type member-id
                                      :member-name "MemberId"))
                                    (:shape-name "GroupMembership"))

(smithy/sdk/shapes:define-structure group-membership-existence-result
                                    common-lisp:nil
                                    ((group-id :target-type resource-id
                                      :member-name "GroupId")
                                     (member-id :target-type member-id
                                      :member-name "MemberId")
                                     (membership-exists :target-type
                                      sensitive-boolean-type :member-name
                                      "MembershipExists"))
                                    (:shape-name
                                     "GroupMembershipExistenceResult"))

(smithy/sdk/shapes:define-list group-membership-existence-results :member
                               group-membership-existence-result)

common-lisp:nil

(smithy/sdk/shapes:define-list group-memberships :member group-membership)

common-lisp:nil

(smithy/sdk/shapes:define-list groups :member group)

(smithy/sdk/shapes:define-type identity-store-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error internal-server-exception common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "Message")
                                 (request-id :target-type request-id
                                  :member-name "RequestId")
                                 (retry-after-seconds :target-type
                                  retry-after-seconds :member-name
                                  "RetryAfterSeconds" :http-header
                                  "Retry-After"))
                                (:shape-name "InternalServerException")
                                (:error-code 500))

(smithy/sdk/shapes:define-structure is-member-in-groups-request common-lisp:nil
                                    ((identity-store-id :target-type
                                      identity-store-id :required common-lisp:t
                                      :member-name "IdentityStoreId")
                                     (member-id :target-type member-id
                                      :required common-lisp:t :member-name
                                      "MemberId")
                                     (group-ids :target-type group-ids
                                      :required common-lisp:t :member-name
                                      "GroupIds"))
                                    (:shape-name "IsMemberInGroupsRequest"))

(smithy/sdk/shapes:define-structure is-member-in-groups-response
                                    common-lisp:nil
                                    ((results :target-type
                                      group-membership-existence-results
                                      :required common-lisp:t :member-name
                                      "Results"))
                                    (:shape-name "IsMemberInGroupsResponse"))

(smithy/sdk/shapes:define-structure list-group-memberships-for-member-request
                                    common-lisp:nil
                                    ((identity-store-id :target-type
                                      identity-store-id :required common-lisp:t
                                      :member-name "IdentityStoreId")
                                     (member-id :target-type member-id
                                      :required common-lisp:t :member-name
                                      "MemberId")
                                     (max-results :target-type max-results
                                      :member-name "MaxResults")
                                     (next-token :target-type next-token
                                      :member-name "NextToken"))
                                    (:shape-name
                                     "ListGroupMembershipsForMemberRequest"))

(smithy/sdk/shapes:define-structure list-group-memberships-for-member-response
                                    common-lisp:nil
                                    ((group-memberships :target-type
                                      group-memberships :required common-lisp:t
                                      :member-name "GroupMemberships")
                                     (next-token :target-type next-token
                                      :member-name "NextToken"))
                                    (:shape-name
                                     "ListGroupMembershipsForMemberResponse"))

(smithy/sdk/shapes:define-structure list-group-memberships-request
                                    common-lisp:nil
                                    ((identity-store-id :target-type
                                      identity-store-id :required common-lisp:t
                                      :member-name "IdentityStoreId")
                                     (group-id :target-type resource-id
                                      :required common-lisp:t :member-name
                                      "GroupId")
                                     (max-results :target-type max-results
                                      :member-name "MaxResults")
                                     (next-token :target-type next-token
                                      :member-name "NextToken"))
                                    (:shape-name "ListGroupMembershipsRequest"))

(smithy/sdk/shapes:define-structure list-group-memberships-response
                                    common-lisp:nil
                                    ((group-memberships :target-type
                                      group-memberships :required common-lisp:t
                                      :member-name "GroupMemberships")
                                     (next-token :target-type next-token
                                      :member-name "NextToken"))
                                    (:shape-name
                                     "ListGroupMembershipsResponse"))

(smithy/sdk/shapes:define-structure list-groups-request common-lisp:nil
                                    ((identity-store-id :target-type
                                      identity-store-id :required common-lisp:t
                                      :member-name "IdentityStoreId")
                                     (max-results :target-type max-results
                                      :member-name "MaxResults")
                                     (next-token :target-type next-token
                                      :member-name "NextToken")
                                     (filters :target-type filters :member-name
                                      "Filters"))
                                    (:shape-name "ListGroupsRequest"))

(smithy/sdk/shapes:define-structure list-groups-response common-lisp:nil
                                    ((groups :target-type groups :required
                                      common-lisp:t :member-name "Groups")
                                     (next-token :target-type next-token
                                      :member-name "NextToken"))
                                    (:shape-name "ListGroupsResponse"))

(smithy/sdk/shapes:define-structure list-users-request common-lisp:nil
                                    ((identity-store-id :target-type
                                      identity-store-id :required common-lisp:t
                                      :member-name "IdentityStoreId")
                                     (max-results :target-type max-results
                                      :member-name "MaxResults")
                                     (next-token :target-type next-token
                                      :member-name "NextToken")
                                     (filters :target-type filters :member-name
                                      "Filters"))
                                    (:shape-name "ListUsersRequest"))

(smithy/sdk/shapes:define-structure list-users-response common-lisp:nil
                                    ((users :target-type users :required
                                      common-lisp:t :member-name "Users")
                                     (next-token :target-type next-token
                                      :member-name "NextToken"))
                                    (:shape-name "ListUsersResponse"))

(smithy/sdk/shapes:define-type max-results smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-union member-id common-lisp:nil
                                ((user-id :target-type resource-id :member-name
                                  "UserId"))
                                (:shape-name "MemberId"))

(smithy/sdk/shapes:define-structure name common-lisp:nil
                                    ((formatted :target-type
                                      sensitive-string-type :member-name
                                      "Formatted")
                                     (family-name :target-type
                                      sensitive-string-type :member-name
                                      "FamilyName")
                                     (given-name :target-type
                                      sensitive-string-type :member-name
                                      "GivenName")
                                     (middle-name :target-type
                                      sensitive-string-type :member-name
                                      "MiddleName")
                                     (honorific-prefix :target-type
                                      sensitive-string-type :member-name
                                      "HonorificPrefix")
                                     (honorific-suffix :target-type
                                      sensitive-string-type :member-name
                                      "HonorificSuffix"))
                                    (:shape-name "Name"))

(smithy/sdk/shapes:define-type next-token smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure phone-number common-lisp:nil
                                    ((value :target-type sensitive-string-type
                                      :member-name "Value")
                                     (type :target-type sensitive-string-type
                                      :member-name "Type")
                                     (primary :target-type
                                      sensitive-boolean-type :member-name
                                      "Primary"))
                                    (:shape-name "PhoneNumber"))

(smithy/sdk/shapes:define-list phone-numbers :member phone-number)

(smithy/sdk/shapes:define-type request-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type resource-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error resource-not-found-exception common-lisp:nil
                                ((resource-type :target-type resource-type
                                  :member-name "ResourceType")
                                 (resource-id :target-type resource-id
                                  :member-name "ResourceId")
                                 (message :target-type exception-message
                                  :member-name "Message")
                                 (request-id :target-type request-id
                                  :member-name "RequestId"))
                                (:shape-name "ResourceNotFoundException")
                                (:error-code 404))

(smithy/sdk/shapes:define-type resource-type smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type retry-after-seconds
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type sensitive-boolean-type
                               smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-type sensitive-string-type
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error service-quota-exceeded-exception
                                common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "Message")
                                 (request-id :target-type request-id
                                  :member-name "RequestId"))
                                (:shape-name "ServiceQuotaExceededException")
                                (:error-code 402))

(smithy/sdk/shapes:define-error throttling-exception common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "Message")
                                 (request-id :target-type request-id
                                  :member-name "RequestId")
                                 (retry-after-seconds :target-type
                                  retry-after-seconds :member-name
                                  "RetryAfterSeconds" :http-header
                                  "Retry-After"))
                                (:shape-name "ThrottlingException")
                                (:error-code 429))

(smithy/sdk/shapes:define-structure unique-attribute common-lisp:nil
                                    ((attribute-path :target-type
                                      attribute-path :required common-lisp:t
                                      :member-name "AttributePath")
                                     (attribute-value :target-type
                                      attribute-value :required common-lisp:t
                                      :member-name "AttributeValue"))
                                    (:shape-name "UniqueAttribute"))

(smithy/sdk/shapes:define-structure update-group-request common-lisp:nil
                                    ((identity-store-id :target-type
                                      identity-store-id :required common-lisp:t
                                      :member-name "IdentityStoreId")
                                     (group-id :target-type resource-id
                                      :required common-lisp:t :member-name
                                      "GroupId")
                                     (operations :target-type
                                      attribute-operations :required
                                      common-lisp:t :member-name "Operations"))
                                    (:shape-name "UpdateGroupRequest"))

(smithy/sdk/shapes:define-structure update-group-response common-lisp:nil
                                    common-lisp:nil
                                    (:shape-name "UpdateGroupResponse"))

(smithy/sdk/shapes:define-structure update-user-request common-lisp:nil
                                    ((identity-store-id :target-type
                                      identity-store-id :required common-lisp:t
                                      :member-name "IdentityStoreId")
                                     (user-id :target-type resource-id
                                      :required common-lisp:t :member-name
                                      "UserId")
                                     (operations :target-type
                                      attribute-operations :required
                                      common-lisp:t :member-name "Operations"))
                                    (:shape-name "UpdateUserRequest"))

(smithy/sdk/shapes:define-structure update-user-response common-lisp:nil
                                    common-lisp:nil
                                    (:shape-name "UpdateUserResponse"))

(smithy/sdk/shapes:define-structure user common-lisp:nil
                                    ((user-name :target-type user-name
                                      :member-name "UserName")
                                     (user-id :target-type resource-id
                                      :required common-lisp:t :member-name
                                      "UserId")
                                     (external-ids :target-type external-ids
                                      :member-name "ExternalIds")
                                     (name :target-type name :member-name
                                      "Name")
                                     (display-name :target-type
                                      sensitive-string-type :member-name
                                      "DisplayName")
                                     (nick-name :target-type
                                      sensitive-string-type :member-name
                                      "NickName")
                                     (profile-url :target-type
                                      sensitive-string-type :member-name
                                      "ProfileUrl")
                                     (emails :target-type emails :member-name
                                      "Emails")
                                     (addresses :target-type addresses
                                      :member-name "Addresses")
                                     (phone-numbers :target-type phone-numbers
                                      :member-name "PhoneNumbers")
                                     (user-type :target-type
                                      sensitive-string-type :member-name
                                      "UserType")
                                     (title :target-type sensitive-string-type
                                      :member-name "Title")
                                     (preferred-language :target-type
                                      sensitive-string-type :member-name
                                      "PreferredLanguage")
                                     (locale :target-type sensitive-string-type
                                      :member-name "Locale")
                                     (timezone :target-type
                                      sensitive-string-type :member-name
                                      "Timezone")
                                     (identity-store-id :target-type
                                      identity-store-id :required common-lisp:t
                                      :member-name "IdentityStoreId"))
                                    (:shape-name "User"))

(smithy/sdk/shapes:define-type user-name smithy/sdk/smithy-types:string)

common-lisp:nil

(smithy/sdk/shapes:define-list users :member user)

(smithy/sdk/shapes:define-error validation-exception common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "Message")
                                 (request-id :target-type request-id
                                  :member-name "RequestId"))
                                (:shape-name "ValidationException")
                                (:error-code 400))

(smithy/sdk/operation:define-operation create-group :shape-name "CreateGroup"
                                       :input create-group-request :output
                                       create-group-response :errors
                                       (conflict-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation create-group-membership :shape-name
                                       "CreateGroupMembership" :input
                                       create-group-membership-request :output
                                       create-group-membership-response :errors
                                       (conflict-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation create-user :shape-name "CreateUser"
                                       :input create-user-request :output
                                       create-user-response :errors
                                       (conflict-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation delete-group :shape-name "DeleteGroup"
                                       :input delete-group-request :output
                                       delete-group-response :errors
                                       (conflict-exception
                                        resource-not-found-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation delete-group-membership :shape-name
                                       "DeleteGroupMembership" :input
                                       delete-group-membership-request :output
                                       delete-group-membership-response :errors
                                       (conflict-exception
                                        resource-not-found-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation delete-user :shape-name "DeleteUser"
                                       :input delete-user-request :output
                                       delete-user-response :errors
                                       (conflict-exception
                                        resource-not-found-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation describe-group :shape-name
                                       "DescribeGroup" :input
                                       describe-group-request :output
                                       describe-group-response :errors
                                       (resource-not-found-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation describe-group-membership :shape-name
                                       "DescribeGroupMembership" :input
                                       describe-group-membership-request
                                       :output
                                       describe-group-membership-response
                                       :errors
                                       (resource-not-found-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation describe-user :shape-name "DescribeUser"
                                       :input describe-user-request :output
                                       describe-user-response :errors
                                       (resource-not-found-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation get-group-id :shape-name "GetGroupId"
                                       :input get-group-id-request :output
                                       get-group-id-response :errors
                                       (resource-not-found-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation get-group-membership-id :shape-name
                                       "GetGroupMembershipId" :input
                                       get-group-membership-id-request :output
                                       get-group-membership-id-response :errors
                                       (resource-not-found-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation get-user-id :shape-name "GetUserId"
                                       :input get-user-id-request :output
                                       get-user-id-response :errors
                                       (resource-not-found-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation is-member-in-groups :shape-name
                                       "IsMemberInGroups" :input
                                       is-member-in-groups-request :output
                                       is-member-in-groups-response :errors
                                       (resource-not-found-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation list-group-memberships :shape-name
                                       "ListGroupMemberships" :input
                                       list-group-memberships-request :output
                                       list-group-memberships-response :errors
                                       (resource-not-found-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation list-group-memberships-for-member
                                       :shape-name
                                       "ListGroupMembershipsForMember" :input
                                       list-group-memberships-for-member-request
                                       :output
                                       list-group-memberships-for-member-response
                                       :errors
                                       (resource-not-found-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation list-groups :shape-name "ListGroups"
                                       :input list-groups-request :output
                                       list-groups-response :errors
                                       (resource-not-found-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation list-users :shape-name "ListUsers"
                                       :input list-users-request :output
                                       list-users-response :errors
                                       (resource-not-found-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation update-group :shape-name "UpdateGroup"
                                       :input update-group-request :output
                                       update-group-response :errors
                                       (conflict-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation update-user :shape-name "UpdateUser"
                                       :input update-user-request :output
                                       update-user-response :errors
                                       (conflict-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        validation-exception))
