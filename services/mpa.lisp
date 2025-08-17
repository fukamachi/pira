(uiop/package:define-package #:pira/mpa (:use)
                             (:export #:awsfluffy-core-service #:account-id
                              #:action-completion-strategy #:action-name
                              #:approval-strategy #:approval-strategy-response
                              #:approval-team #:approval-team-arn
                              #:approval-team-name
                              #:approval-team-request-approver
                              #:approval-team-request-approvers
                              #:approval-team-status
                              #:approval-team-status-code #:cancel-session
                              #:create-approval-team #:create-identity-source
                              #:delete-identity-source
                              #:delete-inactive-approval-team-version
                              #:description #:filter #:filter-field #:filters
                              #:get-approval-team
                              #:get-approval-team-response-approver
                              #:get-approval-team-response-approvers
                              #:get-identity-source #:get-policy-version
                              #:get-resource-policy #:get-session
                              #:get-session-response-approver-response
                              #:get-session-response-approver-responses
                              #:iam-identity-center
                              #:iam-identity-center-for-get
                              #:iam-identity-center-for-list #:idc-instance-arn
                              #:identity-id #:identity-source
                              #:identity-source-for-list
                              #:identity-source-parameters
                              #:identity-source-parameters-for-get
                              #:identity-source-parameters-for-list
                              #:identity-source-status
                              #:identity-source-status-code
                              #:identity-source-type #:identity-sources
                              #:identity-status #:iso-timestamp
                              #:list-approval-teams
                              #:list-approval-teams-response-approval-team
                              #:list-approval-teams-response-approval-teams
                              #:list-identity-sources #:list-policies
                              #:list-policy-versions #:list-resource-policies
                              #:list-resource-policies-response-resource-policies
                              #:list-resource-policies-response-resource-policy
                              #:list-sessions #:list-sessions-response-session
                              #:list-sessions-response-sessions
                              #:list-tags-for-resource #:max-results #:message
                              #:mof-napproval-strategy #:operator
                              #:participant-id #:pending-update #:policies
                              #:policies-references #:policy #:policy-document
                              #:policy-name #:policy-reference #:policy-status
                              #:policy-type #:policy-version
                              #:policy-version-id #:policy-version-summary
                              #:policy-versions #:qualified-policy-arn #:region
                              #:requester-comment #:service-principal #:session
                              #:session-arn #:session-execution-status
                              #:session-key #:session-metadata
                              #:session-response #:session-status
                              #:session-status-code #:session-value
                              #:start-active-approval-team-deletion #:string
                              #:tag-key #:tag-key-list #:tag-resource
                              #:tag-value #:tags #:token
                              #:unqualified-policy-arn #:untag-resource
                              #:update-approval-team))
(common-lisp:in-package #:pira/mpa)

(smithy/sdk/service:define-service awsfluffy-core-service :shape-name
                                   "AWSFluffyCoreService" :version "2022-07-26"
                                   :title "AWS Multi-party Approval"
                                   :operations
                                   '(get-policy-version get-resource-policy
                                     list-policies list-policy-versions
                                     list-resource-policies
                                     list-tags-for-resource tag-resource
                                     untag-resource)
                                   :traits
                                   '(("aws.api#service" ("sdkId" . "MPA")
                                      ("arnNamespace" . "mpa"))
                                     ("aws.auth#sigv4" ("name" . "mpa"))
                                     ("aws.endpoints#dualStackOnlyEndpoints")
                                     ("aws.endpoints#standardRegionalEndpoints")
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
                                      ("mpa:RequestedOperation"
                                       ("type" . "String")
                                       ("documentation"
                                        . "Filters access by the requested operation that requires team approval before it can be executed")
                                       ("externalDocumentation"
                                        . "${DocHomeURL}mpa/latest/userguide/mpa-concepts.html"))
                                      ("mpa:ProtectedResourceAccount"
                                       ("type" . "String")
                                       ("documentation"
                                        . "Filters access by the account that owns the resource that is the target of the operation that requires approval")
                                       ("externalDocumentation"
                                        . "${DocHomeURL}mpa/latest/userguide/mpa-concepts.html")))
                                     ("aws.iam#disableConditionKeyInference")
                                     ("aws.iam#supportedPrincipalTypes"
                                      . #("Root" "IAMUser" "IAMRole"
                                          "FederatedUser"))
                                     ("aws.protocols#restJson1")))

(smithy/sdk/shapes:define-error access-denied-exception common-lisp:nil
                                ((message :target-type string :required
                                  common-lisp:t :member-name "Message"))
                                (:shape-name "AccessDeniedException")
                                (:error-code 403))

(smithy/sdk/shapes:define-type account-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum action-completion-strategy
    common-lisp:nil
  (:auto-completion-upon-approval "AUTO_COMPLETION_UPON_APPROVAL"))

(smithy/sdk/shapes:define-type action-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-union approval-strategy common-lisp:nil
                                ((mof-n :target-type mof-napproval-strategy
                                  :member-name "MofN"))
                                (:shape-name "ApprovalStrategy"))

(smithy/sdk/shapes:define-union approval-strategy-response common-lisp:nil
                                ((mof-n :target-type mof-napproval-strategy
                                  :member-name "MofN"))
                                (:shape-name "ApprovalStrategyResponse"))

common-lisp:nil

(smithy/sdk/shapes:define-type approval-team-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type approval-team-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure approval-team-request-approver
                                    common-lisp:nil
                                    ((primary-identity-id :target-type
                                      identity-id :required common-lisp:t
                                      :member-name "PrimaryIdentityId")
                                     (primary-identity-source-arn :target-type
                                      string :required common-lisp:t
                                      :member-name "PrimaryIdentitySourceArn"))
                                    (:shape-name "ApprovalTeamRequestApprover"))

(smithy/sdk/shapes:define-list approval-team-request-approvers :member
                               approval-team-request-approver)

(smithy/sdk/shapes:define-enum approval-team-status
    common-lisp:nil
  (:active "ACTIVE")
  (:inactive "INACTIVE")
  (:deleting "DELETING")
  (:pending "PENDING"))

(smithy/sdk/shapes:define-enum approval-team-status-code
    common-lisp:nil
  (:validating "VALIDATING")
  (:pending-activation "PENDING_ACTIVATION")
  (:failed-validation "FAILED_VALIDATION")
  (:failed-activation "FAILED_ACTIVATION")
  (:update-pending-approval "UPDATE_PENDING_APPROVAL")
  (:update-pending-activation "UPDATE_PENDING_ACTIVATION")
  (:update-failed-approval "UPDATE_FAILED_APPROVAL")
  (:update-failed-activation "UPDATE_FAILED_ACTIVATION")
  (:update-failed-validation "UPDATE_FAILED_VALIDATION")
  (:delete-pending-approval "DELETE_PENDING_APPROVAL")
  (:delete-failed-approval "DELETE_FAILED_APPROVAL")
  (:delete-failed-validation "DELETE_FAILED_VALIDATION"))

(smithy/sdk/shapes:define-input cancel-session-request common-lisp:nil
                                ((session-arn :target-type session-arn
                                  :required common-lisp:t :member-name
                                  "SessionArn" :http-label common-lisp:t))
                                (:shape-name "CancelSessionRequest"))

(smithy/sdk/shapes:define-output cancel-session-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "CancelSessionResponse"))

(smithy/sdk/shapes:define-error conflict-exception common-lisp:nil
                                ((message :target-type string :required
                                  common-lisp:t :member-name "Message"))
                                (:shape-name "ConflictException")
                                (:error-code 409))

(smithy/sdk/shapes:define-input create-approval-team-request common-lisp:nil
                                ((client-token :target-type token :member-name
                                  "ClientToken")
                                 (approval-strategy :target-type
                                  approval-strategy :required common-lisp:t
                                  :member-name "ApprovalStrategy")
                                 (approvers :target-type
                                  approval-team-request-approvers :required
                                  common-lisp:t :member-name "Approvers")
                                 (description :target-type description
                                  :required common-lisp:t :member-name
                                  "Description")
                                 (policies :target-type policies-references
                                  :required common-lisp:t :member-name
                                  "Policies")
                                 (name :target-type approval-team-name
                                  :required common-lisp:t :member-name "Name")
                                 (tags :target-type tags :member-name "Tags"))
                                (:shape-name "CreateApprovalTeamRequest"))

(smithy/sdk/shapes:define-output create-approval-team-response common-lisp:nil
                                 ((creation-time :target-type iso-timestamp
                                   :member-name "CreationTime")
                                  (arn :target-type approval-team-arn
                                   :member-name "Arn")
                                  (name :target-type string :member-name
                                   "Name")
                                  (version-id :target-type string :member-name
                                   "VersionId"))
                                 (:shape-name "CreateApprovalTeamResponse"))

(smithy/sdk/shapes:define-input create-identity-source-request common-lisp:nil
                                ((identity-source-parameters :target-type
                                  identity-source-parameters :required
                                  common-lisp:t :member-name
                                  "IdentitySourceParameters")
                                 (client-token :target-type token :member-name
                                  "ClientToken")
                                 (tags :target-type tags :member-name "Tags"))
                                (:shape-name "CreateIdentitySourceRequest"))

(smithy/sdk/shapes:define-output create-identity-source-response
                                 common-lisp:nil
                                 ((identity-source-type :target-type
                                   identity-source-type :member-name
                                   "IdentitySourceType")
                                  (identity-source-arn :target-type string
                                   :member-name "IdentitySourceArn")
                                  (creation-time :target-type iso-timestamp
                                   :member-name "CreationTime"))
                                 (:shape-name "CreateIdentitySourceResponse"))

(smithy/sdk/shapes:define-input delete-identity-source-request common-lisp:nil
                                ((identity-source-arn :target-type string
                                  :required common-lisp:t :member-name
                                  "IdentitySourceArn" :http-label
                                  common-lisp:t))
                                (:shape-name "DeleteIdentitySourceRequest"))

(smithy/sdk/shapes:define-input delete-inactive-approval-team-version-request
                                common-lisp:nil
                                ((arn :target-type approval-team-arn :required
                                  common-lisp:t :member-name "Arn" :http-label
                                  common-lisp:t)
                                 (version-id :target-type string :required
                                  common-lisp:t :member-name "VersionId"
                                  :http-label common-lisp:t))
                                (:shape-name
                                 "DeleteInactiveApprovalTeamVersionRequest"))

(smithy/sdk/shapes:define-output delete-inactive-approval-team-version-response
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name
                                  "DeleteInactiveApprovalTeamVersionResponse"))

(smithy/sdk/shapes:define-type description smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure filter common-lisp:nil
                                    ((field-name :target-type filter-field
                                      :member-name "FieldName")
                                     (operator :target-type operator
                                      :member-name "Operator")
                                     (value :target-type string :member-name
                                      "Value"))
                                    (:shape-name "Filter"))

(smithy/sdk/shapes:define-enum filter-field
    common-lisp:nil
  (:action-name "ActionName")
  (:approval-team-name "ApprovalTeamName")
  (:voting-time "VotingTime")
  (:vote "Vote")
  (:session-status "SessionStatus")
  (:initiation-time "InitiationTime"))

(smithy/sdk/shapes:define-list filters :member filter)

(smithy/sdk/shapes:define-input get-approval-team-request common-lisp:nil
                                ((arn :target-type approval-team-arn :required
                                  common-lisp:t :member-name "Arn" :http-label
                                  common-lisp:t))
                                (:shape-name "GetApprovalTeamRequest"))

(smithy/sdk/shapes:define-output get-approval-team-response common-lisp:nil
                                 ((creation-time :target-type iso-timestamp
                                   :member-name "CreationTime")
                                  (approval-strategy :target-type
                                   approval-strategy-response :member-name
                                   "ApprovalStrategy")
                                  (number-of-approvers :target-type
                                   smithy/sdk/smithy-types:integer :member-name
                                   "NumberOfApprovers")
                                  (approvers :target-type
                                   get-approval-team-response-approvers
                                   :member-name "Approvers")
                                  (arn :target-type string :member-name "Arn")
                                  (description :target-type description
                                   :member-name "Description")
                                  (name :target-type string :member-name
                                   "Name")
                                  (status :target-type approval-team-status
                                   :member-name "Status")
                                  (status-code :target-type
                                   approval-team-status-code :member-name
                                   "StatusCode")
                                  (status-message :target-type message
                                   :member-name "StatusMessage")
                                  (update-session-arn :target-type string
                                   :member-name "UpdateSessionArn")
                                  (version-id :target-type string :member-name
                                   "VersionId")
                                  (policies :target-type policies-references
                                   :member-name "Policies")
                                  (last-update-time :target-type iso-timestamp
                                   :member-name "LastUpdateTime")
                                  (pending-update :target-type pending-update
                                   :member-name "PendingUpdate"))
                                 (:shape-name "GetApprovalTeamResponse"))

(smithy/sdk/shapes:define-structure get-approval-team-response-approver
                                    common-lisp:nil
                                    ((approver-id :target-type participant-id
                                      :member-name "ApproverId")
                                     (response-time :target-type iso-timestamp
                                      :member-name "ResponseTime")
                                     (primary-identity-id :target-type
                                      identity-id :member-name
                                      "PrimaryIdentityId")
                                     (primary-identity-source-arn :target-type
                                      string :member-name
                                      "PrimaryIdentitySourceArn")
                                     (primary-identity-status :target-type
                                      identity-status :member-name
                                      "PrimaryIdentityStatus"))
                                    (:shape-name
                                     "GetApprovalTeamResponseApprover"))

(smithy/sdk/shapes:define-list get-approval-team-response-approvers :member
                               get-approval-team-response-approver)

(smithy/sdk/shapes:define-input get-identity-source-request common-lisp:nil
                                ((identity-source-arn :target-type string
                                  :required common-lisp:t :member-name
                                  "IdentitySourceArn" :http-label
                                  common-lisp:t))
                                (:shape-name "GetIdentitySourceRequest"))

(smithy/sdk/shapes:define-output get-identity-source-response common-lisp:nil
                                 ((identity-source-type :target-type
                                   identity-source-type :member-name
                                   "IdentitySourceType")
                                  (identity-source-parameters :target-type
                                   identity-source-parameters-for-get
                                   :member-name "IdentitySourceParameters")
                                  (identity-source-arn :target-type string
                                   :member-name "IdentitySourceArn")
                                  (creation-time :target-type iso-timestamp
                                   :member-name "CreationTime")
                                  (status :target-type identity-source-status
                                   :member-name "Status")
                                  (status-code :target-type
                                   identity-source-status-code :member-name
                                   "StatusCode")
                                  (status-message :target-type string
                                   :member-name "StatusMessage"))
                                 (:shape-name "GetIdentitySourceResponse"))

(smithy/sdk/shapes:define-input get-policy-version-request common-lisp:nil
                                ((policy-version-arn :target-type
                                  qualified-policy-arn :required common-lisp:t
                                  :member-name "PolicyVersionArn" :http-label
                                  common-lisp:t))
                                (:shape-name "GetPolicyVersionRequest"))

(smithy/sdk/shapes:define-output get-policy-version-response common-lisp:nil
                                 ((policy-version :target-type policy-version
                                   :required common-lisp:t :member-name
                                   "PolicyVersion"))
                                 (:shape-name "GetPolicyVersionResponse"))

(smithy/sdk/shapes:define-input get-resource-policy-request common-lisp:nil
                                ((resource-arn :target-type string :required
                                  common-lisp:t :member-name "ResourceArn")
                                 (policy-name :target-type string :required
                                  common-lisp:t :member-name "PolicyName")
                                 (policy-type :target-type policy-type
                                  :required common-lisp:t :member-name
                                  "PolicyType"))
                                (:shape-name "GetResourcePolicyRequest"))

(smithy/sdk/shapes:define-output get-resource-policy-response common-lisp:nil
                                 ((resource-arn :target-type string :required
                                   common-lisp:t :member-name "ResourceArn")
                                  (policy-type :target-type policy-type
                                   :required common-lisp:t :member-name
                                   "PolicyType")
                                  (policy-version-arn :target-type string
                                   :member-name "PolicyVersionArn")
                                  (policy-name :target-type policy-name
                                   :required common-lisp:t :member-name
                                   "PolicyName")
                                  (policy-document :target-type policy-document
                                   :required common-lisp:t :member-name
                                   "PolicyDocument"))
                                 (:shape-name "GetResourcePolicyResponse"))

(smithy/sdk/shapes:define-input get-session-request common-lisp:nil
                                ((session-arn :target-type session-arn
                                  :required common-lisp:t :member-name
                                  "SessionArn" :http-label common-lisp:t))
                                (:shape-name "GetSessionRequest"))

(smithy/sdk/shapes:define-output get-session-response common-lisp:nil
                                 ((session-arn :target-type session-arn
                                   :member-name "SessionArn")
                                  (approval-team-arn :target-type
                                   approval-team-arn :member-name
                                   "ApprovalTeamArn")
                                  (approval-team-name :target-type
                                   approval-team-name :member-name
                                   "ApprovalTeamName")
                                  (protected-resource-arn :target-type string
                                   :member-name "ProtectedResourceArn")
                                  (approval-strategy :target-type
                                   approval-strategy-response :member-name
                                   "ApprovalStrategy")
                                  (number-of-approvers :target-type
                                   smithy/sdk/smithy-types:integer :member-name
                                   "NumberOfApprovers")
                                  (initiation-time :target-type iso-timestamp
                                   :member-name "InitiationTime")
                                  (expiration-time :target-type iso-timestamp
                                   :member-name "ExpirationTime")
                                  (completion-time :target-type iso-timestamp
                                   :member-name "CompletionTime")
                                  (description :target-type description
                                   :member-name "Description")
                                  (metadata :target-type session-metadata
                                   :member-name "Metadata")
                                  (status :target-type session-status
                                   :member-name "Status")
                                  (status-code :target-type session-status-code
                                   :member-name "StatusCode")
                                  (status-message :target-type message
                                   :member-name "StatusMessage")
                                  (execution-status :target-type
                                   session-execution-status :member-name
                                   "ExecutionStatus")
                                  (action-name :target-type action-name
                                   :member-name "ActionName")
                                  (requester-service-principal :target-type
                                   service-principal :member-name
                                   "RequesterServicePrincipal")
                                  (requester-principal-arn :target-type string
                                   :member-name "RequesterPrincipalArn")
                                  (requester-account-id :target-type account-id
                                   :member-name "RequesterAccountId")
                                  (requester-region :target-type region
                                   :member-name "RequesterRegion")
                                  (requester-comment :target-type
                                   requester-comment :member-name
                                   "RequesterComment")
                                  (action-completion-strategy :target-type
                                   action-completion-strategy :member-name
                                   "ActionCompletionStrategy")
                                  (approver-responses :target-type
                                   get-session-response-approver-responses
                                   :member-name "ApproverResponses"))
                                 (:shape-name "GetSessionResponse"))

(smithy/sdk/shapes:define-structure get-session-response-approver-response
                                    common-lisp:nil
                                    ((approver-id :target-type participant-id
                                      :member-name "ApproverId")
                                     (identity-source-arn :target-type string
                                      :member-name "IdentitySourceArn")
                                     (identity-id :target-type identity-id
                                      :member-name "IdentityId")
                                     (response :target-type session-response
                                      :member-name "Response")
                                     (response-time :target-type iso-timestamp
                                      :member-name "ResponseTime"))
                                    (:shape-name
                                     "GetSessionResponseApproverResponse"))

(smithy/sdk/shapes:define-list get-session-response-approver-responses :member
                               get-session-response-approver-response)

(smithy/sdk/shapes:define-structure iam-identity-center common-lisp:nil
                                    ((instance-arn :target-type
                                      idc-instance-arn :required common-lisp:t
                                      :member-name "InstanceArn")
                                     (region :target-type string :required
                                      common-lisp:t :member-name "Region"))
                                    (:shape-name "IamIdentityCenter"))

(smithy/sdk/shapes:define-structure iam-identity-center-for-get common-lisp:nil
                                    ((instance-arn :target-type string
                                      :member-name "InstanceArn")
                                     (approval-portal-url :target-type string
                                      :member-name "ApprovalPortalUrl")
                                     (region :target-type string :member-name
                                      "Region"))
                                    (:shape-name "IamIdentityCenterForGet"))

(smithy/sdk/shapes:define-structure iam-identity-center-for-list
                                    common-lisp:nil
                                    ((instance-arn :target-type string
                                      :member-name "InstanceArn")
                                     (approval-portal-url :target-type string
                                      :member-name "ApprovalPortalUrl")
                                     (region :target-type string :member-name
                                      "Region"))
                                    (:shape-name "IamIdentityCenterForList"))

(smithy/sdk/shapes:define-type idc-instance-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type identity-id smithy/sdk/smithy-types:string)

common-lisp:nil

(smithy/sdk/shapes:define-structure identity-source-for-list common-lisp:nil
                                    ((identity-source-type :target-type
                                      identity-source-type :member-name
                                      "IdentitySourceType")
                                     (identity-source-parameters :target-type
                                      identity-source-parameters-for-list
                                      :member-name "IdentitySourceParameters")
                                     (identity-source-arn :target-type string
                                      :member-name "IdentitySourceArn")
                                     (creation-time :target-type iso-timestamp
                                      :member-name "CreationTime")
                                     (status :target-type
                                      identity-source-status :member-name
                                      "Status")
                                     (status-code :target-type
                                      identity-source-status-code :member-name
                                      "StatusCode")
                                     (status-message :target-type string
                                      :member-name "StatusMessage"))
                                    (:shape-name "IdentitySourceForList"))

(smithy/sdk/shapes:define-structure identity-source-parameters common-lisp:nil
                                    ((iam-identity-center :target-type
                                      iam-identity-center :member-name
                                      "IamIdentityCenter"))
                                    (:shape-name "IdentitySourceParameters"))

(smithy/sdk/shapes:define-union identity-source-parameters-for-get
                                common-lisp:nil
                                ((iam-identity-center :target-type
                                  iam-identity-center-for-get :member-name
                                  "IamIdentityCenter"))
                                (:shape-name "IdentitySourceParametersForGet"))

(smithy/sdk/shapes:define-union identity-source-parameters-for-list
                                common-lisp:nil
                                ((iam-identity-center :target-type
                                  iam-identity-center-for-list :member-name
                                  "IamIdentityCenter"))
                                (:shape-name "IdentitySourceParametersForList"))

(smithy/sdk/shapes:define-enum identity-source-status
    common-lisp:nil
  (:creating "CREATING")
  (:active "ACTIVE")
  (:deleting "DELETING")
  (:error "ERROR"))

(smithy/sdk/shapes:define-enum identity-source-status-code
    common-lisp:nil
  (:access-denied "ACCESS_DENIED")
  (:deletion-failed "DELETION_FAILED")
  (:idc-instance-not-found "IDC_INSTANCE_NOT_FOUND")
  (:idc-instance-not-valid "IDC_INSTANCE_NOT_VALID"))

(smithy/sdk/shapes:define-enum identity-source-type
    common-lisp:nil
  (:iam-identity-center "IAM_IDENTITY_CENTER"))

(smithy/sdk/shapes:define-list identity-sources :member
                               identity-source-for-list)

(smithy/sdk/shapes:define-enum identity-status
    common-lisp:nil
  (:pending "PENDING")
  (:accepted "ACCEPTED")
  (:rejected "REJECTED")
  (:invalid "INVALID"))

(smithy/sdk/shapes:define-error internal-server-exception common-lisp:nil
                                ((message :target-type string :required
                                  common-lisp:t :member-name "Message"))
                                (:shape-name "InternalServerException")
                                (:error-code 500))

(smithy/sdk/shapes:define-error invalid-parameter-exception common-lisp:nil
                                ((message :target-type string :required
                                  common-lisp:t :member-name "Message"))
                                (:shape-name "InvalidParameterException")
                                (:error-code 400))

(smithy/sdk/shapes:define-type iso-timestamp smithy/sdk/smithy-types:timestamp)

(smithy/sdk/shapes:define-input list-approval-teams-request common-lisp:nil
                                ((max-results :target-type max-results
                                  :member-name "MaxResults" :http-query
                                  "MaxResults")
                                 (next-token :target-type token :member-name
                                  "NextToken" :http-query "NextToken"))
                                (:shape-name "ListApprovalTeamsRequest"))

(smithy/sdk/shapes:define-output list-approval-teams-response common-lisp:nil
                                 ((next-token :target-type token :member-name
                                   "NextToken")
                                  (approval-teams :target-type
                                   list-approval-teams-response-approval-teams
                                   :member-name "ApprovalTeams"))
                                 (:shape-name "ListApprovalTeamsResponse"))

(smithy/sdk/shapes:define-structure list-approval-teams-response-approval-team
                                    common-lisp:nil
                                    ((creation-time :target-type iso-timestamp
                                      :member-name "CreationTime")
                                     (approval-strategy :target-type
                                      approval-strategy-response :member-name
                                      "ApprovalStrategy")
                                     (number-of-approvers :target-type
                                      smithy/sdk/smithy-types:integer
                                      :member-name "NumberOfApprovers")
                                     (arn :target-type approval-team-arn
                                      :member-name "Arn")
                                     (name :target-type approval-team-name
                                      :member-name "Name")
                                     (description :target-type description
                                      :member-name "Description")
                                     (status :target-type approval-team-status
                                      :member-name "Status")
                                     (status-code :target-type
                                      approval-team-status-code :member-name
                                      "StatusCode")
                                     (status-message :target-type message
                                      :member-name "StatusMessage"))
                                    (:shape-name
                                     "ListApprovalTeamsResponseApprovalTeam"))

(smithy/sdk/shapes:define-list list-approval-teams-response-approval-teams
                               :member
                               list-approval-teams-response-approval-team)

(smithy/sdk/shapes:define-input list-identity-sources-request common-lisp:nil
                                ((max-results :target-type max-results
                                  :member-name "MaxResults" :http-query
                                  "MaxResults")
                                 (next-token :target-type token :member-name
                                  "NextToken" :http-query "NextToken"))
                                (:shape-name "ListIdentitySourcesRequest"))

(smithy/sdk/shapes:define-output list-identity-sources-response common-lisp:nil
                                 ((next-token :target-type token :member-name
                                   "NextToken")
                                  (identity-sources :target-type
                                   identity-sources :member-name
                                   "IdentitySources"))
                                 (:shape-name "ListIdentitySourcesResponse"))

(smithy/sdk/shapes:define-input list-policies-request common-lisp:nil
                                ((max-results :target-type max-results
                                  :member-name "MaxResults" :http-query
                                  "MaxResults")
                                 (next-token :target-type token :member-name
                                  "NextToken" :http-query "NextToken"))
                                (:shape-name "ListPoliciesRequest"))

(smithy/sdk/shapes:define-output list-policies-response common-lisp:nil
                                 ((next-token :target-type token :member-name
                                   "NextToken")
                                  (policies :target-type policies :member-name
                                   "Policies"))
                                 (:shape-name "ListPoliciesResponse"))

(smithy/sdk/shapes:define-input list-policy-versions-request common-lisp:nil
                                ((max-results :target-type max-results
                                  :member-name "MaxResults" :http-query
                                  "MaxResults")
                                 (next-token :target-type token :member-name
                                  "NextToken" :http-query "NextToken")
                                 (policy-arn :target-type
                                  unqualified-policy-arn :required
                                  common-lisp:t :member-name "PolicyArn"
                                  :http-label common-lisp:t))
                                (:shape-name "ListPolicyVersionsRequest"))

(smithy/sdk/shapes:define-output list-policy-versions-response common-lisp:nil
                                 ((next-token :target-type token :member-name
                                   "NextToken")
                                  (policy-versions :target-type policy-versions
                                   :member-name "PolicyVersions"))
                                 (:shape-name "ListPolicyVersionsResponse"))

(smithy/sdk/shapes:define-input list-resource-policies-request common-lisp:nil
                                ((resource-arn :target-type string :required
                                  common-lisp:t :member-name "ResourceArn"
                                  :http-label common-lisp:t)
                                 (max-results :target-type max-results
                                  :member-name "MaxResults" :http-query
                                  "MaxResults")
                                 (next-token :target-type token :member-name
                                  "NextToken" :http-query "NextToken"))
                                (:shape-name "ListResourcePoliciesRequest"))

(smithy/sdk/shapes:define-output list-resource-policies-response
                                 common-lisp:nil
                                 ((next-token :target-type token :member-name
                                   "NextToken")
                                  (resource-policies :target-type
                                   list-resource-policies-response-resource-policies
                                   :member-name "ResourcePolicies"))
                                 (:shape-name "ListResourcePoliciesResponse"))

(smithy/sdk/shapes:define-list
 list-resource-policies-response-resource-policies :member
 list-resource-policies-response-resource-policy)

(smithy/sdk/shapes:define-structure
 list-resource-policies-response-resource-policy common-lisp:nil
 ((policy-arn :target-type string :member-name "PolicyArn")
  (policy-type :target-type policy-type :member-name "PolicyType")
  (policy-name :target-type string :member-name "PolicyName"))
 (:shape-name "ListResourcePoliciesResponseResourcePolicy"))

(smithy/sdk/shapes:define-input list-sessions-request common-lisp:nil
                                ((approval-team-arn :target-type
                                  approval-team-arn :required common-lisp:t
                                  :member-name "ApprovalTeamArn" :http-label
                                  common-lisp:t)
                                 (max-results :target-type max-results
                                  :member-name "MaxResults")
                                 (next-token :target-type token :member-name
                                  "NextToken")
                                 (filters :target-type filters :member-name
                                  "Filters"))
                                (:shape-name "ListSessionsRequest"))

(smithy/sdk/shapes:define-output list-sessions-response common-lisp:nil
                                 ((next-token :target-type token :member-name
                                   "NextToken")
                                  (sessions :target-type
                                   list-sessions-response-sessions :member-name
                                   "Sessions"))
                                 (:shape-name "ListSessionsResponse"))

(smithy/sdk/shapes:define-structure list-sessions-response-session
                                    common-lisp:nil
                                    ((session-arn :target-type session-arn
                                      :member-name "SessionArn")
                                     (approval-team-name :target-type
                                      approval-team-name :member-name
                                      "ApprovalTeamName")
                                     (approval-team-arn :target-type
                                      approval-team-arn :member-name
                                      "ApprovalTeamArn")
                                     (initiation-time :target-type
                                      iso-timestamp :member-name
                                      "InitiationTime")
                                     (expiration-time :target-type
                                      iso-timestamp :member-name
                                      "ExpirationTime")
                                     (completion-time :target-type
                                      iso-timestamp :member-name
                                      "CompletionTime")
                                     (description :target-type description
                                      :member-name "Description")
                                     (action-name :target-type action-name
                                      :member-name "ActionName")
                                     (protected-resource-arn :target-type
                                      string :member-name
                                      "ProtectedResourceArn")
                                     (requester-service-principal :target-type
                                      service-principal :member-name
                                      "RequesterServicePrincipal")
                                     (requester-principal-arn :target-type
                                      string :member-name
                                      "RequesterPrincipalArn")
                                     (requester-region :target-type region
                                      :member-name "RequesterRegion")
                                     (requester-account-id :target-type
                                      account-id :member-name
                                      "RequesterAccountId")
                                     (status :target-type session-status
                                      :member-name "Status")
                                     (status-code :target-type
                                      session-status-code :member-name
                                      "StatusCode")
                                     (status-message :target-type message
                                      :member-name "StatusMessage")
                                     (action-completion-strategy :target-type
                                      action-completion-strategy :member-name
                                      "ActionCompletionStrategy"))
                                    (:shape-name "ListSessionsResponseSession"))

(smithy/sdk/shapes:define-list list-sessions-response-sessions :member
                               list-sessions-response-session)

(smithy/sdk/shapes:define-input list-tags-for-resource-request common-lisp:nil
                                ((resource-arn :target-type string :required
                                  common-lisp:t :member-name "ResourceArn"
                                  :http-label common-lisp:t))
                                (:shape-name "ListTagsForResourceRequest"))

(smithy/sdk/shapes:define-output list-tags-for-resource-response
                                 common-lisp:nil
                                 ((tags :target-type tags :member-name "Tags"))
                                 (:shape-name "ListTagsForResourceResponse"))

(smithy/sdk/shapes:define-type max-results smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type message smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure mof-napproval-strategy common-lisp:nil
                                    ((min-approvals-required :target-type
                                      smithy/sdk/smithy-types:integer :required
                                      common-lisp:t :member-name
                                      "MinApprovalsRequired"))
                                    (:shape-name "MofNApprovalStrategy"))

(smithy/sdk/shapes:define-enum operator
    common-lisp:nil
  (:equals "EQ")
  (:not-equals "NE")
  (:greater-than "GT")
  (:less-than "LT")
  (:greater-than-or-equal-to "GTE")
  (:less-than-or-equal-to "LTE")
  (:contains "CONTAINS")
  (:does-not-contain "NOT_CONTAINS")
  (:between "BETWEEN"))

(smithy/sdk/shapes:define-type participant-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure pending-update common-lisp:nil
                                    ((version-id :target-type string
                                      :member-name "VersionId")
                                     (description :target-type string
                                      :member-name "Description")
                                     (approval-strategy :target-type
                                      approval-strategy-response :member-name
                                      "ApprovalStrategy")
                                     (number-of-approvers :target-type
                                      smithy/sdk/smithy-types:integer
                                      :member-name "NumberOfApprovers")
                                     (status :target-type approval-team-status
                                      :member-name "Status")
                                     (status-code :target-type
                                      approval-team-status-code :member-name
                                      "StatusCode")
                                     (status-message :target-type message
                                      :member-name "StatusMessage")
                                     (approvers :target-type
                                      get-approval-team-response-approvers
                                      :member-name "Approvers")
                                     (update-initiation-time :target-type
                                      iso-timestamp :member-name
                                      "UpdateInitiationTime"))
                                    (:shape-name "PendingUpdate"))

(smithy/sdk/shapes:define-list policies :member policy)

(smithy/sdk/shapes:define-list policies-references :member policy-reference)

(smithy/sdk/shapes:define-structure policy common-lisp:nil
                                    ((arn :target-type unqualified-policy-arn
                                      :required common-lisp:t :member-name
                                      "Arn")
                                     (default-version :target-type
                                      policy-version-id :required common-lisp:t
                                      :member-name "DefaultVersion")
                                     (policy-type :target-type policy-type
                                      :required common-lisp:t :member-name
                                      "PolicyType")
                                     (name :target-type policy-name :required
                                      common-lisp:t :member-name "Name"))
                                    (:shape-name "Policy"))

(smithy/sdk/shapes:define-type policy-document smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type policy-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure policy-reference common-lisp:nil
                                    ((policy-arn :target-type
                                      qualified-policy-arn :required
                                      common-lisp:t :member-name "PolicyArn"))
                                    (:shape-name "PolicyReference"))

(smithy/sdk/shapes:define-enum policy-status
    common-lisp:nil
  (:attachable "ATTACHABLE")
  (:deprecated "DEPRECATED"))

(smithy/sdk/shapes:define-enum policy-type
    common-lisp:nil
  (:aws-managed "AWS_MANAGED")
  (:aws-ram "AWS_RAM"))

(smithy/sdk/shapes:define-structure policy-version common-lisp:nil
                                    ((arn :target-type qualified-policy-arn
                                      :required common-lisp:t :member-name
                                      "Arn")
                                     (policy-arn :target-type
                                      unqualified-policy-arn :required
                                      common-lisp:t :member-name "PolicyArn")
                                     (version-id :target-type policy-version-id
                                      :required common-lisp:t :member-name
                                      "VersionId")
                                     (policy-type :target-type policy-type
                                      :required common-lisp:t :member-name
                                      "PolicyType")
                                     (is-default :target-type
                                      smithy/sdk/smithy-types:boolean :required
                                      common-lisp:t :member-name "IsDefault")
                                     (name :target-type policy-name :required
                                      common-lisp:t :member-name "Name")
                                     (status :target-type policy-status
                                      :required common-lisp:t :member-name
                                      "Status")
                                     (creation-time :target-type iso-timestamp
                                      :required common-lisp:t :member-name
                                      "CreationTime")
                                     (last-updated-time :target-type
                                      iso-timestamp :required common-lisp:t
                                      :member-name "LastUpdatedTime")
                                     (document :target-type policy-document
                                      :required common-lisp:t :member-name
                                      "Document"))
                                    (:shape-name "PolicyVersion"))

(smithy/sdk/shapes:define-type policy-version-id
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-structure policy-version-summary common-lisp:nil
                                    ((arn :target-type qualified-policy-arn
                                      :required common-lisp:t :member-name
                                      "Arn")
                                     (policy-arn :target-type
                                      unqualified-policy-arn :required
                                      common-lisp:t :member-name "PolicyArn")
                                     (version-id :target-type policy-version-id
                                      :required common-lisp:t :member-name
                                      "VersionId")
                                     (policy-type :target-type policy-type
                                      :required common-lisp:t :member-name
                                      "PolicyType")
                                     (is-default :target-type
                                      smithy/sdk/smithy-types:boolean :required
                                      common-lisp:t :member-name "IsDefault")
                                     (name :target-type policy-name :required
                                      common-lisp:t :member-name "Name")
                                     (status :target-type policy-status
                                      :required common-lisp:t :member-name
                                      "Status")
                                     (creation-time :target-type iso-timestamp
                                      :required common-lisp:t :member-name
                                      "CreationTime")
                                     (last-updated-time :target-type
                                      iso-timestamp :required common-lisp:t
                                      :member-name "LastUpdatedTime"))
                                    (:shape-name "PolicyVersionSummary"))

(smithy/sdk/shapes:define-list policy-versions :member policy-version-summary)

(smithy/sdk/shapes:define-type qualified-policy-arn
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type region smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type requester-comment smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error resource-not-found-exception common-lisp:nil
                                ((message :target-type string :required
                                  common-lisp:t :member-name "Message"))
                                (:shape-name "ResourceNotFoundException")
                                (:error-code 404))

(smithy/sdk/shapes:define-type service-principal smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error service-quota-exceeded-exception
                                common-lisp:nil
                                ((message :target-type string :required
                                  common-lisp:t :member-name "Message"))
                                (:shape-name "ServiceQuotaExceededException")
                                (:error-code 402))

common-lisp:nil

(smithy/sdk/shapes:define-type session-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum session-execution-status
    common-lisp:nil
  (:executed "EXECUTED")
  (:failed "FAILED")
  (:pending "PENDING"))

(smithy/sdk/shapes:define-type session-key smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-map session-metadata :key session-key :value
                              session-value)

(smithy/sdk/shapes:define-enum session-response
    common-lisp:nil
  (:approved "APPROVED")
  (:rejected "REJECTED")
  (:no-response "NO_RESPONSE"))

(smithy/sdk/shapes:define-enum session-status
    common-lisp:nil
  (:pending "PENDING")
  (:cancelled "CANCELLED")
  (:approved "APPROVED")
  (:failed "FAILED")
  (:creating "CREATING"))

(smithy/sdk/shapes:define-enum session-status-code
    common-lisp:nil
  (:rejected "REJECTED")
  (:expired "EXPIRED")
  (:configuration-changed "CONFIGURATION_CHANGED"))

(smithy/sdk/shapes:define-type session-value smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input start-active-approval-team-deletion-request
                                common-lisp:nil
                                ((pending-window-days :target-type
                                  smithy/sdk/smithy-types:integer :member-name
                                  "PendingWindowDays")
                                 (arn :target-type approval-team-arn :required
                                  common-lisp:t :member-name "Arn" :http-label
                                  common-lisp:t))
                                (:shape-name
                                 "StartActiveApprovalTeamDeletionRequest"))

(smithy/sdk/shapes:define-output start-active-approval-team-deletion-response
                                 common-lisp:nil
                                 ((deletion-completion-time :target-type
                                   iso-timestamp :member-name
                                   "DeletionCompletionTime")
                                  (deletion-start-time :target-type
                                   iso-timestamp :member-name
                                   "DeletionStartTime"))
                                 (:shape-name
                                  "StartActiveApprovalTeamDeletionResponse"))

(smithy/sdk/shapes:define-type string smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type tag-key smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list tag-key-list :member tag-key)

(smithy/sdk/shapes:define-input tag-resource-request common-lisp:nil
                                ((resource-arn :target-type string :required
                                  common-lisp:t :member-name "ResourceArn"
                                  :http-label common-lisp:t)
                                 (tags :target-type tags :required
                                  common-lisp:t :member-name "Tags"))
                                (:shape-name "TagResourceRequest"))

(smithy/sdk/shapes:define-output tag-resource-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "TagResourceResponse"))

(smithy/sdk/shapes:define-type tag-value smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-map tags :key tag-key :value tag-value)

(smithy/sdk/shapes:define-error throttling-exception common-lisp:nil
                                ((message :target-type string :required
                                  common-lisp:t :member-name "Message"))
                                (:shape-name "ThrottlingException")
                                (:error-code 429))

(smithy/sdk/shapes:define-type token smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error too-many-tags-exception common-lisp:nil
                                ((message :target-type string :required
                                  common-lisp:t :member-name "Message")
                                 (resource-name :target-type string
                                  :member-name "ResourceName"))
                                (:shape-name "TooManyTagsException")
                                (:error-code 400))

(smithy/sdk/shapes:define-type unqualified-policy-arn
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input untag-resource-request common-lisp:nil
                                ((resource-arn :target-type string :required
                                  common-lisp:t :member-name "ResourceArn"
                                  :http-label common-lisp:t)
                                 (tag-keys :target-type tag-key-list :required
                                  common-lisp:t :member-name "TagKeys"))
                                (:shape-name "UntagResourceRequest"))

(smithy/sdk/shapes:define-output untag-resource-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "UntagResourceResponse"))

(smithy/sdk/shapes:define-input update-approval-team-request common-lisp:nil
                                ((approval-strategy :target-type
                                  approval-strategy :member-name
                                  "ApprovalStrategy")
                                 (approvers :target-type
                                  approval-team-request-approvers :member-name
                                  "Approvers")
                                 (description :target-type description
                                  :member-name "Description")
                                 (arn :target-type approval-team-arn :required
                                  common-lisp:t :member-name "Arn" :http-label
                                  common-lisp:t))
                                (:shape-name "UpdateApprovalTeamRequest"))

(smithy/sdk/shapes:define-output update-approval-team-response common-lisp:nil
                                 ((version-id :target-type string :member-name
                                   "VersionId"))
                                 (:shape-name "UpdateApprovalTeamResponse"))

(smithy/sdk/shapes:define-error validation-exception common-lisp:nil
                                ((message :target-type string :required
                                  common-lisp:t :member-name "Message"))
                                (:shape-name "ValidationException")
                                (:error-code 400))

(smithy/sdk/operation:define-operation cancel-session :shape-name
                                       "CancelSession" :input
                                       cancel-session-request :output
                                       cancel-session-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "PUT" :uri
                                       "/sessions/{SessionArn}" :code 200)

(smithy/sdk/operation:define-operation create-approval-team :shape-name
                                       "CreateApprovalTeam" :input
                                       create-approval-team-request :output
                                       create-approval-team-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri "/approval-teams"
                                       :code 200)

(smithy/sdk/operation:define-operation create-identity-source :shape-name
                                       "CreateIdentitySource" :input
                                       create-identity-source-request :output
                                       create-identity-source-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri "/identity-sources"
                                       :code 200)

(smithy/sdk/operation:define-operation delete-identity-source :shape-name
                                       "DeleteIdentitySource" :input
                                       delete-identity-source-request :output
                                       common-lisp:null :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "DELETE" :uri
                                       "/identity-sources/{IdentitySourceArn}"
                                       :code 200)

(smithy/sdk/operation:define-operation delete-inactive-approval-team-version
                                       :shape-name
                                       "DeleteInactiveApprovalTeamVersion"
                                       :input
                                       delete-inactive-approval-team-version-request
                                       :output
                                       delete-inactive-approval-team-version-response
                                       :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "DELETE" :uri
                                       "/approval-teams/{Arn}/{VersionId}"
                                       :code 200)

(smithy/sdk/operation:define-operation get-approval-team :shape-name
                                       "GetApprovalTeam" :input
                                       get-approval-team-request :output
                                       get-approval-team-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/approval-teams/{Arn}" :code 200)

(smithy/sdk/operation:define-operation get-identity-source :shape-name
                                       "GetIdentitySource" :input
                                       get-identity-source-request :output
                                       get-identity-source-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/identity-sources/{IdentitySourceArn}"
                                       :code 200)

(smithy/sdk/operation:define-operation get-policy-version :shape-name
                                       "GetPolicyVersion" :input
                                       get-policy-version-request :output
                                       get-policy-version-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/policy-versions/{PolicyVersionArn}"
                                       :code 200)

(smithy/sdk/operation:define-operation get-resource-policy :shape-name
                                       "GetResourcePolicy" :input
                                       get-resource-policy-request :output
                                       get-resource-policy-response :errors
                                       (access-denied-exception
                                        invalid-parameter-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri "/GetResourcePolicy"
                                       :code 200)

(smithy/sdk/operation:define-operation get-session :shape-name "GetSession"
                                       :input get-session-request :output
                                       get-session-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/sessions/{SessionArn}" :code 200)

(smithy/sdk/operation:define-operation list-approval-teams :shape-name
                                       "ListApprovalTeams" :input
                                       list-approval-teams-request :output
                                       list-approval-teams-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/approval-teams/?List" :code 200)

(smithy/sdk/operation:define-operation list-identity-sources :shape-name
                                       "ListIdentitySources" :input
                                       list-identity-sources-request :output
                                       list-identity-sources-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/identity-sources/?List" :code 200)

(smithy/sdk/operation:define-operation list-policies :shape-name "ListPolicies"
                                       :input list-policies-request :output
                                       list-policies-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri "/policies/?List"
                                       :code 200)

(smithy/sdk/operation:define-operation list-policy-versions :shape-name
                                       "ListPolicyVersions" :input
                                       list-policy-versions-request :output
                                       list-policy-versions-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/policies/{PolicyArn}/?List" :code 200)

(smithy/sdk/operation:define-operation list-resource-policies :shape-name
                                       "ListResourcePolicies" :input
                                       list-resource-policies-request :output
                                       list-resource-policies-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/resource-policies/{ResourceArn}/?List"
                                       :code 200)

(smithy/sdk/operation:define-operation list-sessions :shape-name "ListSessions"
                                       :input list-sessions-request :output
                                       list-sessions-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/approval-teams/{ApprovalTeamArn}/sessions/?List"
                                       :code 200)

(smithy/sdk/operation:define-operation list-tags-for-resource :shape-name
                                       "ListTagsForResource" :input
                                       list-tags-for-resource-request :output
                                       list-tags-for-resource-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri "/tags/{ResourceArn}"
                                       :code 200)

(smithy/sdk/operation:define-operation start-active-approval-team-deletion
                                       :shape-name
                                       "StartActiveApprovalTeamDeletion" :input
                                       start-active-approval-team-deletion-request
                                       :output
                                       start-active-approval-team-deletion-response
                                       :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/approval-teams/{Arn}?Delete" :code 200)

(smithy/sdk/operation:define-operation tag-resource :shape-name "TagResource"
                                       :input tag-resource-request :output
                                       tag-resource-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        too-many-tags-exception
                                        validation-exception)
                                       :method "PUT" :uri "/tags/{ResourceArn}"
                                       :code 200)

(smithy/sdk/operation:define-operation untag-resource :shape-name
                                       "UntagResource" :input
                                       untag-resource-request :output
                                       untag-resource-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/tags/{ResourceArn}" :code 200)

(smithy/sdk/operation:define-operation update-approval-team :shape-name
                                       "UpdateApprovalTeam" :input
                                       update-approval-team-request :output
                                       update-approval-team-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "PATCH" :uri
                                       "/approval-teams/{Arn}" :code 200)
