(uiop/package:define-package #:pira/connect-contact-lens (:use)
                             (:export #:amazon-connect-contact-lens
                              #:categories #:category-details #:category-name
                              #:character-offset #:character-offsets
                              #:contact-id #:instance-id #:issue-detected
                              #:issues-detected
                              #:list-realtime-contact-analysis-segments
                              #:matched-categories #:matched-details
                              #:max-results #:message #:next-token
                              #:offset-millis #:participant-id
                              #:participant-role #:point-of-interest
                              #:points-of-interest #:post-contact-summary
                              #:post-contact-summary-content
                              #:post-contact-summary-failure-code
                              #:post-contact-summary-status
                              #:realtime-contact-analysis-segment
                              #:realtime-contact-analysis-segments
                              #:sentiment-value #:transcript
                              #:transcript-content #:transcript-id))
(common-lisp:in-package #:pira/connect-contact-lens)

(smithy/sdk/service:define-service amazon-connect-contact-lens :shape-name
                                   "AmazonConnectContactLens" :version
                                   "2020-08-21" :title
                                   "Amazon Connect Contact Lens" :traits
                                   '(("aws.api#service"
                                      ("sdkId" . "Connect Contact Lens")
                                      ("arnNamespace" . "connect")
                                      ("cloudFormationName"
                                       . "ConnectContactLens")
                                      ("cloudTrailEventSource"
                                       . "connectcontactlens.amazonaws.com")
                                      ("endpointPrefix" . "contact-lens"))
                                     ("aws.auth#sigv4" ("name" . "connect"))
                                     ("aws.protocols#restJson1")))

(smithy/sdk/shapes:define-error access-denied-exception common-lisp:nil
                                ((message :target-type message :required
                                  common-lisp:t :member-name "Message"))
                                (:shape-name "AccessDeniedException")
                                (:error-code 403))

(smithy/sdk/shapes:define-structure categories common-lisp:nil
                                    ((matched-categories :target-type
                                      matched-categories :required
                                      common-lisp:t :member-name
                                      "MatchedCategories")
                                     (matched-details :target-type
                                      matched-details :required common-lisp:t
                                      :member-name "MatchedDetails"))
                                    (:shape-name "Categories"))

(smithy/sdk/shapes:define-structure category-details common-lisp:nil
                                    ((points-of-interest :target-type
                                      points-of-interest :required
                                      common-lisp:t :member-name
                                      "PointsOfInterest"))
                                    (:shape-name "CategoryDetails"))

(smithy/sdk/shapes:define-type category-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type character-offset smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-structure character-offsets common-lisp:nil
                                    ((begin-offset-char :target-type
                                      character-offset :required common-lisp:t
                                      :member-name "BeginOffsetChar")
                                     (end-offset-char :target-type
                                      character-offset :required common-lisp:t
                                      :member-name "EndOffsetChar"))
                                    (:shape-name "CharacterOffsets"))

(smithy/sdk/shapes:define-type contact-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type instance-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error internal-service-exception common-lisp:nil
                                ((message :target-type message :member-name
                                  "Message"))
                                (:shape-name "InternalServiceException")
                                (:error-code 500))

(smithy/sdk/shapes:define-error invalid-request-exception common-lisp:nil
                                ((message :target-type message :member-name
                                  "Message"))
                                (:shape-name "InvalidRequestException")
                                (:error-code 400))

(smithy/sdk/shapes:define-structure issue-detected common-lisp:nil
                                    ((character-offsets :target-type
                                      character-offsets :required common-lisp:t
                                      :member-name "CharacterOffsets"))
                                    (:shape-name "IssueDetected"))

(smithy/sdk/shapes:define-list issues-detected :member issue-detected)

(smithy/sdk/shapes:define-input list-realtime-contact-analysis-segments-request
                                common-lisp:nil
                                ((instance-id :target-type instance-id
                                  :required common-lisp:t :member-name
                                  "InstanceId")
                                 (contact-id :target-type contact-id :required
                                  common-lisp:t :member-name "ContactId")
                                 (max-results :target-type max-results
                                  :member-name "MaxResults")
                                 (next-token :target-type next-token
                                  :member-name "NextToken"))
                                (:shape-name
                                 "ListRealtimeContactAnalysisSegmentsRequest"))

(smithy/sdk/shapes:define-output
 list-realtime-contact-analysis-segments-response common-lisp:nil
 ((segments :target-type realtime-contact-analysis-segments :required
   common-lisp:t :member-name "Segments")
  (next-token :target-type next-token :member-name "NextToken"))
 (:shape-name "ListRealtimeContactAnalysisSegmentsResponse"))

(smithy/sdk/shapes:define-list matched-categories :member category-name)

(smithy/sdk/shapes:define-map matched-details :key category-name :value
                              category-details)

(smithy/sdk/shapes:define-type max-results smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type message smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type next-token smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type offset-millis smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type participant-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type participant-role smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure point-of-interest common-lisp:nil
                                    ((begin-offset-millis :target-type
                                      offset-millis :required common-lisp:t
                                      :member-name "BeginOffsetMillis")
                                     (end-offset-millis :target-type
                                      offset-millis :required common-lisp:t
                                      :member-name "EndOffsetMillis"))
                                    (:shape-name "PointOfInterest"))

(smithy/sdk/shapes:define-list points-of-interest :member point-of-interest)

(smithy/sdk/shapes:define-structure post-contact-summary common-lisp:nil
                                    ((content :target-type
                                      post-contact-summary-content :member-name
                                      "Content")
                                     (status :target-type
                                      post-contact-summary-status :required
                                      common-lisp:t :member-name "Status")
                                     (failure-code :target-type
                                      post-contact-summary-failure-code
                                      :member-name "FailureCode"))
                                    (:shape-name "PostContactSummary"))

(smithy/sdk/shapes:define-type post-contact-summary-content
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum post-contact-summary-failure-code
    common-lisp:nil
  (:quota-exceeded "QUOTA_EXCEEDED")
  (:insufficient-conversation-content "INSUFFICIENT_CONVERSATION_CONTENT")
  (:failed-safety-guidelines "FAILED_SAFETY_GUIDELINES")
  (:invalid-analysis-configuration "INVALID_ANALYSIS_CONFIGURATION")
  (:internal-error "INTERNAL_ERROR"))

(smithy/sdk/shapes:define-enum post-contact-summary-status
    common-lisp:nil
  (:failed "FAILED")
  (:completed "COMPLETED"))

(smithy/sdk/shapes:define-structure realtime-contact-analysis-segment
                                    common-lisp:nil
                                    ((transcript :target-type transcript
                                      :member-name "Transcript")
                                     (categories :target-type categories
                                      :member-name "Categories")
                                     (post-contact-summary :target-type
                                      post-contact-summary :member-name
                                      "PostContactSummary"))
                                    (:shape-name
                                     "RealtimeContactAnalysisSegment"))

(smithy/sdk/shapes:define-list realtime-contact-analysis-segments :member
                               realtime-contact-analysis-segment)

(smithy/sdk/shapes:define-error resource-not-found-exception common-lisp:nil
                                ((message :target-type message :member-name
                                  "Message"))
                                (:shape-name "ResourceNotFoundException")
                                (:error-code 404))

(smithy/sdk/shapes:define-enum sentiment-value
    common-lisp:nil
  (:positive "POSITIVE")
  (:neutral "NEUTRAL")
  (:negative "NEGATIVE"))

(smithy/sdk/shapes:define-error throttling-exception common-lisp:nil
                                ((message :target-type message :required
                                  common-lisp:t :member-name "Message"))
                                (:shape-name "ThrottlingException")
                                (:error-code 429))

(smithy/sdk/shapes:define-structure transcript common-lisp:nil
                                    ((id :target-type transcript-id :required
                                      common-lisp:t :member-name "Id")
                                     (participant-id :target-type
                                      participant-id :required common-lisp:t
                                      :member-name "ParticipantId")
                                     (participant-role :target-type
                                      participant-role :required common-lisp:t
                                      :member-name "ParticipantRole")
                                     (content :target-type transcript-content
                                      :required common-lisp:t :member-name
                                      "Content")
                                     (begin-offset-millis :target-type
                                      offset-millis :required common-lisp:t
                                      :member-name "BeginOffsetMillis")
                                     (end-offset-millis :target-type
                                      offset-millis :required common-lisp:t
                                      :member-name "EndOffsetMillis")
                                     (sentiment :target-type sentiment-value
                                      :member-name "Sentiment")
                                     (issues-detected :target-type
                                      issues-detected :member-name
                                      "IssuesDetected"))
                                    (:shape-name "Transcript"))

(smithy/sdk/shapes:define-type transcript-content
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type transcript-id smithy/sdk/smithy-types:string)

(smithy/sdk/operation:define-operation list-realtime-contact-analysis-segments
                                       :shape-name
                                       "ListRealtimeContactAnalysisSegments"
                                       :input
                                       list-realtime-contact-analysis-segments-request
                                       :output
                                       list-realtime-contact-analysis-segments-response
                                       :errors
                                       (access-denied-exception
                                        internal-service-exception
                                        invalid-request-exception
                                        resource-not-found-exception
                                        throttling-exception)
                                       :method "POST" :uri
                                       "/realtime-contact-analysis/analysis-segments"
                                       :code 200)
