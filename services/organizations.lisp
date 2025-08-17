(uiop/package:define-package #:pira/organizations (:use)
                             (:export #:awsorganizations-v20161128
                              #:accept-handshake
                              #:access-denied-for-dependency-exception-reason
                              #:account #:account-arn #:account-id
                              #:account-joined-method #:account-name
                              #:account-status #:accounts #:action-type
                              #:attach-policy #:aws-managed-policy
                              #:cancel-handshake #:child #:child-id
                              #:child-type #:children #:close-account
                              #:constraint-violation-exception-reason
                              #:create-account #:create-account-failure-reason
                              #:create-account-name #:create-account-request-id
                              #:create-account-state #:create-account-states
                              #:create-account-status #:create-account-statuses
                              #:create-gov-cloud-account #:create-organization
                              #:create-organizational-unit #:create-policy
                              #:decline-handshake #:delegated-administrator
                              #:delegated-administrators #:delegated-service
                              #:delegated-services #:delete-organization
                              #:delete-organizational-unit #:delete-policy
                              #:delete-resource-policy
                              #:deregister-delegated-administrator
                              #:describe-account
                              #:describe-create-account-status
                              #:describe-effective-policy #:describe-handshake
                              #:describe-organization
                              #:describe-organizational-unit #:describe-policy
                              #:describe-resource-policy #:detach-policy
                              #:disable-awsservice-access #:disable-policy-type
                              #:effective-policy #:effective-policy-type
                              #:email #:enable-awsservice-access
                              #:enable-all-features #:enable-policy-type
                              #:enabled-service-principal
                              #:enabled-service-principals #:exception-message
                              #:exception-type #:generic-arn #:handshake
                              #:handshake-arn
                              #:handshake-constraint-violation-exception-reason
                              #:handshake-filter #:handshake-id
                              #:handshake-notes #:handshake-parties
                              #:handshake-party #:handshake-party-id
                              #:handshake-party-type #:handshake-resource
                              #:handshake-resource-type
                              #:handshake-resource-value #:handshake-resources
                              #:handshake-state #:handshakes
                              #:iamuser-access-to-billing
                              #:invalid-input-exception-reason
                              #:invite-account-to-organization
                              #:leave-organization
                              #:list-awsservice-access-for-organization
                              #:list-accounts #:list-accounts-for-parent
                              #:list-children #:list-create-account-status
                              #:list-delegated-administrators
                              #:list-delegated-services-for-account
                              #:list-handshakes-for-account
                              #:list-handshakes-for-organization
                              #:list-organizational-units-for-parent
                              #:list-parents #:list-policies
                              #:list-policies-for-target #:list-roots
                              #:list-tags-for-resource
                              #:list-targets-for-policy #:max-results
                              #:move-account #:next-token #:organization
                              #:organization-arn #:organization-feature-set
                              #:organization-id #:organizational-unit
                              #:organizational-unit-arn
                              #:organizational-unit-id
                              #:organizational-unit-name #:organizational-units
                              #:parent #:parent-id #:parent-type #:parents
                              #:policies #:policy #:policy-arn #:policy-content
                              #:policy-description #:policy-id #:policy-name
                              #:policy-summary #:policy-target-id
                              #:policy-target-summary #:policy-targets
                              #:policy-type #:policy-type-status
                              #:policy-type-summary #:policy-types
                              #:put-resource-policy
                              #:register-delegated-administrator
                              #:remove-account-from-organization
                              #:resource-policy #:resource-policy-arn
                              #:resource-policy-content #:resource-policy-id
                              #:resource-policy-summary #:role-name #:root
                              #:root-arn #:root-id #:root-name #:roots
                              #:service-principal #:tag #:tag-key #:tag-keys
                              #:tag-resource #:tag-value #:taggable-resource-id
                              #:tags #:target-name #:target-type #:timestamp
                              #:untag-resource #:update-organizational-unit
                              #:update-policy))
(common-lisp:in-package #:pira/organizations)

(smithy/sdk/service:define-service awsorganizations-v20161128 :shape-name
                                   "AWSOrganizationsV20161128" :version
                                   "2016-11-28" :title "AWS Organizations"
                                   :operations
                                   '(accept-handshake attach-policy
                                     cancel-handshake close-account
                                     create-account create-gov-cloud-account
                                     create-organization
                                     create-organizational-unit create-policy
                                     decline-handshake delete-organization
                                     delete-organizational-unit delete-policy
                                     delete-resource-policy
                                     deregister-delegated-administrator
                                     describe-account
                                     describe-create-account-status
                                     describe-effective-policy
                                     describe-handshake describe-organization
                                     describe-organizational-unit
                                     describe-policy describe-resource-policy
                                     detach-policy disable-awsservice-access
                                     disable-policy-type enable-all-features
                                     enable-awsservice-access
                                     enable-policy-type
                                     invite-account-to-organization
                                     leave-organization list-accounts
                                     list-accounts-for-parent
                                     list-awsservice-access-for-organization
                                     list-children list-create-account-status
                                     list-delegated-administrators
                                     list-delegated-services-for-account
                                     list-handshakes-for-account
                                     list-handshakes-for-organization
                                     list-organizational-units-for-parent
                                     list-parents list-policies
                                     list-policies-for-target list-roots
                                     list-tags-for-resource
                                     list-targets-for-policy move-account
                                     put-resource-policy
                                     register-delegated-administrator
                                     remove-account-from-organization
                                     tag-resource untag-resource
                                     update-organizational-unit update-policy)
                                   :xml-namespace
                                   '(:uri
                                     "http://organizations.amazonaws.com/doc/2016-11-28/"
                                     :prefix common-lisp:nil)
                                   :traits
                                   '(("aws.api#service"
                                      ("sdkId" . "Organizations")
                                      ("arnNamespace" . "organizations")
                                      ("cloudFormationName" . "Organizations")
                                      ("cloudTrailEventSource"
                                       . "organizations.amazonaws.com")
                                      ("endpointPrefix" . "organizations"))
                                     ("aws.auth#sigv4"
                                      ("name" . "organizations"))
                                     ("aws.protocols#awsJson1_1")))

(smithy/sdk/shapes:define-error awsorganizations-not-in-use-exception
                                common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "Message"))
                                (:shape-name
                                 "AWSOrganizationsNotInUseException")
                                (:error-code 404))

(smithy/sdk/shapes:define-input accept-handshake-request common-lisp:nil
                                ((handshake-id :target-type handshake-id
                                  :required common-lisp:t :member-name
                                  "HandshakeId"))
                                (:shape-name "AcceptHandshakeRequest"))

(smithy/sdk/shapes:define-output accept-handshake-response common-lisp:nil
                                 ((handshake :target-type handshake
                                   :member-name "Handshake"))
                                 (:shape-name "AcceptHandshakeResponse"))

(smithy/sdk/shapes:define-error access-denied-exception common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "Message"))
                                (:shape-name "AccessDeniedException")
                                (:error-code 403))

(smithy/sdk/shapes:define-error access-denied-for-dependency-exception
                                common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "Message")
                                 (reason :target-type
                                  access-denied-for-dependency-exception-reason
                                  :member-name "Reason"))
                                (:shape-name
                                 "AccessDeniedForDependencyException")
                                (:error-code 403))

(smithy/sdk/shapes:define-enum access-denied-for-dependency-exception-reason
    common-lisp:nil
  (:access-denied-during-create-service-linked-role
   "ACCESS_DENIED_DURING_CREATE_SERVICE_LINKED_ROLE"))

(smithy/sdk/shapes:define-structure account common-lisp:nil
                                    ((id :target-type account-id :member-name
                                      "Id")
                                     (arn :target-type account-arn :member-name
                                      "Arn")
                                     (email :target-type email :member-name
                                      "Email")
                                     (name :target-type account-name
                                      :member-name "Name")
                                     (status :target-type account-status
                                      :member-name "Status")
                                     (joined-method :target-type
                                      account-joined-method :member-name
                                      "JoinedMethod")
                                     (joined-timestamp :target-type timestamp
                                      :member-name "JoinedTimestamp"))
                                    (:shape-name "Account"))

(smithy/sdk/shapes:define-error account-already-closed-exception
                                common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "Message"))
                                (:shape-name "AccountAlreadyClosedException")
                                (:error-code 409))

(smithy/sdk/shapes:define-error account-already-registered-exception
                                common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "Message"))
                                (:shape-name
                                 "AccountAlreadyRegisteredException")
                                (:error-code 409))

(smithy/sdk/shapes:define-type account-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type account-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum account-joined-method
    common-lisp:nil
  (:invited "INVITED")
  (:created "CREATED"))

(smithy/sdk/shapes:define-type account-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error account-not-found-exception common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "Message"))
                                (:shape-name "AccountNotFoundException")
                                (:error-code 404))

(smithy/sdk/shapes:define-error account-not-registered-exception
                                common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "Message"))
                                (:shape-name "AccountNotRegisteredException")
                                (:error-code 409))

(smithy/sdk/shapes:define-error account-owner-not-verified-exception
                                common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "Message"))
                                (:shape-name
                                 "AccountOwnerNotVerifiedException")
                                (:error-code 403))

(smithy/sdk/shapes:define-enum account-status
    common-lisp:nil
  (:active "ACTIVE")
  (:suspended "SUSPENDED")
  (:pending-closure "PENDING_CLOSURE"))

(smithy/sdk/shapes:define-list accounts :member account)

(smithy/sdk/shapes:define-enum action-type
    common-lisp:nil
  (:invite-account-to-organization "INVITE")
  (:enable-all-features "ENABLE_ALL_FEATURES")
  (:approve-all-features "APPROVE_ALL_FEATURES")
  (:add-organizations-service-linked-role
   "ADD_ORGANIZATIONS_SERVICE_LINKED_ROLE"))

(smithy/sdk/shapes:define-error already-in-organization-exception
                                common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "Message"))
                                (:shape-name "AlreadyInOrganizationException")
                                (:error-code 409))

(smithy/sdk/shapes:define-input attach-policy-request common-lisp:nil
                                ((policy-id :target-type policy-id :required
                                  common-lisp:t :member-name "PolicyId")
                                 (target-id :target-type policy-target-id
                                  :required common-lisp:t :member-name
                                  "TargetId"))
                                (:shape-name "AttachPolicyRequest"))

(smithy/sdk/shapes:define-type aws-managed-policy
                               smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-input cancel-handshake-request common-lisp:nil
                                ((handshake-id :target-type handshake-id
                                  :required common-lisp:t :member-name
                                  "HandshakeId"))
                                (:shape-name "CancelHandshakeRequest"))

(smithy/sdk/shapes:define-output cancel-handshake-response common-lisp:nil
                                 ((handshake :target-type handshake
                                   :member-name "Handshake"))
                                 (:shape-name "CancelHandshakeResponse"))

(smithy/sdk/shapes:define-structure child common-lisp:nil
                                    ((id :target-type child-id :member-name
                                      "Id")
                                     (type :target-type child-type :member-name
                                      "Type"))
                                    (:shape-name "Child"))

(smithy/sdk/shapes:define-type child-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error child-not-found-exception common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "Message"))
                                (:shape-name "ChildNotFoundException")
                                (:error-code 404))

(smithy/sdk/shapes:define-enum child-type
    common-lisp:nil
  (:account "ACCOUNT")
  (:organizational-unit "ORGANIZATIONAL_UNIT"))

(smithy/sdk/shapes:define-list children :member child)

(smithy/sdk/shapes:define-input close-account-request common-lisp:nil
                                ((account-id :target-type account-id :required
                                  common-lisp:t :member-name "AccountId"))
                                (:shape-name "CloseAccountRequest"))

(smithy/sdk/shapes:define-error concurrent-modification-exception
                                common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "Message"))
                                (:shape-name "ConcurrentModificationException")
                                (:error-code 409))

(smithy/sdk/shapes:define-error conflict-exception common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "Message"))
                                (:shape-name "ConflictException")
                                (:error-code 409))

(smithy/sdk/shapes:define-error constraint-violation-exception common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "Message")
                                 (reason :target-type
                                  constraint-violation-exception-reason
                                  :member-name "Reason"))
                                (:shape-name "ConstraintViolationException")
                                (:error-code 409))

(smithy/sdk/shapes:define-enum constraint-violation-exception-reason
    common-lisp:nil
  (:account-number-limit-exceeded "ACCOUNT_NUMBER_LIMIT_EXCEEDED")
  (:handshake-rate-limit-exceeded "HANDSHAKE_RATE_LIMIT_EXCEEDED")
  (:ou-number-limit-exceeded "OU_NUMBER_LIMIT_EXCEEDED")
  (:ou-depth-limit-exceeded "OU_DEPTH_LIMIT_EXCEEDED")
  (:policy-number-limit-exceeded "POLICY_NUMBER_LIMIT_EXCEEDED")
  (:policy-content-limit-exceeded "POLICY_CONTENT_LIMIT_EXCEEDED")
  (:max-policy-type-attachment-limit-exceeded
   "MAX_POLICY_TYPE_ATTACHMENT_LIMIT_EXCEEDED")
  (:min-policy-type-attachment-limit-exceeded
   "MIN_POLICY_TYPE_ATTACHMENT_LIMIT_EXCEEDED")
  (:account-cannot-leave-organization "ACCOUNT_CANNOT_LEAVE_ORGANIZATION")
  (:account-cannot-leave-without-eula "ACCOUNT_CANNOT_LEAVE_WITHOUT_EULA")
  (:account-cannot-leave-without-phone-verification
   "ACCOUNT_CANNOT_LEAVE_WITHOUT_PHONE_VERIFICATION")
  (:master-account-payment-instrument-required
   "MASTER_ACCOUNT_PAYMENT_INSTRUMENT_REQUIRED")
  (:member-account-payment-instrument-required
   "MEMBER_ACCOUNT_PAYMENT_INSTRUMENT_REQUIRED")
  (:account-creation-rate-limit-exceeded "ACCOUNT_CREATION_RATE_LIMIT_EXCEEDED")
  (:master-account-address-does-not-match-marketplace
   "MASTER_ACCOUNT_ADDRESS_DOES_NOT_MATCH_MARKETPLACE")
  (:master-account-missing-contact-info "MASTER_ACCOUNT_MISSING_CONTACT_INFO")
  (:master-account-not-govcloud-enabled "MASTER_ACCOUNT_NOT_GOVCLOUD_ENABLED")
  (:organization-not-in-all-features-mode
   "ORGANIZATION_NOT_IN_ALL_FEATURES_MODE")
  (:create-organization-in-billing-mode-unsupported-region
   "CREATE_ORGANIZATION_IN_BILLING_MODE_UNSUPPORTED_REGION")
  (:email-verification-code-expired "EMAIL_VERIFICATION_CODE_EXPIRED")
  (:wait-period-active "WAIT_PERIOD_ACTIVE")
  (:max-tag-limit-exceeded "MAX_TAG_LIMIT_EXCEEDED")
  (:tag-policy-violation "TAG_POLICY_VIOLATION")
  (:max-delegated-administrators-for-service-limit-exceeded
   "MAX_DELEGATED_ADMINISTRATORS_FOR_SERVICE_LIMIT_EXCEEDED")
  (:cannot-register-master-as-delegated-administrator
   "CANNOT_REGISTER_MASTER_AS_DELEGATED_ADMINISTRATOR")
  (:cannot-remove-delegated-administrator-from-org
   "CANNOT_REMOVE_DELEGATED_ADMINISTRATOR_FROM_ORG")
  (:delegated-administrator-exists-for-this-service
   "DELEGATED_ADMINISTRATOR_EXISTS_FOR_THIS_SERVICE")
  (:policy-type-enabled-for-this-service "POLICY_TYPE_ENABLED_FOR_THIS_SERVICE")
  (:master-account-missing-business-license
   "MASTER_ACCOUNT_MISSING_BUSINESS_LICENSE")
  (:cannot-close-management-account "CANNOT_CLOSE_MANAGEMENT_ACCOUNT")
  (:close-account-quota-exceeded "CLOSE_ACCOUNT_QUOTA_EXCEEDED")
  (:close-account-requests-limit-exceeded
   "CLOSE_ACCOUNT_REQUESTS_LIMIT_EXCEEDED")
  (:service-access-not-enabled "SERVICE_ACCESS_NOT_ENABLED")
  (:invalid-payment-instrument "INVALID_PAYMENT_INSTRUMENT")
  (:account-creation-not-complete "ACCOUNT_CREATION_NOT_COMPLETE")
  (:cannot-register-suspended-account-as-delegated-administrator
   "CANNOT_REGISTER_SUSPENDED_ACCOUNT_AS_DELEGATED_ADMINISTRATOR")
  (:all-features-migration-organization-size-limit-exceeded
   "ALL_FEATURES_MIGRATION_ORGANIZATION_SIZE_LIMIT_EXCEEDED"))

(smithy/sdk/shapes:define-enum create-account-failure-reason
    common-lisp:nil
  (:account-limit-exceeded "ACCOUNT_LIMIT_EXCEEDED")
  (:email-already-exists "EMAIL_ALREADY_EXISTS")
  (:invalid-address "INVALID_ADDRESS")
  (:invalid-email "INVALID_EMAIL")
  (:concurrent-account-modification "CONCURRENT_ACCOUNT_MODIFICATION")
  (:internal-failure "INTERNAL_FAILURE")
  (:govcloud-account-already-exists "GOVCLOUD_ACCOUNT_ALREADY_EXISTS")
  (:missing-business-validation "MISSING_BUSINESS_VALIDATION")
  (:failed-business-validation "FAILED_BUSINESS_VALIDATION")
  (:pending-business-validationv "PENDING_BUSINESS_VALIDATION")
  (:invalid-identity-for-business-validation
   "INVALID_IDENTITY_FOR_BUSINESS_VALIDATION")
  (:unknown-business-validation "UNKNOWN_BUSINESS_VALIDATION")
  (:missing-payment-instrument "MISSING_PAYMENT_INSTRUMENT")
  (:invalid-payment-instrument "INVALID_PAYMENT_INSTRUMENT")
  (:update-existing-resource-policy-with-tags-not-supported
   "UPDATE_EXISTING_RESOURCE_POLICY_WITH_TAGS_NOT_SUPPORTED"))

(smithy/sdk/shapes:define-type create-account-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input create-account-request common-lisp:nil
                                ((email :target-type email :required
                                  common-lisp:t :member-name "Email")
                                 (account-name :target-type create-account-name
                                  :required common-lisp:t :member-name
                                  "AccountName")
                                 (role-name :target-type role-name :member-name
                                  "RoleName")
                                 (iam-user-access-to-billing :target-type
                                  iamuser-access-to-billing :member-name
                                  "IamUserAccessToBilling")
                                 (tags :target-type tags :member-name "Tags"))
                                (:shape-name "CreateAccountRequest"))

(smithy/sdk/shapes:define-type create-account-request-id
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-output create-account-response common-lisp:nil
                                 ((create-account-status :target-type
                                   create-account-status :member-name
                                   "CreateAccountStatus"))
                                 (:shape-name "CreateAccountResponse"))

(smithy/sdk/shapes:define-enum create-account-state
    common-lisp:nil
  (:in-progress "IN_PROGRESS")
  (:succeeded "SUCCEEDED")
  (:failed "FAILED"))

(smithy/sdk/shapes:define-list create-account-states :member
                               create-account-state)

(smithy/sdk/shapes:define-structure create-account-status common-lisp:nil
                                    ((id :target-type create-account-request-id
                                      :member-name "Id")
                                     (account-name :target-type
                                      create-account-name :member-name
                                      "AccountName")
                                     (state :target-type create-account-state
                                      :member-name "State")
                                     (requested-timestamp :target-type
                                      timestamp :member-name
                                      "RequestedTimestamp")
                                     (completed-timestamp :target-type
                                      timestamp :member-name
                                      "CompletedTimestamp")
                                     (account-id :target-type account-id
                                      :member-name "AccountId")
                                     (gov-cloud-account-id :target-type
                                      account-id :member-name
                                      "GovCloudAccountId")
                                     (failure-reason :target-type
                                      create-account-failure-reason
                                      :member-name "FailureReason"))
                                    (:shape-name "CreateAccountStatus"))

(smithy/sdk/shapes:define-error create-account-status-not-found-exception
                                common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "Message"))
                                (:shape-name
                                 "CreateAccountStatusNotFoundException")
                                (:error-code 404))

(smithy/sdk/shapes:define-list create-account-statuses :member
                               create-account-status)

(smithy/sdk/shapes:define-input create-gov-cloud-account-request
                                common-lisp:nil
                                ((email :target-type email :required
                                  common-lisp:t :member-name "Email")
                                 (account-name :target-type create-account-name
                                  :required common-lisp:t :member-name
                                  "AccountName")
                                 (role-name :target-type role-name :member-name
                                  "RoleName")
                                 (iam-user-access-to-billing :target-type
                                  iamuser-access-to-billing :member-name
                                  "IamUserAccessToBilling")
                                 (tags :target-type tags :member-name "Tags"))
                                (:shape-name "CreateGovCloudAccountRequest"))

(smithy/sdk/shapes:define-output create-gov-cloud-account-response
                                 common-lisp:nil
                                 ((create-account-status :target-type
                                   create-account-status :member-name
                                   "CreateAccountStatus"))
                                 (:shape-name "CreateGovCloudAccountResponse"))

(smithy/sdk/shapes:define-input create-organization-request common-lisp:nil
                                ((feature-set :target-type
                                  organization-feature-set :member-name
                                  "FeatureSet"))
                                (:shape-name "CreateOrganizationRequest"))

(smithy/sdk/shapes:define-output create-organization-response common-lisp:nil
                                 ((organization :target-type organization
                                   :member-name "Organization"))
                                 (:shape-name "CreateOrganizationResponse"))

(smithy/sdk/shapes:define-input create-organizational-unit-request
                                common-lisp:nil
                                ((parent-id :target-type parent-id :required
                                  common-lisp:t :member-name "ParentId")
                                 (name :target-type organizational-unit-name
                                  :required common-lisp:t :member-name "Name")
                                 (tags :target-type tags :member-name "Tags"))
                                (:shape-name "CreateOrganizationalUnitRequest"))

(smithy/sdk/shapes:define-output create-organizational-unit-response
                                 common-lisp:nil
                                 ((organizational-unit :target-type
                                   organizational-unit :member-name
                                   "OrganizationalUnit"))
                                 (:shape-name
                                  "CreateOrganizationalUnitResponse"))

(smithy/sdk/shapes:define-input create-policy-request common-lisp:nil
                                ((content :target-type policy-content :required
                                  common-lisp:t :member-name "Content")
                                 (description :target-type policy-description
                                  :required common-lisp:t :member-name
                                  "Description")
                                 (name :target-type policy-name :required
                                  common-lisp:t :member-name "Name")
                                 (type :target-type policy-type :required
                                  common-lisp:t :member-name "Type")
                                 (tags :target-type tags :member-name "Tags"))
                                (:shape-name "CreatePolicyRequest"))

(smithy/sdk/shapes:define-output create-policy-response common-lisp:nil
                                 ((policy :target-type policy :member-name
                                   "Policy"))
                                 (:shape-name "CreatePolicyResponse"))

(smithy/sdk/shapes:define-input decline-handshake-request common-lisp:nil
                                ((handshake-id :target-type handshake-id
                                  :required common-lisp:t :member-name
                                  "HandshakeId"))
                                (:shape-name "DeclineHandshakeRequest"))

(smithy/sdk/shapes:define-output decline-handshake-response common-lisp:nil
                                 ((handshake :target-type handshake
                                   :member-name "Handshake"))
                                 (:shape-name "DeclineHandshakeResponse"))

(smithy/sdk/shapes:define-structure delegated-administrator common-lisp:nil
                                    ((id :target-type account-id :member-name
                                      "Id")
                                     (arn :target-type account-arn :member-name
                                      "Arn")
                                     (email :target-type email :member-name
                                      "Email")
                                     (name :target-type account-name
                                      :member-name "Name")
                                     (status :target-type account-status
                                      :member-name "Status")
                                     (joined-method :target-type
                                      account-joined-method :member-name
                                      "JoinedMethod")
                                     (joined-timestamp :target-type timestamp
                                      :member-name "JoinedTimestamp")
                                     (delegation-enabled-date :target-type
                                      timestamp :member-name
                                      "DelegationEnabledDate"))
                                    (:shape-name "DelegatedAdministrator"))

(smithy/sdk/shapes:define-list delegated-administrators :member
                               delegated-administrator)

(smithy/sdk/shapes:define-structure delegated-service common-lisp:nil
                                    ((service-principal :target-type
                                      service-principal :member-name
                                      "ServicePrincipal")
                                     (delegation-enabled-date :target-type
                                      timestamp :member-name
                                      "DelegationEnabledDate"))
                                    (:shape-name "DelegatedService"))

(smithy/sdk/shapes:define-list delegated-services :member delegated-service)

(smithy/sdk/shapes:define-input delete-organizational-unit-request
                                common-lisp:nil
                                ((organizational-unit-id :target-type
                                  organizational-unit-id :required
                                  common-lisp:t :member-name
                                  "OrganizationalUnitId"))
                                (:shape-name "DeleteOrganizationalUnitRequest"))

(smithy/sdk/shapes:define-input delete-policy-request common-lisp:nil
                                ((policy-id :target-type policy-id :required
                                  common-lisp:t :member-name "PolicyId"))
                                (:shape-name "DeletePolicyRequest"))

(smithy/sdk/shapes:define-input deregister-delegated-administrator-request
                                common-lisp:nil
                                ((account-id :target-type account-id :required
                                  common-lisp:t :member-name "AccountId")
                                 (service-principal :target-type
                                  service-principal :required common-lisp:t
                                  :member-name "ServicePrincipal"))
                                (:shape-name
                                 "DeregisterDelegatedAdministratorRequest"))

(smithy/sdk/shapes:define-input describe-account-request common-lisp:nil
                                ((account-id :target-type account-id :required
                                  common-lisp:t :member-name "AccountId"))
                                (:shape-name "DescribeAccountRequest"))

(smithy/sdk/shapes:define-output describe-account-response common-lisp:nil
                                 ((account :target-type account :member-name
                                   "Account"))
                                 (:shape-name "DescribeAccountResponse"))

(smithy/sdk/shapes:define-input describe-create-account-status-request
                                common-lisp:nil
                                ((create-account-request-id :target-type
                                  create-account-request-id :required
                                  common-lisp:t :member-name
                                  "CreateAccountRequestId"))
                                (:shape-name
                                 "DescribeCreateAccountStatusRequest"))

(smithy/sdk/shapes:define-output describe-create-account-status-response
                                 common-lisp:nil
                                 ((create-account-status :target-type
                                   create-account-status :member-name
                                   "CreateAccountStatus"))
                                 (:shape-name
                                  "DescribeCreateAccountStatusResponse"))

(smithy/sdk/shapes:define-input describe-effective-policy-request
                                common-lisp:nil
                                ((policy-type :target-type
                                  effective-policy-type :required common-lisp:t
                                  :member-name "PolicyType")
                                 (target-id :target-type policy-target-id
                                  :member-name "TargetId"))
                                (:shape-name "DescribeEffectivePolicyRequest"))

(smithy/sdk/shapes:define-output describe-effective-policy-response
                                 common-lisp:nil
                                 ((effective-policy :target-type
                                   effective-policy :member-name
                                   "EffectivePolicy"))
                                 (:shape-name
                                  "DescribeEffectivePolicyResponse"))

(smithy/sdk/shapes:define-input describe-handshake-request common-lisp:nil
                                ((handshake-id :target-type handshake-id
                                  :required common-lisp:t :member-name
                                  "HandshakeId"))
                                (:shape-name "DescribeHandshakeRequest"))

(smithy/sdk/shapes:define-output describe-handshake-response common-lisp:nil
                                 ((handshake :target-type handshake
                                   :member-name "Handshake"))
                                 (:shape-name "DescribeHandshakeResponse"))

(smithy/sdk/shapes:define-output describe-organization-response common-lisp:nil
                                 ((organization :target-type organization
                                   :member-name "Organization"))
                                 (:shape-name "DescribeOrganizationResponse"))

(smithy/sdk/shapes:define-input describe-organizational-unit-request
                                common-lisp:nil
                                ((organizational-unit-id :target-type
                                  organizational-unit-id :required
                                  common-lisp:t :member-name
                                  "OrganizationalUnitId"))
                                (:shape-name
                                 "DescribeOrganizationalUnitRequest"))

(smithy/sdk/shapes:define-output describe-organizational-unit-response
                                 common-lisp:nil
                                 ((organizational-unit :target-type
                                   organizational-unit :member-name
                                   "OrganizationalUnit"))
                                 (:shape-name
                                  "DescribeOrganizationalUnitResponse"))

(smithy/sdk/shapes:define-input describe-policy-request common-lisp:nil
                                ((policy-id :target-type policy-id :required
                                  common-lisp:t :member-name "PolicyId"))
                                (:shape-name "DescribePolicyRequest"))

(smithy/sdk/shapes:define-output describe-policy-response common-lisp:nil
                                 ((policy :target-type policy :member-name
                                   "Policy"))
                                 (:shape-name "DescribePolicyResponse"))

(smithy/sdk/shapes:define-output describe-resource-policy-response
                                 common-lisp:nil
                                 ((resource-policy :target-type resource-policy
                                   :member-name "ResourcePolicy"))
                                 (:shape-name "DescribeResourcePolicyResponse"))

(smithy/sdk/shapes:define-error destination-parent-not-found-exception
                                common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "Message"))
                                (:shape-name
                                 "DestinationParentNotFoundException")
                                (:error-code 404))

(smithy/sdk/shapes:define-input detach-policy-request common-lisp:nil
                                ((policy-id :target-type policy-id :required
                                  common-lisp:t :member-name "PolicyId")
                                 (target-id :target-type policy-target-id
                                  :required common-lisp:t :member-name
                                  "TargetId"))
                                (:shape-name "DetachPolicyRequest"))

(smithy/sdk/shapes:define-input disable-awsservice-access-request
                                common-lisp:nil
                                ((service-principal :target-type
                                  service-principal :required common-lisp:t
                                  :member-name "ServicePrincipal"))
                                (:shape-name "DisableAWSServiceAccessRequest"))

(smithy/sdk/shapes:define-input disable-policy-type-request common-lisp:nil
                                ((root-id :target-type root-id :required
                                  common-lisp:t :member-name "RootId")
                                 (policy-type :target-type policy-type
                                  :required common-lisp:t :member-name
                                  "PolicyType"))
                                (:shape-name "DisablePolicyTypeRequest"))

(smithy/sdk/shapes:define-output disable-policy-type-response common-lisp:nil
                                 ((root :target-type root :member-name "Root"))
                                 (:shape-name "DisablePolicyTypeResponse"))

(smithy/sdk/shapes:define-error duplicate-account-exception common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "Message"))
                                (:shape-name "DuplicateAccountException")
                                (:error-code 409))

(smithy/sdk/shapes:define-error duplicate-handshake-exception common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "Message"))
                                (:shape-name "DuplicateHandshakeException")
                                (:error-code 409))

(smithy/sdk/shapes:define-error duplicate-organizational-unit-exception
                                common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "Message"))
                                (:shape-name
                                 "DuplicateOrganizationalUnitException")
                                (:error-code 409))

(smithy/sdk/shapes:define-error duplicate-policy-attachment-exception
                                common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "Message"))
                                (:shape-name
                                 "DuplicatePolicyAttachmentException")
                                (:error-code 409))

(smithy/sdk/shapes:define-error duplicate-policy-exception common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "Message"))
                                (:shape-name "DuplicatePolicyException")
                                (:error-code 409))

(smithy/sdk/shapes:define-structure effective-policy common-lisp:nil
                                    ((policy-content :target-type
                                      policy-content :member-name
                                      "PolicyContent")
                                     (last-updated-timestamp :target-type
                                      timestamp :member-name
                                      "LastUpdatedTimestamp")
                                     (target-id :target-type policy-target-id
                                      :member-name "TargetId")
                                     (policy-type :target-type
                                      effective-policy-type :member-name
                                      "PolicyType"))
                                    (:shape-name "EffectivePolicy"))

(smithy/sdk/shapes:define-error effective-policy-not-found-exception
                                common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "Message"))
                                (:shape-name
                                 "EffectivePolicyNotFoundException")
                                (:error-code 400))

(smithy/sdk/shapes:define-enum effective-policy-type
    common-lisp:nil
  (:tag-policy "TAG_POLICY")
  (:backup-policy "BACKUP_POLICY")
  (:aiservices-opt-out-policy "AISERVICES_OPT_OUT_POLICY")
  (:chatbot-policy "CHATBOT_POLICY")
  (:declarative-policy-ec2 "DECLARATIVE_POLICY_EC2")
  (:securityhub-policy "SECURITYHUB_POLICY"))

(smithy/sdk/shapes:define-type email smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input enable-awsservice-access-request
                                common-lisp:nil
                                ((service-principal :target-type
                                  service-principal :required common-lisp:t
                                  :member-name "ServicePrincipal"))
                                (:shape-name "EnableAWSServiceAccessRequest"))

(smithy/sdk/shapes:define-input enable-all-features-request common-lisp:nil
                                common-lisp:nil
                                (:shape-name "EnableAllFeaturesRequest"))

(smithy/sdk/shapes:define-output enable-all-features-response common-lisp:nil
                                 ((handshake :target-type handshake
                                   :member-name "Handshake"))
                                 (:shape-name "EnableAllFeaturesResponse"))

(smithy/sdk/shapes:define-input enable-policy-type-request common-lisp:nil
                                ((root-id :target-type root-id :required
                                  common-lisp:t :member-name "RootId")
                                 (policy-type :target-type policy-type
                                  :required common-lisp:t :member-name
                                  "PolicyType"))
                                (:shape-name "EnablePolicyTypeRequest"))

(smithy/sdk/shapes:define-output enable-policy-type-response common-lisp:nil
                                 ((root :target-type root :member-name "Root"))
                                 (:shape-name "EnablePolicyTypeResponse"))

(smithy/sdk/shapes:define-structure enabled-service-principal common-lisp:nil
                                    ((service-principal :target-type
                                      service-principal :member-name
                                      "ServicePrincipal")
                                     (date-enabled :target-type timestamp
                                      :member-name "DateEnabled"))
                                    (:shape-name "EnabledServicePrincipal"))

(smithy/sdk/shapes:define-list enabled-service-principals :member
                               enabled-service-principal)

(smithy/sdk/shapes:define-type exception-message smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type exception-type smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error finalizing-organization-exception
                                common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "Message"))
                                (:shape-name "FinalizingOrganizationException")
                                (:error-code 409))

(smithy/sdk/shapes:define-type generic-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure handshake common-lisp:nil
                                    ((id :target-type handshake-id :member-name
                                      "Id")
                                     (arn :target-type handshake-arn
                                      :member-name "Arn")
                                     (parties :target-type handshake-parties
                                      :member-name "Parties")
                                     (state :target-type handshake-state
                                      :member-name "State")
                                     (requested-timestamp :target-type
                                      timestamp :member-name
                                      "RequestedTimestamp")
                                     (expiration-timestamp :target-type
                                      timestamp :member-name
                                      "ExpirationTimestamp")
                                     (action :target-type action-type
                                      :member-name "Action")
                                     (resources :target-type
                                      handshake-resources :member-name
                                      "Resources"))
                                    (:shape-name "Handshake"))

(smithy/sdk/shapes:define-error handshake-already-in-state-exception
                                common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "Message"))
                                (:shape-name
                                 "HandshakeAlreadyInStateException")
                                (:error-code 409))

(smithy/sdk/shapes:define-type handshake-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error handshake-constraint-violation-exception
                                common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "Message")
                                 (reason :target-type
                                  handshake-constraint-violation-exception-reason
                                  :member-name "Reason"))
                                (:shape-name
                                 "HandshakeConstraintViolationException")
                                (:error-code 409))

(smithy/sdk/shapes:define-enum handshake-constraint-violation-exception-reason
    common-lisp:nil
  (:account-number-limit-exceeded "ACCOUNT_NUMBER_LIMIT_EXCEEDED")
  (:handshake-rate-limit-exceeded "HANDSHAKE_RATE_LIMIT_EXCEEDED")
  (:already-in-an-organization "ALREADY_IN_AN_ORGANIZATION")
  (:organization-already-has-all-features
   "ORGANIZATION_ALREADY_HAS_ALL_FEATURES")
  (:organization-is-already-pending-all-features-migration
   "ORGANIZATION_IS_ALREADY_PENDING_ALL_FEATURES_MIGRATION")
  (:invite-disabled-during-enable-all-features
   "INVITE_DISABLED_DURING_ENABLE_ALL_FEATURES")
  (:payment-instrument-required "PAYMENT_INSTRUMENT_REQUIRED")
  (:organization-from-different-seller-of-record
   "ORGANIZATION_FROM_DIFFERENT_SELLER_OF_RECORD")
  (:organization-membership-change-rate-limit-exceeded
   "ORGANIZATION_MEMBERSHIP_CHANGE_RATE_LIMIT_EXCEEDED")
  (:management-account-email-not-verified
   "MANAGEMENT_ACCOUNT_EMAIL_NOT_VERIFIED"))

(smithy/sdk/shapes:define-structure handshake-filter common-lisp:nil
                                    ((action-type :target-type action-type
                                      :member-name "ActionType")
                                     (parent-handshake-id :target-type
                                      handshake-id :member-name
                                      "ParentHandshakeId"))
                                    (:shape-name "HandshakeFilter"))

(smithy/sdk/shapes:define-type handshake-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error handshake-not-found-exception common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "Message"))
                                (:shape-name "HandshakeNotFoundException")
                                (:error-code 404))

(smithy/sdk/shapes:define-type handshake-notes smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list handshake-parties :member handshake-party)

(smithy/sdk/shapes:define-structure handshake-party common-lisp:nil
                                    ((id :target-type handshake-party-id
                                      :required common-lisp:t :member-name
                                      "Id")
                                     (type :target-type handshake-party-type
                                      :required common-lisp:t :member-name
                                      "Type"))
                                    (:shape-name "HandshakeParty"))

(smithy/sdk/shapes:define-type handshake-party-id
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum handshake-party-type
    common-lisp:nil
  (:account "ACCOUNT")
  (:organization "ORGANIZATION")
  (:email "EMAIL"))

(smithy/sdk/shapes:define-structure handshake-resource common-lisp:nil
                                    ((value :target-type
                                      handshake-resource-value :member-name
                                      "Value")
                                     (type :target-type handshake-resource-type
                                      :member-name "Type")
                                     (resources :target-type
                                      handshake-resources :member-name
                                      "Resources"))
                                    (:shape-name "HandshakeResource"))

(smithy/sdk/shapes:define-enum handshake-resource-type
    common-lisp:nil
  (:account "ACCOUNT")
  (:organization "ORGANIZATION")
  (:organization-feature-set "ORGANIZATION_FEATURE_SET")
  (:email "EMAIL")
  (:master-email "MASTER_EMAIL")
  (:master-name "MASTER_NAME")
  (:notes "NOTES")
  (:parent-handshake "PARENT_HANDSHAKE"))

(smithy/sdk/shapes:define-type handshake-resource-value
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list handshake-resources :member handshake-resource)

(smithy/sdk/shapes:define-enum handshake-state
    common-lisp:nil
  (:requested "REQUESTED")
  (:open "OPEN")
  (:canceled "CANCELED")
  (:accepted "ACCEPTED")
  (:declined "DECLINED")
  (:expired "EXPIRED"))

(smithy/sdk/shapes:define-list handshakes :member handshake)

(smithy/sdk/shapes:define-enum iamuser-access-to-billing
    common-lisp:nil
  (:allow "ALLOW")
  (:deny "DENY"))

(smithy/sdk/shapes:define-error invalid-handshake-transition-exception
                                common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "Message"))
                                (:shape-name
                                 "InvalidHandshakeTransitionException")
                                (:error-code 409))

(smithy/sdk/shapes:define-error invalid-input-exception common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "Message")
                                 (reason :target-type
                                  invalid-input-exception-reason :member-name
                                  "Reason"))
                                (:shape-name "InvalidInputException")
                                (:error-code 400))

(smithy/sdk/shapes:define-enum invalid-input-exception-reason
    common-lisp:nil
  (:invalid-party-type-target "INVALID_PARTY_TYPE_TARGET")
  (:invalid-syntax-organization "INVALID_SYNTAX_ORGANIZATION_ARN")
  (:invalid-syntax-policy "INVALID_SYNTAX_POLICY_ID")
  (:invalid-enum "INVALID_ENUM")
  (:invalid-enum-policy-type "INVALID_ENUM_POLICY_TYPE")
  (:invalid-list-member "INVALID_LIST_MEMBER")
  (:max-length-exceeded "MAX_LENGTH_EXCEEDED")
  (:max-value-exceeded "MAX_VALUE_EXCEEDED")
  (:min-length-exceeded "MIN_LENGTH_EXCEEDED")
  (:min-value-exceeded "MIN_VALUE_EXCEEDED")
  (:immutable-policy "IMMUTABLE_POLICY")
  (:invalid-pattern "INVALID_PATTERN")
  (:invalid-pattern-target-id "INVALID_PATTERN_TARGET_ID")
  (:input-required "INPUT_REQUIRED")
  (:invalid-pagination-token "INVALID_NEXT_TOKEN")
  (:max-filter-limit-exceeded "MAX_LIMIT_EXCEEDED_FILTER")
  (:moving-account-between-different-roots
   "MOVING_ACCOUNT_BETWEEN_DIFFERENT_ROOTS")
  (:invalid-full-name-target "INVALID_FULL_NAME_TARGET")
  (:unrecognized-service-principal "UNRECOGNIZED_SERVICE_PRINCIPAL")
  (:invalid-role-name "INVALID_ROLE_NAME")
  (:invalid-system-tags-parameter "INVALID_SYSTEM_TAGS_PARAMETER")
  (:duplicate-tag-key "DUPLICATE_TAG_KEY")
  (:target-not-supported "TARGET_NOT_SUPPORTED")
  (:invalid-email-address-target "INVALID_EMAIL_ADDRESS_TARGET")
  (:invalid-resource-policy-json "INVALID_RESOURCE_POLICY_JSON")
  (:invalid-principal "INVALID_PRINCIPAL")
  (:unsupported-action-in-resource-policy
   "UNSUPPORTED_ACTION_IN_RESOURCE_POLICY")
  (:unsupported-policy-type-in-resource-policy
   "UNSUPPORTED_POLICY_TYPE_IN_RESOURCE_POLICY")
  (:unsupported-resource-in-resource-policy
   "UNSUPPORTED_RESOURCE_IN_RESOURCE_POLICY")
  (:non-detachable-policy "NON_DETACHABLE_POLICY"))

(smithy/sdk/shapes:define-input invite-account-to-organization-request
                                common-lisp:nil
                                ((target :target-type handshake-party :required
                                  common-lisp:t :member-name "Target")
                                 (notes :target-type handshake-notes
                                  :member-name "Notes")
                                 (tags :target-type tags :member-name "Tags"))
                                (:shape-name
                                 "InviteAccountToOrganizationRequest"))

(smithy/sdk/shapes:define-output invite-account-to-organization-response
                                 common-lisp:nil
                                 ((handshake :target-type handshake
                                   :member-name "Handshake"))
                                 (:shape-name
                                  "InviteAccountToOrganizationResponse"))

(smithy/sdk/shapes:define-input list-awsservice-access-for-organization-request
                                common-lisp:nil
                                ((next-token :target-type next-token
                                  :member-name "NextToken")
                                 (max-results :target-type max-results
                                  :member-name "MaxResults"))
                                (:shape-name
                                 "ListAWSServiceAccessForOrganizationRequest"))

(smithy/sdk/shapes:define-output
 list-awsservice-access-for-organization-response common-lisp:nil
 ((enabled-service-principals :target-type enabled-service-principals
   :member-name "EnabledServicePrincipals")
  (next-token :target-type next-token :member-name "NextToken"))
 (:shape-name "ListAWSServiceAccessForOrganizationResponse"))

(smithy/sdk/shapes:define-input list-accounts-for-parent-request
                                common-lisp:nil
                                ((parent-id :target-type parent-id :required
                                  common-lisp:t :member-name "ParentId")
                                 (next-token :target-type next-token
                                  :member-name "NextToken")
                                 (max-results :target-type max-results
                                  :member-name "MaxResults"))
                                (:shape-name "ListAccountsForParentRequest"))

(smithy/sdk/shapes:define-output list-accounts-for-parent-response
                                 common-lisp:nil
                                 ((accounts :target-type accounts :member-name
                                   "Accounts")
                                  (next-token :target-type next-token
                                   :member-name "NextToken"))
                                 (:shape-name "ListAccountsForParentResponse"))

(smithy/sdk/shapes:define-input list-accounts-request common-lisp:nil
                                ((next-token :target-type next-token
                                  :member-name "NextToken")
                                 (max-results :target-type max-results
                                  :member-name "MaxResults"))
                                (:shape-name "ListAccountsRequest"))

(smithy/sdk/shapes:define-output list-accounts-response common-lisp:nil
                                 ((accounts :target-type accounts :member-name
                                   "Accounts")
                                  (next-token :target-type next-token
                                   :member-name "NextToken"))
                                 (:shape-name "ListAccountsResponse"))

(smithy/sdk/shapes:define-input list-children-request common-lisp:nil
                                ((parent-id :target-type parent-id :required
                                  common-lisp:t :member-name "ParentId")
                                 (child-type :target-type child-type :required
                                  common-lisp:t :member-name "ChildType")
                                 (next-token :target-type next-token
                                  :member-name "NextToken")
                                 (max-results :target-type max-results
                                  :member-name "MaxResults"))
                                (:shape-name "ListChildrenRequest"))

(smithy/sdk/shapes:define-output list-children-response common-lisp:nil
                                 ((children :target-type children :member-name
                                   "Children")
                                  (next-token :target-type next-token
                                   :member-name "NextToken"))
                                 (:shape-name "ListChildrenResponse"))

(smithy/sdk/shapes:define-input list-create-account-status-request
                                common-lisp:nil
                                ((states :target-type create-account-states
                                  :member-name "States")
                                 (next-token :target-type next-token
                                  :member-name "NextToken")
                                 (max-results :target-type max-results
                                  :member-name "MaxResults"))
                                (:shape-name "ListCreateAccountStatusRequest"))

(smithy/sdk/shapes:define-output list-create-account-status-response
                                 common-lisp:nil
                                 ((create-account-statuses :target-type
                                   create-account-statuses :member-name
                                   "CreateAccountStatuses")
                                  (next-token :target-type next-token
                                   :member-name "NextToken"))
                                 (:shape-name
                                  "ListCreateAccountStatusResponse"))

(smithy/sdk/shapes:define-input list-delegated-administrators-request
                                common-lisp:nil
                                ((service-principal :target-type
                                  service-principal :member-name
                                  "ServicePrincipal")
                                 (next-token :target-type next-token
                                  :member-name "NextToken")
                                 (max-results :target-type max-results
                                  :member-name "MaxResults"))
                                (:shape-name
                                 "ListDelegatedAdministratorsRequest"))

(smithy/sdk/shapes:define-output list-delegated-administrators-response
                                 common-lisp:nil
                                 ((delegated-administrators :target-type
                                   delegated-administrators :member-name
                                   "DelegatedAdministrators")
                                  (next-token :target-type next-token
                                   :member-name "NextToken"))
                                 (:shape-name
                                  "ListDelegatedAdministratorsResponse"))

(smithy/sdk/shapes:define-input list-delegated-services-for-account-request
                                common-lisp:nil
                                ((account-id :target-type account-id :required
                                  common-lisp:t :member-name "AccountId")
                                 (next-token :target-type next-token
                                  :member-name "NextToken")
                                 (max-results :target-type max-results
                                  :member-name "MaxResults"))
                                (:shape-name
                                 "ListDelegatedServicesForAccountRequest"))

(smithy/sdk/shapes:define-output list-delegated-services-for-account-response
                                 common-lisp:nil
                                 ((delegated-services :target-type
                                   delegated-services :member-name
                                   "DelegatedServices")
                                  (next-token :target-type next-token
                                   :member-name "NextToken"))
                                 (:shape-name
                                  "ListDelegatedServicesForAccountResponse"))

(smithy/sdk/shapes:define-input list-handshakes-for-account-request
                                common-lisp:nil
                                ((filter :target-type handshake-filter
                                  :member-name "Filter")
                                 (next-token :target-type next-token
                                  :member-name "NextToken")
                                 (max-results :target-type max-results
                                  :member-name "MaxResults"))
                                (:shape-name "ListHandshakesForAccountRequest"))

(smithy/sdk/shapes:define-output list-handshakes-for-account-response
                                 common-lisp:nil
                                 ((handshakes :target-type handshakes
                                   :member-name "Handshakes")
                                  (next-token :target-type next-token
                                   :member-name "NextToken"))
                                 (:shape-name
                                  "ListHandshakesForAccountResponse"))

(smithy/sdk/shapes:define-input list-handshakes-for-organization-request
                                common-lisp:nil
                                ((filter :target-type handshake-filter
                                  :member-name "Filter")
                                 (next-token :target-type next-token
                                  :member-name "NextToken")
                                 (max-results :target-type max-results
                                  :member-name "MaxResults"))
                                (:shape-name
                                 "ListHandshakesForOrganizationRequest"))

(smithy/sdk/shapes:define-output list-handshakes-for-organization-response
                                 common-lisp:nil
                                 ((handshakes :target-type handshakes
                                   :member-name "Handshakes")
                                  (next-token :target-type next-token
                                   :member-name "NextToken"))
                                 (:shape-name
                                  "ListHandshakesForOrganizationResponse"))

(smithy/sdk/shapes:define-input list-organizational-units-for-parent-request
                                common-lisp:nil
                                ((parent-id :target-type parent-id :required
                                  common-lisp:t :member-name "ParentId")
                                 (next-token :target-type next-token
                                  :member-name "NextToken")
                                 (max-results :target-type max-results
                                  :member-name "MaxResults"))
                                (:shape-name
                                 "ListOrganizationalUnitsForParentRequest"))

(smithy/sdk/shapes:define-output list-organizational-units-for-parent-response
                                 common-lisp:nil
                                 ((organizational-units :target-type
                                   organizational-units :member-name
                                   "OrganizationalUnits")
                                  (next-token :target-type next-token
                                   :member-name "NextToken"))
                                 (:shape-name
                                  "ListOrganizationalUnitsForParentResponse"))

(smithy/sdk/shapes:define-input list-parents-request common-lisp:nil
                                ((child-id :target-type child-id :required
                                  common-lisp:t :member-name "ChildId")
                                 (next-token :target-type next-token
                                  :member-name "NextToken")
                                 (max-results :target-type max-results
                                  :member-name "MaxResults"))
                                (:shape-name "ListParentsRequest"))

(smithy/sdk/shapes:define-output list-parents-response common-lisp:nil
                                 ((parents :target-type parents :member-name
                                   "Parents")
                                  (next-token :target-type next-token
                                   :member-name "NextToken"))
                                 (:shape-name "ListParentsResponse"))

(smithy/sdk/shapes:define-input list-policies-for-target-request
                                common-lisp:nil
                                ((target-id :target-type policy-target-id
                                  :required common-lisp:t :member-name
                                  "TargetId")
                                 (filter :target-type policy-type :required
                                  common-lisp:t :member-name "Filter")
                                 (next-token :target-type next-token
                                  :member-name "NextToken")
                                 (max-results :target-type max-results
                                  :member-name "MaxResults"))
                                (:shape-name "ListPoliciesForTargetRequest"))

(smithy/sdk/shapes:define-output list-policies-for-target-response
                                 common-lisp:nil
                                 ((policies :target-type policies :member-name
                                   "Policies")
                                  (next-token :target-type next-token
                                   :member-name "NextToken"))
                                 (:shape-name "ListPoliciesForTargetResponse"))

(smithy/sdk/shapes:define-input list-policies-request common-lisp:nil
                                ((filter :target-type policy-type :required
                                  common-lisp:t :member-name "Filter")
                                 (next-token :target-type next-token
                                  :member-name "NextToken")
                                 (max-results :target-type max-results
                                  :member-name "MaxResults"))
                                (:shape-name "ListPoliciesRequest"))

(smithy/sdk/shapes:define-output list-policies-response common-lisp:nil
                                 ((policies :target-type policies :member-name
                                   "Policies")
                                  (next-token :target-type next-token
                                   :member-name "NextToken"))
                                 (:shape-name "ListPoliciesResponse"))

(smithy/sdk/shapes:define-input list-roots-request common-lisp:nil
                                ((next-token :target-type next-token
                                  :member-name "NextToken")
                                 (max-results :target-type max-results
                                  :member-name "MaxResults"))
                                (:shape-name "ListRootsRequest"))

(smithy/sdk/shapes:define-output list-roots-response common-lisp:nil
                                 ((roots :target-type roots :member-name
                                   "Roots")
                                  (next-token :target-type next-token
                                   :member-name "NextToken"))
                                 (:shape-name "ListRootsResponse"))

(smithy/sdk/shapes:define-input list-tags-for-resource-request common-lisp:nil
                                ((resource-id :target-type taggable-resource-id
                                  :required common-lisp:t :member-name
                                  "ResourceId")
                                 (next-token :target-type next-token
                                  :member-name "NextToken"))
                                (:shape-name "ListTagsForResourceRequest"))

(smithy/sdk/shapes:define-output list-tags-for-resource-response
                                 common-lisp:nil
                                 ((tags :target-type tags :member-name "Tags")
                                  (next-token :target-type next-token
                                   :member-name "NextToken"))
                                 (:shape-name "ListTagsForResourceResponse"))

(smithy/sdk/shapes:define-input list-targets-for-policy-request common-lisp:nil
                                ((policy-id :target-type policy-id :required
                                  common-lisp:t :member-name "PolicyId")
                                 (next-token :target-type next-token
                                  :member-name "NextToken")
                                 (max-results :target-type max-results
                                  :member-name "MaxResults"))
                                (:shape-name "ListTargetsForPolicyRequest"))

(smithy/sdk/shapes:define-output list-targets-for-policy-response
                                 common-lisp:nil
                                 ((targets :target-type policy-targets
                                   :member-name "Targets")
                                  (next-token :target-type next-token
                                   :member-name "NextToken"))
                                 (:shape-name "ListTargetsForPolicyResponse"))

(smithy/sdk/shapes:define-error malformed-policy-document-exception
                                common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "Message"))
                                (:shape-name
                                 "MalformedPolicyDocumentException")
                                (:error-code 400))

(smithy/sdk/shapes:define-error master-cannot-leave-organization-exception
                                common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "Message"))
                                (:shape-name
                                 "MasterCannotLeaveOrganizationException")
                                (:error-code 409))

(smithy/sdk/shapes:define-type max-results smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-input move-account-request common-lisp:nil
                                ((account-id :target-type account-id :required
                                  common-lisp:t :member-name "AccountId")
                                 (source-parent-id :target-type parent-id
                                  :required common-lisp:t :member-name
                                  "SourceParentId")
                                 (destination-parent-id :target-type parent-id
                                  :required common-lisp:t :member-name
                                  "DestinationParentId"))
                                (:shape-name "MoveAccountRequest"))

(smithy/sdk/shapes:define-type next-token smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure organization common-lisp:nil
                                    ((id :target-type organization-id
                                      :member-name "Id")
                                     (arn :target-type organization-arn
                                      :member-name "Arn")
                                     (feature-set :target-type
                                      organization-feature-set :member-name
                                      "FeatureSet")
                                     (master-account-arn :target-type
                                      account-arn :member-name
                                      "MasterAccountArn")
                                     (master-account-id :target-type account-id
                                      :member-name "MasterAccountId")
                                     (master-account-email :target-type email
                                      :member-name "MasterAccountEmail")
                                     (available-policy-types :target-type
                                      policy-types :member-name
                                      "AvailablePolicyTypes"))
                                    (:shape-name "Organization"))

(smithy/sdk/shapes:define-type organization-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum organization-feature-set
    common-lisp:nil
  (:all "ALL")
  (:consolidated-billing "CONSOLIDATED_BILLING"))

(smithy/sdk/shapes:define-type organization-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error organization-not-empty-exception
                                common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "Message"))
                                (:shape-name "OrganizationNotEmptyException")
                                (:error-code 409))

(smithy/sdk/shapes:define-structure organizational-unit common-lisp:nil
                                    ((id :target-type organizational-unit-id
                                      :member-name "Id")
                                     (arn :target-type organizational-unit-arn
                                      :member-name "Arn")
                                     (name :target-type
                                      organizational-unit-name :member-name
                                      "Name"))
                                    (:shape-name "OrganizationalUnit"))

(smithy/sdk/shapes:define-type organizational-unit-arn
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type organizational-unit-id
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type organizational-unit-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error organizational-unit-not-empty-exception
                                common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "Message"))
                                (:shape-name
                                 "OrganizationalUnitNotEmptyException")
                                (:error-code 409))

(smithy/sdk/shapes:define-error organizational-unit-not-found-exception
                                common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "Message"))
                                (:shape-name
                                 "OrganizationalUnitNotFoundException")
                                (:error-code 404))

(smithy/sdk/shapes:define-list organizational-units :member organizational-unit)

(smithy/sdk/shapes:define-structure parent common-lisp:nil
                                    ((id :target-type parent-id :member-name
                                      "Id")
                                     (type :target-type parent-type
                                      :member-name "Type"))
                                    (:shape-name "Parent"))

(smithy/sdk/shapes:define-type parent-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error parent-not-found-exception common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "Message"))
                                (:shape-name "ParentNotFoundException")
                                (:error-code 404))

(smithy/sdk/shapes:define-enum parent-type
    common-lisp:nil
  (:root "ROOT")
  (:organizational-unit "ORGANIZATIONAL_UNIT"))

(smithy/sdk/shapes:define-list parents :member parent)

(smithy/sdk/shapes:define-list policies :member policy-summary)

(smithy/sdk/shapes:define-structure policy common-lisp:nil
                                    ((policy-summary :target-type
                                      policy-summary :member-name
                                      "PolicySummary")
                                     (content :target-type policy-content
                                      :member-name "Content"))
                                    (:shape-name "Policy"))

(smithy/sdk/shapes:define-type policy-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error policy-changes-in-progress-exception
                                common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "Message"))
                                (:shape-name
                                 "PolicyChangesInProgressException")
                                (:error-code 400))

(smithy/sdk/shapes:define-type policy-content smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type policy-description
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type policy-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error policy-in-use-exception common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "Message"))
                                (:shape-name "PolicyInUseException")
                                (:error-code 409))

(smithy/sdk/shapes:define-type policy-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error policy-not-attached-exception common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "Message"))
                                (:shape-name "PolicyNotAttachedException")
                                (:error-code 409))

(smithy/sdk/shapes:define-error policy-not-found-exception common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "Message"))
                                (:shape-name "PolicyNotFoundException")
                                (:error-code 404))

(smithy/sdk/shapes:define-structure policy-summary common-lisp:nil
                                    ((id :target-type policy-id :member-name
                                      "Id")
                                     (arn :target-type policy-arn :member-name
                                      "Arn")
                                     (name :target-type policy-name
                                      :member-name "Name")
                                     (description :target-type
                                      policy-description :member-name
                                      "Description")
                                     (type :target-type policy-type
                                      :member-name "Type")
                                     (aws-managed :target-type
                                      aws-managed-policy :member-name
                                      "AwsManaged"))
                                    (:shape-name "PolicySummary"))

(smithy/sdk/shapes:define-type policy-target-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure policy-target-summary common-lisp:nil
                                    ((target-id :target-type policy-target-id
                                      :member-name "TargetId")
                                     (arn :target-type generic-arn :member-name
                                      "Arn")
                                     (name :target-type target-name
                                      :member-name "Name")
                                     (type :target-type target-type
                                      :member-name "Type"))
                                    (:shape-name "PolicyTargetSummary"))

(smithy/sdk/shapes:define-list policy-targets :member policy-target-summary)

(smithy/sdk/shapes:define-enum policy-type
    common-lisp:nil
  (:service-control-policy "SERVICE_CONTROL_POLICY")
  (:resource-control-policy "RESOURCE_CONTROL_POLICY")
  (:tag-policy "TAG_POLICY")
  (:backup-policy "BACKUP_POLICY")
  (:aiservices-opt-out-policy "AISERVICES_OPT_OUT_POLICY")
  (:chatbot-policy "CHATBOT_POLICY")
  (:declarative-policy-ec2 "DECLARATIVE_POLICY_EC2")
  (:securityhub-policy "SECURITYHUB_POLICY"))

(smithy/sdk/shapes:define-error policy-type-already-enabled-exception
                                common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "Message"))
                                (:shape-name
                                 "PolicyTypeAlreadyEnabledException")
                                (:error-code 409))

(smithy/sdk/shapes:define-error
 policy-type-not-available-for-organization-exception common-lisp:nil
 ((message :target-type exception-message :member-name "Message"))
 (:shape-name "PolicyTypeNotAvailableForOrganizationException")
 (:error-code 409))

(smithy/sdk/shapes:define-error policy-type-not-enabled-exception
                                common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "Message"))
                                (:shape-name "PolicyTypeNotEnabledException")
                                (:error-code 409))

(smithy/sdk/shapes:define-enum policy-type-status
    common-lisp:nil
  (:enabled "ENABLED")
  (:pending-enable "PENDING_ENABLE")
  (:pending-disable "PENDING_DISABLE"))

(smithy/sdk/shapes:define-structure policy-type-summary common-lisp:nil
                                    ((type :target-type policy-type
                                      :member-name "Type")
                                     (status :target-type policy-type-status
                                      :member-name "Status"))
                                    (:shape-name "PolicyTypeSummary"))

(smithy/sdk/shapes:define-list policy-types :member policy-type-summary)

(smithy/sdk/shapes:define-input put-resource-policy-request common-lisp:nil
                                ((content :target-type resource-policy-content
                                  :required common-lisp:t :member-name
                                  "Content")
                                 (tags :target-type tags :member-name "Tags"))
                                (:shape-name "PutResourcePolicyRequest"))

(smithy/sdk/shapes:define-output put-resource-policy-response common-lisp:nil
                                 ((resource-policy :target-type resource-policy
                                   :member-name "ResourcePolicy"))
                                 (:shape-name "PutResourcePolicyResponse"))

(smithy/sdk/shapes:define-input register-delegated-administrator-request
                                common-lisp:nil
                                ((account-id :target-type account-id :required
                                  common-lisp:t :member-name "AccountId")
                                 (service-principal :target-type
                                  service-principal :required common-lisp:t
                                  :member-name "ServicePrincipal"))
                                (:shape-name
                                 "RegisterDelegatedAdministratorRequest"))

(smithy/sdk/shapes:define-input remove-account-from-organization-request
                                common-lisp:nil
                                ((account-id :target-type account-id :required
                                  common-lisp:t :member-name "AccountId"))
                                (:shape-name
                                 "RemoveAccountFromOrganizationRequest"))

(smithy/sdk/shapes:define-structure resource-policy common-lisp:nil
                                    ((resource-policy-summary :target-type
                                      resource-policy-summary :member-name
                                      "ResourcePolicySummary")
                                     (content :target-type
                                      resource-policy-content :member-name
                                      "Content"))
                                    (:shape-name "ResourcePolicy"))

(smithy/sdk/shapes:define-type resource-policy-arn
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type resource-policy-content
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type resource-policy-id
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error resource-policy-not-found-exception
                                common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "Message"))
                                (:shape-name "ResourcePolicyNotFoundException")
                                (:error-code 404))

(smithy/sdk/shapes:define-structure resource-policy-summary common-lisp:nil
                                    ((id :target-type resource-policy-id
                                      :member-name "Id")
                                     (arn :target-type resource-policy-arn
                                      :member-name "Arn"))
                                    (:shape-name "ResourcePolicySummary"))

(smithy/sdk/shapes:define-type role-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure root common-lisp:nil
                                    ((id :target-type root-id :member-name
                                      "Id")
                                     (arn :target-type root-arn :member-name
                                      "Arn")
                                     (name :target-type root-name :member-name
                                      "Name")
                                     (policy-types :target-type policy-types
                                      :member-name "PolicyTypes"))
                                    (:shape-name "Root"))

(smithy/sdk/shapes:define-type root-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type root-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type root-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error root-not-found-exception common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "Message"))
                                (:shape-name "RootNotFoundException")
                                (:error-code 404))

(smithy/sdk/shapes:define-list roots :member root)

(smithy/sdk/shapes:define-error service-exception common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "Message"))
                                (:shape-name "ServiceException")
                                (:error-code 500))

(smithy/sdk/shapes:define-type service-principal smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error source-parent-not-found-exception
                                common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "Message"))
                                (:shape-name "SourceParentNotFoundException")
                                (:error-code 404))

(smithy/sdk/shapes:define-structure tag common-lisp:nil
                                    ((key :target-type tag-key :required
                                      common-lisp:t :member-name "Key")
                                     (value :target-type tag-value :required
                                      common-lisp:t :member-name "Value"))
                                    (:shape-name "Tag"))

(smithy/sdk/shapes:define-type tag-key smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list tag-keys :member tag-key)

(smithy/sdk/shapes:define-input tag-resource-request common-lisp:nil
                                ((resource-id :target-type taggable-resource-id
                                  :required common-lisp:t :member-name
                                  "ResourceId")
                                 (tags :target-type tags :required
                                  common-lisp:t :member-name "Tags"))
                                (:shape-name "TagResourceRequest"))

(smithy/sdk/shapes:define-type tag-value smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type taggable-resource-id
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list tags :member tag)

(smithy/sdk/shapes:define-type target-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error target-not-found-exception common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "Message"))
                                (:shape-name "TargetNotFoundException")
                                (:error-code 404))

(smithy/sdk/shapes:define-enum target-type
    common-lisp:nil
  (:account "ACCOUNT")
  (:organizational-unit "ORGANIZATIONAL_UNIT")
  (:root "ROOT"))

(smithy/sdk/shapes:define-type timestamp smithy/sdk/smithy-types:timestamp)

(smithy/sdk/shapes:define-error too-many-requests-exception common-lisp:nil
                                ((type :target-type exception-type :member-name
                                  "Type")
                                 (message :target-type exception-message
                                  :member-name "Message"))
                                (:shape-name "TooManyRequestsException")
                                (:error-code 429))

(smithy/sdk/shapes:define-error unsupported-apiendpoint-exception
                                common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "Message"))
                                (:shape-name "UnsupportedAPIEndpointException")
                                (:error-code 403))

(smithy/sdk/shapes:define-input untag-resource-request common-lisp:nil
                                ((resource-id :target-type taggable-resource-id
                                  :required common-lisp:t :member-name
                                  "ResourceId")
                                 (tag-keys :target-type tag-keys :required
                                  common-lisp:t :member-name "TagKeys"))
                                (:shape-name "UntagResourceRequest"))

(smithy/sdk/shapes:define-input update-organizational-unit-request
                                common-lisp:nil
                                ((organizational-unit-id :target-type
                                  organizational-unit-id :required
                                  common-lisp:t :member-name
                                  "OrganizationalUnitId")
                                 (name :target-type organizational-unit-name
                                  :member-name "Name"))
                                (:shape-name "UpdateOrganizationalUnitRequest"))

(smithy/sdk/shapes:define-output update-organizational-unit-response
                                 common-lisp:nil
                                 ((organizational-unit :target-type
                                   organizational-unit :member-name
                                   "OrganizationalUnit"))
                                 (:shape-name
                                  "UpdateOrganizationalUnitResponse"))

(smithy/sdk/shapes:define-input update-policy-request common-lisp:nil
                                ((policy-id :target-type policy-id :required
                                  common-lisp:t :member-name "PolicyId")
                                 (name :target-type policy-name :member-name
                                  "Name")
                                 (description :target-type policy-description
                                  :member-name "Description")
                                 (content :target-type policy-content
                                  :member-name "Content"))
                                (:shape-name "UpdatePolicyRequest"))

(smithy/sdk/shapes:define-output update-policy-response common-lisp:nil
                                 ((policy :target-type policy :member-name
                                   "Policy"))
                                 (:shape-name "UpdatePolicyResponse"))

(smithy/sdk/operation:define-operation accept-handshake :shape-name
                                       "AcceptHandshake" :input
                                       accept-handshake-request :output
                                       accept-handshake-response :errors
                                       (access-denied-exception
                                        access-denied-for-dependency-exception
                                        awsorganizations-not-in-use-exception
                                        concurrent-modification-exception
                                        handshake-already-in-state-exception
                                        handshake-constraint-violation-exception
                                        handshake-not-found-exception
                                        invalid-handshake-transition-exception
                                        invalid-input-exception
                                        service-exception
                                        too-many-requests-exception))

(smithy/sdk/operation:define-operation attach-policy :shape-name "AttachPolicy"
                                       :input attach-policy-request :output
                                       common-lisp:null :errors
                                       (access-denied-exception
                                        awsorganizations-not-in-use-exception
                                        concurrent-modification-exception
                                        constraint-violation-exception
                                        duplicate-policy-attachment-exception
                                        invalid-input-exception
                                        policy-changes-in-progress-exception
                                        policy-not-found-exception
                                        policy-type-not-enabled-exception
                                        service-exception
                                        target-not-found-exception
                                        too-many-requests-exception
                                        unsupported-apiendpoint-exception))

(smithy/sdk/operation:define-operation cancel-handshake :shape-name
                                       "CancelHandshake" :input
                                       cancel-handshake-request :output
                                       cancel-handshake-response :errors
                                       (access-denied-exception
                                        concurrent-modification-exception
                                        handshake-already-in-state-exception
                                        handshake-not-found-exception
                                        invalid-handshake-transition-exception
                                        invalid-input-exception
                                        service-exception
                                        too-many-requests-exception))

(smithy/sdk/operation:define-operation close-account :shape-name "CloseAccount"
                                       :input close-account-request :output
                                       common-lisp:null :errors
                                       (access-denied-exception
                                        account-already-closed-exception
                                        account-not-found-exception
                                        awsorganizations-not-in-use-exception
                                        concurrent-modification-exception
                                        conflict-exception
                                        constraint-violation-exception
                                        invalid-input-exception
                                        service-exception
                                        too-many-requests-exception
                                        unsupported-apiendpoint-exception))

(smithy/sdk/operation:define-operation create-account :shape-name
                                       "CreateAccount" :input
                                       create-account-request :output
                                       create-account-response :errors
                                       (access-denied-exception
                                        awsorganizations-not-in-use-exception
                                        concurrent-modification-exception
                                        constraint-violation-exception
                                        finalizing-organization-exception
                                        invalid-input-exception
                                        service-exception
                                        too-many-requests-exception
                                        unsupported-apiendpoint-exception))

(smithy/sdk/operation:define-operation create-gov-cloud-account :shape-name
                                       "CreateGovCloudAccount" :input
                                       create-gov-cloud-account-request :output
                                       create-gov-cloud-account-response
                                       :errors
                                       (access-denied-exception
                                        awsorganizations-not-in-use-exception
                                        concurrent-modification-exception
                                        constraint-violation-exception
                                        finalizing-organization-exception
                                        invalid-input-exception
                                        service-exception
                                        too-many-requests-exception
                                        unsupported-apiendpoint-exception))

(smithy/sdk/operation:define-operation create-organization :shape-name
                                       "CreateOrganization" :input
                                       create-organization-request :output
                                       create-organization-response :errors
                                       (access-denied-exception
                                        access-denied-for-dependency-exception
                                        already-in-organization-exception
                                        concurrent-modification-exception
                                        constraint-violation-exception
                                        invalid-input-exception
                                        service-exception
                                        too-many-requests-exception))

(smithy/sdk/operation:define-operation create-organizational-unit :shape-name
                                       "CreateOrganizationalUnit" :input
                                       create-organizational-unit-request
                                       :output
                                       create-organizational-unit-response
                                       :errors
                                       (access-denied-exception
                                        awsorganizations-not-in-use-exception
                                        concurrent-modification-exception
                                        constraint-violation-exception
                                        duplicate-organizational-unit-exception
                                        invalid-input-exception
                                        parent-not-found-exception
                                        service-exception
                                        too-many-requests-exception))

(smithy/sdk/operation:define-operation create-policy :shape-name "CreatePolicy"
                                       :input create-policy-request :output
                                       create-policy-response :errors
                                       (access-denied-exception
                                        awsorganizations-not-in-use-exception
                                        concurrent-modification-exception
                                        constraint-violation-exception
                                        duplicate-policy-exception
                                        invalid-input-exception
                                        malformed-policy-document-exception
                                        policy-type-not-available-for-organization-exception
                                        service-exception
                                        too-many-requests-exception
                                        unsupported-apiendpoint-exception))

(smithy/sdk/operation:define-operation decline-handshake :shape-name
                                       "DeclineHandshake" :input
                                       decline-handshake-request :output
                                       decline-handshake-response :errors
                                       (access-denied-exception
                                        concurrent-modification-exception
                                        handshake-already-in-state-exception
                                        handshake-not-found-exception
                                        invalid-handshake-transition-exception
                                        invalid-input-exception
                                        service-exception
                                        too-many-requests-exception))

(smithy/sdk/operation:define-operation delete-organization :shape-name
                                       "DeleteOrganization" :input
                                       common-lisp:null :output
                                       common-lisp:null :errors
                                       (access-denied-exception
                                        awsorganizations-not-in-use-exception
                                        concurrent-modification-exception
                                        invalid-input-exception
                                        organization-not-empty-exception
                                        service-exception
                                        too-many-requests-exception))

(smithy/sdk/operation:define-operation delete-organizational-unit :shape-name
                                       "DeleteOrganizationalUnit" :input
                                       delete-organizational-unit-request
                                       :output common-lisp:null :errors
                                       (access-denied-exception
                                        awsorganizations-not-in-use-exception
                                        concurrent-modification-exception
                                        invalid-input-exception
                                        organizational-unit-not-empty-exception
                                        organizational-unit-not-found-exception
                                        service-exception
                                        too-many-requests-exception))

(smithy/sdk/operation:define-operation delete-policy :shape-name "DeletePolicy"
                                       :input delete-policy-request :output
                                       common-lisp:null :errors
                                       (access-denied-exception
                                        awsorganizations-not-in-use-exception
                                        concurrent-modification-exception
                                        invalid-input-exception
                                        policy-in-use-exception
                                        policy-not-found-exception
                                        service-exception
                                        too-many-requests-exception
                                        unsupported-apiendpoint-exception))

(smithy/sdk/operation:define-operation delete-resource-policy :shape-name
                                       "DeleteResourcePolicy" :input
                                       common-lisp:null :output
                                       common-lisp:null :errors
                                       (access-denied-exception
                                        awsorganizations-not-in-use-exception
                                        concurrent-modification-exception
                                        constraint-violation-exception
                                        resource-policy-not-found-exception
                                        service-exception
                                        too-many-requests-exception
                                        unsupported-apiendpoint-exception))

(smithy/sdk/operation:define-operation deregister-delegated-administrator
                                       :shape-name
                                       "DeregisterDelegatedAdministrator"
                                       :input
                                       deregister-delegated-administrator-request
                                       :output common-lisp:null :errors
                                       (access-denied-exception
                                        account-not-found-exception
                                        account-not-registered-exception
                                        awsorganizations-not-in-use-exception
                                        concurrent-modification-exception
                                        constraint-violation-exception
                                        invalid-input-exception
                                        service-exception
                                        too-many-requests-exception
                                        unsupported-apiendpoint-exception))

(smithy/sdk/operation:define-operation describe-account :shape-name
                                       "DescribeAccount" :input
                                       describe-account-request :output
                                       describe-account-response :errors
                                       (access-denied-exception
                                        account-not-found-exception
                                        awsorganizations-not-in-use-exception
                                        invalid-input-exception
                                        service-exception
                                        too-many-requests-exception))

(smithy/sdk/operation:define-operation describe-create-account-status
                                       :shape-name
                                       "DescribeCreateAccountStatus" :input
                                       describe-create-account-status-request
                                       :output
                                       describe-create-account-status-response
                                       :errors
                                       (access-denied-exception
                                        awsorganizations-not-in-use-exception
                                        create-account-status-not-found-exception
                                        invalid-input-exception
                                        service-exception
                                        too-many-requests-exception
                                        unsupported-apiendpoint-exception))

(smithy/sdk/operation:define-operation describe-effective-policy :shape-name
                                       "DescribeEffectivePolicy" :input
                                       describe-effective-policy-request
                                       :output
                                       describe-effective-policy-response
                                       :errors
                                       (access-denied-exception
                                        awsorganizations-not-in-use-exception
                                        constraint-violation-exception
                                        effective-policy-not-found-exception
                                        invalid-input-exception
                                        service-exception
                                        target-not-found-exception
                                        too-many-requests-exception
                                        unsupported-apiendpoint-exception))

(smithy/sdk/operation:define-operation describe-handshake :shape-name
                                       "DescribeHandshake" :input
                                       describe-handshake-request :output
                                       describe-handshake-response :errors
                                       (access-denied-exception
                                        concurrent-modification-exception
                                        handshake-not-found-exception
                                        invalid-input-exception
                                        service-exception
                                        too-many-requests-exception))

(smithy/sdk/operation:define-operation describe-organization :shape-name
                                       "DescribeOrganization" :input
                                       common-lisp:null :output
                                       describe-organization-response :errors
                                       (access-denied-exception
                                        awsorganizations-not-in-use-exception
                                        concurrent-modification-exception
                                        service-exception
                                        too-many-requests-exception))

(smithy/sdk/operation:define-operation describe-organizational-unit :shape-name
                                       "DescribeOrganizationalUnit" :input
                                       describe-organizational-unit-request
                                       :output
                                       describe-organizational-unit-response
                                       :errors
                                       (access-denied-exception
                                        awsorganizations-not-in-use-exception
                                        invalid-input-exception
                                        organizational-unit-not-found-exception
                                        service-exception
                                        too-many-requests-exception))

(smithy/sdk/operation:define-operation describe-policy :shape-name
                                       "DescribePolicy" :input
                                       describe-policy-request :output
                                       describe-policy-response :errors
                                       (access-denied-exception
                                        awsorganizations-not-in-use-exception
                                        invalid-input-exception
                                        policy-not-found-exception
                                        service-exception
                                        too-many-requests-exception
                                        unsupported-apiendpoint-exception))

(smithy/sdk/operation:define-operation describe-resource-policy :shape-name
                                       "DescribeResourcePolicy" :input
                                       common-lisp:null :output
                                       describe-resource-policy-response
                                       :errors
                                       (access-denied-exception
                                        awsorganizations-not-in-use-exception
                                        constraint-violation-exception
                                        resource-policy-not-found-exception
                                        service-exception
                                        too-many-requests-exception
                                        unsupported-apiendpoint-exception))

(smithy/sdk/operation:define-operation detach-policy :shape-name "DetachPolicy"
                                       :input detach-policy-request :output
                                       common-lisp:null :errors
                                       (access-denied-exception
                                        awsorganizations-not-in-use-exception
                                        concurrent-modification-exception
                                        constraint-violation-exception
                                        invalid-input-exception
                                        policy-changes-in-progress-exception
                                        policy-not-attached-exception
                                        policy-not-found-exception
                                        service-exception
                                        target-not-found-exception
                                        too-many-requests-exception
                                        unsupported-apiendpoint-exception))

(smithy/sdk/operation:define-operation disable-awsservice-access :shape-name
                                       "DisableAWSServiceAccess" :input
                                       disable-awsservice-access-request
                                       :output common-lisp:null :errors
                                       (access-denied-exception
                                        awsorganizations-not-in-use-exception
                                        concurrent-modification-exception
                                        constraint-violation-exception
                                        invalid-input-exception
                                        service-exception
                                        too-many-requests-exception
                                        unsupported-apiendpoint-exception))

(smithy/sdk/operation:define-operation disable-policy-type :shape-name
                                       "DisablePolicyType" :input
                                       disable-policy-type-request :output
                                       disable-policy-type-response :errors
                                       (access-denied-exception
                                        awsorganizations-not-in-use-exception
                                        concurrent-modification-exception
                                        constraint-violation-exception
                                        invalid-input-exception
                                        policy-changes-in-progress-exception
                                        policy-type-not-enabled-exception
                                        root-not-found-exception
                                        service-exception
                                        too-many-requests-exception
                                        unsupported-apiendpoint-exception))

(smithy/sdk/operation:define-operation enable-awsservice-access :shape-name
                                       "EnableAWSServiceAccess" :input
                                       enable-awsservice-access-request :output
                                       common-lisp:null :errors
                                       (access-denied-exception
                                        awsorganizations-not-in-use-exception
                                        concurrent-modification-exception
                                        constraint-violation-exception
                                        invalid-input-exception
                                        service-exception
                                        too-many-requests-exception
                                        unsupported-apiendpoint-exception))

(smithy/sdk/operation:define-operation enable-all-features :shape-name
                                       "EnableAllFeatures" :input
                                       enable-all-features-request :output
                                       enable-all-features-response :errors
                                       (access-denied-exception
                                        awsorganizations-not-in-use-exception
                                        concurrent-modification-exception
                                        constraint-violation-exception
                                        handshake-constraint-violation-exception
                                        invalid-input-exception
                                        service-exception
                                        too-many-requests-exception))

(smithy/sdk/operation:define-operation enable-policy-type :shape-name
                                       "EnablePolicyType" :input
                                       enable-policy-type-request :output
                                       enable-policy-type-response :errors
                                       (access-denied-exception
                                        awsorganizations-not-in-use-exception
                                        concurrent-modification-exception
                                        constraint-violation-exception
                                        invalid-input-exception
                                        policy-changes-in-progress-exception
                                        policy-type-already-enabled-exception
                                        policy-type-not-available-for-organization-exception
                                        root-not-found-exception
                                        service-exception
                                        too-many-requests-exception
                                        unsupported-apiendpoint-exception))

(smithy/sdk/operation:define-operation invite-account-to-organization
                                       :shape-name
                                       "InviteAccountToOrganization" :input
                                       invite-account-to-organization-request
                                       :output
                                       invite-account-to-organization-response
                                       :errors
                                       (access-denied-exception
                                        account-owner-not-verified-exception
                                        awsorganizations-not-in-use-exception
                                        concurrent-modification-exception
                                        constraint-violation-exception
                                        duplicate-handshake-exception
                                        finalizing-organization-exception
                                        handshake-constraint-violation-exception
                                        invalid-input-exception
                                        service-exception
                                        too-many-requests-exception))

(smithy/sdk/operation:define-operation leave-organization :shape-name
                                       "LeaveOrganization" :input
                                       common-lisp:null :output
                                       common-lisp:null :errors
                                       (access-denied-exception
                                        account-not-found-exception
                                        awsorganizations-not-in-use-exception
                                        concurrent-modification-exception
                                        constraint-violation-exception
                                        invalid-input-exception
                                        master-cannot-leave-organization-exception
                                        service-exception
                                        too-many-requests-exception))

(smithy/sdk/operation:define-operation list-awsservice-access-for-organization
                                       :shape-name
                                       "ListAWSServiceAccessForOrganization"
                                       :input
                                       list-awsservice-access-for-organization-request
                                       :output
                                       list-awsservice-access-for-organization-response
                                       :errors
                                       (access-denied-exception
                                        awsorganizations-not-in-use-exception
                                        constraint-violation-exception
                                        invalid-input-exception
                                        service-exception
                                        too-many-requests-exception
                                        unsupported-apiendpoint-exception))

(smithy/sdk/operation:define-operation list-accounts :shape-name "ListAccounts"
                                       :input list-accounts-request :output
                                       list-accounts-response :errors
                                       (access-denied-exception
                                        awsorganizations-not-in-use-exception
                                        invalid-input-exception
                                        service-exception
                                        too-many-requests-exception))

(smithy/sdk/operation:define-operation list-accounts-for-parent :shape-name
                                       "ListAccountsForParent" :input
                                       list-accounts-for-parent-request :output
                                       list-accounts-for-parent-response
                                       :errors
                                       (access-denied-exception
                                        awsorganizations-not-in-use-exception
                                        invalid-input-exception
                                        parent-not-found-exception
                                        service-exception
                                        too-many-requests-exception))

(smithy/sdk/operation:define-operation list-children :shape-name "ListChildren"
                                       :input list-children-request :output
                                       list-children-response :errors
                                       (access-denied-exception
                                        awsorganizations-not-in-use-exception
                                        invalid-input-exception
                                        parent-not-found-exception
                                        service-exception
                                        too-many-requests-exception))

(smithy/sdk/operation:define-operation list-create-account-status :shape-name
                                       "ListCreateAccountStatus" :input
                                       list-create-account-status-request
                                       :output
                                       list-create-account-status-response
                                       :errors
                                       (access-denied-exception
                                        awsorganizations-not-in-use-exception
                                        invalid-input-exception
                                        service-exception
                                        too-many-requests-exception
                                        unsupported-apiendpoint-exception))

(smithy/sdk/operation:define-operation list-delegated-administrators
                                       :shape-name
                                       "ListDelegatedAdministrators" :input
                                       list-delegated-administrators-request
                                       :output
                                       list-delegated-administrators-response
                                       :errors
                                       (access-denied-exception
                                        awsorganizations-not-in-use-exception
                                        constraint-violation-exception
                                        invalid-input-exception
                                        service-exception
                                        too-many-requests-exception
                                        unsupported-apiendpoint-exception))

(smithy/sdk/operation:define-operation list-delegated-services-for-account
                                       :shape-name
                                       "ListDelegatedServicesForAccount" :input
                                       list-delegated-services-for-account-request
                                       :output
                                       list-delegated-services-for-account-response
                                       :errors
                                       (access-denied-exception
                                        account-not-found-exception
                                        account-not-registered-exception
                                        awsorganizations-not-in-use-exception
                                        constraint-violation-exception
                                        invalid-input-exception
                                        service-exception
                                        too-many-requests-exception
                                        unsupported-apiendpoint-exception))

(smithy/sdk/operation:define-operation list-handshakes-for-account :shape-name
                                       "ListHandshakesForAccount" :input
                                       list-handshakes-for-account-request
                                       :output
                                       list-handshakes-for-account-response
                                       :errors
                                       (access-denied-exception
                                        concurrent-modification-exception
                                        invalid-input-exception
                                        service-exception
                                        too-many-requests-exception))

(smithy/sdk/operation:define-operation list-handshakes-for-organization
                                       :shape-name
                                       "ListHandshakesForOrganization" :input
                                       list-handshakes-for-organization-request
                                       :output
                                       list-handshakes-for-organization-response
                                       :errors
                                       (access-denied-exception
                                        awsorganizations-not-in-use-exception
                                        concurrent-modification-exception
                                        invalid-input-exception
                                        service-exception
                                        too-many-requests-exception))

(smithy/sdk/operation:define-operation list-organizational-units-for-parent
                                       :shape-name
                                       "ListOrganizationalUnitsForParent"
                                       :input
                                       list-organizational-units-for-parent-request
                                       :output
                                       list-organizational-units-for-parent-response
                                       :errors
                                       (access-denied-exception
                                        awsorganizations-not-in-use-exception
                                        invalid-input-exception
                                        parent-not-found-exception
                                        service-exception
                                        too-many-requests-exception))

(smithy/sdk/operation:define-operation list-parents :shape-name "ListParents"
                                       :input list-parents-request :output
                                       list-parents-response :errors
                                       (access-denied-exception
                                        awsorganizations-not-in-use-exception
                                        child-not-found-exception
                                        invalid-input-exception
                                        service-exception
                                        too-many-requests-exception))

(smithy/sdk/operation:define-operation list-policies :shape-name "ListPolicies"
                                       :input list-policies-request :output
                                       list-policies-response :errors
                                       (access-denied-exception
                                        awsorganizations-not-in-use-exception
                                        invalid-input-exception
                                        service-exception
                                        too-many-requests-exception
                                        unsupported-apiendpoint-exception))

(smithy/sdk/operation:define-operation list-policies-for-target :shape-name
                                       "ListPoliciesForTarget" :input
                                       list-policies-for-target-request :output
                                       list-policies-for-target-response
                                       :errors
                                       (access-denied-exception
                                        awsorganizations-not-in-use-exception
                                        invalid-input-exception
                                        service-exception
                                        target-not-found-exception
                                        too-many-requests-exception
                                        unsupported-apiendpoint-exception))

(smithy/sdk/operation:define-operation list-roots :shape-name "ListRoots"
                                       :input list-roots-request :output
                                       list-roots-response :errors
                                       (access-denied-exception
                                        awsorganizations-not-in-use-exception
                                        invalid-input-exception
                                        service-exception
                                        too-many-requests-exception))

(smithy/sdk/operation:define-operation list-tags-for-resource :shape-name
                                       "ListTagsForResource" :input
                                       list-tags-for-resource-request :output
                                       list-tags-for-resource-response :errors
                                       (access-denied-exception
                                        awsorganizations-not-in-use-exception
                                        invalid-input-exception
                                        service-exception
                                        target-not-found-exception
                                        too-many-requests-exception))

(smithy/sdk/operation:define-operation list-targets-for-policy :shape-name
                                       "ListTargetsForPolicy" :input
                                       list-targets-for-policy-request :output
                                       list-targets-for-policy-response :errors
                                       (access-denied-exception
                                        awsorganizations-not-in-use-exception
                                        invalid-input-exception
                                        policy-not-found-exception
                                        service-exception
                                        too-many-requests-exception
                                        unsupported-apiendpoint-exception))

(smithy/sdk/operation:define-operation move-account :shape-name "MoveAccount"
                                       :input move-account-request :output
                                       common-lisp:null :errors
                                       (access-denied-exception
                                        account-not-found-exception
                                        awsorganizations-not-in-use-exception
                                        concurrent-modification-exception
                                        destination-parent-not-found-exception
                                        duplicate-account-exception
                                        invalid-input-exception
                                        service-exception
                                        source-parent-not-found-exception
                                        too-many-requests-exception))

(smithy/sdk/operation:define-operation put-resource-policy :shape-name
                                       "PutResourcePolicy" :input
                                       put-resource-policy-request :output
                                       put-resource-policy-response :errors
                                       (access-denied-exception
                                        awsorganizations-not-in-use-exception
                                        concurrent-modification-exception
                                        constraint-violation-exception
                                        invalid-input-exception
                                        service-exception
                                        too-many-requests-exception
                                        unsupported-apiendpoint-exception))

(smithy/sdk/operation:define-operation register-delegated-administrator
                                       :shape-name
                                       "RegisterDelegatedAdministrator" :input
                                       register-delegated-administrator-request
                                       :output common-lisp:null :errors
                                       (access-denied-exception
                                        account-already-registered-exception
                                        account-not-found-exception
                                        awsorganizations-not-in-use-exception
                                        concurrent-modification-exception
                                        constraint-violation-exception
                                        invalid-input-exception
                                        service-exception
                                        too-many-requests-exception
                                        unsupported-apiendpoint-exception))

(smithy/sdk/operation:define-operation remove-account-from-organization
                                       :shape-name
                                       "RemoveAccountFromOrganization" :input
                                       remove-account-from-organization-request
                                       :output common-lisp:null :errors
                                       (access-denied-exception
                                        account-not-found-exception
                                        awsorganizations-not-in-use-exception
                                        concurrent-modification-exception
                                        constraint-violation-exception
                                        invalid-input-exception
                                        master-cannot-leave-organization-exception
                                        service-exception
                                        too-many-requests-exception))

(smithy/sdk/operation:define-operation tag-resource :shape-name "TagResource"
                                       :input tag-resource-request :output
                                       common-lisp:null :errors
                                       (access-denied-exception
                                        awsorganizations-not-in-use-exception
                                        concurrent-modification-exception
                                        constraint-violation-exception
                                        invalid-input-exception
                                        service-exception
                                        target-not-found-exception
                                        too-many-requests-exception))

(smithy/sdk/operation:define-operation untag-resource :shape-name
                                       "UntagResource" :input
                                       untag-resource-request :output
                                       common-lisp:null :errors
                                       (access-denied-exception
                                        awsorganizations-not-in-use-exception
                                        concurrent-modification-exception
                                        constraint-violation-exception
                                        invalid-input-exception
                                        service-exception
                                        target-not-found-exception
                                        too-many-requests-exception))

(smithy/sdk/operation:define-operation update-organizational-unit :shape-name
                                       "UpdateOrganizationalUnit" :input
                                       update-organizational-unit-request
                                       :output
                                       update-organizational-unit-response
                                       :errors
                                       (access-denied-exception
                                        awsorganizations-not-in-use-exception
                                        concurrent-modification-exception
                                        duplicate-organizational-unit-exception
                                        invalid-input-exception
                                        organizational-unit-not-found-exception
                                        service-exception
                                        too-many-requests-exception))

(smithy/sdk/operation:define-operation update-policy :shape-name "UpdatePolicy"
                                       :input update-policy-request :output
                                       update-policy-response :errors
                                       (access-denied-exception
                                        awsorganizations-not-in-use-exception
                                        concurrent-modification-exception
                                        constraint-violation-exception
                                        duplicate-policy-exception
                                        invalid-input-exception
                                        malformed-policy-document-exception
                                        policy-changes-in-progress-exception
                                        policy-not-found-exception
                                        service-exception
                                        too-many-requests-exception
                                        unsupported-apiendpoint-exception))
