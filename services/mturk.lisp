(uiop/package:define-package #:pira/mturk (:use)
                             (:export #:accept-qualification-request
                              #:approve-assignment #:assignment
                              #:assignment-list #:assignment-status
                              #:assignment-status-list
                              #:associate-qualification-with-worker
                              #:bonus-payment #:bonus-payment-list #:boolean
                              #:comparator #:country-parameters
                              #:create-additional-assignments-for-hit
                              #:create-hit #:create-hittype
                              #:create-hitwith-hittype
                              #:create-qualification-type #:create-worker-block
                              #:currency-amount #:customer-id
                              #:customer-id-list #:delete-hit
                              #:delete-qualification-type #:delete-worker-block
                              #:disassociate-qualification-from-worker
                              #:entity-id #:event-type #:event-type-list
                              #:exception-message #:get-account-balance
                              #:get-assignment #:get-file-upload-url #:get-hit
                              #:get-qualification-score
                              #:get-qualification-type #:hit
                              #:hitaccess-actions #:hitlayout-parameter
                              #:hitlayout-parameter-list #:hitlist
                              #:hitreview-status #:hitstatus
                              #:idempotency-token #:integer #:integer-list
                              #:list-assignments-for-hit #:list-bonus-payments
                              #:list-hits #:list-hits-for-qualification-type
                              #:list-qualification-requests
                              #:list-qualification-types
                              #:list-review-policy-results-for-hit
                              #:list-reviewable-hits #:list-worker-blocks
                              #:list-workers-with-qualification-type #:locale
                              #:locale-list #:long
                              #:mturk-requester-service-v20170117
                              #:notification-specification
                              #:notification-transport #:notify-workers
                              #:notify-workers-failure-code
                              #:notify-workers-failure-status
                              #:notify-workers-failure-status-list
                              #:pagination-token #:parameter-map-entry
                              #:parameter-map-entry-list #:policy-parameter
                              #:policy-parameter-list #:qualification
                              #:qualification-list #:qualification-request
                              #:qualification-request-list
                              #:qualification-requirement
                              #:qualification-requirement-list
                              #:qualification-status #:qualification-type
                              #:qualification-type-list
                              #:qualification-type-status #:reject-assignment
                              #:reject-qualification-request #:result-size
                              #:review-action-detail
                              #:review-action-detail-list
                              #:review-action-status #:review-policy
                              #:review-policy-level #:review-policy-level-list
                              #:review-report #:review-result-detail
                              #:review-result-detail-list
                              #:reviewable-hitstatus #:send-bonus
                              #:send-test-event-notification #:string
                              #:string-list #:timestamp #:turk-error-code
                              #:update-expiration-for-hit
                              #:update-hitreview-status #:update-hittype-of-hit
                              #:update-notification-settings
                              #:update-qualification-type #:worker-block
                              #:worker-block-list))
(common-lisp:in-package #:pira/mturk)

(smithy/sdk/service:define-service mturk-requester-service-v20170117
                                   :shape-name "MTurkRequesterServiceV20170117"
                                   :version "2017-01-17" :title
                                   "Amazon Mechanical Turk" :xml-namespace
                                   '(:uri
                                     "http://requester.mturk.com/2017-01-17/"
                                     :prefix common-lisp:nil)
                                   :traits
                                   '(("aws.api#service" ("sdkId" . "MTurk")
                                      ("arnNamespace" . "mturk-requester")
                                      ("cloudFormationName" . "MTurk")
                                      ("cloudTrailEventSource"
                                       . "mturk.amazonaws.com")
                                      ("docId" . "mturk-requester-2017-01-17")
                                      ("endpointPrefix" . "mturk-requester"))
                                     ("aws.auth#sigv4"
                                      ("name" . "mturk-requester"))
                                     ("aws.protocols#awsJson1_1")))

(smithy/sdk/shapes:define-input accept-qualification-request-request
                                common-lisp:nil
                                ((qualification-request-id :target-type string
                                  :required common-lisp:t :member-name
                                  "QualificationRequestId")
                                 (integer-value :target-type integer
                                  :member-name "IntegerValue"))
                                (:shape-name
                                 "AcceptQualificationRequestRequest"))

(smithy/sdk/shapes:define-output accept-qualification-request-response
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name
                                  "AcceptQualificationRequestResponse"))

(smithy/sdk/shapes:define-input approve-assignment-request common-lisp:nil
                                ((assignment-id :target-type entity-id
                                  :required common-lisp:t :member-name
                                  "AssignmentId")
                                 (requester-feedback :target-type string
                                  :member-name "RequesterFeedback")
                                 (override-rejection :target-type boolean
                                  :member-name "OverrideRejection"))
                                (:shape-name "ApproveAssignmentRequest"))

(smithy/sdk/shapes:define-output approve-assignment-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "ApproveAssignmentResponse"))

(smithy/sdk/shapes:define-structure assignment common-lisp:nil
                                    ((assignment-id :target-type entity-id
                                      :member-name "AssignmentId")
                                     (worker-id :target-type customer-id
                                      :member-name "WorkerId")
                                     (hitid :target-type entity-id :member-name
                                      "HITId")
                                     (assignment-status :target-type
                                      assignment-status :member-name
                                      "AssignmentStatus")
                                     (auto-approval-time :target-type timestamp
                                      :member-name "AutoApprovalTime")
                                     (accept-time :target-type timestamp
                                      :member-name "AcceptTime")
                                     (submit-time :target-type timestamp
                                      :member-name "SubmitTime")
                                     (approval-time :target-type timestamp
                                      :member-name "ApprovalTime")
                                     (rejection-time :target-type timestamp
                                      :member-name "RejectionTime")
                                     (deadline :target-type timestamp
                                      :member-name "Deadline")
                                     (answer :target-type string :member-name
                                      "Answer")
                                     (requester-feedback :target-type string
                                      :member-name "RequesterFeedback"))
                                    (:shape-name "Assignment"))

(smithy/sdk/shapes:define-list assignment-list :member assignment)

(smithy/sdk/shapes:define-enum assignment-status
    common-lisp:nil
  (:submitted "Submitted")
  (:approved "Approved")
  (:rejected "Rejected"))

(smithy/sdk/shapes:define-list assignment-status-list :member assignment-status)

(smithy/sdk/shapes:define-input associate-qualification-with-worker-request
                                common-lisp:nil
                                ((qualification-type-id :target-type entity-id
                                  :required common-lisp:t :member-name
                                  "QualificationTypeId")
                                 (worker-id :target-type customer-id :required
                                  common-lisp:t :member-name "WorkerId")
                                 (integer-value :target-type integer
                                  :member-name "IntegerValue")
                                 (send-notification :target-type boolean
                                  :member-name "SendNotification"))
                                (:shape-name
                                 "AssociateQualificationWithWorkerRequest"))

(smithy/sdk/shapes:define-output associate-qualification-with-worker-response
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name
                                  "AssociateQualificationWithWorkerResponse"))

(smithy/sdk/shapes:define-structure bonus-payment common-lisp:nil
                                    ((worker-id :target-type customer-id
                                      :member-name "WorkerId")
                                     (bonus-amount :target-type currency-amount
                                      :member-name "BonusAmount")
                                     (assignment-id :target-type entity-id
                                      :member-name "AssignmentId")
                                     (reason :target-type string :member-name
                                      "Reason")
                                     (grant-time :target-type timestamp
                                      :member-name "GrantTime"))
                                    (:shape-name "BonusPayment"))

(smithy/sdk/shapes:define-list bonus-payment-list :member bonus-payment)

(smithy/sdk/shapes:define-type boolean smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-enum comparator
    common-lisp:nil
  (:less-than "LessThan")
  (:less-than-or-equal-to "LessThanOrEqualTo")
  (:greater-than "GreaterThan")
  (:greater-than-or-equal-to "GreaterThanOrEqualTo")
  (:equal-to "EqualTo")
  (:not-equal-to "NotEqualTo")
  (:exists "Exists")
  (:does-not-exist "DoesNotExist")
  (:in "In")
  (:not-in "NotIn"))

(smithy/sdk/shapes:define-type country-parameters
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input create-additional-assignments-for-hitrequest
                                common-lisp:nil
                                ((hitid :target-type entity-id :required
                                  common-lisp:t :member-name "HITId")
                                 (number-of-additional-assignments :target-type
                                  integer :required common-lisp:t :member-name
                                  "NumberOfAdditionalAssignments")
                                 (unique-request-token :target-type
                                  idempotency-token :member-name
                                  "UniqueRequestToken"))
                                (:shape-name
                                 "CreateAdditionalAssignmentsForHITRequest"))

(smithy/sdk/shapes:define-output create-additional-assignments-for-hitresponse
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name
                                  "CreateAdditionalAssignmentsForHITResponse"))

(smithy/sdk/shapes:define-input create-hitrequest common-lisp:nil
                                ((max-assignments :target-type integer
                                  :member-name "MaxAssignments")
                                 (auto-approval-delay-in-seconds :target-type
                                  long :member-name
                                  "AutoApprovalDelayInSeconds")
                                 (lifetime-in-seconds :target-type long
                                  :required common-lisp:t :member-name
                                  "LifetimeInSeconds")
                                 (assignment-duration-in-seconds :target-type
                                  long :required common-lisp:t :member-name
                                  "AssignmentDurationInSeconds")
                                 (reward :target-type currency-amount :required
                                  common-lisp:t :member-name "Reward")
                                 (title :target-type string :required
                                  common-lisp:t :member-name "Title")
                                 (keywords :target-type string :member-name
                                  "Keywords")
                                 (description :target-type string :required
                                  common-lisp:t :member-name "Description")
                                 (question :target-type string :member-name
                                  "Question")
                                 (requester-annotation :target-type string
                                  :member-name "RequesterAnnotation")
                                 (qualification-requirements :target-type
                                  qualification-requirement-list :member-name
                                  "QualificationRequirements")
                                 (unique-request-token :target-type
                                  idempotency-token :member-name
                                  "UniqueRequestToken")
                                 (assignment-review-policy :target-type
                                  review-policy :member-name
                                  "AssignmentReviewPolicy")
                                 (hitreview-policy :target-type review-policy
                                  :member-name "HITReviewPolicy")
                                 (hitlayout-id :target-type entity-id
                                  :member-name "HITLayoutId")
                                 (hitlayout-parameters :target-type
                                  hitlayout-parameter-list :member-name
                                  "HITLayoutParameters"))
                                (:shape-name "CreateHITRequest"))

(smithy/sdk/shapes:define-output create-hitresponse common-lisp:nil
                                 ((hit :target-type hit :member-name "HIT"))
                                 (:shape-name "CreateHITResponse"))

(smithy/sdk/shapes:define-input create-hittype-request common-lisp:nil
                                ((auto-approval-delay-in-seconds :target-type
                                  long :member-name
                                  "AutoApprovalDelayInSeconds")
                                 (assignment-duration-in-seconds :target-type
                                  long :required common-lisp:t :member-name
                                  "AssignmentDurationInSeconds")
                                 (reward :target-type currency-amount :required
                                  common-lisp:t :member-name "Reward")
                                 (title :target-type string :required
                                  common-lisp:t :member-name "Title")
                                 (keywords :target-type string :member-name
                                  "Keywords")
                                 (description :target-type string :required
                                  common-lisp:t :member-name "Description")
                                 (qualification-requirements :target-type
                                  qualification-requirement-list :member-name
                                  "QualificationRequirements"))
                                (:shape-name "CreateHITTypeRequest"))

(smithy/sdk/shapes:define-output create-hittype-response common-lisp:nil
                                 ((hittype-id :target-type entity-id
                                   :member-name "HITTypeId"))
                                 (:shape-name "CreateHITTypeResponse"))

(smithy/sdk/shapes:define-input create-hitwith-hittype-request common-lisp:nil
                                ((hittype-id :target-type entity-id :required
                                  common-lisp:t :member-name "HITTypeId")
                                 (max-assignments :target-type integer
                                  :member-name "MaxAssignments")
                                 (lifetime-in-seconds :target-type long
                                  :required common-lisp:t :member-name
                                  "LifetimeInSeconds")
                                 (question :target-type string :member-name
                                  "Question")
                                 (requester-annotation :target-type string
                                  :member-name "RequesterAnnotation")
                                 (unique-request-token :target-type
                                  idempotency-token :member-name
                                  "UniqueRequestToken")
                                 (assignment-review-policy :target-type
                                  review-policy :member-name
                                  "AssignmentReviewPolicy")
                                 (hitreview-policy :target-type review-policy
                                  :member-name "HITReviewPolicy")
                                 (hitlayout-id :target-type entity-id
                                  :member-name "HITLayoutId")
                                 (hitlayout-parameters :target-type
                                  hitlayout-parameter-list :member-name
                                  "HITLayoutParameters"))
                                (:shape-name "CreateHITWithHITTypeRequest"))

(smithy/sdk/shapes:define-output create-hitwith-hittype-response
                                 common-lisp:nil
                                 ((hit :target-type hit :member-name "HIT"))
                                 (:shape-name "CreateHITWithHITTypeResponse"))

(smithy/sdk/shapes:define-input create-qualification-type-request
                                common-lisp:nil
                                ((name :target-type string :required
                                  common-lisp:t :member-name "Name")
                                 (keywords :target-type string :member-name
                                  "Keywords")
                                 (description :target-type string :required
                                  common-lisp:t :member-name "Description")
                                 (qualification-type-status :target-type
                                  qualification-type-status :required
                                  common-lisp:t :member-name
                                  "QualificationTypeStatus")
                                 (retry-delay-in-seconds :target-type long
                                  :member-name "RetryDelayInSeconds")
                                 (test :target-type string :member-name "Test")
                                 (answer-key :target-type string :member-name
                                  "AnswerKey")
                                 (test-duration-in-seconds :target-type long
                                  :member-name "TestDurationInSeconds")
                                 (auto-granted :target-type boolean
                                  :member-name "AutoGranted")
                                 (auto-granted-value :target-type integer
                                  :member-name "AutoGrantedValue"))
                                (:shape-name "CreateQualificationTypeRequest"))

(smithy/sdk/shapes:define-output create-qualification-type-response
                                 common-lisp:nil
                                 ((qualification-type :target-type
                                   qualification-type :member-name
                                   "QualificationType"))
                                 (:shape-name
                                  "CreateQualificationTypeResponse"))

(smithy/sdk/shapes:define-input create-worker-block-request common-lisp:nil
                                ((worker-id :target-type customer-id :required
                                  common-lisp:t :member-name "WorkerId")
                                 (reason :target-type string :required
                                  common-lisp:t :member-name "Reason"))
                                (:shape-name "CreateWorkerBlockRequest"))

(smithy/sdk/shapes:define-output create-worker-block-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "CreateWorkerBlockResponse"))

(smithy/sdk/shapes:define-type currency-amount smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type customer-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list customer-id-list :member customer-id)

(smithy/sdk/shapes:define-input delete-hitrequest common-lisp:nil
                                ((hitid :target-type entity-id :required
                                  common-lisp:t :member-name "HITId"))
                                (:shape-name "DeleteHITRequest"))

(smithy/sdk/shapes:define-output delete-hitresponse common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "DeleteHITResponse"))

(smithy/sdk/shapes:define-input delete-qualification-type-request
                                common-lisp:nil
                                ((qualification-type-id :target-type entity-id
                                  :required common-lisp:t :member-name
                                  "QualificationTypeId"))
                                (:shape-name "DeleteQualificationTypeRequest"))

(smithy/sdk/shapes:define-output delete-qualification-type-response
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name
                                  "DeleteQualificationTypeResponse"))

(smithy/sdk/shapes:define-input delete-worker-block-request common-lisp:nil
                                ((worker-id :target-type customer-id :required
                                  common-lisp:t :member-name "WorkerId")
                                 (reason :target-type string :member-name
                                  "Reason"))
                                (:shape-name "DeleteWorkerBlockRequest"))

(smithy/sdk/shapes:define-output delete-worker-block-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "DeleteWorkerBlockResponse"))

(smithy/sdk/shapes:define-input disassociate-qualification-from-worker-request
                                common-lisp:nil
                                ((worker-id :target-type customer-id :required
                                  common-lisp:t :member-name "WorkerId")
                                 (qualification-type-id :target-type entity-id
                                  :required common-lisp:t :member-name
                                  "QualificationTypeId")
                                 (reason :target-type string :member-name
                                  "Reason"))
                                (:shape-name
                                 "DisassociateQualificationFromWorkerRequest"))

(smithy/sdk/shapes:define-output
 disassociate-qualification-from-worker-response common-lisp:nil
 common-lisp:nil (:shape-name "DisassociateQualificationFromWorkerResponse"))

(smithy/sdk/shapes:define-type entity-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum event-type
    common-lisp:nil
  (:assignment-accepted "AssignmentAccepted")
  (:assignment-abandoned "AssignmentAbandoned")
  (:assignment-returned "AssignmentReturned")
  (:assignment-submitted "AssignmentSubmitted")
  (:assignment-rejected "AssignmentRejected")
  (:assignment-approved "AssignmentApproved")
  (:hitcreated "HITCreated")
  (:hitexpired "HITExpired")
  (:hitreviewable "HITReviewable")
  (:hitextended "HITExtended")
  (:hitdisposed "HITDisposed")
  (:ping "Ping"))

(smithy/sdk/shapes:define-list event-type-list :member event-type)

(smithy/sdk/shapes:define-type exception-message smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input get-account-balance-request common-lisp:nil
                                common-lisp:nil
                                (:shape-name "GetAccountBalanceRequest"))

(smithy/sdk/shapes:define-output get-account-balance-response common-lisp:nil
                                 ((available-balance :target-type
                                   currency-amount :member-name
                                   "AvailableBalance")
                                  (on-hold-balance :target-type currency-amount
                                   :member-name "OnHoldBalance"))
                                 (:shape-name "GetAccountBalanceResponse"))

(smithy/sdk/shapes:define-input get-assignment-request common-lisp:nil
                                ((assignment-id :target-type entity-id
                                  :required common-lisp:t :member-name
                                  "AssignmentId"))
                                (:shape-name "GetAssignmentRequest"))

(smithy/sdk/shapes:define-output get-assignment-response common-lisp:nil
                                 ((assignment :target-type assignment
                                   :member-name "Assignment")
                                  (hit :target-type hit :member-name "HIT"))
                                 (:shape-name "GetAssignmentResponse"))

(smithy/sdk/shapes:define-input get-file-upload-urlrequest common-lisp:nil
                                ((assignment-id :target-type entity-id
                                  :required common-lisp:t :member-name
                                  "AssignmentId")
                                 (question-identifier :target-type string
                                  :required common-lisp:t :member-name
                                  "QuestionIdentifier"))
                                (:shape-name "GetFileUploadURLRequest"))

(smithy/sdk/shapes:define-output get-file-upload-urlresponse common-lisp:nil
                                 ((file-upload-url :target-type string
                                   :member-name "FileUploadURL"))
                                 (:shape-name "GetFileUploadURLResponse"))

(smithy/sdk/shapes:define-input get-hitrequest common-lisp:nil
                                ((hitid :target-type entity-id :required
                                  common-lisp:t :member-name "HITId"))
                                (:shape-name "GetHITRequest"))

(smithy/sdk/shapes:define-output get-hitresponse common-lisp:nil
                                 ((hit :target-type hit :member-name "HIT"))
                                 (:shape-name "GetHITResponse"))

(smithy/sdk/shapes:define-input get-qualification-score-request common-lisp:nil
                                ((qualification-type-id :target-type entity-id
                                  :required common-lisp:t :member-name
                                  "QualificationTypeId")
                                 (worker-id :target-type customer-id :required
                                  common-lisp:t :member-name "WorkerId"))
                                (:shape-name "GetQualificationScoreRequest"))

(smithy/sdk/shapes:define-output get-qualification-score-response
                                 common-lisp:nil
                                 ((qualification :target-type qualification
                                   :member-name "Qualification"))
                                 (:shape-name "GetQualificationScoreResponse"))

(smithy/sdk/shapes:define-input get-qualification-type-request common-lisp:nil
                                ((qualification-type-id :target-type entity-id
                                  :required common-lisp:t :member-name
                                  "QualificationTypeId"))
                                (:shape-name "GetQualificationTypeRequest"))

(smithy/sdk/shapes:define-output get-qualification-type-response
                                 common-lisp:nil
                                 ((qualification-type :target-type
                                   qualification-type :member-name
                                   "QualificationType"))
                                 (:shape-name "GetQualificationTypeResponse"))

(smithy/sdk/shapes:define-structure hit common-lisp:nil
                                    ((hitid :target-type entity-id :member-name
                                      "HITId")
                                     (hittype-id :target-type entity-id
                                      :member-name "HITTypeId")
                                     (hitgroup-id :target-type entity-id
                                      :member-name "HITGroupId")
                                     (hitlayout-id :target-type entity-id
                                      :member-name "HITLayoutId")
                                     (creation-time :target-type timestamp
                                      :member-name "CreationTime")
                                     (title :target-type string :member-name
                                      "Title")
                                     (description :target-type string
                                      :member-name "Description")
                                     (question :target-type string :member-name
                                      "Question")
                                     (keywords :target-type string :member-name
                                      "Keywords")
                                     (hitstatus :target-type hitstatus
                                      :member-name "HITStatus")
                                     (max-assignments :target-type integer
                                      :member-name "MaxAssignments")
                                     (reward :target-type currency-amount
                                      :member-name "Reward")
                                     (auto-approval-delay-in-seconds
                                      :target-type long :member-name
                                      "AutoApprovalDelayInSeconds")
                                     (expiration :target-type timestamp
                                      :member-name "Expiration")
                                     (assignment-duration-in-seconds
                                      :target-type long :member-name
                                      "AssignmentDurationInSeconds")
                                     (requester-annotation :target-type string
                                      :member-name "RequesterAnnotation")
                                     (qualification-requirements :target-type
                                      qualification-requirement-list
                                      :member-name "QualificationRequirements")
                                     (hitreview-status :target-type
                                      hitreview-status :member-name
                                      "HITReviewStatus")
                                     (number-of-assignments-pending
                                      :target-type integer :member-name
                                      "NumberOfAssignmentsPending")
                                     (number-of-assignments-available
                                      :target-type integer :member-name
                                      "NumberOfAssignmentsAvailable")
                                     (number-of-assignments-completed
                                      :target-type integer :member-name
                                      "NumberOfAssignmentsCompleted"))
                                    (:shape-name "HIT"))

(smithy/sdk/shapes:define-enum hitaccess-actions
    common-lisp:nil
  (:accept "Accept")
  (:preview-and-accept "PreviewAndAccept")
  (:discover-preview-and-accept "DiscoverPreviewAndAccept"))

(smithy/sdk/shapes:define-structure hitlayout-parameter common-lisp:nil
                                    ((name :target-type string :required
                                      common-lisp:t :member-name "Name")
                                     (value :target-type string :required
                                      common-lisp:t :member-name "Value"))
                                    (:shape-name "HITLayoutParameter"))

(smithy/sdk/shapes:define-list hitlayout-parameter-list :member
                               hitlayout-parameter)

(smithy/sdk/shapes:define-list hitlist :member hit)

(smithy/sdk/shapes:define-enum hitreview-status
    common-lisp:nil
  (:not-reviewed "NotReviewed")
  (:marked-for-review "MarkedForReview")
  (:reviewed-appropriate "ReviewedAppropriate")
  (:reviewed-inappropriate "ReviewedInappropriate"))

(smithy/sdk/shapes:define-enum hitstatus
    common-lisp:nil
  (:assignable "Assignable")
  (:unassignable "Unassignable")
  (:reviewable "Reviewable")
  (:reviewing "Reviewing")
  (:disposed "Disposed"))

(smithy/sdk/shapes:define-type idempotency-token smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type integer smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-list integer-list :member integer)

(smithy/sdk/shapes:define-input list-assignments-for-hitrequest common-lisp:nil
                                ((hitid :target-type entity-id :required
                                  common-lisp:t :member-name "HITId")
                                 (next-token :target-type pagination-token
                                  :member-name "NextToken")
                                 (max-results :target-type result-size
                                  :member-name "MaxResults")
                                 (assignment-statuses :target-type
                                  assignment-status-list :member-name
                                  "AssignmentStatuses"))
                                (:shape-name "ListAssignmentsForHITRequest"))

(smithy/sdk/shapes:define-output list-assignments-for-hitresponse
                                 common-lisp:nil
                                 ((next-token :target-type pagination-token
                                   :member-name "NextToken")
                                  (num-results :target-type integer
                                   :member-name "NumResults")
                                  (assignments :target-type assignment-list
                                   :member-name "Assignments"))
                                 (:shape-name "ListAssignmentsForHITResponse"))

(smithy/sdk/shapes:define-input list-bonus-payments-request common-lisp:nil
                                ((hitid :target-type entity-id :member-name
                                  "HITId")
                                 (assignment-id :target-type entity-id
                                  :member-name "AssignmentId")
                                 (next-token :target-type pagination-token
                                  :member-name "NextToken")
                                 (max-results :target-type result-size
                                  :member-name "MaxResults"))
                                (:shape-name "ListBonusPaymentsRequest"))

(smithy/sdk/shapes:define-output list-bonus-payments-response common-lisp:nil
                                 ((num-results :target-type integer
                                   :member-name "NumResults")
                                  (next-token :target-type pagination-token
                                   :member-name "NextToken")
                                  (bonus-payments :target-type
                                   bonus-payment-list :member-name
                                   "BonusPayments"))
                                 (:shape-name "ListBonusPaymentsResponse"))

(smithy/sdk/shapes:define-input list-hits-for-qualification-type-request
                                common-lisp:nil
                                ((qualification-type-id :target-type entity-id
                                  :required common-lisp:t :member-name
                                  "QualificationTypeId")
                                 (next-token :target-type pagination-token
                                  :member-name "NextToken")
                                 (max-results :target-type result-size
                                  :member-name "MaxResults"))
                                (:shape-name
                                 "ListHITsForQualificationTypeRequest"))

(smithy/sdk/shapes:define-output list-hits-for-qualification-type-response
                                 common-lisp:nil
                                 ((next-token :target-type pagination-token
                                   :member-name "NextToken")
                                  (num-results :target-type integer
                                   :member-name "NumResults")
                                  (hits :target-type hitlist :member-name
                                   "HITs"))
                                 (:shape-name
                                  "ListHITsForQualificationTypeResponse"))

(smithy/sdk/shapes:define-input list-hits-request common-lisp:nil
                                ((next-token :target-type pagination-token
                                  :member-name "NextToken")
                                 (max-results :target-type result-size
                                  :member-name "MaxResults"))
                                (:shape-name "ListHITsRequest"))

(smithy/sdk/shapes:define-output list-hits-response common-lisp:nil
                                 ((next-token :target-type pagination-token
                                   :member-name "NextToken")
                                  (num-results :target-type integer
                                   :member-name "NumResults")
                                  (hits :target-type hitlist :member-name
                                   "HITs"))
                                 (:shape-name "ListHITsResponse"))

(smithy/sdk/shapes:define-input list-qualification-requests-request
                                common-lisp:nil
                                ((qualification-type-id :target-type entity-id
                                  :member-name "QualificationTypeId")
                                 (next-token :target-type pagination-token
                                  :member-name "NextToken")
                                 (max-results :target-type result-size
                                  :member-name "MaxResults"))
                                (:shape-name
                                 "ListQualificationRequestsRequest"))

(smithy/sdk/shapes:define-output list-qualification-requests-response
                                 common-lisp:nil
                                 ((num-results :target-type integer
                                   :member-name "NumResults")
                                  (next-token :target-type pagination-token
                                   :member-name "NextToken")
                                  (qualification-requests :target-type
                                   qualification-request-list :member-name
                                   "QualificationRequests"))
                                 (:shape-name
                                  "ListQualificationRequestsResponse"))

(smithy/sdk/shapes:define-input list-qualification-types-request
                                common-lisp:nil
                                ((query :target-type string :member-name
                                  "Query")
                                 (must-be-requestable :target-type boolean
                                  :required common-lisp:t :member-name
                                  "MustBeRequestable")
                                 (must-be-owned-by-caller :target-type boolean
                                  :member-name "MustBeOwnedByCaller")
                                 (next-token :target-type pagination-token
                                  :member-name "NextToken")
                                 (max-results :target-type result-size
                                  :member-name "MaxResults"))
                                (:shape-name "ListQualificationTypesRequest"))

(smithy/sdk/shapes:define-output list-qualification-types-response
                                 common-lisp:nil
                                 ((num-results :target-type integer
                                   :member-name "NumResults")
                                  (next-token :target-type pagination-token
                                   :member-name "NextToken")
                                  (qualification-types :target-type
                                   qualification-type-list :member-name
                                   "QualificationTypes"))
                                 (:shape-name "ListQualificationTypesResponse"))

(smithy/sdk/shapes:define-input list-review-policy-results-for-hitrequest
                                common-lisp:nil
                                ((hitid :target-type entity-id :required
                                  common-lisp:t :member-name "HITId")
                                 (policy-levels :target-type
                                  review-policy-level-list :member-name
                                  "PolicyLevels")
                                 (retrieve-actions :target-type boolean
                                  :member-name "RetrieveActions")
                                 (retrieve-results :target-type boolean
                                  :member-name "RetrieveResults")
                                 (next-token :target-type pagination-token
                                  :member-name "NextToken")
                                 (max-results :target-type result-size
                                  :member-name "MaxResults"))
                                (:shape-name
                                 "ListReviewPolicyResultsForHITRequest"))

(smithy/sdk/shapes:define-output list-review-policy-results-for-hitresponse
                                 common-lisp:nil
                                 ((hitid :target-type entity-id :member-name
                                   "HITId")
                                  (assignment-review-policy :target-type
                                   review-policy :member-name
                                   "AssignmentReviewPolicy")
                                  (hitreview-policy :target-type review-policy
                                   :member-name "HITReviewPolicy")
                                  (assignment-review-report :target-type
                                   review-report :member-name
                                   "AssignmentReviewReport")
                                  (hitreview-report :target-type review-report
                                   :member-name "HITReviewReport")
                                  (next-token :target-type pagination-token
                                   :member-name "NextToken"))
                                 (:shape-name
                                  "ListReviewPolicyResultsForHITResponse"))

(smithy/sdk/shapes:define-input list-reviewable-hits-request common-lisp:nil
                                ((hittype-id :target-type entity-id
                                  :member-name "HITTypeId")
                                 (status :target-type reviewable-hitstatus
                                  :member-name "Status")
                                 (next-token :target-type pagination-token
                                  :member-name "NextToken")
                                 (max-results :target-type result-size
                                  :member-name "MaxResults"))
                                (:shape-name "ListReviewableHITsRequest"))

(smithy/sdk/shapes:define-output list-reviewable-hits-response common-lisp:nil
                                 ((next-token :target-type pagination-token
                                   :member-name "NextToken")
                                  (num-results :target-type integer
                                   :member-name "NumResults")
                                  (hits :target-type hitlist :member-name
                                   "HITs"))
                                 (:shape-name "ListReviewableHITsResponse"))

(smithy/sdk/shapes:define-input list-worker-blocks-request common-lisp:nil
                                ((next-token :target-type pagination-token
                                  :member-name "NextToken")
                                 (max-results :target-type result-size
                                  :member-name "MaxResults"))
                                (:shape-name "ListWorkerBlocksRequest"))

(smithy/sdk/shapes:define-output list-worker-blocks-response common-lisp:nil
                                 ((next-token :target-type pagination-token
                                   :member-name "NextToken")
                                  (num-results :target-type integer
                                   :member-name "NumResults")
                                  (worker-blocks :target-type worker-block-list
                                   :member-name "WorkerBlocks"))
                                 (:shape-name "ListWorkerBlocksResponse"))

(smithy/sdk/shapes:define-input list-workers-with-qualification-type-request
                                common-lisp:nil
                                ((qualification-type-id :target-type entity-id
                                  :required common-lisp:t :member-name
                                  "QualificationTypeId")
                                 (status :target-type qualification-status
                                  :member-name "Status")
                                 (next-token :target-type pagination-token
                                  :member-name "NextToken")
                                 (max-results :target-type result-size
                                  :member-name "MaxResults"))
                                (:shape-name
                                 "ListWorkersWithQualificationTypeRequest"))

(smithy/sdk/shapes:define-output list-workers-with-qualification-type-response
                                 common-lisp:nil
                                 ((next-token :target-type pagination-token
                                   :member-name "NextToken")
                                  (num-results :target-type integer
                                   :member-name "NumResults")
                                  (qualifications :target-type
                                   qualification-list :member-name
                                   "Qualifications"))
                                 (:shape-name
                                  "ListWorkersWithQualificationTypeResponse"))

(smithy/sdk/shapes:define-structure locale common-lisp:nil
                                    ((country :target-type country-parameters
                                      :required common-lisp:t :member-name
                                      "Country")
                                     (subdivision :target-type
                                      country-parameters :member-name
                                      "Subdivision"))
                                    (:shape-name "Locale"))

(smithy/sdk/shapes:define-list locale-list :member locale)

(smithy/sdk/shapes:define-type long smithy/sdk/smithy-types:long)

(smithy/sdk/shapes:define-structure notification-specification common-lisp:nil
                                    ((destination :target-type string :required
                                      common-lisp:t :member-name "Destination")
                                     (transport :target-type
                                      notification-transport :required
                                      common-lisp:t :member-name "Transport")
                                     (version :target-type string :required
                                      common-lisp:t :member-name "Version")
                                     (event-types :target-type event-type-list
                                      :required common-lisp:t :member-name
                                      "EventTypes"))
                                    (:shape-name "NotificationSpecification"))

(smithy/sdk/shapes:define-enum notification-transport
    common-lisp:nil
  (:email "Email")
  (:sqs "SQS")
  (:sns "SNS"))

(smithy/sdk/shapes:define-enum notify-workers-failure-code
    common-lisp:nil
  (:soft-failure "SoftFailure")
  (:hard-failure "HardFailure"))

(smithy/sdk/shapes:define-structure notify-workers-failure-status
                                    common-lisp:nil
                                    ((notify-workers-failure-code :target-type
                                      notify-workers-failure-code :member-name
                                      "NotifyWorkersFailureCode")
                                     (notify-workers-failure-message
                                      :target-type string :member-name
                                      "NotifyWorkersFailureMessage")
                                     (worker-id :target-type customer-id
                                      :member-name "WorkerId"))
                                    (:shape-name "NotifyWorkersFailureStatus"))

(smithy/sdk/shapes:define-list notify-workers-failure-status-list :member
                               notify-workers-failure-status)

(smithy/sdk/shapes:define-input notify-workers-request common-lisp:nil
                                ((subject :target-type string :required
                                  common-lisp:t :member-name "Subject")
                                 (message-text :target-type string :required
                                  common-lisp:t :member-name "MessageText")
                                 (worker-ids :target-type customer-id-list
                                  :required common-lisp:t :member-name
                                  "WorkerIds"))
                                (:shape-name "NotifyWorkersRequest"))

(smithy/sdk/shapes:define-output notify-workers-response common-lisp:nil
                                 ((notify-workers-failure-statuses :target-type
                                   notify-workers-failure-status-list
                                   :member-name
                                   "NotifyWorkersFailureStatuses"))
                                 (:shape-name "NotifyWorkersResponse"))

(smithy/sdk/shapes:define-type pagination-token smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure parameter-map-entry common-lisp:nil
                                    ((key :target-type string :member-name
                                      "Key")
                                     (values :target-type string-list
                                      :member-name "Values"))
                                    (:shape-name "ParameterMapEntry"))

(smithy/sdk/shapes:define-list parameter-map-entry-list :member
                               parameter-map-entry)

(smithy/sdk/shapes:define-structure policy-parameter common-lisp:nil
                                    ((key :target-type string :member-name
                                      "Key")
                                     (values :target-type string-list
                                      :member-name "Values")
                                     (map-entries :target-type
                                      parameter-map-entry-list :member-name
                                      "MapEntries"))
                                    (:shape-name "PolicyParameter"))

(smithy/sdk/shapes:define-list policy-parameter-list :member policy-parameter)

(smithy/sdk/shapes:define-structure qualification common-lisp:nil
                                    ((qualification-type-id :target-type
                                      entity-id :member-name
                                      "QualificationTypeId")
                                     (worker-id :target-type customer-id
                                      :member-name "WorkerId")
                                     (grant-time :target-type timestamp
                                      :member-name "GrantTime")
                                     (integer-value :target-type integer
                                      :member-name "IntegerValue")
                                     (locale-value :target-type locale
                                      :member-name "LocaleValue")
                                     (status :target-type qualification-status
                                      :member-name "Status"))
                                    (:shape-name "Qualification"))

(smithy/sdk/shapes:define-list qualification-list :member qualification)

(smithy/sdk/shapes:define-structure qualification-request common-lisp:nil
                                    ((qualification-request-id :target-type
                                      string :member-name
                                      "QualificationRequestId")
                                     (qualification-type-id :target-type
                                      entity-id :member-name
                                      "QualificationTypeId")
                                     (worker-id :target-type customer-id
                                      :member-name "WorkerId")
                                     (test :target-type string :member-name
                                      "Test")
                                     (answer :target-type string :member-name
                                      "Answer")
                                     (submit-time :target-type timestamp
                                      :member-name "SubmitTime"))
                                    (:shape-name "QualificationRequest"))

(smithy/sdk/shapes:define-list qualification-request-list :member
                               qualification-request)

(smithy/sdk/shapes:define-structure qualification-requirement common-lisp:nil
                                    ((qualification-type-id :target-type string
                                      :required common-lisp:t :member-name
                                      "QualificationTypeId")
                                     (comparator :target-type comparator
                                      :required common-lisp:t :member-name
                                      "Comparator")
                                     (integer-values :target-type integer-list
                                      :member-name "IntegerValues")
                                     (locale-values :target-type locale-list
                                      :member-name "LocaleValues")
                                     (required-to-preview :target-type boolean
                                      :member-name "RequiredToPreview")
                                     (actions-guarded :target-type
                                      hitaccess-actions :member-name
                                      "ActionsGuarded"))
                                    (:shape-name "QualificationRequirement"))

(smithy/sdk/shapes:define-list qualification-requirement-list :member
                               qualification-requirement)

(smithy/sdk/shapes:define-enum qualification-status
    common-lisp:nil
  (:granted "Granted")
  (:revoked "Revoked"))

(smithy/sdk/shapes:define-structure qualification-type common-lisp:nil
                                    ((qualification-type-id :target-type
                                      entity-id :member-name
                                      "QualificationTypeId")
                                     (creation-time :target-type timestamp
                                      :member-name "CreationTime")
                                     (name :target-type string :member-name
                                      "Name")
                                     (description :target-type string
                                      :member-name "Description")
                                     (keywords :target-type string :member-name
                                      "Keywords")
                                     (qualification-type-status :target-type
                                      qualification-type-status :member-name
                                      "QualificationTypeStatus")
                                     (test :target-type string :member-name
                                      "Test")
                                     (test-duration-in-seconds :target-type
                                      long :member-name
                                      "TestDurationInSeconds")
                                     (answer-key :target-type string
                                      :member-name "AnswerKey")
                                     (retry-delay-in-seconds :target-type long
                                      :member-name "RetryDelayInSeconds")
                                     (is-requestable :target-type boolean
                                      :member-name "IsRequestable")
                                     (auto-granted :target-type boolean
                                      :member-name "AutoGranted")
                                     (auto-granted-value :target-type integer
                                      :member-name "AutoGrantedValue"))
                                    (:shape-name "QualificationType"))

(smithy/sdk/shapes:define-list qualification-type-list :member
                               qualification-type)

(smithy/sdk/shapes:define-enum qualification-type-status
    common-lisp:nil
  (:active "Active")
  (:inactive "Inactive"))

(smithy/sdk/shapes:define-input reject-assignment-request common-lisp:nil
                                ((assignment-id :target-type entity-id
                                  :required common-lisp:t :member-name
                                  "AssignmentId")
                                 (requester-feedback :target-type string
                                  :required common-lisp:t :member-name
                                  "RequesterFeedback"))
                                (:shape-name "RejectAssignmentRequest"))

(smithy/sdk/shapes:define-output reject-assignment-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "RejectAssignmentResponse"))

(smithy/sdk/shapes:define-input reject-qualification-request-request
                                common-lisp:nil
                                ((qualification-request-id :target-type string
                                  :required common-lisp:t :member-name
                                  "QualificationRequestId")
                                 (reason :target-type string :member-name
                                  "Reason"))
                                (:shape-name
                                 "RejectQualificationRequestRequest"))

(smithy/sdk/shapes:define-output reject-qualification-request-response
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name
                                  "RejectQualificationRequestResponse"))

(smithy/sdk/shapes:define-error request-error common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "Message")
                                 (turk-error-code :target-type turk-error-code
                                  :member-name "TurkErrorCode"))
                                (:shape-name "RequestError") (:error-code 400))

(smithy/sdk/shapes:define-type result-size smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-structure review-action-detail common-lisp:nil
                                    ((action-id :target-type entity-id
                                      :member-name "ActionId")
                                     (action-name :target-type string
                                      :member-name "ActionName")
                                     (target-id :target-type entity-id
                                      :member-name "TargetId")
                                     (target-type :target-type string
                                      :member-name "TargetType")
                                     (status :target-type review-action-status
                                      :member-name "Status")
                                     (complete-time :target-type timestamp
                                      :member-name "CompleteTime")
                                     (result :target-type string :member-name
                                      "Result")
                                     (error-code :target-type string
                                      :member-name "ErrorCode"))
                                    (:shape-name "ReviewActionDetail"))

(smithy/sdk/shapes:define-list review-action-detail-list :member
                               review-action-detail)

(smithy/sdk/shapes:define-enum review-action-status
    common-lisp:nil
  (:intended "Intended")
  (:succeeded "Succeeded")
  (:failed "Failed")
  (:cancelled "Cancelled"))

(smithy/sdk/shapes:define-structure review-policy common-lisp:nil
                                    ((policy-name :target-type string :required
                                      common-lisp:t :member-name "PolicyName")
                                     (parameters :target-type
                                      policy-parameter-list :member-name
                                      "Parameters"))
                                    (:shape-name "ReviewPolicy"))

(smithy/sdk/shapes:define-enum review-policy-level
    common-lisp:nil
  (:assignment "Assignment")
  (:hit "HIT"))

(smithy/sdk/shapes:define-list review-policy-level-list :member
                               review-policy-level)

(smithy/sdk/shapes:define-structure review-report common-lisp:nil
                                    ((review-results :target-type
                                      review-result-detail-list :member-name
                                      "ReviewResults")
                                     (review-actions :target-type
                                      review-action-detail-list :member-name
                                      "ReviewActions"))
                                    (:shape-name "ReviewReport"))

(smithy/sdk/shapes:define-structure review-result-detail common-lisp:nil
                                    ((action-id :target-type entity-id
                                      :member-name "ActionId")
                                     (subject-id :target-type entity-id
                                      :member-name "SubjectId")
                                     (subject-type :target-type string
                                      :member-name "SubjectType")
                                     (question-id :target-type entity-id
                                      :member-name "QuestionId")
                                     (key :target-type string :member-name
                                      "Key")
                                     (value :target-type string :member-name
                                      "Value"))
                                    (:shape-name "ReviewResultDetail"))

(smithy/sdk/shapes:define-list review-result-detail-list :member
                               review-result-detail)

(smithy/sdk/shapes:define-enum reviewable-hitstatus
    common-lisp:nil
  (:reviewable "Reviewable")
  (:reviewing "Reviewing"))

(smithy/sdk/shapes:define-input send-bonus-request common-lisp:nil
                                ((worker-id :target-type customer-id :required
                                  common-lisp:t :member-name "WorkerId")
                                 (bonus-amount :target-type currency-amount
                                  :required common-lisp:t :member-name
                                  "BonusAmount")
                                 (assignment-id :target-type entity-id
                                  :required common-lisp:t :member-name
                                  "AssignmentId")
                                 (reason :target-type string :required
                                  common-lisp:t :member-name "Reason")
                                 (unique-request-token :target-type
                                  idempotency-token :member-name
                                  "UniqueRequestToken"))
                                (:shape-name "SendBonusRequest"))

(smithy/sdk/shapes:define-output send-bonus-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "SendBonusResponse"))

(smithy/sdk/shapes:define-input send-test-event-notification-request
                                common-lisp:nil
                                ((notification :target-type
                                  notification-specification :required
                                  common-lisp:t :member-name "Notification")
                                 (test-event-type :target-type event-type
                                  :required common-lisp:t :member-name
                                  "TestEventType"))
                                (:shape-name
                                 "SendTestEventNotificationRequest"))

(smithy/sdk/shapes:define-output send-test-event-notification-response
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name
                                  "SendTestEventNotificationResponse"))

(smithy/sdk/shapes:define-error service-fault common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "Message")
                                 (turk-error-code :target-type turk-error-code
                                  :member-name "TurkErrorCode"))
                                (:shape-name "ServiceFault") (:error-code 500))

(smithy/sdk/shapes:define-type string smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list string-list :member string)

(smithy/sdk/shapes:define-type timestamp smithy/sdk/smithy-types:timestamp)

(smithy/sdk/shapes:define-type turk-error-code smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input update-expiration-for-hitrequest
                                common-lisp:nil
                                ((hitid :target-type entity-id :required
                                  common-lisp:t :member-name "HITId")
                                 (expire-at :target-type timestamp :required
                                  common-lisp:t :member-name "ExpireAt"))
                                (:shape-name "UpdateExpirationForHITRequest"))

(smithy/sdk/shapes:define-output update-expiration-for-hitresponse
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name "UpdateExpirationForHITResponse"))

(smithy/sdk/shapes:define-input update-hitreview-status-request common-lisp:nil
                                ((hitid :target-type entity-id :required
                                  common-lisp:t :member-name "HITId")
                                 (revert :target-type boolean :member-name
                                  "Revert"))
                                (:shape-name "UpdateHITReviewStatusRequest"))

(smithy/sdk/shapes:define-output update-hitreview-status-response
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name "UpdateHITReviewStatusResponse"))

(smithy/sdk/shapes:define-input update-hittype-of-hitrequest common-lisp:nil
                                ((hitid :target-type entity-id :required
                                  common-lisp:t :member-name "HITId")
                                 (hittype-id :target-type entity-id :required
                                  common-lisp:t :member-name "HITTypeId"))
                                (:shape-name "UpdateHITTypeOfHITRequest"))

(smithy/sdk/shapes:define-output update-hittype-of-hitresponse common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "UpdateHITTypeOfHITResponse"))

(smithy/sdk/shapes:define-input update-notification-settings-request
                                common-lisp:nil
                                ((hittype-id :target-type entity-id :required
                                  common-lisp:t :member-name "HITTypeId")
                                 (notification :target-type
                                  notification-specification :member-name
                                  "Notification")
                                 (active :target-type boolean :member-name
                                  "Active"))
                                (:shape-name
                                 "UpdateNotificationSettingsRequest"))

(smithy/sdk/shapes:define-output update-notification-settings-response
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name
                                  "UpdateNotificationSettingsResponse"))

(smithy/sdk/shapes:define-input update-qualification-type-request
                                common-lisp:nil
                                ((qualification-type-id :target-type entity-id
                                  :required common-lisp:t :member-name
                                  "QualificationTypeId")
                                 (description :target-type string :member-name
                                  "Description")
                                 (qualification-type-status :target-type
                                  qualification-type-status :member-name
                                  "QualificationTypeStatus")
                                 (test :target-type string :member-name "Test")
                                 (answer-key :target-type string :member-name
                                  "AnswerKey")
                                 (test-duration-in-seconds :target-type long
                                  :member-name "TestDurationInSeconds")
                                 (retry-delay-in-seconds :target-type long
                                  :member-name "RetryDelayInSeconds")
                                 (auto-granted :target-type boolean
                                  :member-name "AutoGranted")
                                 (auto-granted-value :target-type integer
                                  :member-name "AutoGrantedValue"))
                                (:shape-name "UpdateQualificationTypeRequest"))

(smithy/sdk/shapes:define-output update-qualification-type-response
                                 common-lisp:nil
                                 ((qualification-type :target-type
                                   qualification-type :member-name
                                   "QualificationType"))
                                 (:shape-name
                                  "UpdateQualificationTypeResponse"))

(smithy/sdk/shapes:define-structure worker-block common-lisp:nil
                                    ((worker-id :target-type customer-id
                                      :member-name "WorkerId")
                                     (reason :target-type string :member-name
                                      "Reason"))
                                    (:shape-name "WorkerBlock"))

(smithy/sdk/shapes:define-list worker-block-list :member worker-block)

(smithy/sdk/operation:define-operation accept-qualification-request :shape-name
                                       "AcceptQualificationRequest" :input
                                       accept-qualification-request-request
                                       :output
                                       accept-qualification-request-response
                                       :errors (request-error service-fault))

(smithy/sdk/operation:define-operation approve-assignment :shape-name
                                       "ApproveAssignment" :input
                                       approve-assignment-request :output
                                       approve-assignment-response :errors
                                       (request-error service-fault))

(smithy/sdk/operation:define-operation associate-qualification-with-worker
                                       :shape-name
                                       "AssociateQualificationWithWorker"
                                       :input
                                       associate-qualification-with-worker-request
                                       :output
                                       associate-qualification-with-worker-response
                                       :errors (request-error service-fault))

(smithy/sdk/operation:define-operation create-additional-assignments-for-hit
                                       :shape-name
                                       "CreateAdditionalAssignmentsForHIT"
                                       :input
                                       create-additional-assignments-for-hitrequest
                                       :output
                                       create-additional-assignments-for-hitresponse
                                       :errors (request-error service-fault))

(smithy/sdk/operation:define-operation create-hit :shape-name "CreateHIT"
                                       :input create-hitrequest :output
                                       create-hitresponse :errors
                                       (request-error service-fault))

(smithy/sdk/operation:define-operation create-hittype :shape-name
                                       "CreateHITType" :input
                                       create-hittype-request :output
                                       create-hittype-response :errors
                                       (request-error service-fault))

(smithy/sdk/operation:define-operation create-hitwith-hittype :shape-name
                                       "CreateHITWithHITType" :input
                                       create-hitwith-hittype-request :output
                                       create-hitwith-hittype-response :errors
                                       (request-error service-fault))

(smithy/sdk/operation:define-operation create-qualification-type :shape-name
                                       "CreateQualificationType" :input
                                       create-qualification-type-request
                                       :output
                                       create-qualification-type-response
                                       :errors (request-error service-fault))

(smithy/sdk/operation:define-operation create-worker-block :shape-name
                                       "CreateWorkerBlock" :input
                                       create-worker-block-request :output
                                       create-worker-block-response :errors
                                       (request-error service-fault))

(smithy/sdk/operation:define-operation delete-hit :shape-name "DeleteHIT"
                                       :input delete-hitrequest :output
                                       delete-hitresponse :errors
                                       (request-error service-fault))

(smithy/sdk/operation:define-operation delete-qualification-type :shape-name
                                       "DeleteQualificationType" :input
                                       delete-qualification-type-request
                                       :output
                                       delete-qualification-type-response
                                       :errors (request-error service-fault))

(smithy/sdk/operation:define-operation delete-worker-block :shape-name
                                       "DeleteWorkerBlock" :input
                                       delete-worker-block-request :output
                                       delete-worker-block-response :errors
                                       (request-error service-fault))

(smithy/sdk/operation:define-operation disassociate-qualification-from-worker
                                       :shape-name
                                       "DisassociateQualificationFromWorker"
                                       :input
                                       disassociate-qualification-from-worker-request
                                       :output
                                       disassociate-qualification-from-worker-response
                                       :errors (request-error service-fault))

(smithy/sdk/operation:define-operation get-account-balance :shape-name
                                       "GetAccountBalance" :input
                                       get-account-balance-request :output
                                       get-account-balance-response :errors
                                       (request-error service-fault))

(smithy/sdk/operation:define-operation get-assignment :shape-name
                                       "GetAssignment" :input
                                       get-assignment-request :output
                                       get-assignment-response :errors
                                       (request-error service-fault))

(smithy/sdk/operation:define-operation get-file-upload-url :shape-name
                                       "GetFileUploadURL" :input
                                       get-file-upload-urlrequest :output
                                       get-file-upload-urlresponse :errors
                                       (request-error service-fault))

(smithy/sdk/operation:define-operation get-hit :shape-name "GetHIT" :input
                                       get-hitrequest :output get-hitresponse
                                       :errors (request-error service-fault))

(smithy/sdk/operation:define-operation get-qualification-score :shape-name
                                       "GetQualificationScore" :input
                                       get-qualification-score-request :output
                                       get-qualification-score-response :errors
                                       (request-error service-fault))

(smithy/sdk/operation:define-operation get-qualification-type :shape-name
                                       "GetQualificationType" :input
                                       get-qualification-type-request :output
                                       get-qualification-type-response :errors
                                       (request-error service-fault))

(smithy/sdk/operation:define-operation list-assignments-for-hit :shape-name
                                       "ListAssignmentsForHIT" :input
                                       list-assignments-for-hitrequest :output
                                       list-assignments-for-hitresponse :errors
                                       (request-error service-fault))

(smithy/sdk/operation:define-operation list-bonus-payments :shape-name
                                       "ListBonusPayments" :input
                                       list-bonus-payments-request :output
                                       list-bonus-payments-response :errors
                                       (request-error service-fault))

(smithy/sdk/operation:define-operation list-hits :shape-name "ListHITs" :input
                                       list-hits-request :output
                                       list-hits-response :errors
                                       (request-error service-fault))

(smithy/sdk/operation:define-operation list-hits-for-qualification-type
                                       :shape-name
                                       "ListHITsForQualificationType" :input
                                       list-hits-for-qualification-type-request
                                       :output
                                       list-hits-for-qualification-type-response
                                       :errors (request-error service-fault))

(smithy/sdk/operation:define-operation list-qualification-requests :shape-name
                                       "ListQualificationRequests" :input
                                       list-qualification-requests-request
                                       :output
                                       list-qualification-requests-response
                                       :errors (request-error service-fault))

(smithy/sdk/operation:define-operation list-qualification-types :shape-name
                                       "ListQualificationTypes" :input
                                       list-qualification-types-request :output
                                       list-qualification-types-response
                                       :errors (request-error service-fault))

(smithy/sdk/operation:define-operation list-review-policy-results-for-hit
                                       :shape-name
                                       "ListReviewPolicyResultsForHIT" :input
                                       list-review-policy-results-for-hitrequest
                                       :output
                                       list-review-policy-results-for-hitresponse
                                       :errors (request-error service-fault))

(smithy/sdk/operation:define-operation list-reviewable-hits :shape-name
                                       "ListReviewableHITs" :input
                                       list-reviewable-hits-request :output
                                       list-reviewable-hits-response :errors
                                       (request-error service-fault))

(smithy/sdk/operation:define-operation list-worker-blocks :shape-name
                                       "ListWorkerBlocks" :input
                                       list-worker-blocks-request :output
                                       list-worker-blocks-response :errors
                                       (request-error service-fault))

(smithy/sdk/operation:define-operation list-workers-with-qualification-type
                                       :shape-name
                                       "ListWorkersWithQualificationType"
                                       :input
                                       list-workers-with-qualification-type-request
                                       :output
                                       list-workers-with-qualification-type-response
                                       :errors (request-error service-fault))

(smithy/sdk/operation:define-operation notify-workers :shape-name
                                       "NotifyWorkers" :input
                                       notify-workers-request :output
                                       notify-workers-response :errors
                                       (request-error service-fault))

(smithy/sdk/operation:define-operation reject-assignment :shape-name
                                       "RejectAssignment" :input
                                       reject-assignment-request :output
                                       reject-assignment-response :errors
                                       (request-error service-fault))

(smithy/sdk/operation:define-operation reject-qualification-request :shape-name
                                       "RejectQualificationRequest" :input
                                       reject-qualification-request-request
                                       :output
                                       reject-qualification-request-response
                                       :errors (request-error service-fault))

(smithy/sdk/operation:define-operation send-bonus :shape-name "SendBonus"
                                       :input send-bonus-request :output
                                       send-bonus-response :errors
                                       (request-error service-fault))

(smithy/sdk/operation:define-operation send-test-event-notification :shape-name
                                       "SendTestEventNotification" :input
                                       send-test-event-notification-request
                                       :output
                                       send-test-event-notification-response
                                       :errors (request-error service-fault))

(smithy/sdk/operation:define-operation update-expiration-for-hit :shape-name
                                       "UpdateExpirationForHIT" :input
                                       update-expiration-for-hitrequest :output
                                       update-expiration-for-hitresponse
                                       :errors (request-error service-fault))

(smithy/sdk/operation:define-operation update-hitreview-status :shape-name
                                       "UpdateHITReviewStatus" :input
                                       update-hitreview-status-request :output
                                       update-hitreview-status-response :errors
                                       (request-error service-fault))

(smithy/sdk/operation:define-operation update-hittype-of-hit :shape-name
                                       "UpdateHITTypeOfHIT" :input
                                       update-hittype-of-hitrequest :output
                                       update-hittype-of-hitresponse :errors
                                       (request-error service-fault))

(smithy/sdk/operation:define-operation update-notification-settings :shape-name
                                       "UpdateNotificationSettings" :input
                                       update-notification-settings-request
                                       :output
                                       update-notification-settings-response
                                       :errors (request-error service-fault))

(smithy/sdk/operation:define-operation update-qualification-type :shape-name
                                       "UpdateQualificationType" :input
                                       update-qualification-type-request
                                       :output
                                       update-qualification-type-response
                                       :errors (request-error service-fault))
