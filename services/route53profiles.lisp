(uiop/package:define-package #:pira/route53profiles (:use)
                             (:export #:access-denied-exception #:account-id
                              #:arn #:associate-profile
                              #:associate-resource-to-profile
                              #:conflict-exception #:create-profile
                              #:creator-request-id #:delete-profile
                              #:disassociate-profile
                              #:disassociate-resource-from-profile
                              #:exception-message #:get-profile
                              #:get-profile-association
                              #:get-profile-resource-association
                              #:internal-service-error-exception
                              #:invalid-next-token-exception
                              #:invalid-parameter-exception
                              #:limit-exceeded-exception
                              #:list-profile-associations
                              #:list-profile-resource-associations
                              #:list-profiles #:list-tags-for-resource
                              #:max-results #:name #:next-token #:profile
                              #:profile-association #:profile-associations
                              #:profile-resource-association
                              #:profile-resource-associations #:profile-status
                              #:profile-summary #:profile-summary-list
                              #:resource-exists-exception #:resource-id
                              #:resource-not-found-exception
                              #:resource-properties #:rfc3339timestamp
                              #:route53profiles #:share-status #:string #:tag
                              #:tag-key #:tag-key-list #:tag-list #:tag-map
                              #:tag-resource #:tag-value #:throttling-exception
                              #:untag-resource
                              #:update-profile-resource-association
                              #:validation-exception #:route53profiles-error))
(common-lisp:in-package #:pira/route53profiles)

(common-lisp:define-condition route53profiles-error
    (pira/error:aws-error)
    common-lisp:nil)

(smithy/sdk/service:define-service route53profiles :shape-name
                                   "Route53Profiles" :version "2018-05-10"
                                   :title "Route 53 Profiles" :operations
                                   '(associate-profile
                                     associate-resource-to-profile
                                     create-profile delete-profile
                                     disassociate-profile
                                     disassociate-resource-from-profile
                                     get-profile get-profile-association
                                     get-profile-resource-association
                                     list-profile-associations
                                     list-profile-resource-associations
                                     list-profiles list-tags-for-resource
                                     tag-resource untag-resource
                                     update-profile-resource-association)
                                   :traits
                                   '(("aws.api#service"
                                      ("cloudTrailEventSource"
                                       . "route53profiles.amazonaws.com")
                                      ("sdkId" . "Route53Profiles")
                                      ("arnNamespace" . "route53profiles"))
                                     ("aws.auth#sigv4"
                                      ("name" . "route53profiles"))
                                     ("aws.iam#defineConditionKeys"
                                      ("aws:ResourceTag/${TagKey}"
                                       ("type" . "String")
                                       ("documentation"
                                        . "Filters access by the presence of tag key-value pairs attached to the resource")
                                       ("externalDocumentation"
                                        . "${DocHomeURL}IAM/latest/UserGuide/reference_policies_condition-keys.html#condition-keys-resourcetag"))
                                      ("aws:RequestTag/${TagKey}"
                                       ("type" . "String")
                                       ("documentation"
                                        . "Filters access by the presence of tag key-value pairs in the request")
                                       ("externalDocumentation"
                                        . "${DocHomeURL}IAM/latest/UserGuide/reference_policies_condition-keys.html#condition-keys-requesttag"))
                                      ("aws:TagKeys" ("type" . "ArrayOfString")
                                       ("documentation"
                                        . "Filters access by the presence of tag keys in the request")
                                       ("externalDocumentation"
                                        . "${DocHomeURL}IAM/latest/UserGuide/reference_policies_condition-keys.html#condition-keys-tagkeys")))
                                     ("aws.iam#supportedPrincipalTypes"
                                      . #("Root" "IAMUser" "IAMRole"
                                          "FederatedUser"))
                                     ("aws.protocols#restJson1")))

(smithy/sdk/shapes:define-error access-denied-exception common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "Message"))
                                (:shape-name "AccessDeniedException")
                                (:error-code 400)
                                (:base-class route53profiles-error))

(smithy/sdk/shapes:define-type account-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input associate-profile-request common-lisp:nil
                                ((profile-id :target-type resource-id :required
                                  common-lisp:t :member-name "ProfileId")
                                 (resource-id :target-type resource-id
                                  :required common-lisp:t :member-name
                                  "ResourceId")
                                 (name :target-type name :required
                                  common-lisp:t :member-name "Name")
                                 (tags :target-type tag-list :member-name
                                  "Tags"))
                                (:shape-name "AssociateProfileRequest"))

(smithy/sdk/shapes:define-output associate-profile-response common-lisp:nil
                                 ((profile-association :target-type
                                   profile-association :member-name
                                   "ProfileAssociation"))
                                 (:shape-name "AssociateProfileResponse"))

(smithy/sdk/shapes:define-input associate-resource-to-profile-request
                                common-lisp:nil
                                ((profile-id :target-type resource-id :required
                                  common-lisp:t :member-name "ProfileId")
                                 (resource-arn :target-type arn :required
                                  common-lisp:t :member-name "ResourceArn")
                                 (name :target-type name :required
                                  common-lisp:t :member-name "Name")
                                 (resource-properties :target-type
                                  resource-properties :member-name
                                  "ResourceProperties"))
                                (:shape-name
                                 "AssociateResourceToProfileRequest"))

(smithy/sdk/shapes:define-output associate-resource-to-profile-response
                                 common-lisp:nil
                                 ((profile-resource-association :target-type
                                   profile-resource-association :member-name
                                   "ProfileResourceAssociation"))
                                 (:shape-name
                                  "AssociateResourceToProfileResponse"))

(smithy/sdk/shapes:define-error conflict-exception common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "Message"))
                                (:shape-name "ConflictException")
                                (:error-code 400)
                                (:base-class route53profiles-error))

(smithy/sdk/shapes:define-input create-profile-request common-lisp:nil
                                ((name :target-type name :required
                                  common-lisp:t :member-name "Name")
                                 (client-token :target-type creator-request-id
                                  :required common-lisp:t :member-name
                                  "ClientToken")
                                 (tags :target-type tag-list :member-name
                                  "Tags"))
                                (:shape-name "CreateProfileRequest"))

(smithy/sdk/shapes:define-output create-profile-response common-lisp:nil
                                 ((profile :target-type profile :member-name
                                   "Profile"))
                                 (:shape-name "CreateProfileResponse"))

(smithy/sdk/shapes:define-type creator-request-id
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input delete-profile-request common-lisp:nil
                                ((profile-id :target-type resource-id :required
                                  common-lisp:t :member-name "ProfileId"
                                  :http-label common-lisp:t))
                                (:shape-name "DeleteProfileRequest"))

(smithy/sdk/shapes:define-output delete-profile-response common-lisp:nil
                                 ((profile :target-type profile :member-name
                                   "Profile"))
                                 (:shape-name "DeleteProfileResponse"))

(smithy/sdk/shapes:define-input disassociate-profile-request common-lisp:nil
                                ((profile-id :target-type resource-id :required
                                  common-lisp:t :member-name "ProfileId"
                                  :http-label common-lisp:t)
                                 (resource-id :target-type resource-id
                                  :required common-lisp:t :member-name
                                  "ResourceId" :http-label common-lisp:t))
                                (:shape-name "DisassociateProfileRequest"))

(smithy/sdk/shapes:define-output disassociate-profile-response common-lisp:nil
                                 ((profile-association :target-type
                                   profile-association :member-name
                                   "ProfileAssociation"))
                                 (:shape-name "DisassociateProfileResponse"))

(smithy/sdk/shapes:define-input disassociate-resource-from-profile-request
                                common-lisp:nil
                                ((profile-id :target-type resource-id :required
                                  common-lisp:t :member-name "ProfileId"
                                  :http-label common-lisp:t)
                                 (resource-arn :target-type arn :required
                                  common-lisp:t :member-name "ResourceArn"
                                  :http-label common-lisp:t))
                                (:shape-name
                                 "DisassociateResourceFromProfileRequest"))

(smithy/sdk/shapes:define-output disassociate-resource-from-profile-response
                                 common-lisp:nil
                                 ((profile-resource-association :target-type
                                   profile-resource-association :member-name
                                   "ProfileResourceAssociation"))
                                 (:shape-name
                                  "DisassociateResourceFromProfileResponse"))

(smithy/sdk/shapes:define-type exception-message smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input get-profile-association-request common-lisp:nil
                                ((profile-association-id :target-type
                                  resource-id :required common-lisp:t
                                  :member-name "ProfileAssociationId"
                                  :http-label common-lisp:t))
                                (:shape-name "GetProfileAssociationRequest"))

(smithy/sdk/shapes:define-output get-profile-association-response
                                 common-lisp:nil
                                 ((profile-association :target-type
                                   profile-association :member-name
                                   "ProfileAssociation"))
                                 (:shape-name "GetProfileAssociationResponse"))

(smithy/sdk/shapes:define-input get-profile-request common-lisp:nil
                                ((profile-id :target-type resource-id :required
                                  common-lisp:t :member-name "ProfileId"
                                  :http-label common-lisp:t))
                                (:shape-name "GetProfileRequest"))

(smithy/sdk/shapes:define-input get-profile-resource-association-request
                                common-lisp:nil
                                ((profile-resource-association-id :target-type
                                  resource-id :required common-lisp:t
                                  :member-name "ProfileResourceAssociationId"
                                  :http-label common-lisp:t))
                                (:shape-name
                                 "GetProfileResourceAssociationRequest"))

(smithy/sdk/shapes:define-output get-profile-resource-association-response
                                 common-lisp:nil
                                 ((profile-resource-association :target-type
                                   profile-resource-association :member-name
                                   "ProfileResourceAssociation"))
                                 (:shape-name
                                  "GetProfileResourceAssociationResponse"))

(smithy/sdk/shapes:define-output get-profile-response common-lisp:nil
                                 ((profile :target-type profile :member-name
                                   "Profile"))
                                 (:shape-name "GetProfileResponse"))

(smithy/sdk/shapes:define-error internal-service-error-exception
                                common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "Message"))
                                (:shape-name "InternalServiceErrorException")
                                (:error-code 400)
                                (:base-class route53profiles-error))

(smithy/sdk/shapes:define-error invalid-next-token-exception common-lisp:nil
                                ((message :target-type string :member-name
                                  "Message"))
                                (:shape-name "InvalidNextTokenException")
                                (:error-code 400)
                                (:base-class route53profiles-error))

(smithy/sdk/shapes:define-error invalid-parameter-exception common-lisp:nil
                                ((message :target-type exception-message
                                  :required common-lisp:t :member-name
                                  "Message")
                                 (field-name :target-type string :member-name
                                  "FieldName"))
                                (:shape-name "InvalidParameterException")
                                (:error-code 400)
                                (:base-class route53profiles-error))

(smithy/sdk/shapes:define-error limit-exceeded-exception common-lisp:nil
                                ((message :target-type string :member-name
                                  "Message")
                                 (resource-type :target-type string
                                  :member-name "ResourceType"))
                                (:shape-name "LimitExceededException")
                                (:error-code 400)
                                (:base-class route53profiles-error))

(smithy/sdk/shapes:define-input list-profile-associations-request
                                common-lisp:nil
                                ((resource-id :target-type resource-id
                                  :member-name "ResourceId" :http-query
                                  "resourceId")
                                 (profile-id :target-type resource-id
                                  :member-name "ProfileId" :http-query
                                  "profileId")
                                 (max-results :target-type max-results
                                  :member-name "MaxResults" :http-query
                                  "maxResults")
                                 (next-token :target-type next-token
                                  :member-name "NextToken" :http-query
                                  "nextToken"))
                                (:shape-name "ListProfileAssociationsRequest"))

(smithy/sdk/shapes:define-output list-profile-associations-response
                                 common-lisp:nil
                                 ((profile-associations :target-type
                                   profile-associations :member-name
                                   "ProfileAssociations")
                                  (next-token :target-type next-token
                                   :member-name "NextToken"))
                                 (:shape-name
                                  "ListProfileAssociationsResponse"))

(smithy/sdk/shapes:define-input list-profile-resource-associations-request
                                common-lisp:nil
                                ((profile-id :target-type resource-id :required
                                  common-lisp:t :member-name "ProfileId"
                                  :http-label common-lisp:t)
                                 (resource-type :target-type string
                                  :member-name "ResourceType" :http-query
                                  "resourceType")
                                 (max-results :target-type max-results
                                  :member-name "MaxResults" :http-query
                                  "maxResults")
                                 (next-token :target-type next-token
                                  :member-name "NextToken" :http-query
                                  "nextToken"))
                                (:shape-name
                                 "ListProfileResourceAssociationsRequest"))

(smithy/sdk/shapes:define-output list-profile-resource-associations-response
                                 common-lisp:nil
                                 ((profile-resource-associations :target-type
                                   profile-resource-associations :member-name
                                   "ProfileResourceAssociations")
                                  (next-token :target-type next-token
                                   :member-name "NextToken"))
                                 (:shape-name
                                  "ListProfileResourceAssociationsResponse"))

(smithy/sdk/shapes:define-input list-profiles-request common-lisp:nil
                                ((max-results :target-type max-results
                                  :member-name "MaxResults" :http-query
                                  "maxResults")
                                 (next-token :target-type next-token
                                  :member-name "NextToken" :http-query
                                  "nextToken"))
                                (:shape-name "ListProfilesRequest"))

(smithy/sdk/shapes:define-output list-profiles-response common-lisp:nil
                                 ((profile-summaries :target-type
                                   profile-summary-list :member-name
                                   "ProfileSummaries")
                                  (next-token :target-type next-token
                                   :member-name "NextToken"))
                                 (:shape-name "ListProfilesResponse"))

(smithy/sdk/shapes:define-input list-tags-for-resource-request common-lisp:nil
                                ((resource-arn :target-type arn :required
                                  common-lisp:t :member-name "ResourceArn"
                                  :http-label common-lisp:t))
                                (:shape-name "ListTagsForResourceRequest"))

(smithy/sdk/shapes:define-output list-tags-for-resource-response
                                 common-lisp:nil
                                 ((tags :target-type tag-map :required
                                   common-lisp:t :member-name "Tags"))
                                 (:shape-name "ListTagsForResourceResponse"))

(smithy/sdk/shapes:define-type max-results smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type next-token smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure profile common-lisp:nil
                                    ((id :target-type resource-id :member-name
                                      "Id")
                                     (arn :target-type arn :member-name "Arn")
                                     (name :target-type name :member-name
                                      "Name")
                                     (owner-id :target-type account-id
                                      :member-name "OwnerId")
                                     (status :target-type profile-status
                                      :member-name "Status")
                                     (status-message :target-type string
                                      :member-name "StatusMessage")
                                     (share-status :target-type share-status
                                      :member-name "ShareStatus")
                                     (creation-time :target-type
                                      rfc3339timestamp :member-name
                                      "CreationTime")
                                     (modification-time :target-type
                                      rfc3339timestamp :member-name
                                      "ModificationTime")
                                     (client-token :target-type
                                      creator-request-id :member-name
                                      "ClientToken"))
                                    (:shape-name "Profile"))

(smithy/sdk/shapes:define-structure profile-association common-lisp:nil
                                    ((id :target-type resource-id :member-name
                                      "Id")
                                     (name :target-type name :member-name
                                      "Name")
                                     (owner-id :target-type account-id
                                      :member-name "OwnerId")
                                     (profile-id :target-type resource-id
                                      :member-name "ProfileId")
                                     (resource-id :target-type resource-id
                                      :member-name "ResourceId")
                                     (status :target-type profile-status
                                      :member-name "Status")
                                     (status-message :target-type string
                                      :member-name "StatusMessage")
                                     (creation-time :target-type
                                      rfc3339timestamp :member-name
                                      "CreationTime")
                                     (modification-time :target-type
                                      rfc3339timestamp :member-name
                                      "ModificationTime"))
                                    (:shape-name "ProfileAssociation"))

(smithy/sdk/shapes:define-list profile-associations :member profile-association)

(smithy/sdk/shapes:define-structure profile-resource-association
                                    common-lisp:nil
                                    ((id :target-type resource-id :member-name
                                      "Id")
                                     (name :target-type name :member-name
                                      "Name")
                                     (owner-id :target-type account-id
                                      :member-name "OwnerId")
                                     (profile-id :target-type resource-id
                                      :member-name "ProfileId")
                                     (resource-arn :target-type arn
                                      :member-name "ResourceArn")
                                     (resource-type :target-type string
                                      :member-name "ResourceType")
                                     (resource-properties :target-type
                                      resource-properties :member-name
                                      "ResourceProperties")
                                     (status :target-type profile-status
                                      :member-name "Status")
                                     (status-message :target-type string
                                      :member-name "StatusMessage")
                                     (creation-time :target-type
                                      rfc3339timestamp :member-name
                                      "CreationTime")
                                     (modification-time :target-type
                                      rfc3339timestamp :member-name
                                      "ModificationTime"))
                                    (:shape-name "ProfileResourceAssociation"))

(smithy/sdk/shapes:define-list profile-resource-associations :member
                               profile-resource-association)

(smithy/sdk/shapes:define-enum profile-status
    common-lisp:nil
  (:complete "COMPLETE")
  (:deleting "DELETING")
  (:updating "UPDATING")
  (:creating "CREATING")
  (:deleted "DELETED")
  (:failed "FAILED"))

(smithy/sdk/shapes:define-structure profile-summary common-lisp:nil
                                    ((id :target-type resource-id :member-name
                                      "Id")
                                     (arn :target-type arn :member-name "Arn")
                                     (name :target-type name :member-name
                                      "Name")
                                     (share-status :target-type share-status
                                      :member-name "ShareStatus"))
                                    (:shape-name "ProfileSummary"))

(smithy/sdk/shapes:define-list profile-summary-list :member profile-summary)

(smithy/sdk/shapes:define-error resource-exists-exception common-lisp:nil
                                ((message :target-type string :member-name
                                  "Message")
                                 (resource-type :target-type string
                                  :member-name "ResourceType"))
                                (:shape-name "ResourceExistsException")
                                (:error-code 400)
                                (:base-class route53profiles-error))

(smithy/sdk/shapes:define-type resource-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error resource-not-found-exception common-lisp:nil
                                ((message :target-type string :member-name
                                  "Message")
                                 (resource-type :target-type string
                                  :member-name "ResourceType"))
                                (:shape-name "ResourceNotFoundException")
                                (:error-code 400)
                                (:base-class route53profiles-error))

(smithy/sdk/shapes:define-type resource-properties
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type rfc3339timestamp
                               smithy/sdk/smithy-types:timestamp)

(smithy/sdk/shapes:define-enum share-status
    common-lisp:nil
  (:not-shared "NOT_SHARED")
  (:shared-with-me "SHARED_WITH_ME")
  (:shared-by-me "SHARED_BY_ME"))

(smithy/sdk/shapes:define-type string smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure tag common-lisp:nil
                                    ((key :target-type tag-key :required
                                      common-lisp:t :member-name "Key")
                                     (value :target-type tag-value :required
                                      common-lisp:t :member-name "Value"))
                                    (:shape-name "Tag"))

(smithy/sdk/shapes:define-type tag-key smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list tag-key-list :member tag-key)

(smithy/sdk/shapes:define-list tag-list :member tag)

(smithy/sdk/shapes:define-map tag-map :key tag-key :value tag-value)

(smithy/sdk/shapes:define-input tag-resource-request common-lisp:nil
                                ((resource-arn :target-type arn :required
                                  common-lisp:t :member-name "ResourceArn"
                                  :http-label common-lisp:t)
                                 (tags :target-type tag-map :required
                                  common-lisp:t :member-name "Tags"))
                                (:shape-name "TagResourceRequest"))

(smithy/sdk/shapes:define-output tag-resource-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "TagResourceResponse"))

(smithy/sdk/shapes:define-type tag-value smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error throttling-exception common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "Message"))
                                (:shape-name "ThrottlingException")
                                (:error-code 400)
                                (:base-class route53profiles-error))

(smithy/sdk/shapes:define-input untag-resource-request common-lisp:nil
                                ((resource-arn :target-type arn :required
                                  common-lisp:t :member-name "ResourceArn"
                                  :http-label common-lisp:t)
                                 (tag-keys :target-type tag-key-list :required
                                  common-lisp:t :member-name "TagKeys"
                                  :http-query "tagKeys"))
                                (:shape-name "UntagResourceRequest"))

(smithy/sdk/shapes:define-output untag-resource-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "UntagResourceResponse"))

(smithy/sdk/shapes:define-input update-profile-resource-association-request
                                common-lisp:nil
                                ((profile-resource-association-id :target-type
                                  resource-id :required common-lisp:t
                                  :member-name "ProfileResourceAssociationId"
                                  :http-label common-lisp:t)
                                 (name :target-type name :member-name "Name")
                                 (resource-properties :target-type
                                  resource-properties :member-name
                                  "ResourceProperties"))
                                (:shape-name
                                 "UpdateProfileResourceAssociationRequest"))

(smithy/sdk/shapes:define-output update-profile-resource-association-response
                                 common-lisp:nil
                                 ((profile-resource-association :target-type
                                   profile-resource-association :member-name
                                   "ProfileResourceAssociation"))
                                 (:shape-name
                                  "UpdateProfileResourceAssociationResponse"))

(smithy/sdk/shapes:define-error validation-exception common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "Message"))
                                (:shape-name "ValidationException")
                                (:error-code 400)
                                (:base-class route53profiles-error))

(smithy/sdk/operation:define-operation associate-profile :shape-name
                                       "AssociateProfile" :input
                                       associate-profile-request :output
                                       associate-profile-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        invalid-parameter-exception
                                        limit-exceeded-exception
                                        resource-exists-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/profileassociation" :code 200)

(smithy/sdk/operation:define-operation associate-resource-to-profile
                                       :shape-name "AssociateResourceToProfile"
                                       :input
                                       associate-resource-to-profile-request
                                       :output
                                       associate-resource-to-profile-response
                                       :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-service-error-exception
                                        invalid-parameter-exception
                                        limit-exceeded-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/profileresourceassociation" :code 200)

(smithy/sdk/operation:define-operation create-profile :shape-name
                                       "CreateProfile" :input
                                       create-profile-request :output
                                       create-profile-response :errors
                                       (access-denied-exception
                                        invalid-parameter-exception
                                        limit-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri "/profile" :code 200)

(smithy/sdk/operation:define-operation delete-profile :shape-name
                                       "DeleteProfile" :input
                                       delete-profile-request :output
                                       delete-profile-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "DELETE" :uri
                                       "/profile/{ProfileId}" :code 200)

(smithy/sdk/operation:define-operation disassociate-profile :shape-name
                                       "DisassociateProfile" :input
                                       disassociate-profile-request :output
                                       disassociate-profile-response :errors
                                       (access-denied-exception
                                        invalid-parameter-exception
                                        limit-exceeded-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "DELETE" :uri
                                       "/profileassociation/Profileid/{ProfileId}/resourceid/{ResourceId}"
                                       :code 200)

(smithy/sdk/operation:define-operation disassociate-resource-from-profile
                                       :shape-name
                                       "DisassociateResourceFromProfile" :input
                                       disassociate-resource-from-profile-request
                                       :output
                                       disassociate-resource-from-profile-response
                                       :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-service-error-exception
                                        invalid-parameter-exception
                                        limit-exceeded-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "DELETE" :uri
                                       "/profileresourceassociation/profileid/{ProfileId}/resourcearn/{ResourceArn}"
                                       :code 200)

(smithy/sdk/operation:define-operation get-profile :shape-name "GetProfile"
                                       :input get-profile-request :output
                                       get-profile-response :errors
                                       (access-denied-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/profile/{ProfileId}" :code 200)

(smithy/sdk/operation:define-operation get-profile-association :shape-name
                                       "GetProfileAssociation" :input
                                       get-profile-association-request :output
                                       get-profile-association-response :errors
                                       (access-denied-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/profileassociation/{ProfileAssociationId}"
                                       :code 200)

(smithy/sdk/operation:define-operation get-profile-resource-association
                                       :shape-name
                                       "GetProfileResourceAssociation" :input
                                       get-profile-resource-association-request
                                       :output
                                       get-profile-resource-association-response
                                       :errors
                                       (access-denied-exception
                                        invalid-parameter-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/profileresourceassociation/{ProfileResourceAssociationId}"
                                       :code 200)

(smithy/sdk/operation:define-operation list-profile-associations :shape-name
                                       "ListProfileAssociations" :input
                                       list-profile-associations-request
                                       :output
                                       list-profile-associations-response
                                       :errors
                                       (access-denied-exception
                                        invalid-next-token-exception
                                        invalid-parameter-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/profileassociations" :code 200)

(smithy/sdk/operation:define-operation list-profile-resource-associations
                                       :shape-name
                                       "ListProfileResourceAssociations" :input
                                       list-profile-resource-associations-request
                                       :output
                                       list-profile-resource-associations-response
                                       :errors
                                       (access-denied-exception
                                        internal-service-error-exception
                                        invalid-next-token-exception
                                        invalid-parameter-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/profileresourceassociations/profileid/{ProfileId}"
                                       :code 200)

(smithy/sdk/operation:define-operation list-profiles :shape-name "ListProfiles"
                                       :input list-profiles-request :output
                                       list-profiles-response :errors
                                       (access-denied-exception
                                        invalid-next-token-exception
                                        invalid-parameter-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri "/profiles" :code 200)

(smithy/sdk/operation:define-operation list-tags-for-resource :shape-name
                                       "ListTagsForResource" :input
                                       list-tags-for-resource-request :output
                                       list-tags-for-resource-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri "/tags/{ResourceArn}"
                                       :code 200)

(smithy/sdk/operation:define-operation tag-resource :shape-name "TagResource"
                                       :input tag-resource-request :output
                                       tag-resource-response :errors
                                       (access-denied-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/tags/{ResourceArn}" :code 204)

(smithy/sdk/operation:define-operation untag-resource :shape-name
                                       "UntagResource" :input
                                       untag-resource-request :output
                                       untag-resource-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "DELETE" :uri
                                       "/tags/{ResourceArn}" :code 204)

(smithy/sdk/operation:define-operation update-profile-resource-association
                                       :shape-name
                                       "UpdateProfileResourceAssociation"
                                       :input
                                       update-profile-resource-association-request
                                       :output
                                       update-profile-resource-association-response
                                       :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-service-error-exception
                                        invalid-parameter-exception
                                        limit-exceeded-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "PATCH" :uri
                                       "/profileresourceassociation/{ProfileResourceAssociationId}"
                                       :code 200)
