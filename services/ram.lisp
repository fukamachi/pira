(uiop/package:define-package #:pira/ram (:use)
                             (:export #:accept-resource-share-invitation
                              #:amazon-resource-sharing
                              #:associate-resource-share
                              #:associate-resource-share-permission
                              #:associated-permission
                              #:associated-permission-list #:boolean
                              #:create-permission #:create-permission-version
                              #:create-resource-share #:date-time
                              #:delete-permission #:delete-permission-version
                              #:delete-resource-share
                              #:disassociate-resource-share
                              #:disassociate-resource-share-permission
                              #:enable-sharing-with-aws-organization
                              #:get-permission #:get-resource-policies
                              #:get-resource-share-associations
                              #:get-resource-share-invitations
                              #:get-resource-shares #:integer
                              #:list-pending-invitation-resources
                              #:list-permission-associations
                              #:list-permission-versions #:list-permissions
                              #:list-principals
                              #:list-replace-permission-associations-work
                              #:list-resource-share-permissions
                              #:list-resource-types #:list-resources
                              #:max-results #:permission-arn-list
                              #:permission-feature-set #:permission-name
                              #:permission-status #:permission-type
                              #:permission-type-filter #:policy #:policy-list
                              #:principal #:principal-arn-or-id-list
                              #:principal-list
                              #:promote-permission-created-from-policy
                              #:promote-resource-share-created-from-policy
                              #:reject-resource-share-invitation
                              #:replace-permission-associations
                              #:replace-permission-associations-work
                              #:replace-permission-associations-work-id-list
                              #:replace-permission-associations-work-list
                              #:replace-permission-associations-work-status
                              #:resource #:resource-arn-list #:resource-list
                              #:resource-owner #:resource-region-scope
                              #:resource-region-scope-filter #:resource-share
                              #:resource-share-arn-list
                              #:resource-share-association
                              #:resource-share-association-list
                              #:resource-share-association-status
                              #:resource-share-association-type
                              #:resource-share-feature-set
                              #:resource-share-invitation
                              #:resource-share-invitation-arn-list
                              #:resource-share-invitation-list
                              #:resource-share-invitation-status
                              #:resource-share-list
                              #:resource-share-permission-detail
                              #:resource-share-permission-list
                              #:resource-share-permission-summary
                              #:resource-share-status #:resource-status
                              #:service-name-and-resource-type
                              #:service-name-and-resource-type-list
                              #:set-default-permission-version
                              #:source-arn-or-account-list #:string #:tag
                              #:tag-filter #:tag-filters #:tag-key
                              #:tag-key-list #:tag-list #:tag-resource
                              #:tag-value #:tag-value-list #:untag-resource
                              #:update-resource-share))
(common-lisp:in-package #:pira/ram)

(smithy/sdk/service:define-service amazon-resource-sharing :shape-name
                                   "AmazonResourceSharing" :version
                                   "2018-01-04" :title
                                   "AWS Resource Access Manager" :traits
                                   '(("aws.api#service" ("sdkId" . "RAM")
                                      ("arnNamespace" . "ram")
                                      ("cloudFormationName" . "RAM")
                                      ("cloudTrailEventSource"
                                       . "ram.amazonaws.com")
                                      ("endpointPrefix" . "ram"))
                                     ("aws.auth#sigv4" ("name" . "ram"))
                                     ("aws.protocols#restJson1")))

(smithy/sdk/shapes:define-input accept-resource-share-invitation-request
                                common-lisp:nil
                                ((resource-share-invitation-arn :target-type
                                  string :required common-lisp:t :member-name
                                  "resourceShareInvitationArn")
                                 (client-token :target-type string :member-name
                                  "clientToken"))
                                (:shape-name
                                 "AcceptResourceShareInvitationRequest"))

(smithy/sdk/shapes:define-output accept-resource-share-invitation-response
                                 common-lisp:nil
                                 ((resource-share-invitation :target-type
                                   resource-share-invitation :member-name
                                   "resourceShareInvitation")
                                  (client-token :target-type string
                                   :member-name "clientToken"))
                                 (:shape-name
                                  "AcceptResourceShareInvitationResponse"))

(smithy/sdk/shapes:define-input associate-resource-share-permission-request
                                common-lisp:nil
                                ((resource-share-arn :target-type string
                                  :required common-lisp:t :member-name
                                  "resourceShareArn")
                                 (permission-arn :target-type string :required
                                  common-lisp:t :member-name "permissionArn")
                                 (replace :target-type boolean :member-name
                                  "replace")
                                 (client-token :target-type string :member-name
                                  "clientToken")
                                 (permission-version :target-type integer
                                  :member-name "permissionVersion"))
                                (:shape-name
                                 "AssociateResourceSharePermissionRequest"))

(smithy/sdk/shapes:define-output associate-resource-share-permission-response
                                 common-lisp:nil
                                 ((return-value :target-type boolean
                                   :member-name "returnValue")
                                  (client-token :target-type string
                                   :member-name "clientToken"))
                                 (:shape-name
                                  "AssociateResourceSharePermissionResponse"))

(smithy/sdk/shapes:define-input associate-resource-share-request
                                common-lisp:nil
                                ((resource-share-arn :target-type string
                                  :required common-lisp:t :member-name
                                  "resourceShareArn")
                                 (resource-arns :target-type resource-arn-list
                                  :member-name "resourceArns")
                                 (principals :target-type
                                  principal-arn-or-id-list :member-name
                                  "principals")
                                 (client-token :target-type string :member-name
                                  "clientToken")
                                 (sources :target-type
                                  source-arn-or-account-list :member-name
                                  "sources"))
                                (:shape-name "AssociateResourceShareRequest"))

(smithy/sdk/shapes:define-output associate-resource-share-response
                                 common-lisp:nil
                                 ((resource-share-associations :target-type
                                   resource-share-association-list :member-name
                                   "resourceShareAssociations")
                                  (client-token :target-type string
                                   :member-name "clientToken"))
                                 (:shape-name "AssociateResourceShareResponse"))

(smithy/sdk/shapes:define-structure associated-permission common-lisp:nil
                                    ((arn :target-type string :member-name
                                      "arn")
                                     (permission-version :target-type string
                                      :member-name "permissionVersion")
                                     (default-version :target-type boolean
                                      :member-name "defaultVersion")
                                     (resource-type :target-type string
                                      :member-name "resourceType")
                                     (status :target-type string :member-name
                                      "status")
                                     (feature-set :target-type
                                      permission-feature-set :member-name
                                      "featureSet")
                                     (last-updated-time :target-type date-time
                                      :member-name "lastUpdatedTime")
                                     (resource-share-arn :target-type string
                                      :member-name "resourceShareArn"))
                                    (:shape-name "AssociatedPermission"))

(smithy/sdk/shapes:define-list associated-permission-list :member
                               (associated-permission :xml-name "item"))

(smithy/sdk/shapes:define-type boolean smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-input create-permission-request common-lisp:nil
                                ((name :target-type permission-name :required
                                  common-lisp:t :member-name "name")
                                 (resource-type :target-type string :required
                                  common-lisp:t :member-name "resourceType")
                                 (policy-template :target-type policy :required
                                  common-lisp:t :member-name "policyTemplate")
                                 (client-token :target-type string :member-name
                                  "clientToken")
                                 (tags :target-type tag-list :member-name
                                  "tags"))
                                (:shape-name "CreatePermissionRequest"))

(smithy/sdk/shapes:define-output create-permission-response common-lisp:nil
                                 ((permission :target-type
                                   resource-share-permission-summary
                                   :member-name "permission")
                                  (client-token :target-type string
                                   :member-name "clientToken"))
                                 (:shape-name "CreatePermissionResponse"))

(smithy/sdk/shapes:define-input create-permission-version-request
                                common-lisp:nil
                                ((permission-arn :target-type string :required
                                  common-lisp:t :member-name "permissionArn")
                                 (policy-template :target-type policy :required
                                  common-lisp:t :member-name "policyTemplate")
                                 (client-token :target-type string :member-name
                                  "clientToken"))
                                (:shape-name "CreatePermissionVersionRequest"))

(smithy/sdk/shapes:define-output create-permission-version-response
                                 common-lisp:nil
                                 ((permission :target-type
                                   resource-share-permission-detail
                                   :member-name "permission")
                                  (client-token :target-type string
                                   :member-name "clientToken"))
                                 (:shape-name
                                  "CreatePermissionVersionResponse"))

(smithy/sdk/shapes:define-input create-resource-share-request common-lisp:nil
                                ((name :target-type string :required
                                  common-lisp:t :member-name "name")
                                 (resource-arns :target-type resource-arn-list
                                  :member-name "resourceArns")
                                 (principals :target-type
                                  principal-arn-or-id-list :member-name
                                  "principals")
                                 (tags :target-type tag-list :member-name
                                  "tags")
                                 (allow-external-principals :target-type
                                  boolean :member-name
                                  "allowExternalPrincipals")
                                 (client-token :target-type string :member-name
                                  "clientToken")
                                 (permission-arns :target-type
                                  permission-arn-list :member-name
                                  "permissionArns")
                                 (sources :target-type
                                  source-arn-or-account-list :member-name
                                  "sources"))
                                (:shape-name "CreateResourceShareRequest"))

(smithy/sdk/shapes:define-output create-resource-share-response common-lisp:nil
                                 ((resource-share :target-type resource-share
                                   :member-name "resourceShare")
                                  (client-token :target-type string
                                   :member-name "clientToken"))
                                 (:shape-name "CreateResourceShareResponse"))

(smithy/sdk/shapes:define-type date-time smithy/sdk/smithy-types:timestamp)

(smithy/sdk/shapes:define-input delete-permission-request common-lisp:nil
                                ((permission-arn :target-type string :required
                                  common-lisp:t :member-name "permissionArn"
                                  :http-query "permissionArn")
                                 (client-token :target-type string :member-name
                                  "clientToken" :http-query "clientToken"))
                                (:shape-name "DeletePermissionRequest"))

(smithy/sdk/shapes:define-output delete-permission-response common-lisp:nil
                                 ((return-value :target-type boolean
                                   :member-name "returnValue" :xml-name
                                   "return")
                                  (client-token :target-type string
                                   :member-name "clientToken")
                                  (permission-status :target-type
                                   permission-status :member-name
                                   "permissionStatus"))
                                 (:shape-name "DeletePermissionResponse"))

(smithy/sdk/shapes:define-input delete-permission-version-request
                                common-lisp:nil
                                ((permission-arn :target-type string :required
                                  common-lisp:t :member-name "permissionArn"
                                  :http-query "permissionArn")
                                 (permission-version :target-type integer
                                  :required common-lisp:t :member-name
                                  "permissionVersion" :http-query
                                  "permissionVersion")
                                 (client-token :target-type string :member-name
                                  "clientToken" :http-query "clientToken"))
                                (:shape-name "DeletePermissionVersionRequest"))

(smithy/sdk/shapes:define-output delete-permission-version-response
                                 common-lisp:nil
                                 ((return-value :target-type boolean
                                   :member-name "returnValue" :xml-name
                                   "return")
                                  (client-token :target-type string
                                   :member-name "clientToken")
                                  (permission-status :target-type
                                   permission-status :member-name
                                   "permissionStatus"))
                                 (:shape-name
                                  "DeletePermissionVersionResponse"))

(smithy/sdk/shapes:define-input delete-resource-share-request common-lisp:nil
                                ((resource-share-arn :target-type string
                                  :required common-lisp:t :member-name
                                  "resourceShareArn" :http-query
                                  "resourceShareArn")
                                 (client-token :target-type string :member-name
                                  "clientToken" :http-query "clientToken"))
                                (:shape-name "DeleteResourceShareRequest"))

(smithy/sdk/shapes:define-output delete-resource-share-response common-lisp:nil
                                 ((return-value :target-type boolean
                                   :member-name "returnValue" :xml-name
                                   "return")
                                  (client-token :target-type string
                                   :member-name "clientToken"))
                                 (:shape-name "DeleteResourceShareResponse"))

(smithy/sdk/shapes:define-input disassociate-resource-share-permission-request
                                common-lisp:nil
                                ((resource-share-arn :target-type string
                                  :required common-lisp:t :member-name
                                  "resourceShareArn")
                                 (permission-arn :target-type string :required
                                  common-lisp:t :member-name "permissionArn")
                                 (client-token :target-type string :member-name
                                  "clientToken"))
                                (:shape-name
                                 "DisassociateResourceSharePermissionRequest"))

(smithy/sdk/shapes:define-output
 disassociate-resource-share-permission-response common-lisp:nil
 ((return-value :target-type boolean :member-name "returnValue")
  (client-token :target-type string :member-name "clientToken"))
 (:shape-name "DisassociateResourceSharePermissionResponse"))

(smithy/sdk/shapes:define-input disassociate-resource-share-request
                                common-lisp:nil
                                ((resource-share-arn :target-type string
                                  :required common-lisp:t :member-name
                                  "resourceShareArn")
                                 (resource-arns :target-type resource-arn-list
                                  :member-name "resourceArns")
                                 (principals :target-type
                                  principal-arn-or-id-list :member-name
                                  "principals")
                                 (client-token :target-type string :member-name
                                  "clientToken")
                                 (sources :target-type
                                  source-arn-or-account-list :member-name
                                  "sources"))
                                (:shape-name
                                 "DisassociateResourceShareRequest"))

(smithy/sdk/shapes:define-output disassociate-resource-share-response
                                 common-lisp:nil
                                 ((resource-share-associations :target-type
                                   resource-share-association-list :member-name
                                   "resourceShareAssociations")
                                  (client-token :target-type string
                                   :member-name "clientToken"))
                                 (:shape-name
                                  "DisassociateResourceShareResponse"))

(smithy/sdk/shapes:define-input enable-sharing-with-aws-organization-request
                                common-lisp:nil common-lisp:nil
                                (:shape-name
                                 "EnableSharingWithAwsOrganizationRequest"))

(smithy/sdk/shapes:define-output enable-sharing-with-aws-organization-response
                                 common-lisp:nil
                                 ((return-value :target-type boolean
                                   :member-name "returnValue" :xml-name
                                   "return"))
                                 (:shape-name
                                  "EnableSharingWithAwsOrganizationResponse"))

(smithy/sdk/shapes:define-input get-permission-request common-lisp:nil
                                ((permission-arn :target-type string :required
                                  common-lisp:t :member-name "permissionArn")
                                 (permission-version :target-type integer
                                  :member-name "permissionVersion"))
                                (:shape-name "GetPermissionRequest"))

(smithy/sdk/shapes:define-output get-permission-response common-lisp:nil
                                 ((permission :target-type
                                   resource-share-permission-detail
                                   :member-name "permission"))
                                 (:shape-name "GetPermissionResponse"))

(smithy/sdk/shapes:define-input get-resource-policies-request common-lisp:nil
                                ((resource-arns :target-type resource-arn-list
                                  :required common-lisp:t :member-name
                                  "resourceArns")
                                 (principal :target-type string :member-name
                                  "principal")
                                 (next-token :target-type string :member-name
                                  "nextToken")
                                 (max-results :target-type max-results
                                  :member-name "maxResults"))
                                (:shape-name "GetResourcePoliciesRequest"))

(smithy/sdk/shapes:define-output get-resource-policies-response common-lisp:nil
                                 ((policies :target-type policy-list
                                   :member-name "policies")
                                  (next-token :target-type string :member-name
                                   "nextToken"))
                                 (:shape-name "GetResourcePoliciesResponse"))

(smithy/sdk/shapes:define-input get-resource-share-associations-request
                                common-lisp:nil
                                ((association-type :target-type
                                  resource-share-association-type :required
                                  common-lisp:t :member-name "associationType")
                                 (resource-share-arns :target-type
                                  resource-share-arn-list :member-name
                                  "resourceShareArns")
                                 (resource-arn :target-type string :member-name
                                  "resourceArn")
                                 (principal :target-type string :member-name
                                  "principal")
                                 (association-status :target-type
                                  resource-share-association-status
                                  :member-name "associationStatus")
                                 (next-token :target-type string :member-name
                                  "nextToken")
                                 (max-results :target-type max-results
                                  :member-name "maxResults"))
                                (:shape-name
                                 "GetResourceShareAssociationsRequest"))

(smithy/sdk/shapes:define-output get-resource-share-associations-response
                                 common-lisp:nil
                                 ((resource-share-associations :target-type
                                   resource-share-association-list :member-name
                                   "resourceShareAssociations")
                                  (next-token :target-type string :member-name
                                   "nextToken"))
                                 (:shape-name
                                  "GetResourceShareAssociationsResponse"))

(smithy/sdk/shapes:define-input get-resource-share-invitations-request
                                common-lisp:nil
                                ((resource-share-invitation-arns :target-type
                                  resource-share-invitation-arn-list
                                  :member-name "resourceShareInvitationArns")
                                 (resource-share-arns :target-type
                                  resource-share-arn-list :member-name
                                  "resourceShareArns")
                                 (next-token :target-type string :member-name
                                  "nextToken")
                                 (max-results :target-type max-results
                                  :member-name "maxResults"))
                                (:shape-name
                                 "GetResourceShareInvitationsRequest"))

(smithy/sdk/shapes:define-output get-resource-share-invitations-response
                                 common-lisp:nil
                                 ((resource-share-invitations :target-type
                                   resource-share-invitation-list :member-name
                                   "resourceShareInvitations")
                                  (next-token :target-type string :member-name
                                   "nextToken"))
                                 (:shape-name
                                  "GetResourceShareInvitationsResponse"))

(smithy/sdk/shapes:define-input get-resource-shares-request common-lisp:nil
                                ((resource-share-arns :target-type
                                  resource-share-arn-list :member-name
                                  "resourceShareArns")
                                 (resource-share-status :target-type
                                  resource-share-status :member-name
                                  "resourceShareStatus")
                                 (resource-owner :target-type resource-owner
                                  :required common-lisp:t :member-name
                                  "resourceOwner")
                                 (name :target-type string :member-name "name")
                                 (tag-filters :target-type tag-filters
                                  :member-name "tagFilters")
                                 (next-token :target-type string :member-name
                                  "nextToken")
                                 (max-results :target-type max-results
                                  :member-name "maxResults")
                                 (permission-arn :target-type string
                                  :member-name "permissionArn")
                                 (permission-version :target-type integer
                                  :member-name "permissionVersion"))
                                (:shape-name "GetResourceSharesRequest"))

(smithy/sdk/shapes:define-output get-resource-shares-response common-lisp:nil
                                 ((resource-shares :target-type
                                   resource-share-list :member-name
                                   "resourceShares")
                                  (next-token :target-type string :member-name
                                   "nextToken"))
                                 (:shape-name "GetResourceSharesResponse"))

(smithy/sdk/shapes:define-error idempotent-parameter-mismatch-exception
                                common-lisp:nil
                                ((message :target-type string :required
                                  common-lisp:t :member-name "message"))
                                (:shape-name
                                 "IdempotentParameterMismatchException")
                                (:error-name "IdempotentParameterMismatch")
                                (:error-code 400))

(smithy/sdk/shapes:define-type integer smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-error invalid-client-token-exception common-lisp:nil
                                ((message :target-type string :required
                                  common-lisp:t :member-name "message"))
                                (:shape-name "InvalidClientTokenException")
                                (:error-name "InvalidClientToken")
                                (:error-code 400))

(smithy/sdk/shapes:define-error invalid-max-results-exception common-lisp:nil
                                ((message :target-type string :required
                                  common-lisp:t :member-name "message"))
                                (:shape-name "InvalidMaxResultsException")
                                (:error-name "InvalidMaxResults")
                                (:error-code 400))

(smithy/sdk/shapes:define-error invalid-next-token-exception common-lisp:nil
                                ((message :target-type string :required
                                  common-lisp:t :member-name "message"))
                                (:shape-name "InvalidNextTokenException")
                                (:error-name "InvalidNextToken")
                                (:error-code 400))

(smithy/sdk/shapes:define-error invalid-parameter-exception common-lisp:nil
                                ((message :target-type string :required
                                  common-lisp:t :member-name "message"))
                                (:shape-name "InvalidParameterException")
                                (:error-name "InvalidParameter")
                                (:error-code 400))

(smithy/sdk/shapes:define-error invalid-policy-exception common-lisp:nil
                                ((message :target-type string :required
                                  common-lisp:t :member-name "message"))
                                (:shape-name "InvalidPolicyException")
                                (:error-name "InvalidPolicy") (:error-code 400))

(smithy/sdk/shapes:define-error invalid-resource-type-exception common-lisp:nil
                                ((message :target-type string :required
                                  common-lisp:t :member-name "message"))
                                (:shape-name "InvalidResourceTypeException")
                                (:error-name "InvalidResourceType.Unknown")
                                (:error-code 400))

(smithy/sdk/shapes:define-error invalid-state-transition-exception
                                common-lisp:nil
                                ((message :target-type string :required
                                  common-lisp:t :member-name "message"))
                                (:shape-name "InvalidStateTransitionException")
                                (:error-name
                                 "InvalidStateTransitionException.Unknown")
                                (:error-code 400))

(smithy/sdk/shapes:define-input list-pending-invitation-resources-request
                                common-lisp:nil
                                ((resource-share-invitation-arn :target-type
                                  string :required common-lisp:t :member-name
                                  "resourceShareInvitationArn")
                                 (next-token :target-type string :member-name
                                  "nextToken")
                                 (max-results :target-type max-results
                                  :member-name "maxResults")
                                 (resource-region-scope :target-type
                                  resource-region-scope-filter :member-name
                                  "resourceRegionScope"))
                                (:shape-name
                                 "ListPendingInvitationResourcesRequest"))

(smithy/sdk/shapes:define-output list-pending-invitation-resources-response
                                 common-lisp:nil
                                 ((resources :target-type resource-list
                                   :member-name "resources")
                                  (next-token :target-type string :member-name
                                   "nextToken"))
                                 (:shape-name
                                  "ListPendingInvitationResourcesResponse"))

(smithy/sdk/shapes:define-input list-permission-associations-request
                                common-lisp:nil
                                ((permission-arn :target-type string
                                  :member-name "permissionArn")
                                 (permission-version :target-type integer
                                  :member-name "permissionVersion")
                                 (association-status :target-type
                                  resource-share-association-status
                                  :member-name "associationStatus")
                                 (resource-type :target-type string
                                  :member-name "resourceType")
                                 (feature-set :target-type
                                  permission-feature-set :member-name
                                  "featureSet")
                                 (default-version :target-type boolean
                                  :member-name "defaultVersion")
                                 (next-token :target-type string :member-name
                                  "nextToken")
                                 (max-results :target-type max-results
                                  :member-name "maxResults"))
                                (:shape-name
                                 "ListPermissionAssociationsRequest"))

(smithy/sdk/shapes:define-output list-permission-associations-response
                                 common-lisp:nil
                                 ((permissions :target-type
                                   associated-permission-list :member-name
                                   "permissions")
                                  (next-token :target-type string :member-name
                                   "nextToken"))
                                 (:shape-name
                                  "ListPermissionAssociationsResponse"))

(smithy/sdk/shapes:define-input list-permission-versions-request
                                common-lisp:nil
                                ((permission-arn :target-type string :required
                                  common-lisp:t :member-name "permissionArn")
                                 (next-token :target-type string :member-name
                                  "nextToken")
                                 (max-results :target-type max-results
                                  :member-name "maxResults"))
                                (:shape-name "ListPermissionVersionsRequest"))

(smithy/sdk/shapes:define-output list-permission-versions-response
                                 common-lisp:nil
                                 ((permissions :target-type
                                   resource-share-permission-list :member-name
                                   "permissions")
                                  (next-token :target-type string :member-name
                                   "nextToken"))
                                 (:shape-name "ListPermissionVersionsResponse"))

(smithy/sdk/shapes:define-input list-permissions-request common-lisp:nil
                                ((resource-type :target-type string
                                  :member-name "resourceType")
                                 (next-token :target-type string :member-name
                                  "nextToken")
                                 (max-results :target-type max-results
                                  :member-name "maxResults")
                                 (permission-type :target-type
                                  permission-type-filter :member-name
                                  "permissionType"))
                                (:shape-name "ListPermissionsRequest"))

(smithy/sdk/shapes:define-output list-permissions-response common-lisp:nil
                                 ((permissions :target-type
                                   resource-share-permission-list :member-name
                                   "permissions")
                                  (next-token :target-type string :member-name
                                   "nextToken"))
                                 (:shape-name "ListPermissionsResponse"))

(smithy/sdk/shapes:define-input list-principals-request common-lisp:nil
                                ((resource-owner :target-type resource-owner
                                  :required common-lisp:t :member-name
                                  "resourceOwner")
                                 (resource-arn :target-type string :member-name
                                  "resourceArn")
                                 (principals :target-type
                                  principal-arn-or-id-list :member-name
                                  "principals")
                                 (resource-type :target-type string
                                  :member-name "resourceType")
                                 (resource-share-arns :target-type
                                  resource-share-arn-list :member-name
                                  "resourceShareArns")
                                 (next-token :target-type string :member-name
                                  "nextToken")
                                 (max-results :target-type max-results
                                  :member-name "maxResults"))
                                (:shape-name "ListPrincipalsRequest"))

(smithy/sdk/shapes:define-output list-principals-response common-lisp:nil
                                 ((principals :target-type principal-list
                                   :member-name "principals")
                                  (next-token :target-type string :member-name
                                   "nextToken"))
                                 (:shape-name "ListPrincipalsResponse"))

(smithy/sdk/shapes:define-input
 list-replace-permission-associations-work-request common-lisp:nil
 ((work-ids :target-type replace-permission-associations-work-id-list
   :member-name "workIds")
  (status :target-type replace-permission-associations-work-status :member-name
   "status")
  (next-token :target-type string :member-name "nextToken")
  (max-results :target-type max-results :member-name "maxResults"))
 (:shape-name "ListReplacePermissionAssociationsWorkRequest"))

(smithy/sdk/shapes:define-output
 list-replace-permission-associations-work-response common-lisp:nil
 ((replace-permission-associations-works :target-type
   replace-permission-associations-work-list :member-name
   "replacePermissionAssociationsWorks")
  (next-token :target-type string :member-name "nextToken"))
 (:shape-name "ListReplacePermissionAssociationsWorkResponse"))

(smithy/sdk/shapes:define-input list-resource-share-permissions-request
                                common-lisp:nil
                                ((resource-share-arn :target-type string
                                  :required common-lisp:t :member-name
                                  "resourceShareArn")
                                 (next-token :target-type string :member-name
                                  "nextToken")
                                 (max-results :target-type max-results
                                  :member-name "maxResults"))
                                (:shape-name
                                 "ListResourceSharePermissionsRequest"))

(smithy/sdk/shapes:define-output list-resource-share-permissions-response
                                 common-lisp:nil
                                 ((permissions :target-type
                                   resource-share-permission-list :member-name
                                   "permissions")
                                  (next-token :target-type string :member-name
                                   "nextToken"))
                                 (:shape-name
                                  "ListResourceSharePermissionsResponse"))

(smithy/sdk/shapes:define-input list-resource-types-request common-lisp:nil
                                ((next-token :target-type string :member-name
                                  "nextToken")
                                 (max-results :target-type max-results
                                  :member-name "maxResults")
                                 (resource-region-scope :target-type
                                  resource-region-scope-filter :member-name
                                  "resourceRegionScope"))
                                (:shape-name "ListResourceTypesRequest"))

(smithy/sdk/shapes:define-output list-resource-types-response common-lisp:nil
                                 ((resource-types :target-type
                                   service-name-and-resource-type-list
                                   :member-name "resourceTypes")
                                  (next-token :target-type string :member-name
                                   "nextToken"))
                                 (:shape-name "ListResourceTypesResponse"))

(smithy/sdk/shapes:define-input list-resources-request common-lisp:nil
                                ((resource-owner :target-type resource-owner
                                  :required common-lisp:t :member-name
                                  "resourceOwner")
                                 (principal :target-type string :member-name
                                  "principal")
                                 (resource-type :target-type string
                                  :member-name "resourceType")
                                 (resource-arns :target-type resource-arn-list
                                  :member-name "resourceArns")
                                 (resource-share-arns :target-type
                                  resource-share-arn-list :member-name
                                  "resourceShareArns")
                                 (next-token :target-type string :member-name
                                  "nextToken")
                                 (max-results :target-type max-results
                                  :member-name "maxResults")
                                 (resource-region-scope :target-type
                                  resource-region-scope-filter :member-name
                                  "resourceRegionScope"))
                                (:shape-name "ListResourcesRequest"))

(smithy/sdk/shapes:define-output list-resources-response common-lisp:nil
                                 ((resources :target-type resource-list
                                   :member-name "resources")
                                  (next-token :target-type string :member-name
                                   "nextToken"))
                                 (:shape-name "ListResourcesResponse"))

(smithy/sdk/shapes:define-error malformed-arn-exception common-lisp:nil
                                ((message :target-type string :required
                                  common-lisp:t :member-name "message"))
                                (:shape-name "MalformedArnException")
                                (:error-name "InvalidArn.Malformed")
                                (:error-code 400))

(smithy/sdk/shapes:define-error malformed-policy-template-exception
                                common-lisp:nil
                                ((message :target-type string :required
                                  common-lisp:t :member-name "message"))
                                (:shape-name
                                 "MalformedPolicyTemplateException")
                                (:error-name
                                 "MalformedPolicyTemplateException")
                                (:error-code 400))

(smithy/sdk/shapes:define-type max-results smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-error missing-required-parameter-exception
                                common-lisp:nil
                                ((message :target-type string :required
                                  common-lisp:t :member-name "message"))
                                (:shape-name
                                 "MissingRequiredParameterException")
                                (:error-name "MissingRequiredParameter")
                                (:error-code 400))

(smithy/sdk/shapes:define-error operation-not-permitted-exception
                                common-lisp:nil
                                ((message :target-type string :required
                                  common-lisp:t :member-name "message"))
                                (:shape-name "OperationNotPermittedException")
                                (:error-name "OperationNotPermitted")
                                (:error-code 400))

(smithy/sdk/shapes:define-error permission-already-exists-exception
                                common-lisp:nil
                                ((message :target-type string :required
                                  common-lisp:t :member-name "message"))
                                (:shape-name
                                 "PermissionAlreadyExistsException")
                                (:error-name
                                 "PermissionAlreadyExistsException")
                                (:error-code 409))

(smithy/sdk/shapes:define-list permission-arn-list :member
                               (string :xml-name "item"))

(smithy/sdk/shapes:define-enum permission-feature-set
    common-lisp:nil
  (:created-from-policy "CREATED_FROM_POLICY")
  (:promoting-to-standard "PROMOTING_TO_STANDARD")
  (:standard "STANDARD"))

(smithy/sdk/shapes:define-error permission-limit-exceeded-exception
                                common-lisp:nil
                                ((message :target-type string :required
                                  common-lisp:t :member-name "message"))
                                (:shape-name
                                 "PermissionLimitExceededException")
                                (:error-name
                                 "PermissionLimitExceededException")
                                (:error-code 400))

(smithy/sdk/shapes:define-type permission-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum permission-status
    common-lisp:nil
  (:attachable "ATTACHABLE")
  (:unattachable "UNATTACHABLE")
  (:deleting "DELETING")
  (:deleted "DELETED"))

(smithy/sdk/shapes:define-enum permission-type
    common-lisp:nil
  (:customer-managed "CUSTOMER_MANAGED")
  (:aws-managed "AWS_MANAGED"))

(smithy/sdk/shapes:define-enum permission-type-filter
    common-lisp:nil
  (:all "ALL")
  (:aws-managed "AWS_MANAGED")
  (:customer-managed "CUSTOMER_MANAGED"))

(smithy/sdk/shapes:define-error permission-versions-limit-exceeded-exception
                                common-lisp:nil
                                ((message :target-type string :required
                                  common-lisp:t :member-name "message"))
                                (:shape-name
                                 "PermissionVersionsLimitExceededException")
                                (:error-name
                                 "PermissionVersionsLimitExceededException")
                                (:error-code 400))

(smithy/sdk/shapes:define-type policy smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list policy-list :member (policy :xml-name "item"))

(smithy/sdk/shapes:define-structure principal common-lisp:nil
                                    ((id :target-type string :member-name "id")
                                     (resource-share-arn :target-type string
                                      :member-name "resourceShareArn")
                                     (creation-time :target-type date-time
                                      :member-name "creationTime")
                                     (last-updated-time :target-type date-time
                                      :member-name "lastUpdatedTime")
                                     (external :target-type boolean
                                      :member-name "external"))
                                    (:shape-name "Principal"))

(smithy/sdk/shapes:define-list principal-arn-or-id-list :member
                               (string :xml-name "item"))

(smithy/sdk/shapes:define-list principal-list :member
                               (principal :xml-name "item"))

(smithy/sdk/shapes:define-input promote-permission-created-from-policy-request
                                common-lisp:nil
                                ((permission-arn :target-type string :required
                                  common-lisp:t :member-name "permissionArn")
                                 (name :target-type string :required
                                  common-lisp:t :member-name "name")
                                 (client-token :target-type string :member-name
                                  "clientToken"))
                                (:shape-name
                                 "PromotePermissionCreatedFromPolicyRequest"))

(smithy/sdk/shapes:define-output
 promote-permission-created-from-policy-response common-lisp:nil
 ((permission :target-type resource-share-permission-summary :member-name
   "permission")
  (client-token :target-type string :member-name "clientToken"))
 (:shape-name "PromotePermissionCreatedFromPolicyResponse"))

(smithy/sdk/shapes:define-input
 promote-resource-share-created-from-policy-request common-lisp:nil
 ((resource-share-arn :target-type string :required common-lisp:t :member-name
   "resourceShareArn" :http-query "resourceShareArn"))
 (:shape-name "PromoteResourceShareCreatedFromPolicyRequest"))

(smithy/sdk/shapes:define-output
 promote-resource-share-created-from-policy-response common-lisp:nil
 ((return-value :target-type boolean :member-name "returnValue" :xml-name
   "return"))
 (:shape-name "PromoteResourceShareCreatedFromPolicyResponse"))

(smithy/sdk/shapes:define-input reject-resource-share-invitation-request
                                common-lisp:nil
                                ((resource-share-invitation-arn :target-type
                                  string :required common-lisp:t :member-name
                                  "resourceShareInvitationArn")
                                 (client-token :target-type string :member-name
                                  "clientToken"))
                                (:shape-name
                                 "RejectResourceShareInvitationRequest"))

(smithy/sdk/shapes:define-output reject-resource-share-invitation-response
                                 common-lisp:nil
                                 ((resource-share-invitation :target-type
                                   resource-share-invitation :member-name
                                   "resourceShareInvitation")
                                  (client-token :target-type string
                                   :member-name "clientToken"))
                                 (:shape-name
                                  "RejectResourceShareInvitationResponse"))

(smithy/sdk/shapes:define-input replace-permission-associations-request
                                common-lisp:nil
                                ((from-permission-arn :target-type string
                                  :required common-lisp:t :member-name
                                  "fromPermissionArn")
                                 (from-permission-version :target-type integer
                                  :member-name "fromPermissionVersion")
                                 (to-permission-arn :target-type string
                                  :required common-lisp:t :member-name
                                  "toPermissionArn")
                                 (client-token :target-type string :member-name
                                  "clientToken"))
                                (:shape-name
                                 "ReplacePermissionAssociationsRequest"))

(smithy/sdk/shapes:define-output replace-permission-associations-response
                                 common-lisp:nil
                                 ((replace-permission-associations-work
                                   :target-type
                                   replace-permission-associations-work
                                   :member-name
                                   "replacePermissionAssociationsWork")
                                  (client-token :target-type string
                                   :member-name "clientToken"))
                                 (:shape-name
                                  "ReplacePermissionAssociationsResponse"))

(smithy/sdk/shapes:define-structure replace-permission-associations-work
                                    common-lisp:nil
                                    ((id :target-type string :member-name "id")
                                     (from-permission-arn :target-type string
                                      :member-name "fromPermissionArn")
                                     (from-permission-version :target-type
                                      string :member-name
                                      "fromPermissionVersion")
                                     (to-permission-arn :target-type string
                                      :member-name "toPermissionArn")
                                     (to-permission-version :target-type string
                                      :member-name "toPermissionVersion")
                                     (status :target-type
                                      replace-permission-associations-work-status
                                      :member-name "status")
                                     (status-message :target-type string
                                      :member-name "statusMessage")
                                     (creation-time :target-type date-time
                                      :member-name "creationTime")
                                     (last-updated-time :target-type date-time
                                      :member-name "lastUpdatedTime"))
                                    (:shape-name
                                     "ReplacePermissionAssociationsWork"))

(smithy/sdk/shapes:define-list replace-permission-associations-work-id-list
                               :member (string :xml-name "item"))

(smithy/sdk/shapes:define-list replace-permission-associations-work-list
                               :member
                               (replace-permission-associations-work :xml-name
                                "item"))

(smithy/sdk/shapes:define-enum replace-permission-associations-work-status
    common-lisp:nil
  (:in-progress "IN_PROGRESS")
  (:completed "COMPLETED")
  (:failed "FAILED"))

(smithy/sdk/shapes:define-structure resource common-lisp:nil
                                    ((arn :target-type string :member-name
                                      "arn")
                                     (type :target-type string :member-name
                                      "type")
                                     (resource-share-arn :target-type string
                                      :member-name "resourceShareArn")
                                     (resource-group-arn :target-type string
                                      :member-name "resourceGroupArn")
                                     (status :target-type resource-status
                                      :member-name "status")
                                     (status-message :target-type string
                                      :member-name "statusMessage")
                                     (creation-time :target-type date-time
                                      :member-name "creationTime")
                                     (last-updated-time :target-type date-time
                                      :member-name "lastUpdatedTime")
                                     (resource-region-scope :target-type
                                      resource-region-scope :member-name
                                      "resourceRegionScope"))
                                    (:shape-name "Resource"))

(smithy/sdk/shapes:define-list resource-arn-list :member
                               (string :xml-name "item"))

(smithy/sdk/shapes:define-error resource-arn-not-found-exception
                                common-lisp:nil
                                ((message :target-type string :required
                                  common-lisp:t :member-name "message"))
                                (:shape-name "ResourceArnNotFoundException")
                                (:error-name "InvalidResourceArn.NotFound")
                                (:error-code 400))

(smithy/sdk/shapes:define-list resource-list :member
                               (resource :xml-name "item"))

(smithy/sdk/shapes:define-enum resource-owner
    common-lisp:nil
  (:self "SELF")
  (:other-accounts "OTHER-ACCOUNTS"))

(smithy/sdk/shapes:define-enum resource-region-scope
    common-lisp:nil
  (:regional "REGIONAL")
  (:global "GLOBAL"))

(smithy/sdk/shapes:define-enum resource-region-scope-filter
    common-lisp:nil
  (:all "ALL")
  (:regional "REGIONAL")
  (:global "GLOBAL"))

(smithy/sdk/shapes:define-structure resource-share common-lisp:nil
                                    ((resource-share-arn :target-type string
                                      :member-name "resourceShareArn")
                                     (name :target-type string :member-name
                                      "name")
                                     (owning-account-id :target-type string
                                      :member-name "owningAccountId")
                                     (allow-external-principals :target-type
                                      boolean :member-name
                                      "allowExternalPrincipals")
                                     (status :target-type resource-share-status
                                      :member-name "status")
                                     (status-message :target-type string
                                      :member-name "statusMessage")
                                     (tags :target-type tag-list :member-name
                                      "tags")
                                     (creation-time :target-type date-time
                                      :member-name "creationTime")
                                     (last-updated-time :target-type date-time
                                      :member-name "lastUpdatedTime")
                                     (feature-set :target-type
                                      resource-share-feature-set :member-name
                                      "featureSet"))
                                    (:shape-name "ResourceShare"))

(smithy/sdk/shapes:define-list resource-share-arn-list :member
                               (string :xml-name "item"))

(smithy/sdk/shapes:define-structure resource-share-association common-lisp:nil
                                    ((resource-share-arn :target-type string
                                      :member-name "resourceShareArn")
                                     (resource-share-name :target-type string
                                      :member-name "resourceShareName")
                                     (associated-entity :target-type string
                                      :member-name "associatedEntity")
                                     (association-type :target-type
                                      resource-share-association-type
                                      :member-name "associationType")
                                     (status :target-type
                                      resource-share-association-status
                                      :member-name "status")
                                     (status-message :target-type string
                                      :member-name "statusMessage")
                                     (creation-time :target-type date-time
                                      :member-name "creationTime")
                                     (last-updated-time :target-type date-time
                                      :member-name "lastUpdatedTime")
                                     (external :target-type boolean
                                      :member-name "external"))
                                    (:shape-name "ResourceShareAssociation"))

(smithy/sdk/shapes:define-list resource-share-association-list :member
                               (resource-share-association :xml-name "item"))

(smithy/sdk/shapes:define-enum resource-share-association-status
    common-lisp:nil
  (:associating "ASSOCIATING")
  (:associated "ASSOCIATED")
  (:failed "FAILED")
  (:disassociating "DISASSOCIATING")
  (:disassociated "DISASSOCIATED"))

(smithy/sdk/shapes:define-enum resource-share-association-type
    common-lisp:nil
  (:principal "PRINCIPAL")
  (:resource "RESOURCE"))

(smithy/sdk/shapes:define-enum resource-share-feature-set
    common-lisp:nil
  (:created-from-policy "CREATED_FROM_POLICY")
  (:promoting-to-standard "PROMOTING_TO_STANDARD")
  (:standard "STANDARD"))

(smithy/sdk/shapes:define-structure resource-share-invitation common-lisp:nil
                                    ((resource-share-invitation-arn
                                      :target-type string :member-name
                                      "resourceShareInvitationArn")
                                     (resource-share-name :target-type string
                                      :member-name "resourceShareName")
                                     (resource-share-arn :target-type string
                                      :member-name "resourceShareArn")
                                     (sender-account-id :target-type string
                                      :member-name "senderAccountId")
                                     (receiver-account-id :target-type string
                                      :member-name "receiverAccountId")
                                     (invitation-timestamp :target-type
                                      date-time :member-name
                                      "invitationTimestamp")
                                     (status :target-type
                                      resource-share-invitation-status
                                      :member-name "status")
                                     (resource-share-associations :target-type
                                      resource-share-association-list
                                      :member-name "resourceShareAssociations")
                                     (receiver-arn :target-type string
                                      :member-name "receiverArn"))
                                    (:shape-name "ResourceShareInvitation"))

(smithy/sdk/shapes:define-error
 resource-share-invitation-already-accepted-exception common-lisp:nil
 ((message :target-type string :required common-lisp:t :member-name "message"))
 (:shape-name "ResourceShareInvitationAlreadyAcceptedException")
 (:error-name "InvalidResourceShareInvitationArn.AlreadyAccepted")
 (:error-code 400))

(smithy/sdk/shapes:define-error
 resource-share-invitation-already-rejected-exception common-lisp:nil
 ((message :target-type string :required common-lisp:t :member-name "message"))
 (:shape-name "ResourceShareInvitationAlreadyRejectedException")
 (:error-name "InvalidResourceShareInvitationArn.AlreadyRejected")
 (:error-code 400))

(smithy/sdk/shapes:define-list resource-share-invitation-arn-list :member
                               (string :xml-name "item"))

(smithy/sdk/shapes:define-error
 resource-share-invitation-arn-not-found-exception common-lisp:nil
 ((message :target-type string :required common-lisp:t :member-name "message"))
 (:shape-name "ResourceShareInvitationArnNotFoundException")
 (:error-name "InvalidResourceShareInvitationArn.NotFound") (:error-code 400))

(smithy/sdk/shapes:define-error resource-share-invitation-expired-exception
                                common-lisp:nil
                                ((message :target-type string :required
                                  common-lisp:t :member-name "message"))
                                (:shape-name
                                 "ResourceShareInvitationExpiredException")
                                (:error-name
                                 "InvalidResourceShareInvitationArn.Expired")
                                (:error-code 400))

(smithy/sdk/shapes:define-list resource-share-invitation-list :member
                               (resource-share-invitation :xml-name "item"))

(smithy/sdk/shapes:define-enum resource-share-invitation-status
    common-lisp:nil
  (:pending "PENDING")
  (:accepted "ACCEPTED")
  (:rejected "REJECTED")
  (:expired "EXPIRED"))

(smithy/sdk/shapes:define-error resource-share-limit-exceeded-exception
                                common-lisp:nil
                                ((message :target-type string :required
                                  common-lisp:t :member-name "message"))
                                (:shape-name
                                 "ResourceShareLimitExceededException")
                                (:error-name "ResourceShareLimitExceeded")
                                (:error-code 400))

(smithy/sdk/shapes:define-list resource-share-list :member
                               (resource-share :xml-name "item"))

(smithy/sdk/shapes:define-structure resource-share-permission-detail
                                    common-lisp:nil
                                    ((arn :target-type string :member-name
                                      "arn")
                                     (version :target-type string :member-name
                                      "version")
                                     (default-version :target-type boolean
                                      :member-name "defaultVersion")
                                     (name :target-type string :member-name
                                      "name")
                                     (resource-type :target-type string
                                      :member-name "resourceType")
                                     (permission :target-type string
                                      :member-name "permission")
                                     (creation-time :target-type date-time
                                      :member-name "creationTime")
                                     (last-updated-time :target-type date-time
                                      :member-name "lastUpdatedTime")
                                     (is-resource-type-default :target-type
                                      boolean :member-name
                                      "isResourceTypeDefault")
                                     (permission-type :target-type
                                      permission-type :member-name
                                      "permissionType")
                                     (feature-set :target-type
                                      permission-feature-set :member-name
                                      "featureSet")
                                     (status :target-type permission-status
                                      :member-name "status")
                                     (tags :target-type tag-list :member-name
                                      "tags"))
                                    (:shape-name
                                     "ResourceSharePermissionDetail"))

(smithy/sdk/shapes:define-list resource-share-permission-list :member
                               (resource-share-permission-summary :xml-name
                                "item"))

(smithy/sdk/shapes:define-structure resource-share-permission-summary
                                    common-lisp:nil
                                    ((arn :target-type string :member-name
                                      "arn")
                                     (version :target-type string :member-name
                                      "version")
                                     (default-version :target-type boolean
                                      :member-name "defaultVersion")
                                     (name :target-type string :member-name
                                      "name")
                                     (resource-type :target-type string
                                      :member-name "resourceType")
                                     (status :target-type string :member-name
                                      "status")
                                     (creation-time :target-type date-time
                                      :member-name "creationTime")
                                     (last-updated-time :target-type date-time
                                      :member-name "lastUpdatedTime")
                                     (is-resource-type-default :target-type
                                      boolean :member-name
                                      "isResourceTypeDefault")
                                     (permission-type :target-type
                                      permission-type :member-name
                                      "permissionType")
                                     (feature-set :target-type
                                      permission-feature-set :member-name
                                      "featureSet")
                                     (tags :target-type tag-list :member-name
                                      "tags"))
                                    (:shape-name
                                     "ResourceSharePermissionSummary"))

(smithy/sdk/shapes:define-enum resource-share-status
    common-lisp:nil
  (:pending "PENDING")
  (:active "ACTIVE")
  (:failed "FAILED")
  (:deleting "DELETING")
  (:deleted "DELETED"))

(smithy/sdk/shapes:define-enum resource-status
    common-lisp:nil
  (:available "AVAILABLE")
  (:zonal-resource-inaccessible "ZONAL_RESOURCE_INACCESSIBLE")
  (:limit-exceeded "LIMIT_EXCEEDED")
  (:unavailable "UNAVAILABLE")
  (:pending "PENDING"))

(smithy/sdk/shapes:define-error server-internal-exception common-lisp:nil
                                ((message :target-type string :required
                                  common-lisp:t :member-name "message"))
                                (:shape-name "ServerInternalException")
                                (:error-name "InternalError") (:error-code 500))

(smithy/sdk/shapes:define-structure service-name-and-resource-type
                                    common-lisp:nil
                                    ((resource-type :target-type string
                                      :member-name "resourceType")
                                     (service-name :target-type string
                                      :member-name "serviceName")
                                     (resource-region-scope :target-type
                                      resource-region-scope :member-name
                                      "resourceRegionScope"))
                                    (:shape-name "ServiceNameAndResourceType"))

(smithy/sdk/shapes:define-list service-name-and-resource-type-list :member
                               (service-name-and-resource-type :xml-name
                                "item"))

(smithy/sdk/shapes:define-error service-unavailable-exception common-lisp:nil
                                ((message :target-type string :required
                                  common-lisp:t :member-name "message"))
                                (:shape-name "ServiceUnavailableException")
                                (:error-name "Unavailable") (:error-code 503))

(smithy/sdk/shapes:define-input set-default-permission-version-request
                                common-lisp:nil
                                ((permission-arn :target-type string :required
                                  common-lisp:t :member-name "permissionArn")
                                 (permission-version :target-type integer
                                  :required common-lisp:t :member-name
                                  "permissionVersion")
                                 (client-token :target-type string :member-name
                                  "clientToken"))
                                (:shape-name
                                 "SetDefaultPermissionVersionRequest"))

(smithy/sdk/shapes:define-output set-default-permission-version-response
                                 common-lisp:nil
                                 ((return-value :target-type boolean
                                   :member-name "returnValue" :xml-name
                                   "return")
                                  (client-token :target-type string
                                   :member-name "clientToken"))
                                 (:shape-name
                                  "SetDefaultPermissionVersionResponse"))

(smithy/sdk/shapes:define-list source-arn-or-account-list :member
                               (string :xml-name "item"))

(smithy/sdk/shapes:define-type string smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure tag common-lisp:nil
                                    ((key :target-type tag-key :member-name
                                      "key")
                                     (value :target-type tag-value :member-name
                                      "value"))
                                    (:shape-name "Tag"))

(smithy/sdk/shapes:define-structure tag-filter common-lisp:nil
                                    ((tag-key :target-type tag-key :member-name
                                      "tagKey")
                                     (tag-values :target-type tag-value-list
                                      :member-name "tagValues"))
                                    (:shape-name "TagFilter"))

(smithy/sdk/shapes:define-list tag-filters :member tag-filter)

(smithy/sdk/shapes:define-type tag-key smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list tag-key-list :member tag-key)

(smithy/sdk/shapes:define-error tag-limit-exceeded-exception common-lisp:nil
                                ((message :target-type string :required
                                  common-lisp:t :member-name "message"))
                                (:shape-name "TagLimitExceededException")
                                (:error-name "TagLimitExceeded")
                                (:error-code 400))

(smithy/sdk/shapes:define-list tag-list :member tag)

(smithy/sdk/shapes:define-error tag-policy-violation-exception common-lisp:nil
                                ((message :target-type string :required
                                  common-lisp:t :member-name "message"))
                                (:shape-name "TagPolicyViolationException")
                                (:error-name "TagPolicyViolation")
                                (:error-code 400))

(smithy/sdk/shapes:define-input tag-resource-request common-lisp:nil
                                ((resource-share-arn :target-type string
                                  :member-name "resourceShareArn")
                                 (tags :target-type tag-list :required
                                  common-lisp:t :member-name "tags")
                                 (resource-arn :target-type string :member-name
                                  "resourceArn"))
                                (:shape-name "TagResourceRequest"))

(smithy/sdk/shapes:define-output tag-resource-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "TagResourceResponse"))

(smithy/sdk/shapes:define-type tag-value smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list tag-value-list :member tag-value)

(smithy/sdk/shapes:define-error throttling-exception common-lisp:nil
                                ((message :target-type string :required
                                  common-lisp:t :member-name "message"))
                                (:shape-name "ThrottlingException")
                                (:error-name "ThrottlingException")
                                (:error-code 429))

(smithy/sdk/shapes:define-error unknown-resource-exception common-lisp:nil
                                ((message :target-type string :required
                                  common-lisp:t :member-name "message"))
                                (:shape-name "UnknownResourceException")
                                (:error-name
                                 "InvalidResourceShareArn.NotFound")
                                (:error-code 400))

(smithy/sdk/shapes:define-error unmatched-policy-permission-exception
                                common-lisp:nil
                                ((message :target-type string :required
                                  common-lisp:t :member-name "message"))
                                (:shape-name
                                 "UnmatchedPolicyPermissionException")
                                (:error-name
                                 "UnmatchedPolicyPermissionException")
                                (:error-code 400))

(smithy/sdk/shapes:define-input untag-resource-request common-lisp:nil
                                ((resource-share-arn :target-type string
                                  :member-name "resourceShareArn")
                                 (tag-keys :target-type tag-key-list :required
                                  common-lisp:t :member-name "tagKeys")
                                 (resource-arn :target-type string :member-name
                                  "resourceArn"))
                                (:shape-name "UntagResourceRequest"))

(smithy/sdk/shapes:define-output untag-resource-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "UntagResourceResponse"))

(smithy/sdk/shapes:define-input update-resource-share-request common-lisp:nil
                                ((resource-share-arn :target-type string
                                  :required common-lisp:t :member-name
                                  "resourceShareArn")
                                 (name :target-type string :member-name "name")
                                 (allow-external-principals :target-type
                                  boolean :member-name
                                  "allowExternalPrincipals")
                                 (client-token :target-type string :member-name
                                  "clientToken"))
                                (:shape-name "UpdateResourceShareRequest"))

(smithy/sdk/shapes:define-output update-resource-share-response common-lisp:nil
                                 ((resource-share :target-type resource-share
                                   :member-name "resourceShare")
                                  (client-token :target-type string
                                   :member-name "clientToken"))
                                 (:shape-name "UpdateResourceShareResponse"))

(smithy/sdk/operation:define-operation accept-resource-share-invitation
                                       :shape-name
                                       "AcceptResourceShareInvitation" :input
                                       accept-resource-share-invitation-request
                                       :output
                                       accept-resource-share-invitation-response
                                       :errors
                                       (idempotent-parameter-mismatch-exception
                                        invalid-client-token-exception
                                        malformed-arn-exception
                                        operation-not-permitted-exception
                                        resource-share-invitation-already-accepted-exception
                                        resource-share-invitation-already-rejected-exception
                                        resource-share-invitation-arn-not-found-exception
                                        resource-share-invitation-expired-exception
                                        server-internal-exception
                                        service-unavailable-exception)
                                       :method "POST" :uri
                                       "/acceptresourceshareinvitation" :code
                                       200)

(smithy/sdk/operation:define-operation associate-resource-share :shape-name
                                       "AssociateResourceShare" :input
                                       associate-resource-share-request :output
                                       associate-resource-share-response
                                       :errors
                                       (idempotent-parameter-mismatch-exception
                                        invalid-client-token-exception
                                        invalid-parameter-exception
                                        invalid-state-transition-exception
                                        malformed-arn-exception
                                        operation-not-permitted-exception
                                        resource-share-limit-exceeded-exception
                                        server-internal-exception
                                        service-unavailable-exception
                                        throttling-exception
                                        unknown-resource-exception)
                                       :method "POST" :uri
                                       "/associateresourceshare" :code 200)

(smithy/sdk/operation:define-operation associate-resource-share-permission
                                       :shape-name
                                       "AssociateResourceSharePermission"
                                       :input
                                       associate-resource-share-permission-request
                                       :output
                                       associate-resource-share-permission-response
                                       :errors
                                       (invalid-client-token-exception
                                        invalid-parameter-exception
                                        malformed-arn-exception
                                        operation-not-permitted-exception
                                        server-internal-exception
                                        service-unavailable-exception
                                        unknown-resource-exception)
                                       :method "POST" :uri
                                       "/associateresourcesharepermission"
                                       :code 200)

(smithy/sdk/operation:define-operation create-permission :shape-name
                                       "CreatePermission" :input
                                       create-permission-request :output
                                       create-permission-response :errors
                                       (idempotent-parameter-mismatch-exception
                                        invalid-client-token-exception
                                        invalid-parameter-exception
                                        invalid-policy-exception
                                        malformed-policy-template-exception
                                        operation-not-permitted-exception
                                        permission-already-exists-exception
                                        permission-limit-exceeded-exception
                                        server-internal-exception
                                        service-unavailable-exception)
                                       :method "POST" :uri "/createpermission"
                                       :code 200)

(smithy/sdk/operation:define-operation create-permission-version :shape-name
                                       "CreatePermissionVersion" :input
                                       create-permission-version-request
                                       :output
                                       create-permission-version-response
                                       :errors
                                       (idempotent-parameter-mismatch-exception
                                        invalid-client-token-exception
                                        invalid-parameter-exception
                                        invalid-policy-exception
                                        malformed-arn-exception
                                        malformed-policy-template-exception
                                        permission-versions-limit-exceeded-exception
                                        server-internal-exception
                                        service-unavailable-exception
                                        unknown-resource-exception)
                                       :method "POST" :uri
                                       "/createpermissionversion" :code 200)

(smithy/sdk/operation:define-operation create-resource-share :shape-name
                                       "CreateResourceShare" :input
                                       create-resource-share-request :output
                                       create-resource-share-response :errors
                                       (idempotent-parameter-mismatch-exception
                                        invalid-client-token-exception
                                        invalid-parameter-exception
                                        invalid-state-transition-exception
                                        malformed-arn-exception
                                        operation-not-permitted-exception
                                        resource-share-limit-exceeded-exception
                                        server-internal-exception
                                        service-unavailable-exception
                                        tag-limit-exceeded-exception
                                        tag-policy-violation-exception
                                        unknown-resource-exception)
                                       :method "POST" :uri
                                       "/createresourceshare" :code 200)

(smithy/sdk/operation:define-operation delete-permission :shape-name
                                       "DeletePermission" :input
                                       delete-permission-request :output
                                       delete-permission-response :errors
                                       (idempotent-parameter-mismatch-exception
                                        invalid-client-token-exception
                                        malformed-arn-exception
                                        operation-not-permitted-exception
                                        server-internal-exception
                                        service-unavailable-exception
                                        unknown-resource-exception)
                                       :method "DELETE" :uri
                                       "/deletepermission" :code 200)

(smithy/sdk/operation:define-operation delete-permission-version :shape-name
                                       "DeletePermissionVersion" :input
                                       delete-permission-version-request
                                       :output
                                       delete-permission-version-response
                                       :errors
                                       (idempotent-parameter-mismatch-exception
                                        invalid-client-token-exception
                                        invalid-parameter-exception
                                        malformed-arn-exception
                                        operation-not-permitted-exception
                                        server-internal-exception
                                        service-unavailable-exception
                                        unknown-resource-exception)
                                       :method "DELETE" :uri
                                       "/deletepermissionversion" :code 200)

(smithy/sdk/operation:define-operation delete-resource-share :shape-name
                                       "DeleteResourceShare" :input
                                       delete-resource-share-request :output
                                       delete-resource-share-response :errors
                                       (idempotent-parameter-mismatch-exception
                                        invalid-client-token-exception
                                        invalid-parameter-exception
                                        invalid-state-transition-exception
                                        malformed-arn-exception
                                        operation-not-permitted-exception
                                        server-internal-exception
                                        service-unavailable-exception
                                        unknown-resource-exception)
                                       :method "DELETE" :uri
                                       "/deleteresourceshare" :code 200)

(smithy/sdk/operation:define-operation disassociate-resource-share :shape-name
                                       "DisassociateResourceShare" :input
                                       disassociate-resource-share-request
                                       :output
                                       disassociate-resource-share-response
                                       :errors
                                       (idempotent-parameter-mismatch-exception
                                        invalid-client-token-exception
                                        invalid-parameter-exception
                                        invalid-state-transition-exception
                                        malformed-arn-exception
                                        operation-not-permitted-exception
                                        resource-share-limit-exceeded-exception
                                        server-internal-exception
                                        service-unavailable-exception
                                        unknown-resource-exception)
                                       :method "POST" :uri
                                       "/disassociateresourceshare" :code 200)

(smithy/sdk/operation:define-operation disassociate-resource-share-permission
                                       :shape-name
                                       "DisassociateResourceSharePermission"
                                       :input
                                       disassociate-resource-share-permission-request
                                       :output
                                       disassociate-resource-share-permission-response
                                       :errors
                                       (invalid-client-token-exception
                                        invalid-parameter-exception
                                        invalid-state-transition-exception
                                        malformed-arn-exception
                                        operation-not-permitted-exception
                                        server-internal-exception
                                        service-unavailable-exception
                                        unknown-resource-exception)
                                       :method "POST" :uri
                                       "/disassociateresourcesharepermission"
                                       :code 200)

(smithy/sdk/operation:define-operation enable-sharing-with-aws-organization
                                       :shape-name
                                       "EnableSharingWithAwsOrganization"
                                       :input
                                       enable-sharing-with-aws-organization-request
                                       :output
                                       enable-sharing-with-aws-organization-response
                                       :errors
                                       (operation-not-permitted-exception
                                        server-internal-exception
                                        service-unavailable-exception)
                                       :method "POST" :uri
                                       "/enablesharingwithawsorganization"
                                       :code 200)

(smithy/sdk/operation:define-operation get-permission :shape-name
                                       "GetPermission" :input
                                       get-permission-request :output
                                       get-permission-response :errors
                                       (invalid-parameter-exception
                                        malformed-arn-exception
                                        operation-not-permitted-exception
                                        server-internal-exception
                                        service-unavailable-exception
                                        unknown-resource-exception)
                                       :method "POST" :uri "/getpermission"
                                       :code 200)

(smithy/sdk/operation:define-operation get-resource-policies :shape-name
                                       "GetResourcePolicies" :input
                                       get-resource-policies-request :output
                                       get-resource-policies-response :errors
                                       (invalid-next-token-exception
                                        invalid-parameter-exception
                                        malformed-arn-exception
                                        resource-arn-not-found-exception
                                        server-internal-exception
                                        service-unavailable-exception)
                                       :method "POST" :uri
                                       "/getresourcepolicies" :code 200)

(smithy/sdk/operation:define-operation get-resource-share-associations
                                       :shape-name
                                       "GetResourceShareAssociations" :input
                                       get-resource-share-associations-request
                                       :output
                                       get-resource-share-associations-response
                                       :errors
                                       (invalid-next-token-exception
                                        invalid-parameter-exception
                                        malformed-arn-exception
                                        operation-not-permitted-exception
                                        server-internal-exception
                                        service-unavailable-exception
                                        unknown-resource-exception)
                                       :method "POST" :uri
                                       "/getresourceshareassociations" :code
                                       200)

(smithy/sdk/operation:define-operation get-resource-share-invitations
                                       :shape-name
                                       "GetResourceShareInvitations" :input
                                       get-resource-share-invitations-request
                                       :output
                                       get-resource-share-invitations-response
                                       :errors
                                       (invalid-max-results-exception
                                        invalid-next-token-exception
                                        invalid-parameter-exception
                                        malformed-arn-exception
                                        resource-share-invitation-arn-not-found-exception
                                        server-internal-exception
                                        service-unavailable-exception
                                        unknown-resource-exception)
                                       :method "POST" :uri
                                       "/getresourceshareinvitations" :code 200)

(smithy/sdk/operation:define-operation get-resource-shares :shape-name
                                       "GetResourceShares" :input
                                       get-resource-shares-request :output
                                       get-resource-shares-response :errors
                                       (invalid-next-token-exception
                                        invalid-parameter-exception
                                        malformed-arn-exception
                                        server-internal-exception
                                        service-unavailable-exception
                                        unknown-resource-exception)
                                       :method "POST" :uri "/getresourceshares"
                                       :code 200)

(smithy/sdk/operation:define-operation list-pending-invitation-resources
                                       :shape-name
                                       "ListPendingInvitationResources" :input
                                       list-pending-invitation-resources-request
                                       :output
                                       list-pending-invitation-resources-response
                                       :errors
                                       (invalid-next-token-exception
                                        invalid-parameter-exception
                                        malformed-arn-exception
                                        missing-required-parameter-exception
                                        resource-share-invitation-already-rejected-exception
                                        resource-share-invitation-arn-not-found-exception
                                        resource-share-invitation-expired-exception
                                        server-internal-exception
                                        service-unavailable-exception)
                                       :method "POST" :uri
                                       "/listpendinginvitationresources" :code
                                       200)

(smithy/sdk/operation:define-operation list-permission-associations :shape-name
                                       "ListPermissionAssociations" :input
                                       list-permission-associations-request
                                       :output
                                       list-permission-associations-response
                                       :errors
                                       (invalid-next-token-exception
                                        invalid-parameter-exception
                                        malformed-arn-exception
                                        server-internal-exception
                                        service-unavailable-exception)
                                       :method "POST" :uri
                                       "/listpermissionassociations" :code 200)

(smithy/sdk/operation:define-operation list-permission-versions :shape-name
                                       "ListPermissionVersions" :input
                                       list-permission-versions-request :output
                                       list-permission-versions-response
                                       :errors
                                       (invalid-next-token-exception
                                        invalid-parameter-exception
                                        malformed-arn-exception
                                        operation-not-permitted-exception
                                        server-internal-exception
                                        service-unavailable-exception
                                        unknown-resource-exception)
                                       :method "POST" :uri
                                       "/listpermissionversions" :code 200)

(smithy/sdk/operation:define-operation list-permissions :shape-name
                                       "ListPermissions" :input
                                       list-permissions-request :output
                                       list-permissions-response :errors
                                       (invalid-next-token-exception
                                        invalid-parameter-exception
                                        operation-not-permitted-exception
                                        server-internal-exception
                                        service-unavailable-exception)
                                       :method "POST" :uri "/listpermissions"
                                       :code 200)

(smithy/sdk/operation:define-operation list-principals :shape-name
                                       "ListPrincipals" :input
                                       list-principals-request :output
                                       list-principals-response :errors
                                       (invalid-next-token-exception
                                        invalid-parameter-exception
                                        malformed-arn-exception
                                        server-internal-exception
                                        service-unavailable-exception
                                        unknown-resource-exception)
                                       :method "POST" :uri "/listprincipals"
                                       :code 200)

(smithy/sdk/operation:define-operation
 list-replace-permission-associations-work :shape-name
 "ListReplacePermissionAssociationsWork" :input
 list-replace-permission-associations-work-request :output
 list-replace-permission-associations-work-response :errors
 (invalid-next-token-exception invalid-parameter-exception
  server-internal-exception service-unavailable-exception)
 :method "POST" :uri "/listreplacepermissionassociationswork" :code 200)

(smithy/sdk/operation:define-operation list-resource-share-permissions
                                       :shape-name
                                       "ListResourceSharePermissions" :input
                                       list-resource-share-permissions-request
                                       :output
                                       list-resource-share-permissions-response
                                       :errors
                                       (invalid-next-token-exception
                                        invalid-parameter-exception
                                        malformed-arn-exception
                                        operation-not-permitted-exception
                                        server-internal-exception
                                        service-unavailable-exception
                                        unknown-resource-exception)
                                       :method "POST" :uri
                                       "/listresourcesharepermissions" :code
                                       200)

(smithy/sdk/operation:define-operation list-resource-types :shape-name
                                       "ListResourceTypes" :input
                                       list-resource-types-request :output
                                       list-resource-types-response :errors
                                       (invalid-next-token-exception
                                        invalid-parameter-exception
                                        server-internal-exception
                                        service-unavailable-exception)
                                       :method "POST" :uri "/listresourcetypes"
                                       :code 200)

(smithy/sdk/operation:define-operation list-resources :shape-name
                                       "ListResources" :input
                                       list-resources-request :output
                                       list-resources-response :errors
                                       (invalid-next-token-exception
                                        invalid-parameter-exception
                                        invalid-resource-type-exception
                                        malformed-arn-exception
                                        server-internal-exception
                                        service-unavailable-exception
                                        unknown-resource-exception)
                                       :method "POST" :uri "/listresources"
                                       :code 200)

(smithy/sdk/operation:define-operation promote-permission-created-from-policy
                                       :shape-name
                                       "PromotePermissionCreatedFromPolicy"
                                       :input
                                       promote-permission-created-from-policy-request
                                       :output
                                       promote-permission-created-from-policy-response
                                       :errors
                                       (invalid-parameter-exception
                                        malformed-arn-exception
                                        missing-required-parameter-exception
                                        operation-not-permitted-exception
                                        server-internal-exception
                                        service-unavailable-exception
                                        unknown-resource-exception)
                                       :method "POST" :uri
                                       "/promotepermissioncreatedfrompolicy"
                                       :code 200)

(smithy/sdk/operation:define-operation
 promote-resource-share-created-from-policy :shape-name
 "PromoteResourceShareCreatedFromPolicy" :input
 promote-resource-share-created-from-policy-request :output
 promote-resource-share-created-from-policy-response :errors
 (invalid-parameter-exception invalid-state-transition-exception
  malformed-arn-exception missing-required-parameter-exception
  operation-not-permitted-exception resource-share-limit-exceeded-exception
  server-internal-exception service-unavailable-exception
  unknown-resource-exception unmatched-policy-permission-exception)
 :method "POST" :uri "/promoteresourcesharecreatedfrompolicy" :code 200)

(smithy/sdk/operation:define-operation reject-resource-share-invitation
                                       :shape-name
                                       "RejectResourceShareInvitation" :input
                                       reject-resource-share-invitation-request
                                       :output
                                       reject-resource-share-invitation-response
                                       :errors
                                       (idempotent-parameter-mismatch-exception
                                        invalid-client-token-exception
                                        malformed-arn-exception
                                        operation-not-permitted-exception
                                        resource-share-invitation-already-accepted-exception
                                        resource-share-invitation-already-rejected-exception
                                        resource-share-invitation-arn-not-found-exception
                                        resource-share-invitation-expired-exception
                                        server-internal-exception
                                        service-unavailable-exception)
                                       :method "POST" :uri
                                       "/rejectresourceshareinvitation" :code
                                       200)

(smithy/sdk/operation:define-operation replace-permission-associations
                                       :shape-name
                                       "ReplacePermissionAssociations" :input
                                       replace-permission-associations-request
                                       :output
                                       replace-permission-associations-response
                                       :errors
                                       (idempotent-parameter-mismatch-exception
                                        invalid-client-token-exception
                                        invalid-parameter-exception
                                        malformed-arn-exception
                                        operation-not-permitted-exception
                                        server-internal-exception
                                        service-unavailable-exception
                                        unknown-resource-exception)
                                       :method "POST" :uri
                                       "/replacepermissionassociations" :code
                                       200)

(smithy/sdk/operation:define-operation set-default-permission-version
                                       :shape-name
                                       "SetDefaultPermissionVersion" :input
                                       set-default-permission-version-request
                                       :output
                                       set-default-permission-version-response
                                       :errors
                                       (idempotent-parameter-mismatch-exception
                                        invalid-client-token-exception
                                        invalid-parameter-exception
                                        malformed-arn-exception
                                        server-internal-exception
                                        service-unavailable-exception
                                        unknown-resource-exception)
                                       :method "POST" :uri
                                       "/setdefaultpermissionversion" :code 200)

(smithy/sdk/operation:define-operation tag-resource :shape-name "TagResource"
                                       :input tag-resource-request :output
                                       tag-resource-response :errors
                                       (invalid-parameter-exception
                                        malformed-arn-exception
                                        resource-arn-not-found-exception
                                        server-internal-exception
                                        service-unavailable-exception
                                        tag-limit-exceeded-exception
                                        tag-policy-violation-exception
                                        unknown-resource-exception)
                                       :method "POST" :uri "/tagresource" :code
                                       200)

(smithy/sdk/operation:define-operation untag-resource :shape-name
                                       "UntagResource" :input
                                       untag-resource-request :output
                                       untag-resource-response :errors
                                       (invalid-parameter-exception
                                        malformed-arn-exception
                                        server-internal-exception
                                        service-unavailable-exception
                                        unknown-resource-exception)
                                       :method "POST" :uri "/untagresource"
                                       :code 200)

(smithy/sdk/operation:define-operation update-resource-share :shape-name
                                       "UpdateResourceShare" :input
                                       update-resource-share-request :output
                                       update-resource-share-response :errors
                                       (idempotent-parameter-mismatch-exception
                                        invalid-client-token-exception
                                        invalid-parameter-exception
                                        malformed-arn-exception
                                        missing-required-parameter-exception
                                        operation-not-permitted-exception
                                        server-internal-exception
                                        service-unavailable-exception
                                        unknown-resource-exception)
                                       :method "POST" :uri
                                       "/updateresourceshare" :code 200)
