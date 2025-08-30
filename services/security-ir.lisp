(uiop/package:define-package #:pira/security-ir (:use)
                             (:export #:awsaccount-id #:awsaccount-ids
                              #:access-denied-exception #:arn #:attachment-id
                              #:aws-region #:aws-service
                              #:batch-get-member-account-details
                              #:cancel-membership #:case #:case-arn
                              #:case-attachment-attributes
                              #:case-attachment-status #:case-attachments-list
                              #:case-description #:case-edit-action
                              #:case-edit-item #:case-edit-items
                              #:case-edit-message #:case-id #:case-status
                              #:case-title #:close-case #:closure-code
                              #:comment-body #:comment-id #:conflict-exception
                              #:content-length #:create-case
                              #:create-case-comment #:create-membership
                              #:customer-type #:email-address #:engagement-type
                              #:file-name #:get-case
                              #:get-case-attachment-download-url
                              #:get-case-attachment-upload-url #:get-membership
                              #:get-membership-account-detail-error
                              #:get-membership-account-detail-errors
                              #:get-membership-account-detail-item
                              #:get-membership-account-detail-items #:ipaddress
                              #:impacted-accounts #:impacted-aws-region
                              #:impacted-aws-region-list
                              #:impacted-services-list #:incident-responder
                              #:incident-responder-name
                              #:incident-response-team
                              #:internal-server-exception
                              #:invalid-token-exception #:job-title
                              #:list-case-edits #:list-cases #:list-cases-item
                              #:list-cases-items #:list-comments
                              #:list-comments-item #:list-comments-items
                              #:list-membership-item #:list-membership-items
                              #:list-memberships #:list-tags-for-resource
                              #:membership
                              #:membership-account-relationship-status
                              #:membership-account-relationship-type
                              #:membership-arn #:membership-id
                              #:membership-name #:membership-status
                              #:opt-in-feature #:opt-in-feature-name
                              #:opt-in-features #:pending-action #:person-name
                              #:principal-id #:resolver-type
                              #:resource-not-found-exception
                              #:security-incident-response
                              #:security-incident-response-not-active-exception
                              #:self-managed-case-status
                              #:service-quota-exceeded-exception #:tag-key
                              #:tag-keys #:tag-map #:tag-resource #:tag-value
                              #:threat-actor-ip #:threat-actor-ip-list
                              #:throttling-exception #:untag-resource
                              #:update-case #:update-case-comment
                              #:update-case-status #:update-membership
                              #:update-resolver-type #:url #:user-agent
                              #:validation-exception
                              #:validation-exception-field
                              #:validation-exception-field-list
                              #:validation-exception-reason #:watcher
                              #:watchers #:security-ir-error))
(common-lisp:in-package #:pira/security-ir)

(common-lisp:define-condition security-ir-error
    (pira/error:aws-error)
    common-lisp:nil)

(smithy/sdk/service:define-service security-incident-response :shape-name
                                   "SecurityIncidentResponse" :version
                                   "2018-05-10" :title
                                   "Security Incident Response" :operations
                                   '(list-tags-for-resource tag-resource
                                     untag-resource)
                                   :errors
                                   '(access-denied-exception conflict-exception
                                     internal-server-exception
                                     invalid-token-exception
                                     resource-not-found-exception
                                     security-incident-response-not-active-exception
                                     service-quota-exceeded-exception
                                     throttling-exception validation-exception)
                                   :traits
                                   '(("aws.api#service"
                                      ("sdkId" . "Security IR")
                                      ("arnNamespace" . "security-ir")
                                      ("cloudTrailEventSource"
                                       . "security-ir.amazonaws.com"))
                                     ("aws.auth#sigv4"
                                      ("name" . "security-ir"))
                                     ("aws.endpoints#dualStackOnlyEndpoints")
                                     ("aws.endpoints#standardRegionalEndpoints")
                                     ("aws.iam#defineConditionKeys"
                                      ("aws:RequestTag/${TagKey}"
                                       ("type" . "String")
                                       ("documentation"
                                        . "Filters access by the tags that are passed in the request")
                                       ("externalDocumentation"
                                        . "${DocHomeURL}IAM/latest/UserGuide/reference_policies_condition-keys.html#condition-keys-requesttag"))
                                      ("aws:ResourceTag/${TagKey}"
                                       ("type" . "String")
                                       ("documentation"
                                        . "Filters access by the tags associated with the resource")
                                       ("externalDocumentation"
                                        . "${DocHomeURL}IAM/latest/UserGuide/reference_policies_condition-keys.html#condition-keys-resourcetag"))
                                      ("aws:TagKeys" ("type" . "ArrayOfString")
                                       ("documentation"
                                        . "Filters access by the tag keys that are passed in the request")
                                       ("externalDocumentation"
                                        . "${DocHomeURL}IAM/latest/UserGuide/reference_policies_condition-keys.html#condition-keys-tagkeys")))
                                     ("aws.iam#disableConditionKeyInference")
                                     ("aws.iam#supportedPrincipalTypes"
                                      . #("Root" "IAMUser" "IAMRole"
                                          "FederatedUser"))
                                     ("aws.protocols#restJson1")))

(smithy/sdk/shapes:define-type awsaccount-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list awsaccount-ids :member awsaccount-id)

(smithy/sdk/shapes:define-error access-denied-exception common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "message"))
                                (:shape-name "AccessDeniedException")
                                (:error-code 403)
                                (:base-class security-ir-error))

(smithy/sdk/shapes:define-type arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type attachment-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum aws-region
    common-lisp:nil
  (:af-south-1 "af-south-1")
  (:ap-east-1 "ap-east-1")
  (:ap-northeast-1 "ap-northeast-1")
  (:ap-northeast-2 "ap-northeast-2")
  (:ap-northeast-3 "ap-northeast-3")
  (:ap-south-1 "ap-south-1")
  (:ap-south-2 "ap-south-2")
  (:ap-southeast-1 "ap-southeast-1")
  (:ap-southeast-2 "ap-southeast-2")
  (:ap-southeast-3 "ap-southeast-3")
  (:ap-southeast-4 "ap-southeast-4")
  (:ap-southeast-5 "ap-southeast-5")
  (:ap-southeast-7 "ap-southeast-7")
  (:ca-central-1 "ca-central-1")
  (:ca-west-1 "ca-west-1")
  (:cn-north-1 "cn-north-1")
  (:cn-northwest-1 "cn-northwest-1")
  (:eu-central-1 "eu-central-1")
  (:eu-central-2 "eu-central-2")
  (:eu-north-1 "eu-north-1")
  (:eu-south-1 "eu-south-1")
  (:eu-south-2 "eu-south-2")
  (:eu-west-1 "eu-west-1")
  (:eu-west-2 "eu-west-2")
  (:eu-west-3 "eu-west-3")
  (:il-central-1 "il-central-1")
  (:me-central-1 "me-central-1")
  (:me-south-1 "me-south-1")
  (:mx-central-1 "mx-central-1")
  (:sa-east-1 "sa-east-1")
  (:us-east-1 "us-east-1")
  (:us-east-2 "us-east-2")
  (:us-west-1 "us-west-1")
  (:us-west-2 "us-west-2"))

(smithy/sdk/shapes:define-type aws-service smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input batch-get-member-account-details-request
                                common-lisp:nil
                                ((membership-id :target-type membership-id
                                  :required common-lisp:t :member-name
                                  "membershipId" :http-label common-lisp:t)
                                 (account-ids :target-type awsaccount-ids
                                  :required common-lisp:t :member-name
                                  "accountIds"))
                                (:shape-name
                                 "BatchGetMemberAccountDetailsRequest"))

(smithy/sdk/shapes:define-output batch-get-member-account-details-response
                                 common-lisp:nil
                                 ((items :target-type
                                   get-membership-account-detail-items
                                   :member-name "items")
                                  (errors :target-type
                                   get-membership-account-detail-errors
                                   :member-name "errors"))
                                 (:shape-name
                                  "BatchGetMemberAccountDetailsResponse"))

(smithy/sdk/shapes:define-input cancel-membership-request common-lisp:nil
                                ((membership-id :target-type membership-id
                                  :required common-lisp:t :member-name
                                  "membershipId" :http-label common-lisp:t))
                                (:shape-name "CancelMembershipRequest"))

(smithy/sdk/shapes:define-output cancel-membership-response common-lisp:nil
                                 ((membership-id :target-type membership-id
                                   :required common-lisp:t :member-name
                                   "membershipId"))
                                 (:shape-name "CancelMembershipResponse"))

common-lisp:nil

(smithy/sdk/shapes:define-type case-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure case-attachment-attributes common-lisp:nil
                                    ((attachment-id :target-type attachment-id
                                      :required common-lisp:t :member-name
                                      "attachmentId")
                                     (file-name :target-type file-name
                                      :required common-lisp:t :member-name
                                      "fileName")
                                     (attachment-status :target-type
                                      case-attachment-status :required
                                      common-lisp:t :member-name
                                      "attachmentStatus")
                                     (creator :target-type principal-id
                                      :required common-lisp:t :member-name
                                      "creator")
                                     (created-date :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :required common-lisp:t :member-name
                                      "createdDate"))
                                    (:shape-name "CaseAttachmentAttributes"))

(smithy/sdk/shapes:define-enum case-attachment-status
    common-lisp:nil
  (:verified "Verified")
  (:failed "Failed")
  (:pending "Pending"))

(smithy/sdk/shapes:define-list case-attachments-list :member
                               case-attachment-attributes)

(smithy/sdk/shapes:define-type case-description smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type case-edit-action smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure case-edit-item common-lisp:nil
                                    ((event-timestamp :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :member-name "eventTimestamp")
                                     (principal :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "principal")
                                     (action :target-type case-edit-action
                                      :member-name "action")
                                     (message :target-type case-edit-message
                                      :member-name "message"))
                                    (:shape-name "CaseEditItem"))

(smithy/sdk/shapes:define-list case-edit-items :member case-edit-item)

(smithy/sdk/shapes:define-type case-edit-message smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type case-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum case-status
    common-lisp:nil
  (:submitted "Submitted")
  (:acknowledged "Acknowledged")
  (:detection-and-analysis "Detection and Analysis")
  (:containment-eradication-and-recovery
   "Containment, Eradication and Recovery")
  (:post-incident-activities "Post-incident Activities")
  (:ready-to-close "Ready to Close")
  (:closed "Closed"))

(smithy/sdk/shapes:define-type case-title smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input close-case-request common-lisp:nil
                                ((case-id :target-type case-id :required
                                  common-lisp:t :member-name "caseId"
                                  :http-label common-lisp:t))
                                (:shape-name "CloseCaseRequest"))

(smithy/sdk/shapes:define-output close-case-response common-lisp:nil
                                 ((case-status :target-type case-status
                                   :member-name "caseStatus")
                                  (closed-date :target-type
                                   smithy/sdk/smithy-types:timestamp
                                   :member-name "closedDate"))
                                 (:shape-name "CloseCaseResponse"))

(smithy/sdk/shapes:define-enum closure-code
    common-lisp:nil
  (:investigation-completed "Investigation Completed")
  (:not-resolved "Not Resolved")
  (:false-positive "False Positive")
  (:duplicate "Duplicate"))

(smithy/sdk/shapes:define-type comment-body smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type comment-id smithy/sdk/smithy-types:string)

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
                                (:base-class security-ir-error))

(smithy/sdk/shapes:define-type content-length smithy/sdk/smithy-types:long)

(smithy/sdk/shapes:define-input create-case-comment-request common-lisp:nil
                                ((case-id :target-type case-id :required
                                  common-lisp:t :member-name "caseId"
                                  :http-label common-lisp:t)
                                 (client-token :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "clientToken")
                                 (body :target-type comment-body :required
                                  common-lisp:t :member-name "body"))
                                (:shape-name "CreateCaseCommentRequest"))

(smithy/sdk/shapes:define-output create-case-comment-response common-lisp:nil
                                 ((comment-id :target-type comment-id :required
                                   common-lisp:t :member-name "commentId"))
                                 (:shape-name "CreateCaseCommentResponse"))

(smithy/sdk/shapes:define-input create-case-request common-lisp:nil
                                ((client-token :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "clientToken")
                                 (resolver-type :target-type resolver-type
                                  :required common-lisp:t :member-name
                                  "resolverType")
                                 (title :target-type case-title :required
                                  common-lisp:t :member-name "title")
                                 (description :target-type case-description
                                  :required common-lisp:t :member-name
                                  "description")
                                 (engagement-type :target-type engagement-type
                                  :required common-lisp:t :member-name
                                  "engagementType")
                                 (reported-incident-start-date :target-type
                                  smithy/sdk/smithy-types:timestamp :required
                                  common-lisp:t :member-name
                                  "reportedIncidentStartDate")
                                 (impacted-accounts :target-type
                                  impacted-accounts :required common-lisp:t
                                  :member-name "impactedAccounts")
                                 (watchers :target-type watchers :required
                                  common-lisp:t :member-name "watchers")
                                 (threat-actor-ip-addresses :target-type
                                  threat-actor-ip-list :member-name
                                  "threatActorIpAddresses")
                                 (impacted-services :target-type
                                  impacted-services-list :member-name
                                  "impactedServices")
                                 (impacted-aws-regions :target-type
                                  impacted-aws-region-list :member-name
                                  "impactedAwsRegions")
                                 (tags :target-type tag-map :member-name
                                  "tags"))
                                (:shape-name "CreateCaseRequest"))

(smithy/sdk/shapes:define-output create-case-response common-lisp:nil
                                 ((case-id :target-type case-id :required
                                   common-lisp:t :member-name "caseId"))
                                 (:shape-name "CreateCaseResponse"))

(smithy/sdk/shapes:define-input create-membership-request common-lisp:nil
                                ((client-token :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "clientToken")
                                 (membership-name :target-type membership-name
                                  :required common-lisp:t :member-name
                                  "membershipName")
                                 (incident-response-team :target-type
                                  incident-response-team :required
                                  common-lisp:t :member-name
                                  "incidentResponseTeam")
                                 (opt-in-features :target-type opt-in-features
                                  :member-name "optInFeatures")
                                 (tags :target-type tag-map :member-name
                                  "tags"))
                                (:shape-name "CreateMembershipRequest"))

(smithy/sdk/shapes:define-output create-membership-response common-lisp:nil
                                 ((membership-id :target-type membership-id
                                   :required common-lisp:t :member-name
                                   "membershipId"))
                                 (:shape-name "CreateMembershipResponse"))

(smithy/sdk/shapes:define-enum customer-type
    common-lisp:nil
  (:standalone "Standalone")
  (:organization "Organization"))

(smithy/sdk/shapes:define-type email-address smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum engagement-type
    common-lisp:nil
  (:security-incident "Security Incident")
  (:investigation "Investigation"))

(smithy/sdk/shapes:define-type file-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input get-case-attachment-download-url-request
                                common-lisp:nil
                                ((case-id :target-type case-id :required
                                  common-lisp:t :member-name "caseId"
                                  :http-label common-lisp:t)
                                 (attachment-id :target-type attachment-id
                                  :required common-lisp:t :member-name
                                  "attachmentId" :http-label common-lisp:t))
                                (:shape-name
                                 "GetCaseAttachmentDownloadUrlRequest"))

(smithy/sdk/shapes:define-output get-case-attachment-download-url-response
                                 common-lisp:nil
                                 ((attachment-presigned-url :target-type url
                                   :required common-lisp:t :member-name
                                   "attachmentPresignedUrl"))
                                 (:shape-name
                                  "GetCaseAttachmentDownloadUrlResponse"))

(smithy/sdk/shapes:define-input get-case-attachment-upload-url-request
                                common-lisp:nil
                                ((case-id :target-type case-id :required
                                  common-lisp:t :member-name "caseId"
                                  :http-label common-lisp:t)
                                 (file-name :target-type file-name :required
                                  common-lisp:t :member-name "fileName")
                                 (content-length :target-type content-length
                                  :required common-lisp:t :member-name
                                  "contentLength")
                                 (client-token :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "clientToken"))
                                (:shape-name
                                 "GetCaseAttachmentUploadUrlRequest"))

(smithy/sdk/shapes:define-output get-case-attachment-upload-url-response
                                 common-lisp:nil
                                 ((attachment-presigned-url :target-type url
                                   :required common-lisp:t :member-name
                                   "attachmentPresignedUrl"))
                                 (:shape-name
                                  "GetCaseAttachmentUploadUrlResponse"))

(smithy/sdk/shapes:define-input get-case-request common-lisp:nil
                                ((case-id :target-type case-id :required
                                  common-lisp:t :member-name "caseId"
                                  :http-label common-lisp:t))
                                (:shape-name "GetCaseRequest"))

(smithy/sdk/shapes:define-output get-case-response common-lisp:nil
                                 ((title :target-type case-title :member-name
                                   "title")
                                  (case-arn :target-type case-arn :member-name
                                   "caseArn")
                                  (description :target-type case-description
                                   :member-name "description")
                                  (case-status :target-type case-status
                                   :member-name "caseStatus")
                                  (engagement-type :target-type engagement-type
                                   :member-name "engagementType")
                                  (reported-incident-start-date :target-type
                                   smithy/sdk/smithy-types:timestamp
                                   :member-name "reportedIncidentStartDate")
                                  (actual-incident-start-date :target-type
                                   smithy/sdk/smithy-types:timestamp
                                   :member-name "actualIncidentStartDate")
                                  (impacted-aws-regions :target-type
                                   impacted-aws-region-list :member-name
                                   "impactedAwsRegions")
                                  (threat-actor-ip-addresses :target-type
                                   threat-actor-ip-list :member-name
                                   "threatActorIpAddresses")
                                  (pending-action :target-type pending-action
                                   :member-name "pendingAction")
                                  (impacted-accounts :target-type
                                   impacted-accounts :member-name
                                   "impactedAccounts")
                                  (watchers :target-type watchers :member-name
                                   "watchers")
                                  (created-date :target-type
                                   smithy/sdk/smithy-types:timestamp
                                   :member-name "createdDate")
                                  (last-updated-date :target-type
                                   smithy/sdk/smithy-types:timestamp
                                   :member-name "lastUpdatedDate")
                                  (closure-code :target-type closure-code
                                   :member-name "closureCode")
                                  (resolver-type :target-type resolver-type
                                   :member-name "resolverType")
                                  (impacted-services :target-type
                                   impacted-services-list :member-name
                                   "impactedServices")
                                  (case-attachments :target-type
                                   case-attachments-list :member-name
                                   "caseAttachments")
                                  (closed-date :target-type
                                   smithy/sdk/smithy-types:timestamp
                                   :member-name "closedDate"))
                                 (:shape-name "GetCaseResponse"))

(smithy/sdk/shapes:define-structure get-membership-account-detail-error
                                    common-lisp:nil
                                    ((account-id :target-type awsaccount-id
                                      :required common-lisp:t :member-name
                                      "accountId")
                                     (error :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "error")
                                     (message :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "message"))
                                    (:shape-name
                                     "GetMembershipAccountDetailError"))

(smithy/sdk/shapes:define-list get-membership-account-detail-errors :member
                               get-membership-account-detail-error)

(smithy/sdk/shapes:define-structure get-membership-account-detail-item
                                    common-lisp:nil
                                    ((account-id :target-type awsaccount-id
                                      :member-name "accountId")
                                     (relationship-status :target-type
                                      membership-account-relationship-status
                                      :member-name "relationshipStatus")
                                     (relationship-type :target-type
                                      membership-account-relationship-type
                                      :member-name "relationshipType"))
                                    (:shape-name
                                     "GetMembershipAccountDetailItem"))

(smithy/sdk/shapes:define-list get-membership-account-detail-items :member
                               get-membership-account-detail-item)

(smithy/sdk/shapes:define-input get-membership-request common-lisp:nil
                                ((membership-id :target-type membership-id
                                  :required common-lisp:t :member-name
                                  "membershipId" :http-label common-lisp:t))
                                (:shape-name "GetMembershipRequest"))

(smithy/sdk/shapes:define-output get-membership-response common-lisp:nil
                                 ((membership-id :target-type membership-id
                                   :required common-lisp:t :member-name
                                   "membershipId")
                                  (account-id :target-type awsaccount-id
                                   :member-name "accountId")
                                  (region :target-type aws-region :member-name
                                   "region")
                                  (membership-name :target-type membership-name
                                   :member-name "membershipName")
                                  (membership-arn :target-type membership-arn
                                   :member-name "membershipArn")
                                  (membership-status :target-type
                                   membership-status :member-name
                                   "membershipStatus")
                                  (membership-activation-timestamp :target-type
                                   smithy/sdk/smithy-types:timestamp
                                   :member-name
                                   "membershipActivationTimestamp")
                                  (membership-deactivation-timestamp
                                   :target-type
                                   smithy/sdk/smithy-types:timestamp
                                   :member-name
                                   "membershipDeactivationTimestamp")
                                  (customer-type :target-type customer-type
                                   :member-name "customerType")
                                  (number-of-accounts-covered :target-type
                                   smithy/sdk/smithy-types:long :member-name
                                   "numberOfAccountsCovered")
                                  (incident-response-team :target-type
                                   incident-response-team :member-name
                                   "incidentResponseTeam")
                                  (opt-in-features :target-type opt-in-features
                                   :member-name "optInFeatures"))
                                 (:shape-name "GetMembershipResponse"))

(smithy/sdk/shapes:define-type ipaddress smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list impacted-accounts :member awsaccount-id)

(smithy/sdk/shapes:define-structure impacted-aws-region common-lisp:nil
                                    ((region :target-type aws-region :required
                                      common-lisp:t :member-name "region"))
                                    (:shape-name "ImpactedAwsRegion"))

(smithy/sdk/shapes:define-list impacted-aws-region-list :member
                               impacted-aws-region)

(smithy/sdk/shapes:define-list impacted-services-list :member aws-service)

(smithy/sdk/shapes:define-structure incident-responder common-lisp:nil
                                    ((name :target-type incident-responder-name
                                      :required common-lisp:t :member-name
                                      "name")
                                     (job-title :target-type job-title
                                      :required common-lisp:t :member-name
                                      "jobTitle")
                                     (email :target-type email-address
                                      :required common-lisp:t :member-name
                                      "email"))
                                    (:shape-name "IncidentResponder"))

(smithy/sdk/shapes:define-type incident-responder-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list incident-response-team :member
                               incident-responder)

(smithy/sdk/shapes:define-error internal-server-exception common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "message")
                                 (retry-after-seconds :target-type
                                  smithy/sdk/smithy-types:integer :member-name
                                  "retryAfterSeconds" :http-header
                                  "Retry-After"))
                                (:shape-name "InternalServerException")
                                (:error-code 500)
                                (:base-class security-ir-error))

(smithy/sdk/shapes:define-error invalid-token-exception common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "message"))
                                (:shape-name "InvalidTokenException")
                                (:error-code 423)
                                (:base-class security-ir-error))

(smithy/sdk/shapes:define-type job-title smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input list-case-edits-request common-lisp:nil
                                ((next-token :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "nextToken")
                                 (max-results :target-type
                                  smithy/sdk/smithy-types:integer :member-name
                                  "maxResults")
                                 (case-id :target-type case-id :required
                                  common-lisp:t :member-name "caseId"
                                  :http-label common-lisp:t))
                                (:shape-name "ListCaseEditsRequest"))

(smithy/sdk/shapes:define-output list-case-edits-response common-lisp:nil
                                 ((next-token :target-type
                                   smithy/sdk/smithy-types:string :member-name
                                   "nextToken")
                                  (items :target-type case-edit-items
                                   :member-name "items")
                                  (total :target-type
                                   smithy/sdk/smithy-types:integer :member-name
                                   "total"))
                                 (:shape-name "ListCaseEditsResponse"))

(smithy/sdk/shapes:define-structure list-cases-item common-lisp:nil
                                    ((case-id :target-type case-id :required
                                      common-lisp:t :member-name "caseId")
                                     (last-updated-date :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :member-name "lastUpdatedDate")
                                     (title :target-type case-title
                                      :member-name "title")
                                     (case-arn :target-type case-arn
                                      :member-name "caseArn")
                                     (engagement-type :target-type
                                      engagement-type :member-name
                                      "engagementType")
                                     (case-status :target-type case-status
                                      :member-name "caseStatus")
                                     (created-date :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :member-name "createdDate")
                                     (closed-date :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :member-name "closedDate")
                                     (resolver-type :target-type resolver-type
                                      :member-name "resolverType")
                                     (pending-action :target-type
                                      pending-action :member-name
                                      "pendingAction"))
                                    (:shape-name "ListCasesItem"))

(smithy/sdk/shapes:define-list list-cases-items :member list-cases-item)

(smithy/sdk/shapes:define-input list-cases-request common-lisp:nil
                                ((next-token :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "nextToken")
                                 (max-results :target-type
                                  smithy/sdk/smithy-types:integer :member-name
                                  "maxResults"))
                                (:shape-name "ListCasesRequest"))

(smithy/sdk/shapes:define-output list-cases-response common-lisp:nil
                                 ((next-token :target-type
                                   smithy/sdk/smithy-types:string :member-name
                                   "nextToken")
                                  (items :target-type list-cases-items
                                   :member-name "items")
                                  (total :target-type
                                   smithy/sdk/smithy-types:long :member-name
                                   "total"))
                                 (:shape-name "ListCasesResponse"))

(smithy/sdk/shapes:define-structure list-comments-item common-lisp:nil
                                    ((comment-id :target-type comment-id
                                      :required common-lisp:t :member-name
                                      "commentId")
                                     (created-date :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :member-name "createdDate")
                                     (last-updated-date :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :member-name "lastUpdatedDate")
                                     (creator :target-type principal-id
                                      :member-name "creator")
                                     (last-updated-by :target-type principal-id
                                      :member-name "lastUpdatedBy")
                                     (body :target-type comment-body
                                      :member-name "body"))
                                    (:shape-name "ListCommentsItem"))

(smithy/sdk/shapes:define-list list-comments-items :member list-comments-item)

(smithy/sdk/shapes:define-input list-comments-request common-lisp:nil
                                ((next-token :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "nextToken")
                                 (max-results :target-type
                                  smithy/sdk/smithy-types:integer :member-name
                                  "maxResults")
                                 (case-id :target-type case-id :required
                                  common-lisp:t :member-name "caseId"
                                  :http-label common-lisp:t))
                                (:shape-name "ListCommentsRequest"))

(smithy/sdk/shapes:define-output list-comments-response common-lisp:nil
                                 ((next-token :target-type
                                   smithy/sdk/smithy-types:string :member-name
                                   "nextToken")
                                  (items :target-type list-comments-items
                                   :member-name "items")
                                  (total :target-type
                                   smithy/sdk/smithy-types:integer :member-name
                                   "total"))
                                 (:shape-name "ListCommentsResponse"))

(smithy/sdk/shapes:define-structure list-membership-item common-lisp:nil
                                    ((membership-id :target-type membership-id
                                      :required common-lisp:t :member-name
                                      "membershipId")
                                     (account-id :target-type awsaccount-id
                                      :member-name "accountId")
                                     (region :target-type aws-region
                                      :member-name "region")
                                     (membership-arn :target-type
                                      membership-arn :member-name
                                      "membershipArn")
                                     (membership-status :target-type
                                      membership-status :member-name
                                      "membershipStatus"))
                                    (:shape-name "ListMembershipItem"))

(smithy/sdk/shapes:define-list list-membership-items :member
                               list-membership-item)

(smithy/sdk/shapes:define-input list-memberships-request common-lisp:nil
                                ((next-token :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "nextToken")
                                 (max-results :target-type
                                  smithy/sdk/smithy-types:integer :member-name
                                  "maxResults"))
                                (:shape-name "ListMembershipsRequest"))

(smithy/sdk/shapes:define-output list-memberships-response common-lisp:nil
                                 ((next-token :target-type
                                   smithy/sdk/smithy-types:string :member-name
                                   "nextToken")
                                  (items :target-type list-membership-items
                                   :member-name "items"))
                                 (:shape-name "ListMembershipsResponse"))

(smithy/sdk/shapes:define-input list-tags-for-resource-input common-lisp:nil
                                ((resource-arn :target-type arn :required
                                  common-lisp:t :member-name "resourceArn"
                                  :http-label common-lisp:t))
                                (:shape-name "ListTagsForResourceInput"))

(smithy/sdk/shapes:define-output list-tags-for-resource-output common-lisp:nil
                                 ((tags :target-type tag-map :required
                                   common-lisp:t :member-name "tags"))
                                 (:shape-name "ListTagsForResourceOutput"))

common-lisp:nil

(smithy/sdk/shapes:define-enum membership-account-relationship-status
    common-lisp:nil
  (:associated "Associated")
  (:disassociated "Disassociated"))

(smithy/sdk/shapes:define-enum membership-account-relationship-type
    common-lisp:nil
  (:organization "Organization"))

(smithy/sdk/shapes:define-type membership-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type membership-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type membership-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum membership-status
    common-lisp:nil
  (:active "Active")
  (:cancelled "Cancelled")
  (:terminated "Terminated"))

(smithy/sdk/shapes:define-structure opt-in-feature common-lisp:nil
                                    ((feature-name :target-type
                                      opt-in-feature-name :required
                                      common-lisp:t :member-name "featureName")
                                     (is-enabled :target-type
                                      smithy/sdk/smithy-types:boolean :required
                                      common-lisp:t :member-name "isEnabled"))
                                    (:shape-name "OptInFeature"))

(smithy/sdk/shapes:define-enum opt-in-feature-name
    common-lisp:nil
  (:triage "Triage"))

(smithy/sdk/shapes:define-list opt-in-features :member opt-in-feature)

(smithy/sdk/shapes:define-enum pending-action
    common-lisp:nil
  (:customer "Customer")
  (:none "None"))

(smithy/sdk/shapes:define-type person-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type principal-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum resolver-type
    common-lisp:nil
  (:aws "AWS")
  (:self "Self"))

(smithy/sdk/shapes:define-error resource-not-found-exception common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "message"))
                                (:shape-name "ResourceNotFoundException")
                                (:error-code 404)
                                (:base-class security-ir-error))

(smithy/sdk/shapes:define-error security-incident-response-not-active-exception
                                common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "message"))
                                (:shape-name
                                 "SecurityIncidentResponseNotActiveException")
                                (:error-code 400)
                                (:base-class security-ir-error))

(smithy/sdk/shapes:define-enum self-managed-case-status
    common-lisp:nil
  (:submitted "Submitted")
  (:detection-and-analysis "Detection and Analysis")
  (:containment-eradication-and-recovery
   "Containment, Eradication and Recovery")
  (:post-incident-activities "Post-incident Activities"))

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
                                (:error-code 402)
                                (:base-class security-ir-error))

(smithy/sdk/shapes:define-type tag-key smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list tag-keys :member tag-key)

(smithy/sdk/shapes:define-map tag-map :key tag-key :value tag-value)

(smithy/sdk/shapes:define-input tag-resource-input common-lisp:nil
                                ((resource-arn :target-type arn :required
                                  common-lisp:t :member-name "resourceArn"
                                  :http-label common-lisp:t)
                                 (tags :target-type tag-map :required
                                  common-lisp:t :member-name "tags"))
                                (:shape-name "TagResourceInput"))

(smithy/sdk/shapes:define-output tag-resource-output common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "TagResourceOutput"))

(smithy/sdk/shapes:define-type tag-value smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure threat-actor-ip common-lisp:nil
                                    ((ip-address :target-type ipaddress
                                      :required common-lisp:t :member-name
                                      "ipAddress")
                                     (user-agent :target-type user-agent
                                      :member-name "userAgent"))
                                    (:shape-name "ThreatActorIp"))

(smithy/sdk/shapes:define-list threat-actor-ip-list :member threat-actor-ip)

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
                                (:error-code 429)
                                (:base-class security-ir-error))

(smithy/sdk/shapes:define-input untag-resource-input common-lisp:nil
                                ((resource-arn :target-type arn :required
                                  common-lisp:t :member-name "resourceArn"
                                  :http-label common-lisp:t)
                                 (tag-keys :target-type tag-keys :required
                                  common-lisp:t :member-name "tagKeys"
                                  :http-query "tagKeys"))
                                (:shape-name "UntagResourceInput"))

(smithy/sdk/shapes:define-output untag-resource-output common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "UntagResourceOutput"))

(smithy/sdk/shapes:define-input update-case-comment-request common-lisp:nil
                                ((case-id :target-type case-id :required
                                  common-lisp:t :member-name "caseId"
                                  :http-label common-lisp:t)
                                 (comment-id :target-type comment-id :required
                                  common-lisp:t :member-name "commentId"
                                  :http-label common-lisp:t)
                                 (body :target-type comment-body :required
                                  common-lisp:t :member-name "body"))
                                (:shape-name "UpdateCaseCommentRequest"))

(smithy/sdk/shapes:define-output update-case-comment-response common-lisp:nil
                                 ((comment-id :target-type comment-id :required
                                   common-lisp:t :member-name "commentId")
                                  (body :target-type comment-body :member-name
                                   "body"))
                                 (:shape-name "UpdateCaseCommentResponse"))

(smithy/sdk/shapes:define-input update-case-request common-lisp:nil
                                ((case-id :target-type case-id :required
                                  common-lisp:t :member-name "caseId"
                                  :http-label common-lisp:t)
                                 (title :target-type case-title :member-name
                                  "title")
                                 (description :target-type case-description
                                  :member-name "description")
                                 (reported-incident-start-date :target-type
                                  smithy/sdk/smithy-types:timestamp
                                  :member-name "reportedIncidentStartDate")
                                 (actual-incident-start-date :target-type
                                  smithy/sdk/smithy-types:timestamp
                                  :member-name "actualIncidentStartDate")
                                 (engagement-type :target-type engagement-type
                                  :member-name "engagementType")
                                 (watchers-to-add :target-type watchers
                                  :member-name "watchersToAdd")
                                 (watchers-to-delete :target-type watchers
                                  :member-name "watchersToDelete")
                                 (threat-actor-ip-addresses-to-add :target-type
                                  threat-actor-ip-list :member-name
                                  "threatActorIpAddressesToAdd")
                                 (threat-actor-ip-addresses-to-delete
                                  :target-type threat-actor-ip-list
                                  :member-name
                                  "threatActorIpAddressesToDelete")
                                 (impacted-services-to-add :target-type
                                  impacted-services-list :member-name
                                  "impactedServicesToAdd")
                                 (impacted-services-to-delete :target-type
                                  impacted-services-list :member-name
                                  "impactedServicesToDelete")
                                 (impacted-aws-regions-to-add :target-type
                                  impacted-aws-region-list :member-name
                                  "impactedAwsRegionsToAdd")
                                 (impacted-aws-regions-to-delete :target-type
                                  impacted-aws-region-list :member-name
                                  "impactedAwsRegionsToDelete")
                                 (impacted-accounts-to-add :target-type
                                  impacted-accounts :member-name
                                  "impactedAccountsToAdd")
                                 (impacted-accounts-to-delete :target-type
                                  impacted-accounts :member-name
                                  "impactedAccountsToDelete"))
                                (:shape-name "UpdateCaseRequest"))

(smithy/sdk/shapes:define-output update-case-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "UpdateCaseResponse"))

(smithy/sdk/shapes:define-input update-case-status-request common-lisp:nil
                                ((case-id :target-type case-id :required
                                  common-lisp:t :member-name "caseId"
                                  :http-label common-lisp:t)
                                 (case-status :target-type
                                  self-managed-case-status :required
                                  common-lisp:t :member-name "caseStatus"))
                                (:shape-name "UpdateCaseStatusRequest"))

(smithy/sdk/shapes:define-output update-case-status-response common-lisp:nil
                                 ((case-status :target-type
                                   self-managed-case-status :member-name
                                   "caseStatus"))
                                 (:shape-name "UpdateCaseStatusResponse"))

(smithy/sdk/shapes:define-input update-membership-request common-lisp:nil
                                ((membership-id :target-type membership-id
                                  :required common-lisp:t :member-name
                                  "membershipId" :http-label common-lisp:t)
                                 (membership-name :target-type membership-name
                                  :member-name "membershipName")
                                 (incident-response-team :target-type
                                  incident-response-team :member-name
                                  "incidentResponseTeam")
                                 (opt-in-features :target-type opt-in-features
                                  :member-name "optInFeatures"))
                                (:shape-name "UpdateMembershipRequest"))

(smithy/sdk/shapes:define-output update-membership-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "UpdateMembershipResponse"))

(smithy/sdk/shapes:define-input update-resolver-type-request common-lisp:nil
                                ((case-id :target-type case-id :required
                                  common-lisp:t :member-name "caseId"
                                  :http-label common-lisp:t)
                                 (resolver-type :target-type resolver-type
                                  :required common-lisp:t :member-name
                                  "resolverType"))
                                (:shape-name "UpdateResolverTypeRequest"))

(smithy/sdk/shapes:define-output update-resolver-type-response common-lisp:nil
                                 ((case-id :target-type case-id :required
                                   common-lisp:t :member-name "caseId")
                                  (case-status :target-type case-status
                                   :member-name "caseStatus")
                                  (resolver-type :target-type resolver-type
                                   :member-name "resolverType"))
                                 (:shape-name "UpdateResolverTypeResponse"))

(smithy/sdk/shapes:define-type url smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type user-agent smithy/sdk/smithy-types:string)

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
                                (:error-code 400)
                                (:base-class security-ir-error))

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
  (:unknown-operation "UNKNOWN_OPERATION")
  (:cannot-parse "CANNOT_PARSE")
  (:field-validation-failed "FIELD_VALIDATION_FAILED")
  (:other "OTHER"))

(smithy/sdk/shapes:define-structure watcher common-lisp:nil
                                    ((email :target-type email-address
                                      :required common-lisp:t :member-name
                                      "email")
                                     (name :target-type person-name
                                      :member-name "name")
                                     (job-title :target-type job-title
                                      :member-name "jobTitle"))
                                    (:shape-name "Watcher"))

(smithy/sdk/shapes:define-list watchers :member watcher)

(smithy/sdk/operation:define-operation batch-get-member-account-details
                                       :shape-name
                                       "BatchGetMemberAccountDetails" :input
                                       batch-get-member-account-details-request
                                       :output
                                       batch-get-member-account-details-response
                                       :errors common-lisp:nil :method "POST"
                                       :uri
                                       "/v1/membership/{membershipId}/batch-member-details"
                                       :code 200)

(smithy/sdk/operation:define-operation cancel-membership :shape-name
                                       "CancelMembership" :input
                                       cancel-membership-request :output
                                       cancel-membership-response :errors
                                       common-lisp:nil :method "PUT" :uri
                                       "/v1/membership/{membershipId}" :code
                                       200)

(smithy/sdk/operation:define-operation close-case :shape-name "CloseCase"
                                       :input close-case-request :output
                                       close-case-response :errors
                                       common-lisp:nil :method "POST" :uri
                                       "/v1/cases/{caseId}/close-case" :code
                                       200)

(smithy/sdk/operation:define-operation create-case :shape-name "CreateCase"
                                       :input create-case-request :output
                                       create-case-response :errors
                                       common-lisp:nil :method "POST" :uri
                                       "/v1/create-case" :code 201)

(smithy/sdk/operation:define-operation create-case-comment :shape-name
                                       "CreateCaseComment" :input
                                       create-case-comment-request :output
                                       create-case-comment-response :errors
                                       common-lisp:nil :method "POST" :uri
                                       "/v1/cases/{caseId}/create-comment"
                                       :code 201)

(smithy/sdk/operation:define-operation create-membership :shape-name
                                       "CreateMembership" :input
                                       create-membership-request :output
                                       create-membership-response :errors
                                       common-lisp:nil :method "POST" :uri
                                       "/v1/membership" :code 201)

(smithy/sdk/operation:define-operation get-case :shape-name "GetCase" :input
                                       get-case-request :output
                                       get-case-response :errors
                                       common-lisp:nil :method "GET" :uri
                                       "/v1/cases/{caseId}/get-case" :code 200)

(smithy/sdk/operation:define-operation get-case-attachment-download-url
                                       :shape-name
                                       "GetCaseAttachmentDownloadUrl" :input
                                       get-case-attachment-download-url-request
                                       :output
                                       get-case-attachment-download-url-response
                                       :errors common-lisp:nil :method "GET"
                                       :uri
                                       "/v1/cases/{caseId}/get-presigned-url/{attachmentId}"
                                       :code 201)

(smithy/sdk/operation:define-operation get-case-attachment-upload-url
                                       :shape-name "GetCaseAttachmentUploadUrl"
                                       :input
                                       get-case-attachment-upload-url-request
                                       :output
                                       get-case-attachment-upload-url-response
                                       :errors common-lisp:nil :method "POST"
                                       :uri
                                       "/v1/cases/{caseId}/get-presigned-url"
                                       :code 201)

(smithy/sdk/operation:define-operation get-membership :shape-name
                                       "GetMembership" :input
                                       get-membership-request :output
                                       get-membership-response :errors
                                       common-lisp:nil :method "GET" :uri
                                       "/v1/membership/{membershipId}" :code
                                       200)

(smithy/sdk/operation:define-operation list-case-edits :shape-name
                                       "ListCaseEdits" :input
                                       list-case-edits-request :output
                                       list-case-edits-response :errors
                                       common-lisp:nil :method "POST" :uri
                                       "/v1/cases/{caseId}/list-case-edits"
                                       :code 200)

(smithy/sdk/operation:define-operation list-cases :shape-name "ListCases"
                                       :input list-cases-request :output
                                       list-cases-response :errors
                                       common-lisp:nil :method "POST" :uri
                                       "/v1/list-cases" :code 200)

(smithy/sdk/operation:define-operation list-comments :shape-name "ListComments"
                                       :input list-comments-request :output
                                       list-comments-response :errors
                                       common-lisp:nil :method "POST" :uri
                                       "/v1/cases/{caseId}/list-comments" :code
                                       200)

(smithy/sdk/operation:define-operation list-memberships :shape-name
                                       "ListMemberships" :input
                                       list-memberships-request :output
                                       list-memberships-response :errors
                                       common-lisp:nil :method "POST" :uri
                                       "/v1/memberships" :code 200)

(smithy/sdk/operation:define-operation list-tags-for-resource :shape-name
                                       "ListTagsForResource" :input
                                       list-tags-for-resource-input :output
                                       list-tags-for-resource-output :errors
                                       (access-denied-exception
                                        resource-not-found-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/v1/tags/{resourceArn}" :code 200)

(smithy/sdk/operation:define-operation tag-resource :shape-name "TagResource"
                                       :input tag-resource-input :output
                                       tag-resource-output :errors
                                       (access-denied-exception
                                        resource-not-found-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/v1/tags/{resourceArn}" :code 204)

(smithy/sdk/operation:define-operation untag-resource :shape-name
                                       "UntagResource" :input
                                       untag-resource-input :output
                                       untag-resource-output :errors
                                       (access-denied-exception
                                        resource-not-found-exception
                                        validation-exception)
                                       :method "DELETE" :uri
                                       "/v1/tags/{resourceArn}" :code 200)

(smithy/sdk/operation:define-operation update-case :shape-name "UpdateCase"
                                       :input update-case-request :output
                                       update-case-response :errors
                                       common-lisp:nil :method "POST" :uri
                                       "/v1/cases/{caseId}/update-case" :code
                                       200)

(smithy/sdk/operation:define-operation update-case-comment :shape-name
                                       "UpdateCaseComment" :input
                                       update-case-comment-request :output
                                       update-case-comment-response :errors
                                       common-lisp:nil :method "PUT" :uri
                                       "/v1/cases/{caseId}/update-case-comment/{commentId}"
                                       :code 200)

(smithy/sdk/operation:define-operation update-case-status :shape-name
                                       "UpdateCaseStatus" :input
                                       update-case-status-request :output
                                       update-case-status-response :errors
                                       common-lisp:nil :method "POST" :uri
                                       "/v1/cases/{caseId}/update-case-status"
                                       :code 201)

(smithy/sdk/operation:define-operation update-membership :shape-name
                                       "UpdateMembership" :input
                                       update-membership-request :output
                                       update-membership-response :errors
                                       common-lisp:nil :method "PUT" :uri
                                       "/v1/membership/{membershipId}/update-membership"
                                       :code 200)

(smithy/sdk/operation:define-operation update-resolver-type :shape-name
                                       "UpdateResolverType" :input
                                       update-resolver-type-request :output
                                       update-resolver-type-response :errors
                                       common-lisp:nil :method "POST" :uri
                                       "/v1/cases/{caseId}/update-resolver-type"
                                       :code 200)
