(uiop/package:define-package #:pira/voice-id (:use)
                             (:export #:access-denied-exception
                              #:amazon-resource-name #:arn
                              #:associate-fraudster
                              #:associate-fraudster-request
                              #:associate-fraudster-response
                              #:authentication-configuration
                              #:authentication-decision #:authentication-result
                              #:boolean #:client-token-string
                              #:conflict-exception #:conflict-type
                              #:create-domain #:create-domain-request
                              #:create-domain-response #:create-watchlist
                              #:create-watchlist-request
                              #:create-watchlist-response #:customer-speaker-id
                              #:delete-domain #:delete-domain-request
                              #:delete-fraudster #:delete-fraudster-request
                              #:delete-speaker #:delete-speaker-request
                              #:delete-watchlist #:delete-watchlist-request
                              #:describe-domain #:describe-domain-request
                              #:describe-domain-response #:describe-fraudster
                              #:describe-fraudster-registration-job
                              #:describe-fraudster-registration-job-request
                              #:describe-fraudster-registration-job-response
                              #:describe-fraudster-request
                              #:describe-fraudster-response #:describe-speaker
                              #:describe-speaker-enrollment-job
                              #:describe-speaker-enrollment-job-request
                              #:describe-speaker-enrollment-job-response
                              #:describe-speaker-request
                              #:describe-speaker-response #:describe-watchlist
                              #:describe-watchlist-request
                              #:describe-watchlist-response #:description
                              #:disassociate-fraudster
                              #:disassociate-fraudster-request
                              #:disassociate-fraudster-response #:domain
                              #:domain-id #:domain-name #:domain-resource
                              #:domain-status #:domain-summaries
                              #:domain-summary #:duplicate-registration-action
                              #:enrollment-config
                              #:enrollment-job-fraud-detection-config
                              #:enrollment-job-fraud-detection-config-watchlist-ids
                              #:evaluate-session #:evaluate-session-request
                              #:evaluate-session-response
                              #:existing-enrollment-action #:failure-details
                              #:fraud-detection-action
                              #:fraud-detection-configuration
                              #:fraud-detection-decision
                              #:fraud-detection-reason
                              #:fraud-detection-reasons
                              #:fraud-detection-result #:fraud-risk-details
                              #:fraudster #:fraudster-id
                              #:fraudster-registration-job
                              #:fraudster-registration-job-status
                              #:fraudster-registration-job-summaries
                              #:fraudster-registration-job-summary
                              #:fraudster-summaries #:fraudster-summary
                              #:generated-fraudster-id #:generated-speaker-id
                              #:iam-role-arn #:input-data-config #:integer
                              #:internal-server-exception #:job-id #:job-name
                              #:job-progress #:kms-key-id
                              #:known-fraudster-risk #:list-domains
                              #:list-domains-request #:list-domains-response
                              #:list-fraudster-registration-jobs
                              #:list-fraudster-registration-jobs-request
                              #:list-fraudster-registration-jobs-response
                              #:list-fraudsters #:list-fraudsters-request
                              #:list-fraudsters-response
                              #:list-speaker-enrollment-jobs
                              #:list-speaker-enrollment-jobs-request
                              #:list-speaker-enrollment-jobs-response
                              #:list-speakers #:list-speakers-request
                              #:list-speakers-response #:list-tags-for-resource
                              #:list-tags-for-resource-request
                              #:list-tags-for-resource-response
                              #:list-watchlists #:list-watchlists-request
                              #:list-watchlists-response #:max-results-for-list
                              #:max-results-for-list-domain-fe #:next-token
                              #:opt-out-speaker #:opt-out-speaker-request
                              #:opt-out-speaker-response #:output-data-config
                              #:registration-config
                              #:registration-config-watchlist-ids
                              #:resource-not-found-exception #:resource-type
                              #:response-watchlist-ids #:s3uri #:score
                              #:server-side-encryption-configuration
                              #:server-side-encryption-update-details
                              #:server-side-encryption-update-status
                              #:service-quota-exceeded-exception #:session-id
                              #:session-name #:session-name-or-id #:speaker
                              #:speaker-enrollment-job
                              #:speaker-enrollment-job-status
                              #:speaker-enrollment-job-summaries
                              #:speaker-enrollment-job-summary #:speaker-id
                              #:speaker-status #:speaker-summaries
                              #:speaker-summary
                              #:start-fraudster-registration-job
                              #:start-fraudster-registration-job-request
                              #:start-fraudster-registration-job-response
                              #:start-speaker-enrollment-job
                              #:start-speaker-enrollment-job-request
                              #:start-speaker-enrollment-job-response
                              #:streaming-status #:string #:tag #:tag-key
                              #:tag-key-list #:tag-list #:tag-resource
                              #:tag-resource-request #:tag-resource-response
                              #:tag-value #:throttling-exception #:timestamp
                              #:unique-id-large #:untag-resource
                              #:untag-resource-request
                              #:untag-resource-response #:update-domain
                              #:update-domain-request #:update-domain-response
                              #:update-watchlist #:update-watchlist-request
                              #:update-watchlist-response
                              #:validation-exception #:voice-id
                              #:voice-spoofing-risk #:watchlist
                              #:watchlist-description #:watchlist-details
                              #:watchlist-id #:watchlist-name
                              #:watchlist-summaries #:watchlist-summary
                              #:voice-id-error))
(common-lisp:in-package #:pira/voice-id)

(common-lisp:define-condition voice-id-error
    (pira/error:aws-error)
    common-lisp:nil)

(smithy/sdk/service:define-service voice-id :shape-name "VoiceID" :version
                                   "2021-09-27" :title "Amazon Voice ID"
                                   :operations
                                   '(associate-fraudster create-watchlist
                                     delete-fraudster delete-speaker
                                     delete-watchlist describe-fraudster
                                     describe-fraudster-registration-job
                                     describe-speaker
                                     describe-speaker-enrollment-job
                                     describe-watchlist disassociate-fraudster
                                     evaluate-session
                                     list-fraudster-registration-jobs
                                     list-fraudsters
                                     list-speaker-enrollment-jobs list-speakers
                                     list-tags-for-resource list-watchlists
                                     opt-out-speaker
                                     start-fraudster-registration-job
                                     start-speaker-enrollment-job tag-resource
                                     untag-resource update-watchlist)
                                   :traits
                                   '(("aws.api#service" ("sdkId" . "Voice ID")
                                      ("arnNamespace" . "voiceid")
                                      ("cloudFormationName" . "VoiceID")
                                      ("cloudTrailEventSource"
                                       . "voiceid.amazonaws.com")
                                      ("endpointPrefix" . "voiceid"))
                                     ("aws.auth#sigv4" ("name" . "voiceid"))
                                     ("aws.protocols#awsJson1_0")))

(smithy/sdk/shapes:define-error access-denied-exception common-lisp:nil
                                ((message :target-type string :member-name
                                  "Message"))
                                (:shape-name "AccessDeniedException")
                                (:error-code 403) (:base-class voice-id-error))

(smithy/sdk/shapes:define-type amazon-resource-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure associate-fraudster-request common-lisp:nil
                                    ((domain-id :target-type domain-id
                                      :required common-lisp:t :member-name
                                      "DomainId")
                                     (watchlist-id :target-type watchlist-id
                                      :required common-lisp:t :member-name
                                      "WatchlistId")
                                     (fraudster-id :target-type fraudster-id
                                      :required common-lisp:t :member-name
                                      "FraudsterId"))
                                    (:shape-name "AssociateFraudsterRequest"))

(smithy/sdk/shapes:define-structure associate-fraudster-response
                                    common-lisp:nil
                                    ((fraudster :target-type fraudster
                                      :member-name "Fraudster"))
                                    (:shape-name "AssociateFraudsterResponse"))

(smithy/sdk/shapes:define-structure authentication-configuration
                                    common-lisp:nil
                                    ((acceptance-threshold :target-type score
                                      :required common-lisp:t :member-name
                                      "AcceptanceThreshold"))
                                    (:shape-name "AuthenticationConfiguration"))

(smithy/sdk/shapes:define-type authentication-decision
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure authentication-result common-lisp:nil
                                    ((authentication-result-id :target-type
                                      unique-id-large :member-name
                                      "AuthenticationResultId")
                                     (audio-aggregation-started-at :target-type
                                      timestamp :member-name
                                      "AudioAggregationStartedAt")
                                     (audio-aggregation-ended-at :target-type
                                      timestamp :member-name
                                      "AudioAggregationEndedAt")
                                     (customer-speaker-id :target-type
                                      customer-speaker-id :member-name
                                      "CustomerSpeakerId")
                                     (generated-speaker-id :target-type
                                      generated-speaker-id :member-name
                                      "GeneratedSpeakerId")
                                     (decision :target-type
                                      authentication-decision :member-name
                                      "Decision")
                                     (score :target-type score :member-name
                                      "Score")
                                     (configuration :target-type
                                      authentication-configuration :member-name
                                      "Configuration"))
                                    (:shape-name "AuthenticationResult"))

(smithy/sdk/shapes:define-type boolean smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-type client-token-string
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error conflict-exception common-lisp:nil
                                ((message :target-type string :member-name
                                  "Message")
                                 (conflict-type :target-type conflict-type
                                  :member-name "ConflictType"))
                                (:shape-name "ConflictException")
                                (:error-code 409) (:base-class voice-id-error))

(smithy/sdk/shapes:define-type conflict-type smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure create-domain-request common-lisp:nil
                                    ((name :target-type domain-name :required
                                      common-lisp:t :member-name "Name")
                                     (description :target-type description
                                      :member-name "Description")
                                     (server-side-encryption-configuration
                                      :target-type
                                      server-side-encryption-configuration
                                      :required common-lisp:t :member-name
                                      "ServerSideEncryptionConfiguration")
                                     (client-token :target-type
                                      client-token-string :member-name
                                      "ClientToken")
                                     (tags :target-type tag-list :member-name
                                      "Tags"))
                                    (:shape-name "CreateDomainRequest"))

(smithy/sdk/shapes:define-structure create-domain-response common-lisp:nil
                                    ((domain :target-type domain :member-name
                                      "Domain"))
                                    (:shape-name "CreateDomainResponse"))

(smithy/sdk/shapes:define-structure create-watchlist-request common-lisp:nil
                                    ((domain-id :target-type domain-id
                                      :required common-lisp:t :member-name
                                      "DomainId")
                                     (name :target-type watchlist-name
                                      :required common-lisp:t :member-name
                                      "Name")
                                     (description :target-type
                                      watchlist-description :member-name
                                      "Description")
                                     (client-token :target-type
                                      client-token-string :member-name
                                      "ClientToken"))
                                    (:shape-name "CreateWatchlistRequest"))

(smithy/sdk/shapes:define-structure create-watchlist-response common-lisp:nil
                                    ((watchlist :target-type watchlist
                                      :member-name "Watchlist"))
                                    (:shape-name "CreateWatchlistResponse"))

(smithy/sdk/shapes:define-type customer-speaker-id
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure delete-domain-request common-lisp:nil
                                    ((domain-id :target-type domain-id
                                      :required common-lisp:t :member-name
                                      "DomainId"))
                                    (:shape-name "DeleteDomainRequest"))

(smithy/sdk/shapes:define-structure delete-fraudster-request common-lisp:nil
                                    ((domain-id :target-type domain-id
                                      :required common-lisp:t :member-name
                                      "DomainId")
                                     (fraudster-id :target-type fraudster-id
                                      :required common-lisp:t :member-name
                                      "FraudsterId"))
                                    (:shape-name "DeleteFraudsterRequest"))

(smithy/sdk/shapes:define-structure delete-speaker-request common-lisp:nil
                                    ((domain-id :target-type domain-id
                                      :required common-lisp:t :member-name
                                      "DomainId")
                                     (speaker-id :target-type speaker-id
                                      :required common-lisp:t :member-name
                                      "SpeakerId"))
                                    (:shape-name "DeleteSpeakerRequest"))

(smithy/sdk/shapes:define-structure delete-watchlist-request common-lisp:nil
                                    ((domain-id :target-type domain-id
                                      :required common-lisp:t :member-name
                                      "DomainId")
                                     (watchlist-id :target-type watchlist-id
                                      :required common-lisp:t :member-name
                                      "WatchlistId"))
                                    (:shape-name "DeleteWatchlistRequest"))

(smithy/sdk/shapes:define-structure describe-domain-request common-lisp:nil
                                    ((domain-id :target-type domain-id
                                      :required common-lisp:t :member-name
                                      "DomainId"))
                                    (:shape-name "DescribeDomainRequest"))

(smithy/sdk/shapes:define-structure describe-domain-response common-lisp:nil
                                    ((domain :target-type domain :member-name
                                      "Domain"))
                                    (:shape-name "DescribeDomainResponse"))

(smithy/sdk/shapes:define-structure describe-fraudster-registration-job-request
                                    common-lisp:nil
                                    ((domain-id :target-type domain-id
                                      :required common-lisp:t :member-name
                                      "DomainId")
                                     (job-id :target-type job-id :required
                                      common-lisp:t :member-name "JobId"))
                                    (:shape-name
                                     "DescribeFraudsterRegistrationJobRequest"))

(smithy/sdk/shapes:define-structure
 describe-fraudster-registration-job-response common-lisp:nil
 ((job :target-type fraudster-registration-job :member-name "Job"))
 (:shape-name "DescribeFraudsterRegistrationJobResponse"))

(smithy/sdk/shapes:define-structure describe-fraudster-request common-lisp:nil
                                    ((domain-id :target-type domain-id
                                      :required common-lisp:t :member-name
                                      "DomainId")
                                     (fraudster-id :target-type fraudster-id
                                      :required common-lisp:t :member-name
                                      "FraudsterId"))
                                    (:shape-name "DescribeFraudsterRequest"))

(smithy/sdk/shapes:define-structure describe-fraudster-response common-lisp:nil
                                    ((fraudster :target-type fraudster
                                      :member-name "Fraudster"))
                                    (:shape-name "DescribeFraudsterResponse"))

(smithy/sdk/shapes:define-structure describe-speaker-enrollment-job-request
                                    common-lisp:nil
                                    ((domain-id :target-type domain-id
                                      :required common-lisp:t :member-name
                                      "DomainId")
                                     (job-id :target-type job-id :required
                                      common-lisp:t :member-name "JobId"))
                                    (:shape-name
                                     "DescribeSpeakerEnrollmentJobRequest"))

(smithy/sdk/shapes:define-structure describe-speaker-enrollment-job-response
                                    common-lisp:nil
                                    ((job :target-type speaker-enrollment-job
                                      :member-name "Job"))
                                    (:shape-name
                                     "DescribeSpeakerEnrollmentJobResponse"))

(smithy/sdk/shapes:define-structure describe-speaker-request common-lisp:nil
                                    ((domain-id :target-type domain-id
                                      :required common-lisp:t :member-name
                                      "DomainId")
                                     (speaker-id :target-type speaker-id
                                      :required common-lisp:t :member-name
                                      "SpeakerId"))
                                    (:shape-name "DescribeSpeakerRequest"))

(smithy/sdk/shapes:define-structure describe-speaker-response common-lisp:nil
                                    ((speaker :target-type speaker :member-name
                                      "Speaker"))
                                    (:shape-name "DescribeSpeakerResponse"))

(smithy/sdk/shapes:define-structure describe-watchlist-request common-lisp:nil
                                    ((domain-id :target-type domain-id
                                      :required common-lisp:t :member-name
                                      "DomainId")
                                     (watchlist-id :target-type watchlist-id
                                      :required common-lisp:t :member-name
                                      "WatchlistId"))
                                    (:shape-name "DescribeWatchlistRequest"))

(smithy/sdk/shapes:define-structure describe-watchlist-response common-lisp:nil
                                    ((watchlist :target-type watchlist
                                      :member-name "Watchlist"))
                                    (:shape-name "DescribeWatchlistResponse"))

(smithy/sdk/shapes:define-type description smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure disassociate-fraudster-request
                                    common-lisp:nil
                                    ((domain-id :target-type domain-id
                                      :required common-lisp:t :member-name
                                      "DomainId")
                                     (watchlist-id :target-type watchlist-id
                                      :required common-lisp:t :member-name
                                      "WatchlistId")
                                     (fraudster-id :target-type fraudster-id
                                      :required common-lisp:t :member-name
                                      "FraudsterId"))
                                    (:shape-name
                                     "DisassociateFraudsterRequest"))

(smithy/sdk/shapes:define-structure disassociate-fraudster-response
                                    common-lisp:nil
                                    ((fraudster :target-type fraudster
                                      :member-name "Fraudster"))
                                    (:shape-name
                                     "DisassociateFraudsterResponse"))

(smithy/sdk/shapes:define-structure domain common-lisp:nil
                                    ((domain-id :target-type domain-id
                                      :member-name "DomainId")
                                     (arn :target-type arn :member-name "Arn")
                                     (name :target-type domain-name
                                      :member-name "Name")
                                     (description :target-type description
                                      :member-name "Description")
                                     (domain-status :target-type domain-status
                                      :member-name "DomainStatus")
                                     (server-side-encryption-configuration
                                      :target-type
                                      server-side-encryption-configuration
                                      :member-name
                                      "ServerSideEncryptionConfiguration")
                                     (created-at :target-type timestamp
                                      :member-name "CreatedAt")
                                     (updated-at :target-type timestamp
                                      :member-name "UpdatedAt")
                                     (server-side-encryption-update-details
                                      :target-type
                                      server-side-encryption-update-details
                                      :member-name
                                      "ServerSideEncryptionUpdateDetails")
                                     (watchlist-details :target-type
                                      watchlist-details :member-name
                                      "WatchlistDetails"))
                                    (:shape-name "Domain"))

(smithy/sdk/shapes:define-type domain-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type domain-name smithy/sdk/smithy-types:string)

common-lisp:nil

(smithy/sdk/shapes:define-type domain-status smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list domain-summaries :member domain-summary)

(smithy/sdk/shapes:define-structure domain-summary common-lisp:nil
                                    ((domain-id :target-type domain-id
                                      :member-name "DomainId")
                                     (arn :target-type arn :member-name "Arn")
                                     (name :target-type domain-name
                                      :member-name "Name")
                                     (description :target-type description
                                      :member-name "Description")
                                     (domain-status :target-type domain-status
                                      :member-name "DomainStatus")
                                     (server-side-encryption-configuration
                                      :target-type
                                      server-side-encryption-configuration
                                      :member-name
                                      "ServerSideEncryptionConfiguration")
                                     (created-at :target-type timestamp
                                      :member-name "CreatedAt")
                                     (updated-at :target-type timestamp
                                      :member-name "UpdatedAt")
                                     (server-side-encryption-update-details
                                      :target-type
                                      server-side-encryption-update-details
                                      :member-name
                                      "ServerSideEncryptionUpdateDetails")
                                     (watchlist-details :target-type
                                      watchlist-details :member-name
                                      "WatchlistDetails"))
                                    (:shape-name "DomainSummary"))

(smithy/sdk/shapes:define-type duplicate-registration-action
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure enrollment-config common-lisp:nil
                                    ((existing-enrollment-action :target-type
                                      existing-enrollment-action :member-name
                                      "ExistingEnrollmentAction")
                                     (fraud-detection-config :target-type
                                      enrollment-job-fraud-detection-config
                                      :member-name "FraudDetectionConfig"))
                                    (:shape-name "EnrollmentConfig"))

(smithy/sdk/shapes:define-structure enrollment-job-fraud-detection-config
                                    common-lisp:nil
                                    ((fraud-detection-action :target-type
                                      fraud-detection-action :member-name
                                      "FraudDetectionAction")
                                     (risk-threshold :target-type score
                                      :member-name "RiskThreshold")
                                     (watchlist-ids :target-type
                                      enrollment-job-fraud-detection-config-watchlist-ids
                                      :member-name "WatchlistIds"))
                                    (:shape-name
                                     "EnrollmentJobFraudDetectionConfig"))

(smithy/sdk/shapes:define-list
 enrollment-job-fraud-detection-config-watchlist-ids :member watchlist-id)

(smithy/sdk/shapes:define-structure evaluate-session-request common-lisp:nil
                                    ((domain-id :target-type domain-id
                                      :required common-lisp:t :member-name
                                      "DomainId")
                                     (session-name-or-id :target-type
                                      session-name-or-id :required
                                      common-lisp:t :member-name
                                      "SessionNameOrId"))
                                    (:shape-name "EvaluateSessionRequest"))

(smithy/sdk/shapes:define-structure evaluate-session-response common-lisp:nil
                                    ((domain-id :target-type domain-id
                                      :member-name "DomainId")
                                     (session-id :target-type session-id
                                      :member-name "SessionId")
                                     (session-name :target-type session-name
                                      :member-name "SessionName")
                                     (streaming-status :target-type
                                      streaming-status :member-name
                                      "StreamingStatus")
                                     (authentication-result :target-type
                                      authentication-result :member-name
                                      "AuthenticationResult")
                                     (fraud-detection-result :target-type
                                      fraud-detection-result :member-name
                                      "FraudDetectionResult"))
                                    (:shape-name "EvaluateSessionResponse"))

(smithy/sdk/shapes:define-type existing-enrollment-action
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure failure-details common-lisp:nil
                                    ((status-code :target-type integer
                                      :member-name "StatusCode")
                                     (message :target-type string :member-name
                                      "Message"))
                                    (:shape-name "FailureDetails"))

(smithy/sdk/shapes:define-type fraud-detection-action
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure fraud-detection-configuration
                                    common-lisp:nil
                                    ((risk-threshold :target-type score
                                      :member-name "RiskThreshold")
                                     (watchlist-id :target-type watchlist-id
                                      :member-name "WatchlistId"))
                                    (:shape-name "FraudDetectionConfiguration"))

(smithy/sdk/shapes:define-type fraud-detection-decision
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type fraud-detection-reason
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list fraud-detection-reasons :member
                               fraud-detection-reason)

(smithy/sdk/shapes:define-structure fraud-detection-result common-lisp:nil
                                    ((fraud-detection-result-id :target-type
                                      unique-id-large :member-name
                                      "FraudDetectionResultId")
                                     (audio-aggregation-started-at :target-type
                                      timestamp :member-name
                                      "AudioAggregationStartedAt")
                                     (audio-aggregation-ended-at :target-type
                                      timestamp :member-name
                                      "AudioAggregationEndedAt")
                                     (configuration :target-type
                                      fraud-detection-configuration
                                      :member-name "Configuration")
                                     (decision :target-type
                                      fraud-detection-decision :member-name
                                      "Decision")
                                     (reasons :target-type
                                      fraud-detection-reasons :member-name
                                      "Reasons")
                                     (risk-details :target-type
                                      fraud-risk-details :member-name
                                      "RiskDetails"))
                                    (:shape-name "FraudDetectionResult"))

(smithy/sdk/shapes:define-structure fraud-risk-details common-lisp:nil
                                    ((known-fraudster-risk :target-type
                                      known-fraudster-risk :required
                                      common-lisp:t :member-name
                                      "KnownFraudsterRisk")
                                     (voice-spoofing-risk :target-type
                                      voice-spoofing-risk :required
                                      common-lisp:t :member-name
                                      "VoiceSpoofingRisk"))
                                    (:shape-name "FraudRiskDetails"))

(smithy/sdk/shapes:define-structure fraudster common-lisp:nil
                                    ((domain-id :target-type domain-id
                                      :member-name "DomainId")
                                     (generated-fraudster-id :target-type
                                      generated-fraudster-id :member-name
                                      "GeneratedFraudsterId")
                                     (created-at :target-type timestamp
                                      :member-name "CreatedAt")
                                     (watchlist-ids :target-type
                                      response-watchlist-ids :member-name
                                      "WatchlistIds"))
                                    (:shape-name "Fraudster"))

(smithy/sdk/shapes:define-type fraudster-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure fraudster-registration-job common-lisp:nil
                                    ((job-name :target-type job-name
                                      :member-name "JobName")
                                     (job-id :target-type job-id :member-name
                                      "JobId")
                                     (job-status :target-type
                                      fraudster-registration-job-status
                                      :member-name "JobStatus")
                                     (domain-id :target-type domain-id
                                      :member-name "DomainId")
                                     (data-access-role-arn :target-type
                                      iam-role-arn :member-name
                                      "DataAccessRoleArn")
                                     (registration-config :target-type
                                      registration-config :member-name
                                      "RegistrationConfig")
                                     (input-data-config :target-type
                                      input-data-config :member-name
                                      "InputDataConfig")
                                     (output-data-config :target-type
                                      output-data-config :member-name
                                      "OutputDataConfig")
                                     (created-at :target-type timestamp
                                      :member-name "CreatedAt")
                                     (ended-at :target-type timestamp
                                      :member-name "EndedAt")
                                     (failure-details :target-type
                                      failure-details :member-name
                                      "FailureDetails")
                                     (job-progress :target-type job-progress
                                      :member-name "JobProgress"))
                                    (:shape-name "FraudsterRegistrationJob"))

(smithy/sdk/shapes:define-type fraudster-registration-job-status
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list fraudster-registration-job-summaries :member
                               fraudster-registration-job-summary)

(smithy/sdk/shapes:define-structure fraudster-registration-job-summary
                                    common-lisp:nil
                                    ((job-name :target-type job-name
                                      :member-name "JobName")
                                     (job-id :target-type job-id :member-name
                                      "JobId")
                                     (job-status :target-type
                                      fraudster-registration-job-status
                                      :member-name "JobStatus")
                                     (domain-id :target-type domain-id
                                      :member-name "DomainId")
                                     (created-at :target-type timestamp
                                      :member-name "CreatedAt")
                                     (ended-at :target-type timestamp
                                      :member-name "EndedAt")
                                     (failure-details :target-type
                                      failure-details :member-name
                                      "FailureDetails")
                                     (job-progress :target-type job-progress
                                      :member-name "JobProgress"))
                                    (:shape-name
                                     "FraudsterRegistrationJobSummary"))

(smithy/sdk/shapes:define-list fraudster-summaries :member fraudster-summary)

(smithy/sdk/shapes:define-structure fraudster-summary common-lisp:nil
                                    ((domain-id :target-type domain-id
                                      :member-name "DomainId")
                                     (generated-fraudster-id :target-type
                                      generated-fraudster-id :member-name
                                      "GeneratedFraudsterId")
                                     (created-at :target-type timestamp
                                      :member-name "CreatedAt")
                                     (watchlist-ids :target-type
                                      response-watchlist-ids :member-name
                                      "WatchlistIds"))
                                    (:shape-name "FraudsterSummary"))

(smithy/sdk/shapes:define-type generated-fraudster-id
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type generated-speaker-id
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type iam-role-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure input-data-config common-lisp:nil
                                    ((s3uri :target-type s3uri :required
                                      common-lisp:t :member-name "S3Uri"))
                                    (:shape-name "InputDataConfig"))

(smithy/sdk/shapes:define-type integer smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-error internal-server-exception common-lisp:nil
                                ((message :target-type string :member-name
                                  "Message"))
                                (:shape-name "InternalServerException")
                                (:error-code 500) (:base-class voice-id-error))

(smithy/sdk/shapes:define-type job-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type job-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure job-progress common-lisp:nil
                                    ((percent-complete :target-type score
                                      :member-name "PercentComplete"))
                                    (:shape-name "JobProgress"))

(smithy/sdk/shapes:define-type kms-key-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure known-fraudster-risk common-lisp:nil
                                    ((risk-score :target-type score :required
                                      common-lisp:t :member-name "RiskScore")
                                     (generated-fraudster-id :target-type
                                      generated-fraudster-id :member-name
                                      "GeneratedFraudsterId"))
                                    (:shape-name "KnownFraudsterRisk"))

(smithy/sdk/shapes:define-structure list-domains-request common-lisp:nil
                                    ((max-results :target-type
                                      max-results-for-list-domain-fe
                                      :member-name "MaxResults")
                                     (next-token :target-type next-token
                                      :member-name "NextToken"))
                                    (:shape-name "ListDomainsRequest"))

(smithy/sdk/shapes:define-structure list-domains-response common-lisp:nil
                                    ((domain-summaries :target-type
                                      domain-summaries :member-name
                                      "DomainSummaries")
                                     (next-token :target-type string
                                      :member-name "NextToken"))
                                    (:shape-name "ListDomainsResponse"))

(smithy/sdk/shapes:define-structure list-fraudster-registration-jobs-request
                                    common-lisp:nil
                                    ((domain-id :target-type domain-id
                                      :required common-lisp:t :member-name
                                      "DomainId")
                                     (job-status :target-type
                                      fraudster-registration-job-status
                                      :member-name "JobStatus")
                                     (max-results :target-type
                                      max-results-for-list :member-name
                                      "MaxResults")
                                     (next-token :target-type next-token
                                      :member-name "NextToken"))
                                    (:shape-name
                                     "ListFraudsterRegistrationJobsRequest"))

(smithy/sdk/shapes:define-structure list-fraudster-registration-jobs-response
                                    common-lisp:nil
                                    ((job-summaries :target-type
                                      fraudster-registration-job-summaries
                                      :member-name "JobSummaries")
                                     (next-token :target-type string
                                      :member-name "NextToken"))
                                    (:shape-name
                                     "ListFraudsterRegistrationJobsResponse"))

(smithy/sdk/shapes:define-structure list-fraudsters-request common-lisp:nil
                                    ((domain-id :target-type domain-id
                                      :required common-lisp:t :member-name
                                      "DomainId")
                                     (watchlist-id :target-type watchlist-id
                                      :member-name "WatchlistId")
                                     (max-results :target-type
                                      max-results-for-list :member-name
                                      "MaxResults")
                                     (next-token :target-type next-token
                                      :member-name "NextToken"))
                                    (:shape-name "ListFraudstersRequest"))

(smithy/sdk/shapes:define-structure list-fraudsters-response common-lisp:nil
                                    ((fraudster-summaries :target-type
                                      fraudster-summaries :member-name
                                      "FraudsterSummaries")
                                     (next-token :target-type string
                                      :member-name "NextToken"))
                                    (:shape-name "ListFraudstersResponse"))

(smithy/sdk/shapes:define-structure list-speaker-enrollment-jobs-request
                                    common-lisp:nil
                                    ((domain-id :target-type domain-id
                                      :required common-lisp:t :member-name
                                      "DomainId")
                                     (job-status :target-type
                                      speaker-enrollment-job-status
                                      :member-name "JobStatus")
                                     (max-results :target-type
                                      max-results-for-list :member-name
                                      "MaxResults")
                                     (next-token :target-type next-token
                                      :member-name "NextToken"))
                                    (:shape-name
                                     "ListSpeakerEnrollmentJobsRequest"))

(smithy/sdk/shapes:define-structure list-speaker-enrollment-jobs-response
                                    common-lisp:nil
                                    ((job-summaries :target-type
                                      speaker-enrollment-job-summaries
                                      :member-name "JobSummaries")
                                     (next-token :target-type string
                                      :member-name "NextToken"))
                                    (:shape-name
                                     "ListSpeakerEnrollmentJobsResponse"))

(smithy/sdk/shapes:define-structure list-speakers-request common-lisp:nil
                                    ((domain-id :target-type domain-id
                                      :required common-lisp:t :member-name
                                      "DomainId")
                                     (max-results :target-type
                                      max-results-for-list :member-name
                                      "MaxResults")
                                     (next-token :target-type next-token
                                      :member-name "NextToken"))
                                    (:shape-name "ListSpeakersRequest"))

(smithy/sdk/shapes:define-structure list-speakers-response common-lisp:nil
                                    ((speaker-summaries :target-type
                                      speaker-summaries :member-name
                                      "SpeakerSummaries")
                                     (next-token :target-type string
                                      :member-name "NextToken"))
                                    (:shape-name "ListSpeakersResponse"))

(smithy/sdk/shapes:define-structure list-tags-for-resource-request
                                    common-lisp:nil
                                    ((resource-arn :target-type
                                      amazon-resource-name :required
                                      common-lisp:t :member-name
                                      "ResourceArn"))
                                    (:shape-name "ListTagsForResourceRequest"))

(smithy/sdk/shapes:define-structure list-tags-for-resource-response
                                    common-lisp:nil
                                    ((tags :target-type tag-list :member-name
                                      "Tags"))
                                    (:shape-name "ListTagsForResourceResponse"))

(smithy/sdk/shapes:define-structure list-watchlists-request common-lisp:nil
                                    ((domain-id :target-type domain-id
                                      :required common-lisp:t :member-name
                                      "DomainId")
                                     (max-results :target-type
                                      max-results-for-list :member-name
                                      "MaxResults")
                                     (next-token :target-type next-token
                                      :member-name "NextToken"))
                                    (:shape-name "ListWatchlistsRequest"))

(smithy/sdk/shapes:define-structure list-watchlists-response common-lisp:nil
                                    ((watchlist-summaries :target-type
                                      watchlist-summaries :member-name
                                      "WatchlistSummaries")
                                     (next-token :target-type string
                                      :member-name "NextToken"))
                                    (:shape-name "ListWatchlistsResponse"))

(smithy/sdk/shapes:define-type max-results-for-list
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type max-results-for-list-domain-fe
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type next-token smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure opt-out-speaker-request common-lisp:nil
                                    ((domain-id :target-type domain-id
                                      :required common-lisp:t :member-name
                                      "DomainId")
                                     (speaker-id :target-type speaker-id
                                      :required common-lisp:t :member-name
                                      "SpeakerId"))
                                    (:shape-name "OptOutSpeakerRequest"))

(smithy/sdk/shapes:define-structure opt-out-speaker-response common-lisp:nil
                                    ((speaker :target-type speaker :member-name
                                      "Speaker"))
                                    (:shape-name "OptOutSpeakerResponse"))

(smithy/sdk/shapes:define-structure output-data-config common-lisp:nil
                                    ((s3uri :target-type s3uri :required
                                      common-lisp:t :member-name "S3Uri")
                                     (kms-key-id :target-type kms-key-id
                                      :member-name "KmsKeyId"))
                                    (:shape-name "OutputDataConfig"))

(smithy/sdk/shapes:define-structure registration-config common-lisp:nil
                                    ((duplicate-registration-action
                                      :target-type
                                      duplicate-registration-action
                                      :member-name
                                      "DuplicateRegistrationAction")
                                     (fraudster-similarity-threshold
                                      :target-type score :member-name
                                      "FraudsterSimilarityThreshold")
                                     (watchlist-ids :target-type
                                      registration-config-watchlist-ids
                                      :member-name "WatchlistIds"))
                                    (:shape-name "RegistrationConfig"))

(smithy/sdk/shapes:define-list registration-config-watchlist-ids :member
                               watchlist-id)

(smithy/sdk/shapes:define-error resource-not-found-exception common-lisp:nil
                                ((message :target-type string :member-name
                                  "Message")
                                 (resource-type :target-type resource-type
                                  :member-name "ResourceType"))
                                (:shape-name "ResourceNotFoundException")
                                (:error-code 404) (:base-class voice-id-error))

(smithy/sdk/shapes:define-type resource-type smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list response-watchlist-ids :member watchlist-id)

(smithy/sdk/shapes:define-type s3uri smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type score smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-structure server-side-encryption-configuration
                                    common-lisp:nil
                                    ((kms-key-id :target-type kms-key-id
                                      :required common-lisp:t :member-name
                                      "KmsKeyId"))
                                    (:shape-name
                                     "ServerSideEncryptionConfiguration"))

(smithy/sdk/shapes:define-structure server-side-encryption-update-details
                                    common-lisp:nil
                                    ((old-kms-key-id :target-type kms-key-id
                                      :member-name "OldKmsKeyId")
                                     (update-status :target-type
                                      server-side-encryption-update-status
                                      :member-name "UpdateStatus")
                                     (message :target-type string :member-name
                                      "Message"))
                                    (:shape-name
                                     "ServerSideEncryptionUpdateDetails"))

(smithy/sdk/shapes:define-type server-side-encryption-update-status
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error service-quota-exceeded-exception
                                common-lisp:nil
                                ((message :target-type string :member-name
                                  "Message"))
                                (:shape-name "ServiceQuotaExceededException")
                                (:error-code 402) (:base-class voice-id-error))

(smithy/sdk/shapes:define-type session-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type session-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type session-name-or-id
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure speaker common-lisp:nil
                                    ((domain-id :target-type domain-id
                                      :member-name "DomainId")
                                     (customer-speaker-id :target-type
                                      customer-speaker-id :member-name
                                      "CustomerSpeakerId")
                                     (generated-speaker-id :target-type
                                      generated-speaker-id :member-name
                                      "GeneratedSpeakerId")
                                     (status :target-type speaker-status
                                      :member-name "Status")
                                     (created-at :target-type timestamp
                                      :member-name "CreatedAt")
                                     (updated-at :target-type timestamp
                                      :member-name "UpdatedAt")
                                     (last-accessed-at :target-type timestamp
                                      :member-name "LastAccessedAt"))
                                    (:shape-name "Speaker"))

(smithy/sdk/shapes:define-structure speaker-enrollment-job common-lisp:nil
                                    ((job-name :target-type job-name
                                      :member-name "JobName")
                                     (job-id :target-type job-id :member-name
                                      "JobId")
                                     (job-status :target-type
                                      speaker-enrollment-job-status
                                      :member-name "JobStatus")
                                     (domain-id :target-type domain-id
                                      :member-name "DomainId")
                                     (data-access-role-arn :target-type
                                      iam-role-arn :member-name
                                      "DataAccessRoleArn")
                                     (enrollment-config :target-type
                                      enrollment-config :member-name
                                      "EnrollmentConfig")
                                     (input-data-config :target-type
                                      input-data-config :member-name
                                      "InputDataConfig")
                                     (output-data-config :target-type
                                      output-data-config :member-name
                                      "OutputDataConfig")
                                     (created-at :target-type timestamp
                                      :member-name "CreatedAt")
                                     (ended-at :target-type timestamp
                                      :member-name "EndedAt")
                                     (failure-details :target-type
                                      failure-details :member-name
                                      "FailureDetails")
                                     (job-progress :target-type job-progress
                                      :member-name "JobProgress"))
                                    (:shape-name "SpeakerEnrollmentJob"))

(smithy/sdk/shapes:define-type speaker-enrollment-job-status
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list speaker-enrollment-job-summaries :member
                               speaker-enrollment-job-summary)

(smithy/sdk/shapes:define-structure speaker-enrollment-job-summary
                                    common-lisp:nil
                                    ((job-name :target-type job-name
                                      :member-name "JobName")
                                     (job-id :target-type job-id :member-name
                                      "JobId")
                                     (job-status :target-type
                                      speaker-enrollment-job-status
                                      :member-name "JobStatus")
                                     (domain-id :target-type domain-id
                                      :member-name "DomainId")
                                     (created-at :target-type timestamp
                                      :member-name "CreatedAt")
                                     (ended-at :target-type timestamp
                                      :member-name "EndedAt")
                                     (failure-details :target-type
                                      failure-details :member-name
                                      "FailureDetails")
                                     (job-progress :target-type job-progress
                                      :member-name "JobProgress"))
                                    (:shape-name "SpeakerEnrollmentJobSummary"))

(smithy/sdk/shapes:define-type speaker-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type speaker-status smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list speaker-summaries :member speaker-summary)

(smithy/sdk/shapes:define-structure speaker-summary common-lisp:nil
                                    ((domain-id :target-type domain-id
                                      :member-name "DomainId")
                                     (customer-speaker-id :target-type
                                      customer-speaker-id :member-name
                                      "CustomerSpeakerId")
                                     (generated-speaker-id :target-type
                                      generated-speaker-id :member-name
                                      "GeneratedSpeakerId")
                                     (status :target-type speaker-status
                                      :member-name "Status")
                                     (created-at :target-type timestamp
                                      :member-name "CreatedAt")
                                     (updated-at :target-type timestamp
                                      :member-name "UpdatedAt")
                                     (last-accessed-at :target-type timestamp
                                      :member-name "LastAccessedAt"))
                                    (:shape-name "SpeakerSummary"))

(smithy/sdk/shapes:define-structure start-fraudster-registration-job-request
                                    common-lisp:nil
                                    ((client-token :target-type
                                      client-token-string :member-name
                                      "ClientToken")
                                     (job-name :target-type job-name
                                      :member-name "JobName")
                                     (domain-id :target-type domain-id
                                      :required common-lisp:t :member-name
                                      "DomainId")
                                     (data-access-role-arn :target-type
                                      iam-role-arn :required common-lisp:t
                                      :member-name "DataAccessRoleArn")
                                     (registration-config :target-type
                                      registration-config :member-name
                                      "RegistrationConfig")
                                     (input-data-config :target-type
                                      input-data-config :required common-lisp:t
                                      :member-name "InputDataConfig")
                                     (output-data-config :target-type
                                      output-data-config :required
                                      common-lisp:t :member-name
                                      "OutputDataConfig"))
                                    (:shape-name
                                     "StartFraudsterRegistrationJobRequest"))

(smithy/sdk/shapes:define-structure start-fraudster-registration-job-response
                                    common-lisp:nil
                                    ((job :target-type
                                      fraudster-registration-job :member-name
                                      "Job"))
                                    (:shape-name
                                     "StartFraudsterRegistrationJobResponse"))

(smithy/sdk/shapes:define-structure start-speaker-enrollment-job-request
                                    common-lisp:nil
                                    ((client-token :target-type
                                      client-token-string :member-name
                                      "ClientToken")
                                     (job-name :target-type job-name
                                      :member-name "JobName")
                                     (domain-id :target-type domain-id
                                      :required common-lisp:t :member-name
                                      "DomainId")
                                     (data-access-role-arn :target-type
                                      iam-role-arn :required common-lisp:t
                                      :member-name "DataAccessRoleArn")
                                     (enrollment-config :target-type
                                      enrollment-config :member-name
                                      "EnrollmentConfig")
                                     (input-data-config :target-type
                                      input-data-config :required common-lisp:t
                                      :member-name "InputDataConfig")
                                     (output-data-config :target-type
                                      output-data-config :required
                                      common-lisp:t :member-name
                                      "OutputDataConfig"))
                                    (:shape-name
                                     "StartSpeakerEnrollmentJobRequest"))

(smithy/sdk/shapes:define-structure start-speaker-enrollment-job-response
                                    common-lisp:nil
                                    ((job :target-type speaker-enrollment-job
                                      :member-name "Job"))
                                    (:shape-name
                                     "StartSpeakerEnrollmentJobResponse"))

(smithy/sdk/shapes:define-type streaming-status smithy/sdk/smithy-types:string)

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

(smithy/sdk/shapes:define-structure tag-resource-request common-lisp:nil
                                    ((resource-arn :target-type
                                      amazon-resource-name :required
                                      common-lisp:t :member-name "ResourceArn")
                                     (tags :target-type tag-list :required
                                      common-lisp:t :member-name "Tags"))
                                    (:shape-name "TagResourceRequest"))

(smithy/sdk/shapes:define-structure tag-resource-response common-lisp:nil
                                    common-lisp:nil
                                    (:shape-name "TagResourceResponse"))

(smithy/sdk/shapes:define-type tag-value smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error throttling-exception common-lisp:nil
                                ((message :target-type string :member-name
                                  "Message"))
                                (:shape-name "ThrottlingException")
                                (:error-code 429) (:base-class voice-id-error))

(smithy/sdk/shapes:define-type timestamp smithy/sdk/smithy-types:timestamp)

(smithy/sdk/shapes:define-type unique-id-large smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure untag-resource-request common-lisp:nil
                                    ((resource-arn :target-type
                                      amazon-resource-name :required
                                      common-lisp:t :member-name "ResourceArn")
                                     (tag-keys :target-type tag-key-list
                                      :required common-lisp:t :member-name
                                      "TagKeys"))
                                    (:shape-name "UntagResourceRequest"))

(smithy/sdk/shapes:define-structure untag-resource-response common-lisp:nil
                                    common-lisp:nil
                                    (:shape-name "UntagResourceResponse"))

(smithy/sdk/shapes:define-structure update-domain-request common-lisp:nil
                                    ((domain-id :target-type domain-id
                                      :required common-lisp:t :member-name
                                      "DomainId")
                                     (name :target-type domain-name :required
                                      common-lisp:t :member-name "Name")
                                     (description :target-type description
                                      :member-name "Description")
                                     (server-side-encryption-configuration
                                      :target-type
                                      server-side-encryption-configuration
                                      :required common-lisp:t :member-name
                                      "ServerSideEncryptionConfiguration"))
                                    (:shape-name "UpdateDomainRequest"))

(smithy/sdk/shapes:define-structure update-domain-response common-lisp:nil
                                    ((domain :target-type domain :member-name
                                      "Domain"))
                                    (:shape-name "UpdateDomainResponse"))

(smithy/sdk/shapes:define-structure update-watchlist-request common-lisp:nil
                                    ((domain-id :target-type domain-id
                                      :required common-lisp:t :member-name
                                      "DomainId")
                                     (watchlist-id :target-type watchlist-id
                                      :required common-lisp:t :member-name
                                      "WatchlistId")
                                     (name :target-type watchlist-name
                                      :member-name "Name")
                                     (description :target-type
                                      watchlist-description :member-name
                                      "Description"))
                                    (:shape-name "UpdateWatchlistRequest"))

(smithy/sdk/shapes:define-structure update-watchlist-response common-lisp:nil
                                    ((watchlist :target-type watchlist
                                      :member-name "Watchlist"))
                                    (:shape-name "UpdateWatchlistResponse"))

(smithy/sdk/shapes:define-error validation-exception common-lisp:nil
                                ((message :target-type string :member-name
                                  "Message"))
                                (:shape-name "ValidationException")
                                (:error-code 400) (:base-class voice-id-error))

(smithy/sdk/shapes:define-structure voice-spoofing-risk common-lisp:nil
                                    ((risk-score :target-type score :required
                                      common-lisp:t :member-name "RiskScore"))
                                    (:shape-name "VoiceSpoofingRisk"))

(smithy/sdk/shapes:define-structure watchlist common-lisp:nil
                                    ((domain-id :target-type domain-id
                                      :member-name "DomainId")
                                     (watchlist-id :target-type watchlist-id
                                      :member-name "WatchlistId")
                                     (name :target-type watchlist-name
                                      :member-name "Name")
                                     (description :target-type
                                      watchlist-description :member-name
                                      "Description")
                                     (default-watchlist :target-type boolean
                                      :member-name "DefaultWatchlist")
                                     (created-at :target-type timestamp
                                      :member-name "CreatedAt")
                                     (updated-at :target-type timestamp
                                      :member-name "UpdatedAt"))
                                    (:shape-name "Watchlist"))

(smithy/sdk/shapes:define-type watchlist-description
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure watchlist-details common-lisp:nil
                                    ((default-watchlist-id :target-type
                                      watchlist-id :required common-lisp:t
                                      :member-name "DefaultWatchlistId"))
                                    (:shape-name "WatchlistDetails"))

(smithy/sdk/shapes:define-type watchlist-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type watchlist-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list watchlist-summaries :member watchlist-summary)

(smithy/sdk/shapes:define-structure watchlist-summary common-lisp:nil
                                    ((domain-id :target-type domain-id
                                      :member-name "DomainId")
                                     (watchlist-id :target-type watchlist-id
                                      :member-name "WatchlistId")
                                     (name :target-type watchlist-name
                                      :member-name "Name")
                                     (description :target-type
                                      watchlist-description :member-name
                                      "Description")
                                     (default-watchlist :target-type boolean
                                      :member-name "DefaultWatchlist")
                                     (created-at :target-type timestamp
                                      :member-name "CreatedAt")
                                     (updated-at :target-type timestamp
                                      :member-name "UpdatedAt"))
                                    (:shape-name "WatchlistSummary"))

(smithy/sdk/operation:define-operation associate-fraudster :shape-name
                                       "AssociateFraudster" :input
                                       associate-fraudster-request :output
                                       associate-fraudster-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation create-domain :shape-name "CreateDomain"
                                       :input create-domain-request :output
                                       create-domain-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation create-watchlist :shape-name
                                       "CreateWatchlist" :input
                                       create-watchlist-request :output
                                       create-watchlist-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation delete-domain :shape-name "DeleteDomain"
                                       :input delete-domain-request :output
                                       common-lisp:null :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation delete-fraudster :shape-name
                                       "DeleteFraudster" :input
                                       delete-fraudster-request :output
                                       common-lisp:null :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation delete-speaker :shape-name
                                       "DeleteSpeaker" :input
                                       delete-speaker-request :output
                                       common-lisp:null :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation delete-watchlist :shape-name
                                       "DeleteWatchlist" :input
                                       delete-watchlist-request :output
                                       common-lisp:null :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation describe-domain :shape-name
                                       "DescribeDomain" :input
                                       describe-domain-request :output
                                       describe-domain-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation describe-fraudster :shape-name
                                       "DescribeFraudster" :input
                                       describe-fraudster-request :output
                                       describe-fraudster-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation describe-fraudster-registration-job
                                       :shape-name
                                       "DescribeFraudsterRegistrationJob"
                                       :input
                                       describe-fraudster-registration-job-request
                                       :output
                                       describe-fraudster-registration-job-response
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation describe-speaker :shape-name
                                       "DescribeSpeaker" :input
                                       describe-speaker-request :output
                                       describe-speaker-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation describe-speaker-enrollment-job
                                       :shape-name
                                       "DescribeSpeakerEnrollmentJob" :input
                                       describe-speaker-enrollment-job-request
                                       :output
                                       describe-speaker-enrollment-job-response
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation describe-watchlist :shape-name
                                       "DescribeWatchlist" :input
                                       describe-watchlist-request :output
                                       describe-watchlist-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation disassociate-fraudster :shape-name
                                       "DisassociateFraudster" :input
                                       disassociate-fraudster-request :output
                                       disassociate-fraudster-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation evaluate-session :shape-name
                                       "EvaluateSession" :input
                                       evaluate-session-request :output
                                       evaluate-session-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation list-domains :shape-name "ListDomains"
                                       :input list-domains-request :output
                                       list-domains-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation list-fraudster-registration-jobs
                                       :shape-name
                                       "ListFraudsterRegistrationJobs" :input
                                       list-fraudster-registration-jobs-request
                                       :output
                                       list-fraudster-registration-jobs-response
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation list-fraudsters :shape-name
                                       "ListFraudsters" :input
                                       list-fraudsters-request :output
                                       list-fraudsters-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation list-speaker-enrollment-jobs :shape-name
                                       "ListSpeakerEnrollmentJobs" :input
                                       list-speaker-enrollment-jobs-request
                                       :output
                                       list-speaker-enrollment-jobs-response
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation list-speakers :shape-name "ListSpeakers"
                                       :input list-speakers-request :output
                                       list-speakers-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation list-tags-for-resource :shape-name
                                       "ListTagsForResource" :input
                                       list-tags-for-resource-request :output
                                       list-tags-for-resource-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation list-watchlists :shape-name
                                       "ListWatchlists" :input
                                       list-watchlists-request :output
                                       list-watchlists-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation opt-out-speaker :shape-name
                                       "OptOutSpeaker" :input
                                       opt-out-speaker-request :output
                                       opt-out-speaker-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation start-fraudster-registration-job
                                       :shape-name
                                       "StartFraudsterRegistrationJob" :input
                                       start-fraudster-registration-job-request
                                       :output
                                       start-fraudster-registration-job-response
                                       :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation start-speaker-enrollment-job :shape-name
                                       "StartSpeakerEnrollmentJob" :input
                                       start-speaker-enrollment-job-request
                                       :output
                                       start-speaker-enrollment-job-response
                                       :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation tag-resource :shape-name "TagResource"
                                       :input tag-resource-request :output
                                       tag-resource-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation untag-resource :shape-name
                                       "UntagResource" :input
                                       untag-resource-request :output
                                       untag-resource-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation update-domain :shape-name "UpdateDomain"
                                       :input update-domain-request :output
                                       update-domain-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation update-watchlist :shape-name
                                       "UpdateWatchlist" :input
                                       update-watchlist-request :output
                                       update-watchlist-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception))
