(uiop/package:define-package #:pira/transcribe (:use)
                             (:export #:absolute-time-range #:base-model-name
                              #:boolean #:clmlanguage-code
                              #:call-analytics-feature #:call-analytics-job
                              #:call-analytics-job-details
                              #:call-analytics-job-name
                              #:call-analytics-job-settings
                              #:call-analytics-job-status
                              #:call-analytics-job-summaries
                              #:call-analytics-job-summary
                              #:call-analytics-skipped-feature
                              #:call-analytics-skipped-feature-list
                              #:call-analytics-skipped-reason-code
                              #:category-name #:category-properties
                              #:category-properties-list #:channel-definition
                              #:channel-definitions #:channel-id
                              #:clinical-note-generation-settings
                              #:content-redaction
                              #:create-call-analytics-category
                              #:create-language-model
                              #:create-medical-vocabulary #:create-vocabulary
                              #:create-vocabulary-filter #:data-access-role-arn
                              #:date-time #:delete-call-analytics-category
                              #:delete-call-analytics-job
                              #:delete-language-model
                              #:delete-medical-scribe-job
                              #:delete-medical-transcription-job
                              #:delete-medical-vocabulary
                              #:delete-transcription-job #:delete-vocabulary
                              #:delete-vocabulary-filter
                              #:describe-language-model #:duration-in-seconds
                              #:failure-reason #:get-call-analytics-category
                              #:get-call-analytics-job #:get-medical-scribe-job
                              #:get-medical-transcription-job
                              #:get-medical-vocabulary #:get-transcription-job
                              #:get-vocabulary #:get-vocabulary-filter
                              #:identified-language-score #:input-data-config
                              #:input-type #:interruption-filter
                              #:job-execution-settings
                              #:kmsencryption-context-map #:kmskey-id
                              #:language-code #:language-code-item
                              #:language-code-list #:language-id-settings
                              #:language-id-settings-map #:language-model
                              #:language-options
                              #:list-call-analytics-categories
                              #:list-call-analytics-jobs #:list-language-models
                              #:list-medical-scribe-jobs
                              #:list-medical-transcription-jobs
                              #:list-medical-vocabularies
                              #:list-tags-for-resource
                              #:list-transcription-jobs #:list-vocabularies
                              #:list-vocabulary-filters #:max-alternatives
                              #:max-results #:max-speakers #:media
                              #:media-format #:media-sample-rate-hertz
                              #:medical-content-identification-type
                              #:medical-media-sample-rate-hertz
                              #:medical-scribe-channel-definition
                              #:medical-scribe-channel-definitions
                              #:medical-scribe-channel-id #:medical-scribe-job
                              #:medical-scribe-job-status
                              #:medical-scribe-job-summaries
                              #:medical-scribe-job-summary
                              #:medical-scribe-language-code
                              #:medical-scribe-note-template
                              #:medical-scribe-output
                              #:medical-scribe-participant-role
                              #:medical-scribe-settings #:medical-transcript
                              #:medical-transcription-job
                              #:medical-transcription-job-summaries
                              #:medical-transcription-job-summary
                              #:medical-transcription-setting #:model-name
                              #:model-settings #:model-status #:models
                              #:next-token #:non-empty-string
                              #:non-talk-time-filter #:output-bucket-name
                              #:output-key #:output-location-type
                              #:participant-role #:percentage #:phrase
                              #:phrases #:pii-entity-type #:pii-entity-types
                              #:redaction-output #:redaction-type
                              #:relative-time-range #:rule #:rule-list
                              #:sentiment-filter #:sentiment-value
                              #:sentiment-value-list #:settings #:specialty
                              #:start-call-analytics-job
                              #:start-medical-scribe-job
                              #:start-medical-transcription-job
                              #:start-transcription-job #:string
                              #:string-target-list #:subtitle-file-uris
                              #:subtitle-format #:subtitle-formats
                              #:subtitle-output-start-index #:subtitles
                              #:subtitles-output #:summarization #:tag
                              #:tag-key #:tag-key-list #:tag-list
                              #:tag-resource #:tag-value
                              #:timestamp-milliseconds #:toxicity-categories
                              #:toxicity-category #:toxicity-detection
                              #:toxicity-detection-settings #:transcribe
                              #:transcribe-arn #:transcript #:transcript-filter
                              #:transcript-filter-type #:transcription-job
                              #:transcription-job-name
                              #:transcription-job-status
                              #:transcription-job-summaries
                              #:transcription-job-summary #:type
                              #:untag-resource #:update-call-analytics-category
                              #:update-medical-vocabulary #:update-vocabulary
                              #:update-vocabulary-filter #:uri #:vocabularies
                              #:vocabulary-filter-info
                              #:vocabulary-filter-method
                              #:vocabulary-filter-name #:vocabulary-filters
                              #:vocabulary-info #:vocabulary-name
                              #:vocabulary-state #:word #:words))
(common-lisp:in-package #:pira/transcribe)

(smithy/sdk/service:define-service transcribe :shape-name "Transcribe" :version
                                   "2017-10-26" :title
                                   "Amazon Transcribe Service" :traits
                                   '(("aws.api#service"
                                      ("sdkId" . "Transcribe")
                                      ("arnNamespace" . "transcribe")
                                      ("cloudFormationName" . "Transcribe")
                                      ("cloudTrailEventSource"
                                       . "transcribe.amazonaws.com")
                                      ("endpointPrefix" . "transcribe"))
                                     ("aws.auth#sigv4" ("name" . "transcribe"))
                                     ("aws.protocols#awsJson1_1")))

(smithy/sdk/shapes:define-structure absolute-time-range common-lisp:nil
                                    ((start-time :target-type
                                      timestamp-milliseconds :member-name
                                      "StartTime")
                                     (end-time :target-type
                                      timestamp-milliseconds :member-name
                                      "EndTime")
                                     (first :target-type timestamp-milliseconds
                                      :member-name "First")
                                     (last :target-type timestamp-milliseconds
                                      :member-name "Last"))
                                    (:shape-name "AbsoluteTimeRange"))

(smithy/sdk/shapes:define-error bad-request-exception common-lisp:nil
                                ((message :target-type failure-reason
                                  :member-name "Message"))
                                (:shape-name "BadRequestException")
                                (:error-code 400))

(smithy/sdk/shapes:define-enum base-model-name
    common-lisp:nil
  (:narrow-band "NarrowBand")
  (:wide-band "WideBand"))

(smithy/sdk/shapes:define-type boolean smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-enum clmlanguage-code
    common-lisp:nil
  (:en-us "en-US")
  (:hi-in "hi-IN")
  (:es-us "es-US")
  (:en-gb "en-GB")
  (:en-au "en-AU")
  (:de-de "de-DE")
  (:ja-jp "ja-JP"))

(smithy/sdk/shapes:define-enum call-analytics-feature
    common-lisp:nil
  (:generative-summarization "GENERATIVE_SUMMARIZATION"))

(smithy/sdk/shapes:define-structure call-analytics-job common-lisp:nil
                                    ((call-analytics-job-name :target-type
                                      call-analytics-job-name :member-name
                                      "CallAnalyticsJobName")
                                     (call-analytics-job-status :target-type
                                      call-analytics-job-status :member-name
                                      "CallAnalyticsJobStatus")
                                     (call-analytics-job-details :target-type
                                      call-analytics-job-details :member-name
                                      "CallAnalyticsJobDetails")
                                     (language-code :target-type language-code
                                      :member-name "LanguageCode")
                                     (media-sample-rate-hertz :target-type
                                      media-sample-rate-hertz :member-name
                                      "MediaSampleRateHertz")
                                     (media-format :target-type media-format
                                      :member-name "MediaFormat")
                                     (media :target-type media :member-name
                                      "Media")
                                     (transcript :target-type transcript
                                      :member-name "Transcript")
                                     (start-time :target-type date-time
                                      :member-name "StartTime")
                                     (creation-time :target-type date-time
                                      :member-name "CreationTime")
                                     (completion-time :target-type date-time
                                      :member-name "CompletionTime")
                                     (failure-reason :target-type
                                      failure-reason :member-name
                                      "FailureReason")
                                     (data-access-role-arn :target-type
                                      data-access-role-arn :member-name
                                      "DataAccessRoleArn")
                                     (identified-language-score :target-type
                                      identified-language-score :member-name
                                      "IdentifiedLanguageScore")
                                     (settings :target-type
                                      call-analytics-job-settings :member-name
                                      "Settings")
                                     (channel-definitions :target-type
                                      channel-definitions :member-name
                                      "ChannelDefinitions")
                                     (tags :target-type tag-list :member-name
                                      "Tags"))
                                    (:shape-name "CallAnalyticsJob"))

(smithy/sdk/shapes:define-structure call-analytics-job-details common-lisp:nil
                                    ((skipped :target-type
                                      call-analytics-skipped-feature-list
                                      :member-name "Skipped"))
                                    (:shape-name "CallAnalyticsJobDetails"))

(smithy/sdk/shapes:define-type call-analytics-job-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure call-analytics-job-settings common-lisp:nil
                                    ((vocabulary-name :target-type
                                      vocabulary-name :member-name
                                      "VocabularyName")
                                     (vocabulary-filter-name :target-type
                                      vocabulary-filter-name :member-name
                                      "VocabularyFilterName")
                                     (vocabulary-filter-method :target-type
                                      vocabulary-filter-method :member-name
                                      "VocabularyFilterMethod")
                                     (language-model-name :target-type
                                      model-name :member-name
                                      "LanguageModelName")
                                     (content-redaction :target-type
                                      content-redaction :member-name
                                      "ContentRedaction")
                                     (language-options :target-type
                                      language-options :member-name
                                      "LanguageOptions")
                                     (language-id-settings :target-type
                                      language-id-settings-map :member-name
                                      "LanguageIdSettings")
                                     (summarization :target-type summarization
                                      :member-name "Summarization"))
                                    (:shape-name "CallAnalyticsJobSettings"))

(smithy/sdk/shapes:define-enum call-analytics-job-status
    common-lisp:nil
  (:queued "QUEUED")
  (:in-progress "IN_PROGRESS")
  (:failed "FAILED")
  (:completed "COMPLETED"))

(smithy/sdk/shapes:define-list call-analytics-job-summaries :member
                               call-analytics-job-summary)

(smithy/sdk/shapes:define-structure call-analytics-job-summary common-lisp:nil
                                    ((call-analytics-job-name :target-type
                                      call-analytics-job-name :member-name
                                      "CallAnalyticsJobName")
                                     (creation-time :target-type date-time
                                      :member-name "CreationTime")
                                     (start-time :target-type date-time
                                      :member-name "StartTime")
                                     (completion-time :target-type date-time
                                      :member-name "CompletionTime")
                                     (language-code :target-type language-code
                                      :member-name "LanguageCode")
                                     (call-analytics-job-status :target-type
                                      call-analytics-job-status :member-name
                                      "CallAnalyticsJobStatus")
                                     (call-analytics-job-details :target-type
                                      call-analytics-job-details :member-name
                                      "CallAnalyticsJobDetails")
                                     (failure-reason :target-type
                                      failure-reason :member-name
                                      "FailureReason"))
                                    (:shape-name "CallAnalyticsJobSummary"))

(smithy/sdk/shapes:define-structure call-analytics-skipped-feature
                                    common-lisp:nil
                                    ((feature :target-type
                                      call-analytics-feature :member-name
                                      "Feature")
                                     (reason-code :target-type
                                      call-analytics-skipped-reason-code
                                      :member-name "ReasonCode")
                                     (message :target-type string :member-name
                                      "Message"))
                                    (:shape-name "CallAnalyticsSkippedFeature"))

(smithy/sdk/shapes:define-list call-analytics-skipped-feature-list :member
                               call-analytics-skipped-feature)

(smithy/sdk/shapes:define-enum call-analytics-skipped-reason-code
    common-lisp:nil
  (:insufficient-conversation-content "INSUFFICIENT_CONVERSATION_CONTENT")
  (:failed-safety-guidelines "FAILED_SAFETY_GUIDELINES"))

(smithy/sdk/shapes:define-type category-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure category-properties common-lisp:nil
                                    ((category-name :target-type category-name
                                      :member-name "CategoryName")
                                     (rules :target-type rule-list :member-name
                                      "Rules")
                                     (create-time :target-type date-time
                                      :member-name "CreateTime")
                                     (last-update-time :target-type date-time
                                      :member-name "LastUpdateTime")
                                     (tags :target-type tag-list :member-name
                                      "Tags")
                                     (input-type :target-type input-type
                                      :member-name "InputType"))
                                    (:shape-name "CategoryProperties"))

(smithy/sdk/shapes:define-list category-properties-list :member
                               category-properties)

(smithy/sdk/shapes:define-structure channel-definition common-lisp:nil
                                    ((channel-id :target-type channel-id
                                      :member-name "ChannelId")
                                     (participant-role :target-type
                                      participant-role :member-name
                                      "ParticipantRole"))
                                    (:shape-name "ChannelDefinition"))

(smithy/sdk/shapes:define-list channel-definitions :member channel-definition)

(smithy/sdk/shapes:define-type channel-id smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-structure clinical-note-generation-settings
                                    common-lisp:nil
                                    ((note-template :target-type
                                      medical-scribe-note-template :member-name
                                      "NoteTemplate"))
                                    (:shape-name
                                     "ClinicalNoteGenerationSettings"))

(smithy/sdk/shapes:define-error conflict-exception common-lisp:nil
                                ((message :target-type string :member-name
                                  "Message"))
                                (:shape-name "ConflictException")
                                (:error-code 409))

(smithy/sdk/shapes:define-structure content-redaction common-lisp:nil
                                    ((redaction-type :target-type
                                      redaction-type :required common-lisp:t
                                      :member-name "RedactionType")
                                     (redaction-output :target-type
                                      redaction-output :required common-lisp:t
                                      :member-name "RedactionOutput")
                                     (pii-entity-types :target-type
                                      pii-entity-types :member-name
                                      "PiiEntityTypes"))
                                    (:shape-name "ContentRedaction"))

(smithy/sdk/shapes:define-input create-call-analytics-category-request
                                common-lisp:nil
                                ((category-name :target-type category-name
                                  :required common-lisp:t :member-name
                                  "CategoryName" :http-label common-lisp:t)
                                 (rules :target-type rule-list :required
                                  common-lisp:t :member-name "Rules")
                                 (tags :target-type tag-list :member-name
                                  "Tags")
                                 (input-type :target-type input-type
                                  :member-name "InputType"))
                                (:shape-name
                                 "CreateCallAnalyticsCategoryRequest"))

(smithy/sdk/shapes:define-output create-call-analytics-category-response
                                 common-lisp:nil
                                 ((category-properties :target-type
                                   category-properties :member-name
                                   "CategoryProperties"))
                                 (:shape-name
                                  "CreateCallAnalyticsCategoryResponse"))

(smithy/sdk/shapes:define-input create-language-model-request common-lisp:nil
                                ((language-code :target-type clmlanguage-code
                                  :required common-lisp:t :member-name
                                  "LanguageCode")
                                 (base-model-name :target-type base-model-name
                                  :required common-lisp:t :member-name
                                  "BaseModelName")
                                 (model-name :target-type model-name :required
                                  common-lisp:t :member-name "ModelName"
                                  :http-label common-lisp:t)
                                 (input-data-config :target-type
                                  input-data-config :required common-lisp:t
                                  :member-name "InputDataConfig")
                                 (tags :target-type tag-list :member-name
                                  "Tags"))
                                (:shape-name "CreateLanguageModelRequest"))

(smithy/sdk/shapes:define-output create-language-model-response common-lisp:nil
                                 ((language-code :target-type clmlanguage-code
                                   :member-name "LanguageCode")
                                  (base-model-name :target-type base-model-name
                                   :member-name "BaseModelName")
                                  (model-name :target-type model-name
                                   :member-name "ModelName")
                                  (input-data-config :target-type
                                   input-data-config :member-name
                                   "InputDataConfig")
                                  (model-status :target-type model-status
                                   :member-name "ModelStatus"))
                                 (:shape-name "CreateLanguageModelResponse"))

(smithy/sdk/shapes:define-input create-medical-vocabulary-request
                                common-lisp:nil
                                ((vocabulary-name :target-type vocabulary-name
                                  :required common-lisp:t :member-name
                                  "VocabularyName" :http-label common-lisp:t)
                                 (language-code :target-type language-code
                                  :required common-lisp:t :member-name
                                  "LanguageCode")
                                 (vocabulary-file-uri :target-type uri
                                  :required common-lisp:t :member-name
                                  "VocabularyFileUri")
                                 (tags :target-type tag-list :member-name
                                  "Tags"))
                                (:shape-name "CreateMedicalVocabularyRequest"))

(smithy/sdk/shapes:define-output create-medical-vocabulary-response
                                 common-lisp:nil
                                 ((vocabulary-name :target-type vocabulary-name
                                   :member-name "VocabularyName")
                                  (language-code :target-type language-code
                                   :member-name "LanguageCode")
                                  (vocabulary-state :target-type
                                   vocabulary-state :member-name
                                   "VocabularyState")
                                  (last-modified-time :target-type date-time
                                   :member-name "LastModifiedTime")
                                  (failure-reason :target-type failure-reason
                                   :member-name "FailureReason"))
                                 (:shape-name
                                  "CreateMedicalVocabularyResponse"))

(smithy/sdk/shapes:define-input create-vocabulary-filter-request
                                common-lisp:nil
                                ((vocabulary-filter-name :target-type
                                  vocabulary-filter-name :required
                                  common-lisp:t :member-name
                                  "VocabularyFilterName" :http-label
                                  common-lisp:t)
                                 (language-code :target-type language-code
                                  :required common-lisp:t :member-name
                                  "LanguageCode")
                                 (words :target-type words :member-name
                                  "Words")
                                 (vocabulary-filter-file-uri :target-type uri
                                  :member-name "VocabularyFilterFileUri")
                                 (tags :target-type tag-list :member-name
                                  "Tags")
                                 (data-access-role-arn :target-type
                                  data-access-role-arn :member-name
                                  "DataAccessRoleArn"))
                                (:shape-name "CreateVocabularyFilterRequest"))

(smithy/sdk/shapes:define-output create-vocabulary-filter-response
                                 common-lisp:nil
                                 ((vocabulary-filter-name :target-type
                                   vocabulary-filter-name :member-name
                                   "VocabularyFilterName")
                                  (language-code :target-type language-code
                                   :member-name "LanguageCode")
                                  (last-modified-time :target-type date-time
                                   :member-name "LastModifiedTime"))
                                 (:shape-name "CreateVocabularyFilterResponse"))

(smithy/sdk/shapes:define-input create-vocabulary-request common-lisp:nil
                                ((vocabulary-name :target-type vocabulary-name
                                  :required common-lisp:t :member-name
                                  "VocabularyName" :http-label common-lisp:t)
                                 (language-code :target-type language-code
                                  :required common-lisp:t :member-name
                                  "LanguageCode")
                                 (phrases :target-type phrases :member-name
                                  "Phrases")
                                 (vocabulary-file-uri :target-type uri
                                  :member-name "VocabularyFileUri")
                                 (tags :target-type tag-list :member-name
                                  "Tags")
                                 (data-access-role-arn :target-type
                                  data-access-role-arn :member-name
                                  "DataAccessRoleArn"))
                                (:shape-name "CreateVocabularyRequest"))

(smithy/sdk/shapes:define-output create-vocabulary-response common-lisp:nil
                                 ((vocabulary-name :target-type vocabulary-name
                                   :member-name "VocabularyName")
                                  (language-code :target-type language-code
                                   :member-name "LanguageCode")
                                  (vocabulary-state :target-type
                                   vocabulary-state :member-name
                                   "VocabularyState")
                                  (last-modified-time :target-type date-time
                                   :member-name "LastModifiedTime")
                                  (failure-reason :target-type failure-reason
                                   :member-name "FailureReason"))
                                 (:shape-name "CreateVocabularyResponse"))

(smithy/sdk/shapes:define-type data-access-role-arn
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type date-time smithy/sdk/smithy-types:timestamp)

(smithy/sdk/shapes:define-input delete-call-analytics-category-request
                                common-lisp:nil
                                ((category-name :target-type category-name
                                  :required common-lisp:t :member-name
                                  "CategoryName" :http-label common-lisp:t))
                                (:shape-name
                                 "DeleteCallAnalyticsCategoryRequest"))

(smithy/sdk/shapes:define-output delete-call-analytics-category-response
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name
                                  "DeleteCallAnalyticsCategoryResponse"))

(smithy/sdk/shapes:define-input delete-call-analytics-job-request
                                common-lisp:nil
                                ((call-analytics-job-name :target-type
                                  call-analytics-job-name :required
                                  common-lisp:t :member-name
                                  "CallAnalyticsJobName" :http-label
                                  common-lisp:t))
                                (:shape-name "DeleteCallAnalyticsJobRequest"))

(smithy/sdk/shapes:define-output delete-call-analytics-job-response
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name "DeleteCallAnalyticsJobResponse"))

(smithy/sdk/shapes:define-input delete-language-model-request common-lisp:nil
                                ((model-name :target-type model-name :required
                                  common-lisp:t :member-name "ModelName"
                                  :http-label common-lisp:t))
                                (:shape-name "DeleteLanguageModelRequest"))

(smithy/sdk/shapes:define-input delete-medical-scribe-job-request
                                common-lisp:nil
                                ((medical-scribe-job-name :target-type
                                  transcription-job-name :required
                                  common-lisp:t :member-name
                                  "MedicalScribeJobName" :http-label
                                  common-lisp:t))
                                (:shape-name "DeleteMedicalScribeJobRequest"))

(smithy/sdk/shapes:define-input delete-medical-transcription-job-request
                                common-lisp:nil
                                ((medical-transcription-job-name :target-type
                                  transcription-job-name :required
                                  common-lisp:t :member-name
                                  "MedicalTranscriptionJobName" :http-label
                                  common-lisp:t))
                                (:shape-name
                                 "DeleteMedicalTranscriptionJobRequest"))

(smithy/sdk/shapes:define-input delete-medical-vocabulary-request
                                common-lisp:nil
                                ((vocabulary-name :target-type vocabulary-name
                                  :required common-lisp:t :member-name
                                  "VocabularyName" :http-label common-lisp:t))
                                (:shape-name "DeleteMedicalVocabularyRequest"))

(smithy/sdk/shapes:define-input delete-transcription-job-request
                                common-lisp:nil
                                ((transcription-job-name :target-type
                                  transcription-job-name :required
                                  common-lisp:t :member-name
                                  "TranscriptionJobName" :http-label
                                  common-lisp:t))
                                (:shape-name "DeleteTranscriptionJobRequest"))

(smithy/sdk/shapes:define-input delete-vocabulary-filter-request
                                common-lisp:nil
                                ((vocabulary-filter-name :target-type
                                  vocabulary-filter-name :required
                                  common-lisp:t :member-name
                                  "VocabularyFilterName" :http-label
                                  common-lisp:t))
                                (:shape-name "DeleteVocabularyFilterRequest"))

(smithy/sdk/shapes:define-input delete-vocabulary-request common-lisp:nil
                                ((vocabulary-name :target-type vocabulary-name
                                  :required common-lisp:t :member-name
                                  "VocabularyName" :http-label common-lisp:t))
                                (:shape-name "DeleteVocabularyRequest"))

(smithy/sdk/shapes:define-input describe-language-model-request common-lisp:nil
                                ((model-name :target-type model-name :required
                                  common-lisp:t :member-name "ModelName"
                                  :http-label common-lisp:t))
                                (:shape-name "DescribeLanguageModelRequest"))

(smithy/sdk/shapes:define-output describe-language-model-response
                                 common-lisp:nil
                                 ((language-model :target-type language-model
                                   :member-name "LanguageModel"))
                                 (:shape-name "DescribeLanguageModelResponse"))

(smithy/sdk/shapes:define-type duration-in-seconds
                               smithy/sdk/smithy-types:float)

(smithy/sdk/shapes:define-type failure-reason smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input get-call-analytics-category-request
                                common-lisp:nil
                                ((category-name :target-type category-name
                                  :required common-lisp:t :member-name
                                  "CategoryName" :http-label common-lisp:t))
                                (:shape-name "GetCallAnalyticsCategoryRequest"))

(smithy/sdk/shapes:define-output get-call-analytics-category-response
                                 common-lisp:nil
                                 ((category-properties :target-type
                                   category-properties :member-name
                                   "CategoryProperties"))
                                 (:shape-name
                                  "GetCallAnalyticsCategoryResponse"))

(smithy/sdk/shapes:define-input get-call-analytics-job-request common-lisp:nil
                                ((call-analytics-job-name :target-type
                                  call-analytics-job-name :required
                                  common-lisp:t :member-name
                                  "CallAnalyticsJobName" :http-label
                                  common-lisp:t))
                                (:shape-name "GetCallAnalyticsJobRequest"))

(smithy/sdk/shapes:define-output get-call-analytics-job-response
                                 common-lisp:nil
                                 ((call-analytics-job :target-type
                                   call-analytics-job :member-name
                                   "CallAnalyticsJob"))
                                 (:shape-name "GetCallAnalyticsJobResponse"))

(smithy/sdk/shapes:define-input get-medical-scribe-job-request common-lisp:nil
                                ((medical-scribe-job-name :target-type
                                  transcription-job-name :required
                                  common-lisp:t :member-name
                                  "MedicalScribeJobName" :http-label
                                  common-lisp:t))
                                (:shape-name "GetMedicalScribeJobRequest"))

(smithy/sdk/shapes:define-output get-medical-scribe-job-response
                                 common-lisp:nil
                                 ((medical-scribe-job :target-type
                                   medical-scribe-job :member-name
                                   "MedicalScribeJob"))
                                 (:shape-name "GetMedicalScribeJobResponse"))

(smithy/sdk/shapes:define-input get-medical-transcription-job-request
                                common-lisp:nil
                                ((medical-transcription-job-name :target-type
                                  transcription-job-name :required
                                  common-lisp:t :member-name
                                  "MedicalTranscriptionJobName" :http-label
                                  common-lisp:t))
                                (:shape-name
                                 "GetMedicalTranscriptionJobRequest"))

(smithy/sdk/shapes:define-output get-medical-transcription-job-response
                                 common-lisp:nil
                                 ((medical-transcription-job :target-type
                                   medical-transcription-job :member-name
                                   "MedicalTranscriptionJob"))
                                 (:shape-name
                                  "GetMedicalTranscriptionJobResponse"))

(smithy/sdk/shapes:define-input get-medical-vocabulary-request common-lisp:nil
                                ((vocabulary-name :target-type vocabulary-name
                                  :required common-lisp:t :member-name
                                  "VocabularyName" :http-label common-lisp:t))
                                (:shape-name "GetMedicalVocabularyRequest"))

(smithy/sdk/shapes:define-output get-medical-vocabulary-response
                                 common-lisp:nil
                                 ((vocabulary-name :target-type vocabulary-name
                                   :member-name "VocabularyName")
                                  (language-code :target-type language-code
                                   :member-name "LanguageCode")
                                  (vocabulary-state :target-type
                                   vocabulary-state :member-name
                                   "VocabularyState")
                                  (last-modified-time :target-type date-time
                                   :member-name "LastModifiedTime")
                                  (failure-reason :target-type failure-reason
                                   :member-name "FailureReason")
                                  (download-uri :target-type uri :member-name
                                   "DownloadUri"))
                                 (:shape-name "GetMedicalVocabularyResponse"))

(smithy/sdk/shapes:define-input get-transcription-job-request common-lisp:nil
                                ((transcription-job-name :target-type
                                  transcription-job-name :required
                                  common-lisp:t :member-name
                                  "TranscriptionJobName" :http-label
                                  common-lisp:t))
                                (:shape-name "GetTranscriptionJobRequest"))

(smithy/sdk/shapes:define-output get-transcription-job-response common-lisp:nil
                                 ((transcription-job :target-type
                                   transcription-job :member-name
                                   "TranscriptionJob"))
                                 (:shape-name "GetTranscriptionJobResponse"))

(smithy/sdk/shapes:define-input get-vocabulary-filter-request common-lisp:nil
                                ((vocabulary-filter-name :target-type
                                  vocabulary-filter-name :required
                                  common-lisp:t :member-name
                                  "VocabularyFilterName" :http-label
                                  common-lisp:t))
                                (:shape-name "GetVocabularyFilterRequest"))

(smithy/sdk/shapes:define-output get-vocabulary-filter-response common-lisp:nil
                                 ((vocabulary-filter-name :target-type
                                   vocabulary-filter-name :member-name
                                   "VocabularyFilterName")
                                  (language-code :target-type language-code
                                   :member-name "LanguageCode")
                                  (last-modified-time :target-type date-time
                                   :member-name "LastModifiedTime")
                                  (download-uri :target-type uri :member-name
                                   "DownloadUri"))
                                 (:shape-name "GetVocabularyFilterResponse"))

(smithy/sdk/shapes:define-input get-vocabulary-request common-lisp:nil
                                ((vocabulary-name :target-type vocabulary-name
                                  :required common-lisp:t :member-name
                                  "VocabularyName" :http-label common-lisp:t))
                                (:shape-name "GetVocabularyRequest"))

(smithy/sdk/shapes:define-output get-vocabulary-response common-lisp:nil
                                 ((vocabulary-name :target-type vocabulary-name
                                   :member-name "VocabularyName")
                                  (language-code :target-type language-code
                                   :member-name "LanguageCode")
                                  (vocabulary-state :target-type
                                   vocabulary-state :member-name
                                   "VocabularyState")
                                  (last-modified-time :target-type date-time
                                   :member-name "LastModifiedTime")
                                  (failure-reason :target-type failure-reason
                                   :member-name "FailureReason")
                                  (download-uri :target-type uri :member-name
                                   "DownloadUri"))
                                 (:shape-name "GetVocabularyResponse"))

(smithy/sdk/shapes:define-type identified-language-score
                               smithy/sdk/smithy-types:float)

(smithy/sdk/shapes:define-structure input-data-config common-lisp:nil
                                    ((s3uri :target-type uri :required
                                      common-lisp:t :member-name "S3Uri")
                                     (tuning-data-s3uri :target-type uri
                                      :member-name "TuningDataS3Uri")
                                     (data-access-role-arn :target-type
                                      data-access-role-arn :required
                                      common-lisp:t :member-name
                                      "DataAccessRoleArn"))
                                    (:shape-name "InputDataConfig"))

(smithy/sdk/shapes:define-enum input-type
    common-lisp:nil
  (:real-time "REAL_TIME")
  (:post-call "POST_CALL"))

(smithy/sdk/shapes:define-error internal-failure-exception common-lisp:nil
                                ((message :target-type string :member-name
                                  "Message"))
                                (:shape-name "InternalFailureException")
                                (:error-code 500))

(smithy/sdk/shapes:define-structure interruption-filter common-lisp:nil
                                    ((threshold :target-type
                                      timestamp-milliseconds :member-name
                                      "Threshold")
                                     (participant-role :target-type
                                      participant-role :member-name
                                      "ParticipantRole")
                                     (absolute-time-range :target-type
                                      absolute-time-range :member-name
                                      "AbsoluteTimeRange")
                                     (relative-time-range :target-type
                                      relative-time-range :member-name
                                      "RelativeTimeRange")
                                     (negate :target-type boolean :member-name
                                      "Negate"))
                                    (:shape-name "InterruptionFilter"))

(smithy/sdk/shapes:define-structure job-execution-settings common-lisp:nil
                                    ((allow-deferred-execution :target-type
                                      boolean :member-name
                                      "AllowDeferredExecution")
                                     (data-access-role-arn :target-type
                                      data-access-role-arn :member-name
                                      "DataAccessRoleArn"))
                                    (:shape-name "JobExecutionSettings"))

(smithy/sdk/shapes:define-map kmsencryption-context-map :key non-empty-string
                              :value non-empty-string)

(smithy/sdk/shapes:define-type kmskey-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum language-code
    common-lisp:nil
  (:af-za "af-ZA")
  (:ar-ae "ar-AE")
  (:ar-sa "ar-SA")
  (:da-dk "da-DK")
  (:de-ch "de-CH")
  (:de-de "de-DE")
  (:en-ab "en-AB")
  (:en-au "en-AU")
  (:en-gb "en-GB")
  (:en-ie "en-IE")
  (:en-in "en-IN")
  (:en-us "en-US")
  (:en-wl "en-WL")
  (:es-es "es-ES")
  (:es-us "es-US")
  (:fa-ir "fa-IR")
  (:fr-ca "fr-CA")
  (:fr-fr "fr-FR")
  (:he-il "he-IL")
  (:hi-in "hi-IN")
  (:id-id "id-ID")
  (:it-it "it-IT")
  (:ja-jp "ja-JP")
  (:ko-kr "ko-KR")
  (:ms-my "ms-MY")
  (:nl-nl "nl-NL")
  (:pt-br "pt-BR")
  (:pt-pt "pt-PT")
  (:ru-ru "ru-RU")
  (:ta-in "ta-IN")
  (:te-in "te-IN")
  (:tr-tr "tr-TR")
  (:zh-cn "zh-CN")
  (:zh-tw "zh-TW")
  (:th-th "th-TH")
  (:en-za "en-ZA")
  (:en-nz "en-NZ")
  (:vi-vn "vi-VN")
  (:sv-se "sv-SE")
  (:ab-ge "ab-GE")
  (:ast-es "ast-ES")
  (:az-az "az-AZ")
  (:ba-ru "ba-RU")
  (:be-by "be-BY")
  (:bg-bg "bg-BG")
  (:bn-in "bn-IN")
  (:bs-ba "bs-BA")
  (:ca-es "ca-ES")
  (:ckb-iq "ckb-IQ")
  (:ckb-ir "ckb-IR")
  (:cs-cz "cs-CZ")
  (:cy-wl "cy-WL")
  (:el-gr "el-GR")
  (:et-ee "et-EE")
  (:et-et "et-ET")
  (:eu-es "eu-ES")
  (:fi-fi "fi-FI")
  (:gl-es "gl-ES")
  (:gu-in "gu-IN")
  (:ha-ng "ha-NG")
  (:hr-hr "hr-HR")
  (:hu-hu "hu-HU")
  (:hy-am "hy-AM")
  (:is-is "is-IS")
  (:ka-ge "ka-GE")
  (:kab-dz "kab-DZ")
  (:kk-kz "kk-KZ")
  (:kn-in "kn-IN")
  (:ky-kg "ky-KG")
  (:lg-in "lg-IN")
  (:lt-lt "lt-LT")
  (:lv-lv "lv-LV")
  (:mhr-ru "mhr-RU")
  (:mi-nz "mi-NZ")
  (:mk-mk "mk-MK")
  (:ml-in "ml-IN")
  (:mn-mn "mn-MN")
  (:mr-in "mr-IN")
  (:mt-mt "mt-MT")
  (:no-no "no-NO")
  (:or-in "or-IN")
  (:pa-in "pa-IN")
  (:pl-pl "pl-PL")
  (:ps-af "ps-AF")
  (:ro-ro "ro-RO")
  (:rw-rw "rw-RW")
  (:si-lk "si-LK")
  (:sk-sk "sk-SK")
  (:sl-si "sl-SI")
  (:so-so "so-SO")
  (:sr-rs "sr-RS")
  (:su-id "su-ID")
  (:sw-bi "sw-BI")
  (:sw-ke "sw-KE")
  (:sw-rw "sw-RW")
  (:sw-tz "sw-TZ")
  (:sw-ug "sw-UG")
  (:tl-ph "tl-PH")
  (:tt-ru "tt-RU")
  (:ug-cn "ug-CN")
  (:uk-ua "uk-UA")
  (:uz-uz "uz-UZ")
  (:wo-sn "wo-SN")
  (:zh-hk "zh-HK")
  (:zu-za "zu-ZA"))

(smithy/sdk/shapes:define-structure language-code-item common-lisp:nil
                                    ((language-code :target-type language-code
                                      :member-name "LanguageCode")
                                     (duration-in-seconds :target-type
                                      duration-in-seconds :member-name
                                      "DurationInSeconds"))
                                    (:shape-name "LanguageCodeItem"))

(smithy/sdk/shapes:define-list language-code-list :member language-code-item)

(smithy/sdk/shapes:define-structure language-id-settings common-lisp:nil
                                    ((vocabulary-name :target-type
                                      vocabulary-name :member-name
                                      "VocabularyName")
                                     (vocabulary-filter-name :target-type
                                      vocabulary-filter-name :member-name
                                      "VocabularyFilterName")
                                     (language-model-name :target-type
                                      model-name :member-name
                                      "LanguageModelName"))
                                    (:shape-name "LanguageIdSettings"))

(smithy/sdk/shapes:define-map language-id-settings-map :key language-code
                              :value language-id-settings)

(smithy/sdk/shapes:define-structure language-model common-lisp:nil
                                    ((model-name :target-type model-name
                                      :member-name "ModelName")
                                     (create-time :target-type date-time
                                      :member-name "CreateTime")
                                     (last-modified-time :target-type date-time
                                      :member-name "LastModifiedTime")
                                     (language-code :target-type
                                      clmlanguage-code :member-name
                                      "LanguageCode")
                                     (base-model-name :target-type
                                      base-model-name :member-name
                                      "BaseModelName")
                                     (model-status :target-type model-status
                                      :member-name "ModelStatus")
                                     (upgrade-availability :target-type boolean
                                      :member-name "UpgradeAvailability")
                                     (failure-reason :target-type
                                      failure-reason :member-name
                                      "FailureReason")
                                     (input-data-config :target-type
                                      input-data-config :member-name
                                      "InputDataConfig"))
                                    (:shape-name "LanguageModel"))

(smithy/sdk/shapes:define-list language-options :member language-code)

(smithy/sdk/shapes:define-error limit-exceeded-exception common-lisp:nil
                                ((message :target-type string :member-name
                                  "Message"))
                                (:shape-name "LimitExceededException")
                                (:error-code 429))

(smithy/sdk/shapes:define-input list-call-analytics-categories-request
                                common-lisp:nil
                                ((next-token :target-type next-token
                                  :member-name "NextToken" :http-query
                                  "NextToken")
                                 (max-results :target-type max-results
                                  :member-name "MaxResults" :http-query
                                  "MaxResults"))
                                (:shape-name
                                 "ListCallAnalyticsCategoriesRequest"))

(smithy/sdk/shapes:define-output list-call-analytics-categories-response
                                 common-lisp:nil
                                 ((next-token :target-type next-token
                                   :member-name "NextToken")
                                  (categories :target-type
                                   category-properties-list :member-name
                                   "Categories"))
                                 (:shape-name
                                  "ListCallAnalyticsCategoriesResponse"))

(smithy/sdk/shapes:define-input list-call-analytics-jobs-request
                                common-lisp:nil
                                ((status :target-type call-analytics-job-status
                                  :member-name "Status" :http-query "Status")
                                 (job-name-contains :target-type
                                  call-analytics-job-name :member-name
                                  "JobNameContains" :http-query
                                  "JobNameContains")
                                 (next-token :target-type next-token
                                  :member-name "NextToken" :http-query
                                  "NextToken")
                                 (max-results :target-type max-results
                                  :member-name "MaxResults" :http-query
                                  "MaxResults"))
                                (:shape-name "ListCallAnalyticsJobsRequest"))

(smithy/sdk/shapes:define-output list-call-analytics-jobs-response
                                 common-lisp:nil
                                 ((status :target-type
                                   call-analytics-job-status :member-name
                                   "Status")
                                  (next-token :target-type next-token
                                   :member-name "NextToken")
                                  (call-analytics-job-summaries :target-type
                                   call-analytics-job-summaries :member-name
                                   "CallAnalyticsJobSummaries"))
                                 (:shape-name "ListCallAnalyticsJobsResponse"))

(smithy/sdk/shapes:define-input list-language-models-request common-lisp:nil
                                ((status-equals :target-type model-status
                                  :member-name "StatusEquals" :http-query
                                  "         StatusEquals")
                                 (name-contains :target-type model-name
                                  :member-name "NameContains" :http-query
                                  "NameContains")
                                 (next-token :target-type next-token
                                  :member-name "NextToken" :http-query
                                  "NextToken")
                                 (max-results :target-type max-results
                                  :member-name "MaxResults" :http-query
                                  "MaxResults"))
                                (:shape-name "ListLanguageModelsRequest"))

(smithy/sdk/shapes:define-output list-language-models-response common-lisp:nil
                                 ((next-token :target-type next-token
                                   :member-name "NextToken")
                                  (models :target-type models :member-name
                                   "Models"))
                                 (:shape-name "ListLanguageModelsResponse"))

(smithy/sdk/shapes:define-input list-medical-scribe-jobs-request
                                common-lisp:nil
                                ((status :target-type medical-scribe-job-status
                                  :member-name "Status" :http-query "Status")
                                 (job-name-contains :target-type
                                  transcription-job-name :member-name
                                  "JobNameContains" :http-query
                                  "JobNameContains")
                                 (next-token :target-type next-token
                                  :member-name "NextToken" :http-query
                                  "NextToken")
                                 (max-results :target-type max-results
                                  :member-name "MaxResults" :http-query
                                  "MaxResults"))
                                (:shape-name "ListMedicalScribeJobsRequest"))

(smithy/sdk/shapes:define-output list-medical-scribe-jobs-response
                                 common-lisp:nil
                                 ((status :target-type
                                   medical-scribe-job-status :member-name
                                   "Status")
                                  (next-token :target-type next-token
                                   :member-name "NextToken")
                                  (medical-scribe-job-summaries :target-type
                                   medical-scribe-job-summaries :member-name
                                   "MedicalScribeJobSummaries"))
                                 (:shape-name "ListMedicalScribeJobsResponse"))

(smithy/sdk/shapes:define-input list-medical-transcription-jobs-request
                                common-lisp:nil
                                ((status :target-type transcription-job-status
                                  :member-name "Status" :http-query "Status")
                                 (job-name-contains :target-type
                                  transcription-job-name :member-name
                                  "JobNameContains" :http-query
                                  "JobNameContains")
                                 (next-token :target-type next-token
                                  :member-name "NextToken" :http-query
                                  "NextToken")
                                 (max-results :target-type max-results
                                  :member-name "MaxResults" :http-query
                                  "MaxResults"))
                                (:shape-name
                                 "ListMedicalTranscriptionJobsRequest"))

(smithy/sdk/shapes:define-output list-medical-transcription-jobs-response
                                 common-lisp:nil
                                 ((status :target-type transcription-job-status
                                   :member-name "Status")
                                  (next-token :target-type next-token
                                   :member-name "NextToken")
                                  (medical-transcription-job-summaries
                                   :target-type
                                   medical-transcription-job-summaries
                                   :member-name
                                   "MedicalTranscriptionJobSummaries"))
                                 (:shape-name
                                  "ListMedicalTranscriptionJobsResponse"))

(smithy/sdk/shapes:define-input list-medical-vocabularies-request
                                common-lisp:nil
                                ((next-token :target-type next-token
                                  :member-name "NextToken" :http-query
                                  "NextToken")
                                 (max-results :target-type max-results
                                  :member-name "MaxResults" :http-query
                                  "MaxResults")
                                 (state-equals :target-type vocabulary-state
                                  :member-name "StateEquals" :http-query
                                  "StateEquals")
                                 (name-contains :target-type vocabulary-name
                                  :member-name "NameContains" :http-query
                                  "NameContains"))
                                (:shape-name "ListMedicalVocabulariesRequest"))

(smithy/sdk/shapes:define-output list-medical-vocabularies-response
                                 common-lisp:nil
                                 ((status :target-type vocabulary-state
                                   :member-name "Status")
                                  (next-token :target-type next-token
                                   :member-name "NextToken")
                                  (vocabularies :target-type vocabularies
                                   :member-name "Vocabularies"))
                                 (:shape-name
                                  "ListMedicalVocabulariesResponse"))

(smithy/sdk/shapes:define-input list-tags-for-resource-request common-lisp:nil
                                ((resource-arn :target-type transcribe-arn
                                  :required common-lisp:t :member-name
                                  "ResourceArn" :http-label common-lisp:t))
                                (:shape-name "ListTagsForResourceRequest"))

(smithy/sdk/shapes:define-output list-tags-for-resource-response
                                 common-lisp:nil
                                 ((resource-arn :target-type transcribe-arn
                                   :member-name "ResourceArn")
                                  (tags :target-type tag-list :member-name
                                   "Tags"))
                                 (:shape-name "ListTagsForResourceResponse"))

(smithy/sdk/shapes:define-input list-transcription-jobs-request common-lisp:nil
                                ((status :target-type transcription-job-status
                                  :member-name "Status" :http-query "Status")
                                 (job-name-contains :target-type
                                  transcription-job-name :member-name
                                  "JobNameContains" :http-query
                                  "JobNameContains")
                                 (next-token :target-type next-token
                                  :member-name "NextToken" :http-query
                                  "NextToken")
                                 (max-results :target-type max-results
                                  :member-name "MaxResults" :http-query
                                  "MaxResults"))
                                (:shape-name "ListTranscriptionJobsRequest"))

(smithy/sdk/shapes:define-output list-transcription-jobs-response
                                 common-lisp:nil
                                 ((status :target-type transcription-job-status
                                   :member-name "Status")
                                  (next-token :target-type next-token
                                   :member-name "NextToken")
                                  (transcription-job-summaries :target-type
                                   transcription-job-summaries :member-name
                                   "TranscriptionJobSummaries"))
                                 (:shape-name "ListTranscriptionJobsResponse"))

(smithy/sdk/shapes:define-input list-vocabularies-request common-lisp:nil
                                ((next-token :target-type next-token
                                  :member-name "NextToken" :http-query
                                  "NextToken")
                                 (max-results :target-type max-results
                                  :member-name "MaxResults" :http-query
                                  "MaxResults")
                                 (state-equals :target-type vocabulary-state
                                  :member-name "StateEquals" :http-query
                                  "StateEquals")
                                 (name-contains :target-type vocabulary-name
                                  :member-name "NameContains" :http-query
                                  "NameContains"))
                                (:shape-name "ListVocabulariesRequest"))

(smithy/sdk/shapes:define-output list-vocabularies-response common-lisp:nil
                                 ((status :target-type vocabulary-state
                                   :member-name "Status")
                                  (next-token :target-type next-token
                                   :member-name "NextToken")
                                  (vocabularies :target-type vocabularies
                                   :member-name "Vocabularies"))
                                 (:shape-name "ListVocabulariesResponse"))

(smithy/sdk/shapes:define-input list-vocabulary-filters-request common-lisp:nil
                                ((next-token :target-type next-token
                                  :member-name "NextToken" :http-query
                                  "NextToken")
                                 (max-results :target-type max-results
                                  :member-name "MaxResults" :http-query
                                  "MaxResults")
                                 (name-contains :target-type
                                  vocabulary-filter-name :member-name
                                  "NameContains" :http-query "NameContains"))
                                (:shape-name "ListVocabularyFiltersRequest"))

(smithy/sdk/shapes:define-output list-vocabulary-filters-response
                                 common-lisp:nil
                                 ((next-token :target-type next-token
                                   :member-name "NextToken")
                                  (vocabulary-filters :target-type
                                   vocabulary-filters :member-name
                                   "VocabularyFilters"))
                                 (:shape-name "ListVocabularyFiltersResponse"))

(smithy/sdk/shapes:define-type max-alternatives smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type max-results smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type max-speakers smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-structure media common-lisp:nil
                                    ((media-file-uri :target-type uri
                                      :member-name "MediaFileUri")
                                     (redacted-media-file-uri :target-type uri
                                      :member-name "RedactedMediaFileUri"))
                                    (:shape-name "Media"))

(smithy/sdk/shapes:define-enum media-format
    common-lisp:nil
  (:mp3 "mp3")
  (:mp4 "mp4")
  (:wav "wav")
  (:flac "flac")
  (:ogg "ogg")
  (:amr "amr")
  (:webm "webm")
  (:m4a "m4a"))

(smithy/sdk/shapes:define-type media-sample-rate-hertz
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-enum medical-content-identification-type
    common-lisp:nil
  (:phi "PHI"))

(smithy/sdk/shapes:define-type medical-media-sample-rate-hertz
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-structure medical-scribe-channel-definition
                                    common-lisp:nil
                                    ((channel-id :target-type
                                      medical-scribe-channel-id :required
                                      common-lisp:t :member-name "ChannelId")
                                     (participant-role :target-type
                                      medical-scribe-participant-role :required
                                      common-lisp:t :member-name
                                      "ParticipantRole"))
                                    (:shape-name
                                     "MedicalScribeChannelDefinition"))

(smithy/sdk/shapes:define-list medical-scribe-channel-definitions :member
                               medical-scribe-channel-definition)

(smithy/sdk/shapes:define-type medical-scribe-channel-id
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-structure medical-scribe-job common-lisp:nil
                                    ((medical-scribe-job-name :target-type
                                      transcription-job-name :member-name
                                      "MedicalScribeJobName")
                                     (medical-scribe-job-status :target-type
                                      medical-scribe-job-status :member-name
                                      "MedicalScribeJobStatus")
                                     (language-code :target-type
                                      medical-scribe-language-code :member-name
                                      "LanguageCode")
                                     (media :target-type media :member-name
                                      "Media")
                                     (medical-scribe-output :target-type
                                      medical-scribe-output :member-name
                                      "MedicalScribeOutput")
                                     (start-time :target-type date-time
                                      :member-name "StartTime")
                                     (creation-time :target-type date-time
                                      :member-name "CreationTime")
                                     (completion-time :target-type date-time
                                      :member-name "CompletionTime")
                                     (failure-reason :target-type
                                      failure-reason :member-name
                                      "FailureReason")
                                     (settings :target-type
                                      medical-scribe-settings :member-name
                                      "Settings")
                                     (data-access-role-arn :target-type
                                      data-access-role-arn :member-name
                                      "DataAccessRoleArn")
                                     (channel-definitions :target-type
                                      medical-scribe-channel-definitions
                                      :member-name "ChannelDefinitions")
                                     (tags :target-type tag-list :member-name
                                      "Tags"))
                                    (:shape-name "MedicalScribeJob"))

(smithy/sdk/shapes:define-enum medical-scribe-job-status
    common-lisp:nil
  (:queued "QUEUED")
  (:in-progress "IN_PROGRESS")
  (:failed "FAILED")
  (:completed "COMPLETED"))

(smithy/sdk/shapes:define-list medical-scribe-job-summaries :member
                               medical-scribe-job-summary)

(smithy/sdk/shapes:define-structure medical-scribe-job-summary common-lisp:nil
                                    ((medical-scribe-job-name :target-type
                                      transcription-job-name :member-name
                                      "MedicalScribeJobName")
                                     (creation-time :target-type date-time
                                      :member-name "CreationTime")
                                     (start-time :target-type date-time
                                      :member-name "StartTime")
                                     (completion-time :target-type date-time
                                      :member-name "CompletionTime")
                                     (language-code :target-type
                                      medical-scribe-language-code :member-name
                                      "LanguageCode")
                                     (medical-scribe-job-status :target-type
                                      medical-scribe-job-status :member-name
                                      "MedicalScribeJobStatus")
                                     (failure-reason :target-type
                                      failure-reason :member-name
                                      "FailureReason"))
                                    (:shape-name "MedicalScribeJobSummary"))

(smithy/sdk/shapes:define-enum medical-scribe-language-code
    common-lisp:nil
  (:en-us "en-US"))

(smithy/sdk/shapes:define-enum medical-scribe-note-template
    common-lisp:nil
  (:history-and-physical "HISTORY_AND_PHYSICAL")
  (:girpp "GIRPP")
  (:birp "BIRP")
  (:sirp "SIRP")
  (:dap "DAP")
  (:behavioral-soap "BEHAVIORAL_SOAP")
  (:physical-soap "PHYSICAL_SOAP"))

(smithy/sdk/shapes:define-structure medical-scribe-output common-lisp:nil
                                    ((transcript-file-uri :target-type uri
                                      :required common-lisp:t :member-name
                                      "TranscriptFileUri")
                                     (clinical-document-uri :target-type uri
                                      :required common-lisp:t :member-name
                                      "ClinicalDocumentUri"))
                                    (:shape-name "MedicalScribeOutput"))

(smithy/sdk/shapes:define-enum medical-scribe-participant-role
    common-lisp:nil
  (:patient "PATIENT")
  (:clinician "CLINICIAN"))

(smithy/sdk/shapes:define-structure medical-scribe-settings common-lisp:nil
                                    ((show-speaker-labels :target-type boolean
                                      :member-name "ShowSpeakerLabels")
                                     (max-speaker-labels :target-type
                                      max-speakers :member-name
                                      "MaxSpeakerLabels")
                                     (channel-identification :target-type
                                      boolean :member-name
                                      "ChannelIdentification")
                                     (vocabulary-name :target-type
                                      vocabulary-name :member-name
                                      "VocabularyName")
                                     (vocabulary-filter-name :target-type
                                      vocabulary-filter-name :member-name
                                      "VocabularyFilterName")
                                     (vocabulary-filter-method :target-type
                                      vocabulary-filter-method :member-name
                                      "VocabularyFilterMethod")
                                     (clinical-note-generation-settings
                                      :target-type
                                      clinical-note-generation-settings
                                      :member-name
                                      "ClinicalNoteGenerationSettings"))
                                    (:shape-name "MedicalScribeSettings"))

(smithy/sdk/shapes:define-structure medical-transcript common-lisp:nil
                                    ((transcript-file-uri :target-type uri
                                      :member-name "TranscriptFileUri"))
                                    (:shape-name "MedicalTranscript"))

(smithy/sdk/shapes:define-structure medical-transcription-job common-lisp:nil
                                    ((medical-transcription-job-name
                                      :target-type transcription-job-name
                                      :member-name
                                      "MedicalTranscriptionJobName")
                                     (transcription-job-status :target-type
                                      transcription-job-status :member-name
                                      "TranscriptionJobStatus")
                                     (language-code :target-type language-code
                                      :member-name "LanguageCode")
                                     (media-sample-rate-hertz :target-type
                                      medical-media-sample-rate-hertz
                                      :member-name "MediaSampleRateHertz")
                                     (media-format :target-type media-format
                                      :member-name "MediaFormat")
                                     (media :target-type media :member-name
                                      "Media")
                                     (transcript :target-type
                                      medical-transcript :member-name
                                      "Transcript")
                                     (start-time :target-type date-time
                                      :member-name "StartTime")
                                     (creation-time :target-type date-time
                                      :member-name "CreationTime")
                                     (completion-time :target-type date-time
                                      :member-name "CompletionTime")
                                     (failure-reason :target-type
                                      failure-reason :member-name
                                      "FailureReason")
                                     (settings :target-type
                                      medical-transcription-setting
                                      :member-name "Settings")
                                     (content-identification-type :target-type
                                      medical-content-identification-type
                                      :member-name "ContentIdentificationType")
                                     (specialty :target-type specialty
                                      :member-name "Specialty")
                                     (type :target-type type :member-name
                                      "Type")
                                     (tags :target-type tag-list :member-name
                                      "Tags"))
                                    (:shape-name "MedicalTranscriptionJob"))

(smithy/sdk/shapes:define-list medical-transcription-job-summaries :member
                               medical-transcription-job-summary)

(smithy/sdk/shapes:define-structure medical-transcription-job-summary
                                    common-lisp:nil
                                    ((medical-transcription-job-name
                                      :target-type transcription-job-name
                                      :member-name
                                      "MedicalTranscriptionJobName")
                                     (creation-time :target-type date-time
                                      :member-name "CreationTime")
                                     (start-time :target-type date-time
                                      :member-name "StartTime")
                                     (completion-time :target-type date-time
                                      :member-name "CompletionTime")
                                     (language-code :target-type language-code
                                      :member-name "LanguageCode")
                                     (transcription-job-status :target-type
                                      transcription-job-status :member-name
                                      "TranscriptionJobStatus")
                                     (failure-reason :target-type
                                      failure-reason :member-name
                                      "FailureReason")
                                     (output-location-type :target-type
                                      output-location-type :member-name
                                      "OutputLocationType")
                                     (specialty :target-type specialty
                                      :member-name "Specialty")
                                     (content-identification-type :target-type
                                      medical-content-identification-type
                                      :member-name "ContentIdentificationType")
                                     (type :target-type type :member-name
                                      "Type"))
                                    (:shape-name
                                     "MedicalTranscriptionJobSummary"))

(smithy/sdk/shapes:define-structure medical-transcription-setting
                                    common-lisp:nil
                                    ((show-speaker-labels :target-type boolean
                                      :member-name "ShowSpeakerLabels")
                                     (max-speaker-labels :target-type
                                      max-speakers :member-name
                                      "MaxSpeakerLabels")
                                     (channel-identification :target-type
                                      boolean :member-name
                                      "ChannelIdentification")
                                     (show-alternatives :target-type boolean
                                      :member-name "ShowAlternatives")
                                     (max-alternatives :target-type
                                      max-alternatives :member-name
                                      "MaxAlternatives")
                                     (vocabulary-name :target-type
                                      vocabulary-name :member-name
                                      "VocabularyName"))
                                    (:shape-name "MedicalTranscriptionSetting"))

(smithy/sdk/shapes:define-type model-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure model-settings common-lisp:nil
                                    ((language-model-name :target-type
                                      model-name :member-name
                                      "LanguageModelName"))
                                    (:shape-name "ModelSettings"))

(smithy/sdk/shapes:define-enum model-status
    common-lisp:nil
  (:in-progress "IN_PROGRESS")
  (:failed "FAILED")
  (:completed "COMPLETED"))

(smithy/sdk/shapes:define-list models :member language-model)

(smithy/sdk/shapes:define-type next-token smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type non-empty-string smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure non-talk-time-filter common-lisp:nil
                                    ((threshold :target-type
                                      timestamp-milliseconds :member-name
                                      "Threshold")
                                     (absolute-time-range :target-type
                                      absolute-time-range :member-name
                                      "AbsoluteTimeRange")
                                     (relative-time-range :target-type
                                      relative-time-range :member-name
                                      "RelativeTimeRange")
                                     (negate :target-type boolean :member-name
                                      "Negate"))
                                    (:shape-name "NonTalkTimeFilter"))

(smithy/sdk/shapes:define-error not-found-exception common-lisp:nil
                                ((message :target-type string :member-name
                                  "Message"))
                                (:shape-name "NotFoundException")
                                (:error-code 404))

(smithy/sdk/shapes:define-type output-bucket-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type output-key smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum output-location-type
    common-lisp:nil
  (:customer-bucket "CUSTOMER_BUCKET")
  (:service-bucket "SERVICE_BUCKET"))

(smithy/sdk/shapes:define-enum participant-role
    common-lisp:nil
  (:agent "AGENT")
  (:customer "CUSTOMER"))

(smithy/sdk/shapes:define-type percentage smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type phrase smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list phrases :member phrase)

(smithy/sdk/shapes:define-enum pii-entity-type
    common-lisp:nil
  (:bank-account-number "BANK_ACCOUNT_NUMBER")
  (:bank-routing "BANK_ROUTING")
  (:credit-debit-number "CREDIT_DEBIT_NUMBER")
  (:credit-debit-cvv "CREDIT_DEBIT_CVV")
  (:credit-debit-expiry "CREDIT_DEBIT_EXPIRY")
  (:pin "PIN")
  (:email "EMAIL")
  (:address "ADDRESS")
  (:name "NAME")
  (:phone "PHONE")
  (:ssn "SSN")
  (:all "ALL"))

(smithy/sdk/shapes:define-list pii-entity-types :member pii-entity-type)

(smithy/sdk/shapes:define-enum redaction-output
    common-lisp:nil
  (:redacted "redacted")
  (:redacted-and-unredacted "redacted_and_unredacted"))

(smithy/sdk/shapes:define-enum redaction-type
    common-lisp:nil
  (:pii "PII"))

(smithy/sdk/shapes:define-structure relative-time-range common-lisp:nil
                                    ((start-percentage :target-type percentage
                                      :member-name "StartPercentage")
                                     (end-percentage :target-type percentage
                                      :member-name "EndPercentage")
                                     (first :target-type percentage
                                      :member-name "First")
                                     (last :target-type percentage :member-name
                                      "Last"))
                                    (:shape-name "RelativeTimeRange"))

(smithy/sdk/shapes:define-union rule common-lisp:nil
                                ((non-talk-time-filter :target-type
                                  non-talk-time-filter :member-name
                                  "NonTalkTimeFilter")
                                 (interruption-filter :target-type
                                  interruption-filter :member-name
                                  "InterruptionFilter")
                                 (transcript-filter :target-type
                                  transcript-filter :member-name
                                  "TranscriptFilter")
                                 (sentiment-filter :target-type
                                  sentiment-filter :member-name
                                  "SentimentFilter"))
                                (:shape-name "Rule"))

(smithy/sdk/shapes:define-list rule-list :member rule)

(smithy/sdk/shapes:define-structure sentiment-filter common-lisp:nil
                                    ((sentiments :target-type
                                      sentiment-value-list :required
                                      common-lisp:t :member-name "Sentiments")
                                     (absolute-time-range :target-type
                                      absolute-time-range :member-name
                                      "AbsoluteTimeRange")
                                     (relative-time-range :target-type
                                      relative-time-range :member-name
                                      "RelativeTimeRange")
                                     (participant-role :target-type
                                      participant-role :member-name
                                      "ParticipantRole")
                                     (negate :target-type boolean :member-name
                                      "Negate"))
                                    (:shape-name "SentimentFilter"))

(smithy/sdk/shapes:define-enum sentiment-value
    common-lisp:nil
  (:positive "POSITIVE")
  (:negative "NEGATIVE")
  (:neutral "NEUTRAL")
  (:mixed "MIXED"))

(smithy/sdk/shapes:define-list sentiment-value-list :member sentiment-value)

(smithy/sdk/shapes:define-structure settings common-lisp:nil
                                    ((vocabulary-name :target-type
                                      vocabulary-name :member-name
                                      "VocabularyName")
                                     (show-speaker-labels :target-type boolean
                                      :member-name "ShowSpeakerLabels")
                                     (max-speaker-labels :target-type
                                      max-speakers :member-name
                                      "MaxSpeakerLabels")
                                     (channel-identification :target-type
                                      boolean :member-name
                                      "ChannelIdentification")
                                     (show-alternatives :target-type boolean
                                      :member-name "ShowAlternatives")
                                     (max-alternatives :target-type
                                      max-alternatives :member-name
                                      "MaxAlternatives")
                                     (vocabulary-filter-name :target-type
                                      vocabulary-filter-name :member-name
                                      "VocabularyFilterName")
                                     (vocabulary-filter-method :target-type
                                      vocabulary-filter-method :member-name
                                      "VocabularyFilterMethod"))
                                    (:shape-name "Settings"))

(smithy/sdk/shapes:define-enum specialty
    common-lisp:nil
  (:primarycare "PRIMARYCARE"))

(smithy/sdk/shapes:define-input start-call-analytics-job-request
                                common-lisp:nil
                                ((call-analytics-job-name :target-type
                                  call-analytics-job-name :required
                                  common-lisp:t :member-name
                                  "CallAnalyticsJobName" :http-label
                                  common-lisp:t)
                                 (media :target-type media :required
                                  common-lisp:t :member-name "Media")
                                 (output-location :target-type uri :member-name
                                  "OutputLocation")
                                 (output-encryption-kmskey-id :target-type
                                  kmskey-id :member-name
                                  "OutputEncryptionKMSKeyId")
                                 (data-access-role-arn :target-type
                                  data-access-role-arn :member-name
                                  "DataAccessRoleArn")
                                 (settings :target-type
                                  call-analytics-job-settings :member-name
                                  "Settings")
                                 (tags :target-type tag-list :member-name
                                  "Tags")
                                 (channel-definitions :target-type
                                  channel-definitions :member-name
                                  "ChannelDefinitions"))
                                (:shape-name "StartCallAnalyticsJobRequest"))

(smithy/sdk/shapes:define-output start-call-analytics-job-response
                                 common-lisp:nil
                                 ((call-analytics-job :target-type
                                   call-analytics-job :member-name
                                   "CallAnalyticsJob"))
                                 (:shape-name "StartCallAnalyticsJobResponse"))

(smithy/sdk/shapes:define-input start-medical-scribe-job-request
                                common-lisp:nil
                                ((medical-scribe-job-name :target-type
                                  transcription-job-name :required
                                  common-lisp:t :member-name
                                  "MedicalScribeJobName" :http-label
                                  common-lisp:t)
                                 (media :target-type media :required
                                  common-lisp:t :member-name "Media")
                                 (output-bucket-name :target-type
                                  output-bucket-name :required common-lisp:t
                                  :member-name "OutputBucketName")
                                 (output-encryption-kmskey-id :target-type
                                  kmskey-id :member-name
                                  "OutputEncryptionKMSKeyId")
                                 (kmsencryption-context :target-type
                                  kmsencryption-context-map :member-name
                                  "KMSEncryptionContext")
                                 (data-access-role-arn :target-type
                                  data-access-role-arn :required common-lisp:t
                                  :member-name "DataAccessRoleArn")
                                 (settings :target-type medical-scribe-settings
                                  :required common-lisp:t :member-name
                                  "Settings")
                                 (channel-definitions :target-type
                                  medical-scribe-channel-definitions
                                  :member-name "ChannelDefinitions")
                                 (tags :target-type tag-list :member-name
                                  "Tags"))
                                (:shape-name "StartMedicalScribeJobRequest"))

(smithy/sdk/shapes:define-output start-medical-scribe-job-response
                                 common-lisp:nil
                                 ((medical-scribe-job :target-type
                                   medical-scribe-job :member-name
                                   "MedicalScribeJob"))
                                 (:shape-name "StartMedicalScribeJobResponse"))

(smithy/sdk/shapes:define-input start-medical-transcription-job-request
                                common-lisp:nil
                                ((medical-transcription-job-name :target-type
                                  transcription-job-name :required
                                  common-lisp:t :member-name
                                  "MedicalTranscriptionJobName" :http-label
                                  common-lisp:t)
                                 (language-code :target-type language-code
                                  :required common-lisp:t :member-name
                                  "LanguageCode")
                                 (media-sample-rate-hertz :target-type
                                  medical-media-sample-rate-hertz :member-name
                                  "MediaSampleRateHertz")
                                 (media-format :target-type media-format
                                  :member-name "MediaFormat")
                                 (media :target-type media :required
                                  common-lisp:t :member-name "Media")
                                 (output-bucket-name :target-type
                                  output-bucket-name :required common-lisp:t
                                  :member-name "OutputBucketName")
                                 (output-key :target-type output-key
                                  :member-name "OutputKey")
                                 (output-encryption-kmskey-id :target-type
                                  kmskey-id :member-name
                                  "OutputEncryptionKMSKeyId")
                                 (kmsencryption-context :target-type
                                  kmsencryption-context-map :member-name
                                  "KMSEncryptionContext")
                                 (settings :target-type
                                  medical-transcription-setting :member-name
                                  "Settings")
                                 (content-identification-type :target-type
                                  medical-content-identification-type
                                  :member-name "ContentIdentificationType")
                                 (specialty :target-type specialty :required
                                  common-lisp:t :member-name "Specialty")
                                 (type :target-type type :required
                                  common-lisp:t :member-name "Type")
                                 (tags :target-type tag-list :member-name
                                  "Tags"))
                                (:shape-name
                                 "StartMedicalTranscriptionJobRequest"))

(smithy/sdk/shapes:define-output start-medical-transcription-job-response
                                 common-lisp:nil
                                 ((medical-transcription-job :target-type
                                   medical-transcription-job :member-name
                                   "MedicalTranscriptionJob"))
                                 (:shape-name
                                  "StartMedicalTranscriptionJobResponse"))

(smithy/sdk/shapes:define-input start-transcription-job-request common-lisp:nil
                                ((transcription-job-name :target-type
                                  transcription-job-name :required
                                  common-lisp:t :member-name
                                  "TranscriptionJobName" :http-label
                                  common-lisp:t)
                                 (language-code :target-type language-code
                                  :member-name "LanguageCode")
                                 (media-sample-rate-hertz :target-type
                                  media-sample-rate-hertz :member-name
                                  "MediaSampleRateHertz")
                                 (media-format :target-type media-format
                                  :member-name "MediaFormat")
                                 (media :target-type media :required
                                  common-lisp:t :member-name "Media")
                                 (output-bucket-name :target-type
                                  output-bucket-name :member-name
                                  "OutputBucketName")
                                 (output-key :target-type output-key
                                  :member-name "OutputKey")
                                 (output-encryption-kmskey-id :target-type
                                  kmskey-id :member-name
                                  "OutputEncryptionKMSKeyId")
                                 (kmsencryption-context :target-type
                                  kmsencryption-context-map :member-name
                                  "KMSEncryptionContext")
                                 (settings :target-type settings :member-name
                                  "Settings")
                                 (model-settings :target-type model-settings
                                  :member-name "ModelSettings")
                                 (job-execution-settings :target-type
                                  job-execution-settings :member-name
                                  "JobExecutionSettings")
                                 (content-redaction :target-type
                                  content-redaction :member-name
                                  "ContentRedaction")
                                 (identify-language :target-type boolean
                                  :member-name "IdentifyLanguage")
                                 (identify-multiple-languages :target-type
                                  boolean :member-name
                                  "IdentifyMultipleLanguages")
                                 (language-options :target-type
                                  language-options :member-name
                                  "LanguageOptions")
                                 (subtitles :target-type subtitles :member-name
                                  "Subtitles")
                                 (tags :target-type tag-list :member-name
                                  "Tags")
                                 (language-id-settings :target-type
                                  language-id-settings-map :member-name
                                  "LanguageIdSettings")
                                 (toxicity-detection :target-type
                                  toxicity-detection :member-name
                                  "ToxicityDetection"))
                                (:shape-name "StartTranscriptionJobRequest"))

(smithy/sdk/shapes:define-output start-transcription-job-response
                                 common-lisp:nil
                                 ((transcription-job :target-type
                                   transcription-job :member-name
                                   "TranscriptionJob"))
                                 (:shape-name "StartTranscriptionJobResponse"))

(smithy/sdk/shapes:define-type string smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list string-target-list :member non-empty-string)

(smithy/sdk/shapes:define-list subtitle-file-uris :member uri)

(smithy/sdk/shapes:define-enum subtitle-format
    common-lisp:nil
  (:vtt "vtt")
  (:srt "srt"))

(smithy/sdk/shapes:define-list subtitle-formats :member subtitle-format)

(smithy/sdk/shapes:define-type subtitle-output-start-index
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-structure subtitles common-lisp:nil
                                    ((formats :target-type subtitle-formats
                                      :member-name "Formats")
                                     (output-start-index :target-type
                                      subtitle-output-start-index :member-name
                                      "OutputStartIndex"))
                                    (:shape-name "Subtitles"))

(smithy/sdk/shapes:define-structure subtitles-output common-lisp:nil
                                    ((formats :target-type subtitle-formats
                                      :member-name "Formats")
                                     (subtitle-file-uris :target-type
                                      subtitle-file-uris :member-name
                                      "SubtitleFileUris")
                                     (output-start-index :target-type
                                      subtitle-output-start-index :member-name
                                      "OutputStartIndex"))
                                    (:shape-name "SubtitlesOutput"))

(smithy/sdk/shapes:define-structure summarization common-lisp:nil
                                    ((generate-abstractive-summary :target-type
                                      boolean :required common-lisp:t
                                      :member-name
                                      "GenerateAbstractiveSummary"))
                                    (:shape-name "Summarization"))

(smithy/sdk/shapes:define-structure tag common-lisp:nil
                                    ((key :target-type tag-key :required
                                      common-lisp:t :member-name "Key")
                                     (value :target-type tag-value :required
                                      common-lisp:t :member-name "Value"))
                                    (:shape-name "Tag"))

(smithy/sdk/shapes:define-type tag-key smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list tag-key-list :member tag-key)

(smithy/sdk/shapes:define-list tag-list :member tag)

(smithy/sdk/shapes:define-input tag-resource-request common-lisp:nil
                                ((resource-arn :target-type transcribe-arn
                                  :required common-lisp:t :member-name
                                  "ResourceArn" :http-label common-lisp:t)
                                 (tags :target-type tag-list :required
                                  common-lisp:t :member-name "Tags"))
                                (:shape-name "TagResourceRequest"))

(smithy/sdk/shapes:define-output tag-resource-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "TagResourceResponse"))

(smithy/sdk/shapes:define-type tag-value smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type timestamp-milliseconds
                               smithy/sdk/smithy-types:long)

(smithy/sdk/shapes:define-list toxicity-categories :member toxicity-category)

(smithy/sdk/shapes:define-enum toxicity-category
    common-lisp:nil
  (:all "ALL"))

(smithy/sdk/shapes:define-list toxicity-detection :member
                               toxicity-detection-settings)

(smithy/sdk/shapes:define-structure toxicity-detection-settings common-lisp:nil
                                    ((toxicity-categories :target-type
                                      toxicity-categories :required
                                      common-lisp:t :member-name
                                      "ToxicityCategories"))
                                    (:shape-name "ToxicityDetectionSettings"))

(smithy/sdk/shapes:define-type transcribe-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure transcript common-lisp:nil
                                    ((transcript-file-uri :target-type uri
                                      :member-name "TranscriptFileUri")
                                     (redacted-transcript-file-uri :target-type
                                      uri :member-name
                                      "RedactedTranscriptFileUri"))
                                    (:shape-name "Transcript"))

(smithy/sdk/shapes:define-structure transcript-filter common-lisp:nil
                                    ((transcript-filter-type :target-type
                                      transcript-filter-type :required
                                      common-lisp:t :member-name
                                      "TranscriptFilterType")
                                     (absolute-time-range :target-type
                                      absolute-time-range :member-name
                                      "AbsoluteTimeRange")
                                     (relative-time-range :target-type
                                      relative-time-range :member-name
                                      "RelativeTimeRange")
                                     (participant-role :target-type
                                      participant-role :member-name
                                      "ParticipantRole")
                                     (negate :target-type boolean :member-name
                                      "Negate")
                                     (targets :target-type string-target-list
                                      :required common-lisp:t :member-name
                                      "Targets"))
                                    (:shape-name "TranscriptFilter"))

(smithy/sdk/shapes:define-enum transcript-filter-type
    common-lisp:nil
  (:exact "EXACT"))

(smithy/sdk/shapes:define-structure transcription-job common-lisp:nil
                                    ((transcription-job-name :target-type
                                      transcription-job-name :member-name
                                      "TranscriptionJobName")
                                     (transcription-job-status :target-type
                                      transcription-job-status :member-name
                                      "TranscriptionJobStatus")
                                     (language-code :target-type language-code
                                      :member-name "LanguageCode")
                                     (media-sample-rate-hertz :target-type
                                      media-sample-rate-hertz :member-name
                                      "MediaSampleRateHertz")
                                     (media-format :target-type media-format
                                      :member-name "MediaFormat")
                                     (media :target-type media :member-name
                                      "Media")
                                     (transcript :target-type transcript
                                      :member-name "Transcript")
                                     (start-time :target-type date-time
                                      :member-name "StartTime")
                                     (creation-time :target-type date-time
                                      :member-name "CreationTime")
                                     (completion-time :target-type date-time
                                      :member-name "CompletionTime")
                                     (failure-reason :target-type
                                      failure-reason :member-name
                                      "FailureReason")
                                     (settings :target-type settings
                                      :member-name "Settings")
                                     (model-settings :target-type
                                      model-settings :member-name
                                      "ModelSettings")
                                     (job-execution-settings :target-type
                                      job-execution-settings :member-name
                                      "JobExecutionSettings")
                                     (content-redaction :target-type
                                      content-redaction :member-name
                                      "ContentRedaction")
                                     (identify-language :target-type boolean
                                      :member-name "IdentifyLanguage")
                                     (identify-multiple-languages :target-type
                                      boolean :member-name
                                      "IdentifyMultipleLanguages")
                                     (language-options :target-type
                                      language-options :member-name
                                      "LanguageOptions")
                                     (identified-language-score :target-type
                                      identified-language-score :member-name
                                      "IdentifiedLanguageScore")
                                     (language-codes :target-type
                                      language-code-list :member-name
                                      "LanguageCodes")
                                     (tags :target-type tag-list :member-name
                                      "Tags")
                                     (subtitles :target-type subtitles-output
                                      :member-name "Subtitles")
                                     (language-id-settings :target-type
                                      language-id-settings-map :member-name
                                      "LanguageIdSettings")
                                     (toxicity-detection :target-type
                                      toxicity-detection :member-name
                                      "ToxicityDetection"))
                                    (:shape-name "TranscriptionJob"))

(smithy/sdk/shapes:define-type transcription-job-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum transcription-job-status
    common-lisp:nil
  (:queued "QUEUED")
  (:in-progress "IN_PROGRESS")
  (:failed "FAILED")
  (:completed "COMPLETED"))

(smithy/sdk/shapes:define-list transcription-job-summaries :member
                               transcription-job-summary)

(smithy/sdk/shapes:define-structure transcription-job-summary common-lisp:nil
                                    ((transcription-job-name :target-type
                                      transcription-job-name :member-name
                                      "TranscriptionJobName")
                                     (creation-time :target-type date-time
                                      :member-name "CreationTime")
                                     (start-time :target-type date-time
                                      :member-name "StartTime")
                                     (completion-time :target-type date-time
                                      :member-name "CompletionTime")
                                     (language-code :target-type language-code
                                      :member-name "LanguageCode")
                                     (transcription-job-status :target-type
                                      transcription-job-status :member-name
                                      "TranscriptionJobStatus")
                                     (failure-reason :target-type
                                      failure-reason :member-name
                                      "FailureReason")
                                     (output-location-type :target-type
                                      output-location-type :member-name
                                      "OutputLocationType")
                                     (content-redaction :target-type
                                      content-redaction :member-name
                                      "ContentRedaction")
                                     (model-settings :target-type
                                      model-settings :member-name
                                      "ModelSettings")
                                     (identify-language :target-type boolean
                                      :member-name "IdentifyLanguage")
                                     (identify-multiple-languages :target-type
                                      boolean :member-name
                                      "IdentifyMultipleLanguages")
                                     (identified-language-score :target-type
                                      identified-language-score :member-name
                                      "IdentifiedLanguageScore")
                                     (language-codes :target-type
                                      language-code-list :member-name
                                      "LanguageCodes")
                                     (toxicity-detection :target-type
                                      toxicity-detection :member-name
                                      "ToxicityDetection"))
                                    (:shape-name "TranscriptionJobSummary"))

(smithy/sdk/shapes:define-enum type
    common-lisp:nil
  (:conversation "CONVERSATION")
  (:dictation "DICTATION"))

(smithy/sdk/shapes:define-input untag-resource-request common-lisp:nil
                                ((resource-arn :target-type transcribe-arn
                                  :required common-lisp:t :member-name
                                  "ResourceArn" :http-label common-lisp:t)
                                 (tag-keys :target-type tag-key-list :required
                                  common-lisp:t :member-name "TagKeys"))
                                (:shape-name "UntagResourceRequest"))

(smithy/sdk/shapes:define-output untag-resource-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "UntagResourceResponse"))

(smithy/sdk/shapes:define-input update-call-analytics-category-request
                                common-lisp:nil
                                ((category-name :target-type category-name
                                  :required common-lisp:t :member-name
                                  "CategoryName" :http-label common-lisp:t)
                                 (rules :target-type rule-list :required
                                  common-lisp:t :member-name "Rules")
                                 (input-type :target-type input-type
                                  :member-name "InputType"))
                                (:shape-name
                                 "UpdateCallAnalyticsCategoryRequest"))

(smithy/sdk/shapes:define-output update-call-analytics-category-response
                                 common-lisp:nil
                                 ((category-properties :target-type
                                   category-properties :member-name
                                   "CategoryProperties"))
                                 (:shape-name
                                  "UpdateCallAnalyticsCategoryResponse"))

(smithy/sdk/shapes:define-input update-medical-vocabulary-request
                                common-lisp:nil
                                ((vocabulary-name :target-type vocabulary-name
                                  :required common-lisp:t :member-name
                                  "VocabularyName" :http-label common-lisp:t)
                                 (language-code :target-type language-code
                                  :required common-lisp:t :member-name
                                  "LanguageCode")
                                 (vocabulary-file-uri :target-type uri
                                  :required common-lisp:t :member-name
                                  "VocabularyFileUri"))
                                (:shape-name "UpdateMedicalVocabularyRequest"))

(smithy/sdk/shapes:define-output update-medical-vocabulary-response
                                 common-lisp:nil
                                 ((vocabulary-name :target-type vocabulary-name
                                   :member-name "VocabularyName")
                                  (language-code :target-type language-code
                                   :member-name "LanguageCode")
                                  (last-modified-time :target-type date-time
                                   :member-name "LastModifiedTime")
                                  (vocabulary-state :target-type
                                   vocabulary-state :member-name
                                   "VocabularyState"))
                                 (:shape-name
                                  "UpdateMedicalVocabularyResponse"))

(smithy/sdk/shapes:define-input update-vocabulary-filter-request
                                common-lisp:nil
                                ((vocabulary-filter-name :target-type
                                  vocabulary-filter-name :required
                                  common-lisp:t :member-name
                                  "VocabularyFilterName" :http-label
                                  common-lisp:t)
                                 (words :target-type words :member-name
                                  "Words")
                                 (vocabulary-filter-file-uri :target-type uri
                                  :member-name "VocabularyFilterFileUri")
                                 (data-access-role-arn :target-type
                                  data-access-role-arn :member-name
                                  "DataAccessRoleArn"))
                                (:shape-name "UpdateVocabularyFilterRequest"))

(smithy/sdk/shapes:define-output update-vocabulary-filter-response
                                 common-lisp:nil
                                 ((vocabulary-filter-name :target-type
                                   vocabulary-filter-name :member-name
                                   "VocabularyFilterName")
                                  (language-code :target-type language-code
                                   :member-name "LanguageCode")
                                  (last-modified-time :target-type date-time
                                   :member-name "LastModifiedTime"))
                                 (:shape-name "UpdateVocabularyFilterResponse"))

(smithy/sdk/shapes:define-input update-vocabulary-request common-lisp:nil
                                ((vocabulary-name :target-type vocabulary-name
                                  :required common-lisp:t :member-name
                                  "VocabularyName" :http-label common-lisp:t)
                                 (language-code :target-type language-code
                                  :required common-lisp:t :member-name
                                  "LanguageCode")
                                 (phrases :target-type phrases :member-name
                                  "Phrases")
                                 (vocabulary-file-uri :target-type uri
                                  :member-name "VocabularyFileUri")
                                 (data-access-role-arn :target-type
                                  data-access-role-arn :member-name
                                  "DataAccessRoleArn"))
                                (:shape-name "UpdateVocabularyRequest"))

(smithy/sdk/shapes:define-output update-vocabulary-response common-lisp:nil
                                 ((vocabulary-name :target-type vocabulary-name
                                   :member-name "VocabularyName")
                                  (language-code :target-type language-code
                                   :member-name "LanguageCode")
                                  (last-modified-time :target-type date-time
                                   :member-name "LastModifiedTime")
                                  (vocabulary-state :target-type
                                   vocabulary-state :member-name
                                   "VocabularyState"))
                                 (:shape-name "UpdateVocabularyResponse"))

(smithy/sdk/shapes:define-type uri smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list vocabularies :member vocabulary-info)

(smithy/sdk/shapes:define-structure vocabulary-filter-info common-lisp:nil
                                    ((vocabulary-filter-name :target-type
                                      vocabulary-filter-name :member-name
                                      "VocabularyFilterName")
                                     (language-code :target-type language-code
                                      :member-name "LanguageCode")
                                     (last-modified-time :target-type date-time
                                      :member-name "LastModifiedTime"))
                                    (:shape-name "VocabularyFilterInfo"))

(smithy/sdk/shapes:define-enum vocabulary-filter-method
    common-lisp:nil
  (:remove "remove")
  (:mask "mask")
  (:tag "tag"))

(smithy/sdk/shapes:define-type vocabulary-filter-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list vocabulary-filters :member
                               vocabulary-filter-info)

(smithy/sdk/shapes:define-structure vocabulary-info common-lisp:nil
                                    ((vocabulary-name :target-type
                                      vocabulary-name :member-name
                                      "VocabularyName")
                                     (language-code :target-type language-code
                                      :member-name "LanguageCode")
                                     (last-modified-time :target-type date-time
                                      :member-name "LastModifiedTime")
                                     (vocabulary-state :target-type
                                      vocabulary-state :member-name
                                      "VocabularyState"))
                                    (:shape-name "VocabularyInfo"))

(smithy/sdk/shapes:define-type vocabulary-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum vocabulary-state
    common-lisp:nil
  (:pending "PENDING")
  (:ready "READY")
  (:failed "FAILED"))

(smithy/sdk/shapes:define-type word smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list words :member word)

(smithy/sdk/operation:define-operation create-call-analytics-category
                                       :shape-name
                                       "CreateCallAnalyticsCategory" :input
                                       create-call-analytics-category-request
                                       :output
                                       create-call-analytics-category-response
                                       :errors
                                       (bad-request-exception
                                        conflict-exception
                                        internal-failure-exception
                                        limit-exceeded-exception)
                                       :method "PUT" :uri
                                       "/callanalyticscategories/{CategoryName}"
                                       :code 200)

(smithy/sdk/operation:define-operation create-language-model :shape-name
                                       "CreateLanguageModel" :input
                                       create-language-model-request :output
                                       create-language-model-response :errors
                                       (bad-request-exception
                                        conflict-exception
                                        internal-failure-exception
                                        limit-exceeded-exception)
                                       :method "PUT" :uri
                                       "/languagemodels/{ModelName}" :code 200)

(smithy/sdk/operation:define-operation create-medical-vocabulary :shape-name
                                       "CreateMedicalVocabulary" :input
                                       create-medical-vocabulary-request
                                       :output
                                       create-medical-vocabulary-response
                                       :errors
                                       (bad-request-exception
                                        conflict-exception
                                        internal-failure-exception
                                        limit-exceeded-exception)
                                       :method "PUT" :uri
                                       "/medicalvocabularies/{VocabularyName}"
                                       :code 200)

(smithy/sdk/operation:define-operation create-vocabulary :shape-name
                                       "CreateVocabulary" :input
                                       create-vocabulary-request :output
                                       create-vocabulary-response :errors
                                       (bad-request-exception
                                        conflict-exception
                                        internal-failure-exception
                                        limit-exceeded-exception)
                                       :method "PUT" :uri
                                       "/vocabularies/{VocabularyName}" :code
                                       200)

(smithy/sdk/operation:define-operation create-vocabulary-filter :shape-name
                                       "CreateVocabularyFilter" :input
                                       create-vocabulary-filter-request :output
                                       create-vocabulary-filter-response
                                       :errors
                                       (bad-request-exception
                                        conflict-exception
                                        internal-failure-exception
                                        limit-exceeded-exception)
                                       :method "POST" :uri
                                       "/vocabularyFilters/{VocabularyFilterName}"
                                       :code 201)

(smithy/sdk/operation:define-operation delete-call-analytics-category
                                       :shape-name
                                       "DeleteCallAnalyticsCategory" :input
                                       delete-call-analytics-category-request
                                       :output
                                       delete-call-analytics-category-response
                                       :errors
                                       (bad-request-exception
                                        internal-failure-exception
                                        limit-exceeded-exception
                                        not-found-exception)
                                       :method "DELETE" :uri
                                       "/callanalyticscategories/{CategoryName}"
                                       :code 204)

(smithy/sdk/operation:define-operation delete-call-analytics-job :shape-name
                                       "DeleteCallAnalyticsJob" :input
                                       delete-call-analytics-job-request
                                       :output
                                       delete-call-analytics-job-response
                                       :errors
                                       (bad-request-exception
                                        internal-failure-exception
                                        limit-exceeded-exception)
                                       :method "DELETE" :uri
                                       "/callanalyticsjobs/{CallAnalyticsJobName}"
                                       :code 204)

(smithy/sdk/operation:define-operation delete-language-model :shape-name
                                       "DeleteLanguageModel" :input
                                       delete-language-model-request :output
                                       common-lisp:null :errors
                                       (bad-request-exception
                                        internal-failure-exception
                                        limit-exceeded-exception)
                                       :method "DELETE" :uri
                                       "/languagemodels/{ModelName}" :code 204)

(smithy/sdk/operation:define-operation delete-medical-scribe-job :shape-name
                                       "DeleteMedicalScribeJob" :input
                                       delete-medical-scribe-job-request
                                       :output common-lisp:null :errors
                                       (bad-request-exception
                                        internal-failure-exception
                                        limit-exceeded-exception)
                                       :method "DELETE" :uri
                                       "/medicalscribejobs/{MedicalScribeJobName}"
                                       :code 204)

(smithy/sdk/operation:define-operation delete-medical-transcription-job
                                       :shape-name
                                       "DeleteMedicalTranscriptionJob" :input
                                       delete-medical-transcription-job-request
                                       :output common-lisp:null :errors
                                       (bad-request-exception
                                        internal-failure-exception
                                        limit-exceeded-exception)
                                       :method "DELETE" :uri
                                       "/medicaltranscriptionjobs/{MedicalTranscriptionJobName}"
                                       :code 204)

(smithy/sdk/operation:define-operation delete-medical-vocabulary :shape-name
                                       "DeleteMedicalVocabulary" :input
                                       delete-medical-vocabulary-request
                                       :output common-lisp:null :errors
                                       (bad-request-exception
                                        internal-failure-exception
                                        limit-exceeded-exception
                                        not-found-exception)
                                       :method "DELETE" :uri
                                       "/medicalvocabularies/{VocabularyName}"
                                       :code 204)

(smithy/sdk/operation:define-operation delete-transcription-job :shape-name
                                       "DeleteTranscriptionJob" :input
                                       delete-transcription-job-request :output
                                       common-lisp:null :errors
                                       (bad-request-exception
                                        internal-failure-exception
                                        limit-exceeded-exception)
                                       :method "DELETE" :uri
                                       "/transcriptionjobs/{TranscriptionJobName}"
                                       :code 204)

(smithy/sdk/operation:define-operation delete-vocabulary :shape-name
                                       "DeleteVocabulary" :input
                                       delete-vocabulary-request :output
                                       common-lisp:null :errors
                                       (bad-request-exception
                                        internal-failure-exception
                                        limit-exceeded-exception
                                        not-found-exception)
                                       :method "DELETE" :uri
                                       "/vocabularies/{VocabularyName}" :code
                                       204)

(smithy/sdk/operation:define-operation delete-vocabulary-filter :shape-name
                                       "DeleteVocabularyFilter" :input
                                       delete-vocabulary-filter-request :output
                                       common-lisp:null :errors
                                       (bad-request-exception
                                        internal-failure-exception
                                        limit-exceeded-exception
                                        not-found-exception)
                                       :method "DELETE" :uri
                                       "/vocabularyFilters/{VocabularyFilterName}"
                                       :code 204)

(smithy/sdk/operation:define-operation describe-language-model :shape-name
                                       "DescribeLanguageModel" :input
                                       describe-language-model-request :output
                                       describe-language-model-response :errors
                                       (bad-request-exception
                                        internal-failure-exception
                                        limit-exceeded-exception
                                        not-found-exception)
                                       :method "GET" :uri
                                       "/languagemodels/{ModelName}" :code 200)

(smithy/sdk/operation:define-operation get-call-analytics-category :shape-name
                                       "GetCallAnalyticsCategory" :input
                                       get-call-analytics-category-request
                                       :output
                                       get-call-analytics-category-response
                                       :errors
                                       (bad-request-exception
                                        internal-failure-exception
                                        limit-exceeded-exception
                                        not-found-exception)
                                       :method "GET" :uri
                                       "/callanalyticscategories/{CategoryName}"
                                       :code 200)

(smithy/sdk/operation:define-operation get-call-analytics-job :shape-name
                                       "GetCallAnalyticsJob" :input
                                       get-call-analytics-job-request :output
                                       get-call-analytics-job-response :errors
                                       (bad-request-exception
                                        internal-failure-exception
                                        limit-exceeded-exception
                                        not-found-exception)
                                       :method "GET" :uri
                                       "/callanalyticsjobs/{CallAnalyticsJobName}"
                                       :code 200)

(smithy/sdk/operation:define-operation get-medical-scribe-job :shape-name
                                       "GetMedicalScribeJob" :input
                                       get-medical-scribe-job-request :output
                                       get-medical-scribe-job-response :errors
                                       (bad-request-exception
                                        internal-failure-exception
                                        limit-exceeded-exception
                                        not-found-exception)
                                       :method "GET" :uri
                                       "/medicalscribejobs/{MedicalScribeJobName}"
                                       :code 200)

(smithy/sdk/operation:define-operation get-medical-transcription-job
                                       :shape-name "GetMedicalTranscriptionJob"
                                       :input
                                       get-medical-transcription-job-request
                                       :output
                                       get-medical-transcription-job-response
                                       :errors
                                       (bad-request-exception
                                        internal-failure-exception
                                        limit-exceeded-exception
                                        not-found-exception)
                                       :method "GET" :uri
                                       "/medicaltranscriptionjobs/{MedicalTranscriptionJobName}"
                                       :code 200)

(smithy/sdk/operation:define-operation get-medical-vocabulary :shape-name
                                       "GetMedicalVocabulary" :input
                                       get-medical-vocabulary-request :output
                                       get-medical-vocabulary-response :errors
                                       (bad-request-exception
                                        internal-failure-exception
                                        limit-exceeded-exception
                                        not-found-exception)
                                       :method "GET" :uri
                                       "/medicalvocabularies/{VocabularyName}"
                                       :code 200)

(smithy/sdk/operation:define-operation get-transcription-job :shape-name
                                       "GetTranscriptionJob" :input
                                       get-transcription-job-request :output
                                       get-transcription-job-response :errors
                                       (bad-request-exception
                                        internal-failure-exception
                                        limit-exceeded-exception
                                        not-found-exception)
                                       :method "GET" :uri
                                       "/transcriptionjobs/{TranscriptionJobName}"
                                       :code 200)

(smithy/sdk/operation:define-operation get-vocabulary :shape-name
                                       "GetVocabulary" :input
                                       get-vocabulary-request :output
                                       get-vocabulary-response :errors
                                       (bad-request-exception
                                        internal-failure-exception
                                        limit-exceeded-exception
                                        not-found-exception)
                                       :method "GET" :uri
                                       "/vocabularies/{VocabularyName}" :code
                                       200)

(smithy/sdk/operation:define-operation get-vocabulary-filter :shape-name
                                       "GetVocabularyFilter" :input
                                       get-vocabulary-filter-request :output
                                       get-vocabulary-filter-response :errors
                                       (bad-request-exception
                                        internal-failure-exception
                                        limit-exceeded-exception
                                        not-found-exception)
                                       :method "GET" :uri
                                       "/vocabularyFilters/{VocabularyFilterName}"
                                       :code 200)

(smithy/sdk/operation:define-operation list-call-analytics-categories
                                       :shape-name
                                       "ListCallAnalyticsCategories" :input
                                       list-call-analytics-categories-request
                                       :output
                                       list-call-analytics-categories-response
                                       :errors
                                       (bad-request-exception
                                        internal-failure-exception
                                        limit-exceeded-exception)
                                       :method "GET" :uri
                                       "/callanalyticscategories" :code 200)

(smithy/sdk/operation:define-operation list-call-analytics-jobs :shape-name
                                       "ListCallAnalyticsJobs" :input
                                       list-call-analytics-jobs-request :output
                                       list-call-analytics-jobs-response
                                       :errors
                                       (bad-request-exception
                                        internal-failure-exception
                                        limit-exceeded-exception)
                                       :method "GET" :uri "/callanalyticsjobs"
                                       :code 200)

(smithy/sdk/operation:define-operation list-language-models :shape-name
                                       "ListLanguageModels" :input
                                       list-language-models-request :output
                                       list-language-models-response :errors
                                       (bad-request-exception
                                        internal-failure-exception
                                        limit-exceeded-exception)
                                       :method "GET" :uri "/languagemodels"
                                       :code 200)

(smithy/sdk/operation:define-operation list-medical-scribe-jobs :shape-name
                                       "ListMedicalScribeJobs" :input
                                       list-medical-scribe-jobs-request :output
                                       list-medical-scribe-jobs-response
                                       :errors
                                       (bad-request-exception
                                        internal-failure-exception
                                        limit-exceeded-exception)
                                       :method "GET" :uri "/medicalscribejobs"
                                       :code 200)

(smithy/sdk/operation:define-operation list-medical-transcription-jobs
                                       :shape-name
                                       "ListMedicalTranscriptionJobs" :input
                                       list-medical-transcription-jobs-request
                                       :output
                                       list-medical-transcription-jobs-response
                                       :errors
                                       (bad-request-exception
                                        internal-failure-exception
                                        limit-exceeded-exception)
                                       :method "GET" :uri
                                       "/medicaltranscriptionjobs" :code 200)

(smithy/sdk/operation:define-operation list-medical-vocabularies :shape-name
                                       "ListMedicalVocabularies" :input
                                       list-medical-vocabularies-request
                                       :output
                                       list-medical-vocabularies-response
                                       :errors
                                       (bad-request-exception
                                        internal-failure-exception
                                        limit-exceeded-exception)
                                       :method "GET" :uri
                                       "/medicalvocabularies" :code 200)

(smithy/sdk/operation:define-operation list-tags-for-resource :shape-name
                                       "ListTagsForResource" :input
                                       list-tags-for-resource-request :output
                                       list-tags-for-resource-response :errors
                                       (bad-request-exception
                                        internal-failure-exception
                                        limit-exceeded-exception
                                        not-found-exception)
                                       :method "GET" :uri "/tags/{ResourceArn}"
                                       :code 200)

(smithy/sdk/operation:define-operation list-transcription-jobs :shape-name
                                       "ListTranscriptionJobs" :input
                                       list-transcription-jobs-request :output
                                       list-transcription-jobs-response :errors
                                       (bad-request-exception
                                        internal-failure-exception
                                        limit-exceeded-exception)
                                       :method "GET" :uri "/transcriptionjobs"
                                       :code 200)

(smithy/sdk/operation:define-operation list-vocabularies :shape-name
                                       "ListVocabularies" :input
                                       list-vocabularies-request :output
                                       list-vocabularies-response :errors
                                       (bad-request-exception
                                        internal-failure-exception
                                        limit-exceeded-exception)
                                       :method "GET" :uri "/vocabularies" :code
                                       200)

(smithy/sdk/operation:define-operation list-vocabulary-filters :shape-name
                                       "ListVocabularyFilters" :input
                                       list-vocabulary-filters-request :output
                                       list-vocabulary-filters-response :errors
                                       (bad-request-exception
                                        internal-failure-exception
                                        limit-exceeded-exception)
                                       :method "GET" :uri "/vocabularyFilters"
                                       :code 200)

(smithy/sdk/operation:define-operation start-call-analytics-job :shape-name
                                       "StartCallAnalyticsJob" :input
                                       start-call-analytics-job-request :output
                                       start-call-analytics-job-response
                                       :errors
                                       (bad-request-exception
                                        conflict-exception
                                        internal-failure-exception
                                        limit-exceeded-exception)
                                       :method "PUT" :uri
                                       "/callanalyticsjobs/{CallAnalyticsJobName}"
                                       :code 200)

(smithy/sdk/operation:define-operation start-medical-scribe-job :shape-name
                                       "StartMedicalScribeJob" :input
                                       start-medical-scribe-job-request :output
                                       start-medical-scribe-job-response
                                       :errors
                                       (bad-request-exception
                                        conflict-exception
                                        internal-failure-exception
                                        limit-exceeded-exception)
                                       :method "PUT" :uri
                                       "/medicalscribejobs/{MedicalScribeJobName}"
                                       :code 200)

(smithy/sdk/operation:define-operation start-medical-transcription-job
                                       :shape-name
                                       "StartMedicalTranscriptionJob" :input
                                       start-medical-transcription-job-request
                                       :output
                                       start-medical-transcription-job-response
                                       :errors
                                       (bad-request-exception
                                        conflict-exception
                                        internal-failure-exception
                                        limit-exceeded-exception)
                                       :method "PUT" :uri
                                       "/medicaltranscriptionjobs/{MedicalTranscriptionJobName}"
                                       :code 200)

(smithy/sdk/operation:define-operation start-transcription-job :shape-name
                                       "StartTranscriptionJob" :input
                                       start-transcription-job-request :output
                                       start-transcription-job-response :errors
                                       (bad-request-exception
                                        conflict-exception
                                        internal-failure-exception
                                        limit-exceeded-exception)
                                       :method "PUT" :uri
                                       "/transcriptionjobs/{TranscriptionJobName}"
                                       :code 200)

(smithy/sdk/operation:define-operation tag-resource :shape-name "TagResource"
                                       :input tag-resource-request :output
                                       tag-resource-response :errors
                                       (bad-request-exception
                                        conflict-exception
                                        internal-failure-exception
                                        limit-exceeded-exception
                                        not-found-exception)
                                       :method "PUT" :uri "/tags/{ResourceArn}"
                                       :code 200)

(smithy/sdk/operation:define-operation untag-resource :shape-name
                                       "UntagResource" :input
                                       untag-resource-request :output
                                       untag-resource-response :errors
                                       (bad-request-exception
                                        conflict-exception
                                        internal-failure-exception
                                        limit-exceeded-exception
                                        not-found-exception)
                                       :method "DELETE" :uri
                                       "/tags/{ResourceArn}" :code 204)

(smithy/sdk/operation:define-operation update-call-analytics-category
                                       :shape-name
                                       "UpdateCallAnalyticsCategory" :input
                                       update-call-analytics-category-request
                                       :output
                                       update-call-analytics-category-response
                                       :errors
                                       (bad-request-exception
                                        conflict-exception
                                        internal-failure-exception
                                        limit-exceeded-exception
                                        not-found-exception)
                                       :method "PATCH" :uri
                                       "/callanalyticscategories/{CategoryName}"
                                       :code 200)

(smithy/sdk/operation:define-operation update-medical-vocabulary :shape-name
                                       "UpdateMedicalVocabulary" :input
                                       update-medical-vocabulary-request
                                       :output
                                       update-medical-vocabulary-response
                                       :errors
                                       (bad-request-exception
                                        conflict-exception
                                        internal-failure-exception
                                        limit-exceeded-exception
                                        not-found-exception)
                                       :method "PATCH" :uri
                                       "/medicalvocabularies/{VocabularyName}"
                                       :code 200)

(smithy/sdk/operation:define-operation update-vocabulary :shape-name
                                       "UpdateVocabulary" :input
                                       update-vocabulary-request :output
                                       update-vocabulary-response :errors
                                       (bad-request-exception
                                        conflict-exception
                                        internal-failure-exception
                                        limit-exceeded-exception
                                        not-found-exception)
                                       :method "PATCH" :uri
                                       "/vocabularies/{VocabularyName}" :code
                                       200)

(smithy/sdk/operation:define-operation update-vocabulary-filter :shape-name
                                       "UpdateVocabularyFilter" :input
                                       update-vocabulary-filter-request :output
                                       update-vocabulary-filter-response
                                       :errors
                                       (bad-request-exception
                                        internal-failure-exception
                                        limit-exceeded-exception
                                        not-found-exception)
                                       :method "PUT" :uri
                                       "/vocabularyFilters/{VocabularyFilterName}"
                                       :code 200)
