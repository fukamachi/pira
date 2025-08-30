(uiop/package:define-package #:pira/directory-service-data (:use)
                             (:export #:access-denied-exception
                              #:access-denied-reason #:add-group-member
                              #:attribute-value #:attributes
                              #:boolean-attribute-value #:client-token
                              #:conflict-exception #:create-group #:create-user
                              #:delete-group #:delete-user #:describe-group
                              #:describe-user #:directory-id
                              #:directory-service-data
                              #:directory-unavailable-exception
                              #:directory-unavailable-reason #:disable-user
                              #:distinguished-name #:email-address
                              #:exception-message #:given-name #:group
                              #:group-list #:group-name #:group-scope
                              #:group-summary #:group-summary-list #:group-type
                              #:internal-server-exception #:ldap-display-name
                              #:ldap-display-name-list #:list-group-members
                              #:list-groups #:list-groups-for-member
                              #:list-users #:max-results #:member #:member-list
                              #:member-name #:member-type #:next-token
                              #:number-attribute-value #:realm
                              #:remove-group-member
                              #:resource-not-found-exception #:sid
                              #:search-groups #:search-string #:search-users
                              #:string-attribute-value
                              #:string-set-attribute-value #:surname
                              #:throttling-exception #:update-group
                              #:update-type #:update-user #:user #:user-list
                              #:user-name #:user-principal-name #:user-summary
                              #:user-summary-list #:validation-exception
                              #:validation-exception-reason
                              #:directory-service-data-error))
(common-lisp:in-package #:pira/directory-service-data)

(common-lisp:define-condition directory-service-data-error
    (pira/error:aws-error)
    common-lisp:nil)

(smithy/sdk/service:define-service directory-service-data :shape-name
                                   "DirectoryServiceData" :version "2023-05-31"
                                   :title "AWS Directory Service Data"
                                   :operations
                                   '(add-group-member create-group create-user
                                     delete-group delete-user describe-group
                                     describe-user disable-user
                                     list-group-members list-groups
                                     list-groups-for-member list-users
                                     remove-group-member search-groups
                                     search-users update-group update-user)
                                   :xml-namespace
                                   '(:uri
                                     "http://directoryservicedata.amazonaws.com/doc/2023-05-31/"
                                     :prefix common-lisp:nil)
                                   :traits
                                   '(("aws.api#service"
                                      ("sdkId" . "Directory Service Data")
                                      ("arnNamespace" . "ds")
                                      ("cloudFormationName"
                                       . "DirectoryServiceData")
                                      ("cloudTrailEventSource"
                                       . "ds.amazonaws.com")
                                      ("endpointPrefix" . "ds-data"))
                                     ("aws.auth#sigv4" ("name" . "ds-data"))
                                     ("aws.protocols#restJson1")))

(smithy/sdk/shapes:define-error access-denied-exception common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "Message")
                                 (reason :target-type access-denied-reason
                                  :member-name "Reason"))
                                (:shape-name "AccessDeniedException")
                                (:error-code 403)
                                (:base-class directory-service-data-error))

(smithy/sdk/shapes:define-enum access-denied-reason
    common-lisp:nil
  (:iam-auth "IAM_AUTH")
  (:directory-auth "DIRECTORY_AUTH")
  (:data-disabled "DATA_DISABLED"))

(smithy/sdk/shapes:define-input add-group-member-request common-lisp:nil
                                ((directory-id :target-type directory-id
                                  :required common-lisp:t :member-name
                                  "DirectoryId" :http-query "DirectoryId")
                                 (group-name :target-type group-name :required
                                  common-lisp:t :member-name "GroupName")
                                 (member-name :target-type member-name
                                  :required common-lisp:t :member-name
                                  "MemberName")
                                 (member-realm :target-type realm :member-name
                                  "MemberRealm")
                                 (client-token :target-type client-token
                                  :member-name "ClientToken"))
                                (:shape-name "AddGroupMemberRequest"))

(smithy/sdk/shapes:define-output add-group-member-result common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "AddGroupMemberResult"))

(smithy/sdk/shapes:define-union attribute-value common-lisp:nil
                                ((s :target-type string-attribute-value
                                  :member-name "S")
                                 (n :target-type number-attribute-value
                                  :member-name "N")
                                 (bool :target-type boolean-attribute-value
                                  :member-name "BOOL")
                                 (ss :target-type string-set-attribute-value
                                  :member-name "SS"))
                                (:shape-name "AttributeValue"))

(smithy/sdk/shapes:define-map attributes :key ldap-display-name :value
                              attribute-value)

(smithy/sdk/shapes:define-type boolean-attribute-value
                               smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-type client-token smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error conflict-exception common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "Message"))
                                (:shape-name "ConflictException")
                                (:error-code 409)
                                (:base-class directory-service-data-error))

(smithy/sdk/shapes:define-input create-group-request common-lisp:nil
                                ((directory-id :target-type directory-id
                                  :required common-lisp:t :member-name
                                  "DirectoryId" :http-query "DirectoryId")
                                 (samaccount-name :target-type group-name
                                  :required common-lisp:t :member-name
                                  "SAMAccountName")
                                 (group-type :target-type group-type
                                  :member-name "GroupType")
                                 (group-scope :target-type group-scope
                                  :member-name "GroupScope")
                                 (other-attributes :target-type attributes
                                  :member-name "OtherAttributes")
                                 (client-token :target-type client-token
                                  :member-name "ClientToken"))
                                (:shape-name "CreateGroupRequest"))

(smithy/sdk/shapes:define-output create-group-result common-lisp:nil
                                 ((directory-id :target-type directory-id
                                   :member-name "DirectoryId")
                                  (samaccount-name :target-type group-name
                                   :member-name "SAMAccountName")
                                  (sid :target-type sid :member-name "SID"))
                                 (:shape-name "CreateGroupResult"))

(smithy/sdk/shapes:define-input create-user-request common-lisp:nil
                                ((directory-id :target-type directory-id
                                  :required common-lisp:t :member-name
                                  "DirectoryId" :http-query "DirectoryId")
                                 (samaccount-name :target-type user-name
                                  :required common-lisp:t :member-name
                                  "SAMAccountName")
                                 (email-address :target-type email-address
                                  :member-name "EmailAddress")
                                 (given-name :target-type given-name
                                  :member-name "GivenName")
                                 (surname :target-type surname :member-name
                                  "Surname")
                                 (other-attributes :target-type attributes
                                  :member-name "OtherAttributes")
                                 (client-token :target-type client-token
                                  :member-name "ClientToken"))
                                (:shape-name "CreateUserRequest"))

(smithy/sdk/shapes:define-output create-user-result common-lisp:nil
                                 ((directory-id :target-type directory-id
                                   :member-name "DirectoryId")
                                  (sid :target-type sid :member-name "SID")
                                  (samaccount-name :target-type user-name
                                   :member-name "SAMAccountName"))
                                 (:shape-name "CreateUserResult"))

(smithy/sdk/shapes:define-input delete-group-request common-lisp:nil
                                ((directory-id :target-type directory-id
                                  :required common-lisp:t :member-name
                                  "DirectoryId" :http-query "DirectoryId")
                                 (samaccount-name :target-type group-name
                                  :required common-lisp:t :member-name
                                  "SAMAccountName")
                                 (client-token :target-type client-token
                                  :member-name "ClientToken"))
                                (:shape-name "DeleteGroupRequest"))

(smithy/sdk/shapes:define-output delete-group-result common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "DeleteGroupResult"))

(smithy/sdk/shapes:define-input delete-user-request common-lisp:nil
                                ((directory-id :target-type directory-id
                                  :required common-lisp:t :member-name
                                  "DirectoryId" :http-query "DirectoryId")
                                 (samaccount-name :target-type user-name
                                  :required common-lisp:t :member-name
                                  "SAMAccountName")
                                 (client-token :target-type client-token
                                  :member-name "ClientToken"))
                                (:shape-name "DeleteUserRequest"))

(smithy/sdk/shapes:define-output delete-user-result common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "DeleteUserResult"))

(smithy/sdk/shapes:define-input describe-group-request common-lisp:nil
                                ((directory-id :target-type directory-id
                                  :required common-lisp:t :member-name
                                  "DirectoryId" :http-query "DirectoryId")
                                 (realm :target-type realm :member-name
                                  "Realm")
                                 (samaccount-name :target-type group-name
                                  :required common-lisp:t :member-name
                                  "SAMAccountName")
                                 (other-attributes :target-type
                                  ldap-display-name-list :member-name
                                  "OtherAttributes"))
                                (:shape-name "DescribeGroupRequest"))

(smithy/sdk/shapes:define-output describe-group-result common-lisp:nil
                                 ((directory-id :target-type directory-id
                                   :member-name "DirectoryId")
                                  (realm :target-type realm :member-name
                                   "Realm")
                                  (sid :target-type sid :member-name "SID")
                                  (samaccount-name :target-type group-name
                                   :member-name "SAMAccountName")
                                  (distinguished-name :target-type
                                   distinguished-name :member-name
                                   "DistinguishedName")
                                  (group-type :target-type group-type
                                   :member-name "GroupType")
                                  (group-scope :target-type group-scope
                                   :member-name "GroupScope")
                                  (other-attributes :target-type attributes
                                   :member-name "OtherAttributes"))
                                 (:shape-name "DescribeGroupResult"))

(smithy/sdk/shapes:define-input describe-user-request common-lisp:nil
                                ((directory-id :target-type directory-id
                                  :required common-lisp:t :member-name
                                  "DirectoryId" :http-query "DirectoryId")
                                 (samaccount-name :target-type user-name
                                  :required common-lisp:t :member-name
                                  "SAMAccountName")
                                 (other-attributes :target-type
                                  ldap-display-name-list :member-name
                                  "OtherAttributes")
                                 (realm :target-type realm :member-name
                                  "Realm"))
                                (:shape-name "DescribeUserRequest"))

(smithy/sdk/shapes:define-output describe-user-result common-lisp:nil
                                 ((directory-id :target-type directory-id
                                   :member-name "DirectoryId")
                                  (realm :target-type realm :member-name
                                   "Realm")
                                  (sid :target-type sid :member-name "SID")
                                  (samaccount-name :target-type user-name
                                   :member-name "SAMAccountName")
                                  (distinguished-name :target-type
                                   distinguished-name :member-name
                                   "DistinguishedName")
                                  (user-principal-name :target-type
                                   user-principal-name :member-name
                                   "UserPrincipalName")
                                  (email-address :target-type email-address
                                   :member-name "EmailAddress")
                                  (given-name :target-type given-name
                                   :member-name "GivenName")
                                  (surname :target-type surname :member-name
                                   "Surname")
                                  (enabled :target-type
                                   smithy/sdk/smithy-types:boolean :member-name
                                   "Enabled")
                                  (other-attributes :target-type attributes
                                   :member-name "OtherAttributes"))
                                 (:shape-name "DescribeUserResult"))

(smithy/sdk/shapes:define-type directory-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error directory-unavailable-exception common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "Message")
                                 (reason :target-type
                                  directory-unavailable-reason :member-name
                                  "Reason"))
                                (:shape-name "DirectoryUnavailableException")
                                (:error-code 400)
                                (:base-class directory-service-data-error))

(smithy/sdk/shapes:define-enum directory-unavailable-reason
    common-lisp:nil
  (:invalid-directory-state "INVALID_DIRECTORY_STATE")
  (:directory-timeout "DIRECTORY_TIMEOUT")
  (:directory-resources-exceeded "DIRECTORY_RESOURCES_EXCEEDED")
  (:no-disk-space "NO_DISK_SPACE")
  (:trust-auth-failure "TRUST_AUTH_FAILURE"))

(smithy/sdk/shapes:define-input disable-user-request common-lisp:nil
                                ((directory-id :target-type directory-id
                                  :required common-lisp:t :member-name
                                  "DirectoryId" :http-query "DirectoryId")
                                 (samaccount-name :target-type user-name
                                  :required common-lisp:t :member-name
                                  "SAMAccountName")
                                 (client-token :target-type client-token
                                  :member-name "ClientToken"))
                                (:shape-name "DisableUserRequest"))

(smithy/sdk/shapes:define-output disable-user-result common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "DisableUserResult"))

(smithy/sdk/shapes:define-type distinguished-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type email-address smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type exception-message smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type given-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure group common-lisp:nil
                                    ((sid :target-type sid :member-name "SID")
                                     (samaccount-name :target-type group-name
                                      :required common-lisp:t :member-name
                                      "SAMAccountName")
                                     (distinguished-name :target-type
                                      distinguished-name :member-name
                                      "DistinguishedName")
                                     (group-type :target-type group-type
                                      :member-name "GroupType")
                                     (group-scope :target-type group-scope
                                      :member-name "GroupScope")
                                     (other-attributes :target-type attributes
                                      :member-name "OtherAttributes"))
                                    (:shape-name "Group"))

(smithy/sdk/shapes:define-list group-list :member group)

(smithy/sdk/shapes:define-type group-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum group-scope
    common-lisp:nil
  (:domain-local "DomainLocal")
  (:global "Global")
  (:universal "Universal")
  (:builtin-local "BuiltinLocal"))

(smithy/sdk/shapes:define-structure group-summary common-lisp:nil
                                    ((sid :target-type sid :required
                                      common-lisp:t :member-name "SID")
                                     (samaccount-name :target-type group-name
                                      :required common-lisp:t :member-name
                                      "SAMAccountName")
                                     (group-type :target-type group-type
                                      :required common-lisp:t :member-name
                                      "GroupType")
                                     (group-scope :target-type group-scope
                                      :required common-lisp:t :member-name
                                      "GroupScope"))
                                    (:shape-name "GroupSummary"))

(smithy/sdk/shapes:define-list group-summary-list :member group-summary)

(smithy/sdk/shapes:define-enum group-type
    common-lisp:nil
  (:distribution "Distribution")
  (:security "Security"))

(smithy/sdk/shapes:define-error internal-server-exception common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "Message"))
                                (:shape-name "InternalServerException")
                                (:error-code 500)
                                (:base-class directory-service-data-error))

(smithy/sdk/shapes:define-type ldap-display-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list ldap-display-name-list :member ldap-display-name)

(smithy/sdk/shapes:define-input list-group-members-request common-lisp:nil
                                ((directory-id :target-type directory-id
                                  :required common-lisp:t :member-name
                                  "DirectoryId" :http-query "DirectoryId")
                                 (realm :target-type realm :member-name
                                  "Realm")
                                 (member-realm :target-type realm :member-name
                                  "MemberRealm")
                                 (samaccount-name :target-type group-name
                                  :required common-lisp:t :member-name
                                  "SAMAccountName")
                                 (next-token :target-type next-token
                                  :member-name "NextToken")
                                 (max-results :target-type max-results
                                  :member-name "MaxResults"))
                                (:shape-name "ListGroupMembersRequest"))

(smithy/sdk/shapes:define-output list-group-members-result common-lisp:nil
                                 ((directory-id :target-type directory-id
                                   :member-name "DirectoryId")
                                  (realm :target-type realm :member-name
                                   "Realm")
                                  (member-realm :target-type realm :member-name
                                   "MemberRealm")
                                  (members :target-type member-list
                                   :member-name "Members")
                                  (next-token :target-type next-token
                                   :member-name "NextToken"))
                                 (:shape-name "ListGroupMembersResult"))

(smithy/sdk/shapes:define-input list-groups-for-member-request common-lisp:nil
                                ((directory-id :target-type directory-id
                                  :required common-lisp:t :member-name
                                  "DirectoryId" :http-query "DirectoryId")
                                 (realm :target-type realm :member-name
                                  "Realm")
                                 (member-realm :target-type realm :member-name
                                  "MemberRealm")
                                 (samaccount-name :target-type member-name
                                  :required common-lisp:t :member-name
                                  "SAMAccountName")
                                 (next-token :target-type next-token
                                  :member-name "NextToken")
                                 (max-results :target-type max-results
                                  :member-name "MaxResults"))
                                (:shape-name "ListGroupsForMemberRequest"))

(smithy/sdk/shapes:define-output list-groups-for-member-result common-lisp:nil
                                 ((directory-id :target-type directory-id
                                   :member-name "DirectoryId")
                                  (realm :target-type realm :member-name
                                   "Realm")
                                  (member-realm :target-type realm :member-name
                                   "MemberRealm")
                                  (groups :target-type group-summary-list
                                   :member-name "Groups")
                                  (next-token :target-type next-token
                                   :member-name "NextToken"))
                                 (:shape-name "ListGroupsForMemberResult"))

(smithy/sdk/shapes:define-input list-groups-request common-lisp:nil
                                ((directory-id :target-type directory-id
                                  :required common-lisp:t :member-name
                                  "DirectoryId" :http-query "DirectoryId")
                                 (realm :target-type realm :member-name
                                  "Realm")
                                 (next-token :target-type next-token
                                  :member-name "NextToken")
                                 (max-results :target-type max-results
                                  :member-name "MaxResults"))
                                (:shape-name "ListGroupsRequest"))

(smithy/sdk/shapes:define-output list-groups-result common-lisp:nil
                                 ((directory-id :target-type directory-id
                                   :member-name "DirectoryId")
                                  (realm :target-type realm :member-name
                                   "Realm")
                                  (groups :target-type group-summary-list
                                   :member-name "Groups")
                                  (next-token :target-type next-token
                                   :member-name "NextToken"))
                                 (:shape-name "ListGroupsResult"))

(smithy/sdk/shapes:define-input list-users-request common-lisp:nil
                                ((directory-id :target-type directory-id
                                  :required common-lisp:t :member-name
                                  "DirectoryId" :http-query "DirectoryId")
                                 (realm :target-type realm :member-name
                                  "Realm")
                                 (next-token :target-type next-token
                                  :member-name "NextToken")
                                 (max-results :target-type max-results
                                  :member-name "MaxResults"))
                                (:shape-name "ListUsersRequest"))

(smithy/sdk/shapes:define-output list-users-result common-lisp:nil
                                 ((directory-id :target-type directory-id
                                   :member-name "DirectoryId")
                                  (realm :target-type realm :member-name
                                   "Realm")
                                  (users :target-type user-summary-list
                                   :member-name "Users")
                                  (next-token :target-type next-token
                                   :member-name "NextToken"))
                                 (:shape-name "ListUsersResult"))

(smithy/sdk/shapes:define-type max-results smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-structure member common-lisp:nil
                                    ((sid :target-type sid :required
                                      common-lisp:t :member-name "SID")
                                     (samaccount-name :target-type member-name
                                      :required common-lisp:t :member-name
                                      "SAMAccountName")
                                     (member-type :target-type member-type
                                      :required common-lisp:t :member-name
                                      "MemberType"))
                                    (:shape-name "Member"))

(smithy/sdk/shapes:define-list member-list :member member)

(smithy/sdk/shapes:define-type member-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum member-type
    common-lisp:nil
  (:user "USER")
  (:group "GROUP")
  (:computer "COMPUTER"))

(smithy/sdk/shapes:define-type next-token smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type number-attribute-value
                               smithy/sdk/smithy-types:long)

(smithy/sdk/shapes:define-type realm smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input remove-group-member-request common-lisp:nil
                                ((directory-id :target-type directory-id
                                  :required common-lisp:t :member-name
                                  "DirectoryId" :http-query "DirectoryId")
                                 (group-name :target-type group-name :required
                                  common-lisp:t :member-name "GroupName")
                                 (member-name :target-type member-name
                                  :required common-lisp:t :member-name
                                  "MemberName")
                                 (member-realm :target-type realm :member-name
                                  "MemberRealm")
                                 (client-token :target-type client-token
                                  :member-name "ClientToken"))
                                (:shape-name "RemoveGroupMemberRequest"))

(smithy/sdk/shapes:define-output remove-group-member-result common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "RemoveGroupMemberResult"))

(smithy/sdk/shapes:define-error resource-not-found-exception common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "Message"))
                                (:shape-name "ResourceNotFoundException")
                                (:error-code 404)
                                (:base-class directory-service-data-error))

(smithy/sdk/shapes:define-type sid smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input search-groups-request common-lisp:nil
                                ((directory-id :target-type directory-id
                                  :required common-lisp:t :member-name
                                  "DirectoryId" :http-query "DirectoryId")
                                 (search-string :target-type search-string
                                  :required common-lisp:t :member-name
                                  "SearchString")
                                 (search-attributes :target-type
                                  ldap-display-name-list :required
                                  common-lisp:t :member-name
                                  "SearchAttributes")
                                 (realm :target-type realm :member-name
                                  "Realm")
                                 (next-token :target-type next-token
                                  :member-name "NextToken")
                                 (max-results :target-type max-results
                                  :member-name "MaxResults"))
                                (:shape-name "SearchGroupsRequest"))

(smithy/sdk/shapes:define-output search-groups-result common-lisp:nil
                                 ((directory-id :target-type directory-id
                                   :member-name "DirectoryId")
                                  (realm :target-type realm :member-name
                                   "Realm")
                                  (groups :target-type group-list :member-name
                                   "Groups")
                                  (next-token :target-type next-token
                                   :member-name "NextToken"))
                                 (:shape-name "SearchGroupsResult"))

(smithy/sdk/shapes:define-type search-string smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input search-users-request common-lisp:nil
                                ((directory-id :target-type directory-id
                                  :required common-lisp:t :member-name
                                  "DirectoryId" :http-query "DirectoryId")
                                 (realm :target-type realm :member-name
                                  "Realm")
                                 (search-string :target-type search-string
                                  :required common-lisp:t :member-name
                                  "SearchString")
                                 (search-attributes :target-type
                                  ldap-display-name-list :required
                                  common-lisp:t :member-name
                                  "SearchAttributes")
                                 (next-token :target-type next-token
                                  :member-name "NextToken")
                                 (max-results :target-type max-results
                                  :member-name "MaxResults"))
                                (:shape-name "SearchUsersRequest"))

(smithy/sdk/shapes:define-output search-users-result common-lisp:nil
                                 ((directory-id :target-type directory-id
                                   :member-name "DirectoryId")
                                  (realm :target-type realm :member-name
                                   "Realm")
                                  (users :target-type user-list :member-name
                                   "Users")
                                  (next-token :target-type next-token
                                   :member-name "NextToken"))
                                 (:shape-name "SearchUsersResult"))

(smithy/sdk/shapes:define-type string-attribute-value
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list string-set-attribute-value :member
                               string-attribute-value)

(smithy/sdk/shapes:define-type surname smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error throttling-exception common-lisp:nil
                                ((message :target-type exception-message
                                  :required common-lisp:t :member-name
                                  "Message")
                                 (retry-after-seconds :target-type
                                  smithy/sdk/smithy-types:integer :member-name
                                  "RetryAfterSeconds" :http-header
                                  "Retry-After"))
                                (:shape-name "ThrottlingException")
                                (:error-code 429)
                                (:base-class directory-service-data-error))

(smithy/sdk/shapes:define-input update-group-request common-lisp:nil
                                ((directory-id :target-type directory-id
                                  :required common-lisp:t :member-name
                                  "DirectoryId" :http-query "DirectoryId")
                                 (samaccount-name :target-type group-name
                                  :required common-lisp:t :member-name
                                  "SAMAccountName")
                                 (group-type :target-type group-type
                                  :member-name "GroupType")
                                 (group-scope :target-type group-scope
                                  :member-name "GroupScope")
                                 (other-attributes :target-type attributes
                                  :member-name "OtherAttributes")
                                 (update-type :target-type update-type
                                  :member-name "UpdateType")
                                 (client-token :target-type client-token
                                  :member-name "ClientToken"))
                                (:shape-name "UpdateGroupRequest"))

(smithy/sdk/shapes:define-output update-group-result common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "UpdateGroupResult"))

(smithy/sdk/shapes:define-enum update-type
    common-lisp:nil
  (:add "ADD")
  (:replace "REPLACE")
  (:remove "REMOVE"))

(smithy/sdk/shapes:define-input update-user-request common-lisp:nil
                                ((directory-id :target-type directory-id
                                  :required common-lisp:t :member-name
                                  "DirectoryId" :http-query "DirectoryId")
                                 (samaccount-name :target-type user-name
                                  :required common-lisp:t :member-name
                                  "SAMAccountName")
                                 (email-address :target-type email-address
                                  :member-name "EmailAddress")
                                 (given-name :target-type given-name
                                  :member-name "GivenName")
                                 (surname :target-type surname :member-name
                                  "Surname")
                                 (other-attributes :target-type attributes
                                  :member-name "OtherAttributes")
                                 (update-type :target-type update-type
                                  :member-name "UpdateType")
                                 (client-token :target-type client-token
                                  :member-name "ClientToken"))
                                (:shape-name "UpdateUserRequest"))

(smithy/sdk/shapes:define-output update-user-result common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "UpdateUserResult"))

(smithy/sdk/shapes:define-structure user common-lisp:nil
                                    ((sid :target-type sid :member-name "SID")
                                     (samaccount-name :target-type user-name
                                      :required common-lisp:t :member-name
                                      "SAMAccountName")
                                     (distinguished-name :target-type
                                      distinguished-name :member-name
                                      "DistinguishedName")
                                     (user-principal-name :target-type
                                      user-principal-name :member-name
                                      "UserPrincipalName")
                                     (email-address :target-type email-address
                                      :member-name "EmailAddress")
                                     (given-name :target-type given-name
                                      :member-name "GivenName")
                                     (surname :target-type surname :member-name
                                      "Surname")
                                     (enabled :target-type
                                      smithy/sdk/smithy-types:boolean
                                      :member-name "Enabled")
                                     (other-attributes :target-type attributes
                                      :member-name "OtherAttributes"))
                                    (:shape-name "User"))

(smithy/sdk/shapes:define-list user-list :member user)

(smithy/sdk/shapes:define-type user-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type user-principal-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure user-summary common-lisp:nil
                                    ((sid :target-type sid :required
                                      common-lisp:t :member-name "SID")
                                     (samaccount-name :target-type user-name
                                      :required common-lisp:t :member-name
                                      "SAMAccountName")
                                     (given-name :target-type given-name
                                      :member-name "GivenName")
                                     (surname :target-type surname :member-name
                                      "Surname")
                                     (enabled :target-type
                                      smithy/sdk/smithy-types:boolean :required
                                      common-lisp:t :member-name "Enabled"))
                                    (:shape-name "UserSummary"))

(smithy/sdk/shapes:define-list user-summary-list :member user-summary)

(smithy/sdk/shapes:define-error validation-exception common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "Message")
                                 (reason :target-type
                                  validation-exception-reason :member-name
                                  "Reason"))
                                (:shape-name "ValidationException")
                                (:error-code 400)
                                (:base-class directory-service-data-error))

(smithy/sdk/shapes:define-enum validation-exception-reason
    common-lisp:nil
  (:invalid-realm "INVALID_REALM")
  (:invalid-directory-type "INVALID_DIRECTORY_TYPE")
  (:invalid-secondary-region "INVALID_SECONDARY_REGION")
  (:invalid-next-token "INVALID_NEXT_TOKEN")
  (:invalid-attribute-value "INVALID_ATTRIBUTE_VALUE")
  (:invalid-attribute-name "INVALID_ATTRIBUTE_NAME")
  (:invalid-attribute-for-user "INVALID_ATTRIBUTE_FOR_USER")
  (:invalid-attribute-for-group "INVALID_ATTRIBUTE_FOR_GROUP")
  (:invalid-attribute-for-search "INVALID_ATTRIBUTE_FOR_SEARCH")
  (:invalid-attribute-for-modify "INVALID_ATTRIBUTE_FOR_MODIFY")
  (:duplicate-attribute "DUPLICATE_ATTRIBUTE")
  (:missing-attribute "MISSING_ATTRIBUTE")
  (:attribute-exists "ATTRIBUTE_EXISTS")
  (:ldap-size-limit-exceeded "LDAP_SIZE_LIMIT_EXCEEDED")
  (:ldap-unsupported-operation "LDAP_UNSUPPORTED_OPERATION"))

(smithy/sdk/operation:define-operation add-group-member :shape-name
                                       "AddGroupMember" :input
                                       add-group-member-request :output
                                       add-group-member-result :errors
                                       (access-denied-exception
                                        conflict-exception
                                        directory-unavailable-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/GroupMemberships/AddGroupMember")

(smithy/sdk/operation:define-operation create-group :shape-name "CreateGroup"
                                       :input create-group-request :output
                                       create-group-result :errors
                                       (access-denied-exception
                                        conflict-exception
                                        directory-unavailable-exception
                                        internal-server-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/Groups/CreateGroup")

(smithy/sdk/operation:define-operation create-user :shape-name "CreateUser"
                                       :input create-user-request :output
                                       create-user-result :errors
                                       (access-denied-exception
                                        conflict-exception
                                        directory-unavailable-exception
                                        internal-server-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri "/Users/CreateUser")

(smithy/sdk/operation:define-operation delete-group :shape-name "DeleteGroup"
                                       :input delete-group-request :output
                                       delete-group-result :errors
                                       (access-denied-exception
                                        conflict-exception
                                        directory-unavailable-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/Groups/DeleteGroup")

(smithy/sdk/operation:define-operation delete-user :shape-name "DeleteUser"
                                       :input delete-user-request :output
                                       delete-user-result :errors
                                       (access-denied-exception
                                        conflict-exception
                                        directory-unavailable-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri "/Users/DeleteUser")

(smithy/sdk/operation:define-operation describe-group :shape-name
                                       "DescribeGroup" :input
                                       describe-group-request :output
                                       describe-group-result :errors
                                       (access-denied-exception
                                        directory-unavailable-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/Groups/DescribeGroup")

(smithy/sdk/operation:define-operation describe-user :shape-name "DescribeUser"
                                       :input describe-user-request :output
                                       describe-user-result :errors
                                       (access-denied-exception
                                        directory-unavailable-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/Users/DescribeUser")

(smithy/sdk/operation:define-operation disable-user :shape-name "DisableUser"
                                       :input disable-user-request :output
                                       disable-user-result :errors
                                       (access-denied-exception
                                        conflict-exception
                                        directory-unavailable-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri "/Users/DisableUser")

(smithy/sdk/operation:define-operation list-group-members :shape-name
                                       "ListGroupMembers" :input
                                       list-group-members-request :output
                                       list-group-members-result :errors
                                       (access-denied-exception
                                        directory-unavailable-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/GroupMemberships/ListGroupMembers")

(smithy/sdk/operation:define-operation list-groups :shape-name "ListGroups"
                                       :input list-groups-request :output
                                       list-groups-result :errors
                                       (access-denied-exception
                                        directory-unavailable-exception
                                        internal-server-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri "/Groups/ListGroups")

(smithy/sdk/operation:define-operation list-groups-for-member :shape-name
                                       "ListGroupsForMember" :input
                                       list-groups-for-member-request :output
                                       list-groups-for-member-result :errors
                                       (access-denied-exception
                                        directory-unavailable-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/GroupMemberships/ListGroupsForMember")

(smithy/sdk/operation:define-operation list-users :shape-name "ListUsers"
                                       :input list-users-request :output
                                       list-users-result :errors
                                       (access-denied-exception
                                        directory-unavailable-exception
                                        internal-server-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri "/Users/ListUsers")

(smithy/sdk/operation:define-operation remove-group-member :shape-name
                                       "RemoveGroupMember" :input
                                       remove-group-member-request :output
                                       remove-group-member-result :errors
                                       (access-denied-exception
                                        conflict-exception
                                        directory-unavailable-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/GroupMemberships/RemoveGroupMember")

(smithy/sdk/operation:define-operation search-groups :shape-name "SearchGroups"
                                       :input search-groups-request :output
                                       search-groups-result :errors
                                       (access-denied-exception
                                        directory-unavailable-exception
                                        internal-server-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/Groups/SearchGroups")

(smithy/sdk/operation:define-operation search-users :shape-name "SearchUsers"
                                       :input search-users-request :output
                                       search-users-result :errors
                                       (access-denied-exception
                                        directory-unavailable-exception
                                        internal-server-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri "/Users/SearchUsers")

(smithy/sdk/operation:define-operation update-group :shape-name "UpdateGroup"
                                       :input update-group-request :output
                                       update-group-result :errors
                                       (access-denied-exception
                                        conflict-exception
                                        directory-unavailable-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/Groups/UpdateGroup")

(smithy/sdk/operation:define-operation update-user :shape-name "UpdateUser"
                                       :input update-user-request :output
                                       update-user-result :errors
                                       (access-denied-exception
                                        conflict-exception
                                        directory-unavailable-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri "/Users/UpdateUser")
