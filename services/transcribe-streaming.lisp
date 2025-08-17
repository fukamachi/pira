(uiop/package:define-package #:pira/transcribe-streaming (:use)
                             (:export #:alternative #:alternative-list
                              #:audio-chunk #:audio-event #:audio-stream
                              #:boolean #:bucket-name #:call-analytics-entity
                              #:call-analytics-entity-list
                              #:call-analytics-item #:call-analytics-item-list
                              #:call-analytics-language-code
                              #:call-analytics-transcript-result-stream
                              #:category-event #:channel-definition
                              #:channel-definitions #:channel-id
                              #:character-offsets
                              #:clinical-note-generation-result
                              #:clinical-note-generation-settings
                              #:clinical-note-generation-status #:confidence
                              #:configuration-event
                              #:content-identification-type
                              #:content-redaction-output
                              #:content-redaction-type #:date-time #:double
                              #:entity #:entity-list
                              #:get-medical-scribe-stream #:iam-role-arn
                              #:integer #:issue-detected #:issues-detected
                              #:item #:item-list #:item-type
                              #:kmsencryption-context-map #:kmskey-id
                              #:language-code #:language-identification
                              #:language-options #:language-with-score #:long
                              #:matched-category-details #:media-encoding
                              #:media-sample-rate-hertz #:medical-alternative
                              #:medical-alternative-list
                              #:medical-content-identification-type
                              #:medical-entity #:medical-entity-list
                              #:medical-item #:medical-item-list
                              #:medical-result #:medical-result-list
                              #:medical-scribe-audio-event
                              #:medical-scribe-channel-definition
                              #:medical-scribe-channel-definitions
                              #:medical-scribe-channel-id
                              #:medical-scribe-configuration-event
                              #:medical-scribe-encryption-settings
                              #:medical-scribe-input-stream
                              #:medical-scribe-language-code
                              #:medical-scribe-media-encoding
                              #:medical-scribe-media-sample-rate-hertz
                              #:medical-scribe-note-template
                              #:medical-scribe-participant-role
                              #:medical-scribe-post-stream-analytics-result
                              #:medical-scribe-post-stream-analytics-settings
                              #:medical-scribe-result-stream
                              #:medical-scribe-session-control-event
                              #:medical-scribe-session-control-event-type
                              #:medical-scribe-stream-details
                              #:medical-scribe-stream-status
                              #:medical-scribe-transcript-event
                              #:medical-scribe-transcript-item
                              #:medical-scribe-transcript-item-list
                              #:medical-scribe-transcript-item-type
                              #:medical-scribe-transcript-segment
                              #:medical-scribe-vocabulary-filter-method
                              #:medical-transcript #:medical-transcript-event
                              #:medical-transcript-result-stream #:model-name
                              #:non-empty-string #:nullable-boolean
                              #:number-of-channels #:partial-results-stability
                              #:participant-role #:pii-entity-types
                              #:points-of-interest
                              #:post-call-analytics-settings #:request-id
                              #:result #:result-list #:sentiment #:session-id
                              #:specialty #:stable
                              #:start-call-analytics-stream-transcription
                              #:start-medical-scribe-stream
                              #:start-medical-stream-transcription
                              #:start-stream-transcription #:string
                              #:string-list #:timestamp-range
                              #:timestamp-ranges #:transcribe #:transcript
                              #:transcript-event #:transcript-result-stream
                              #:type #:uri #:utterance-event
                              #:vocabulary-filter-method
                              #:vocabulary-filter-name
                              #:vocabulary-filter-names #:vocabulary-name
                              #:vocabulary-names))
(common-lisp:in-package #:pira/transcribe-streaming)

(smithy/sdk/service:define-service transcribe :shape-name "Transcribe" :version
                                   "2017-10-26" :title
                                   "Amazon Transcribe Streaming Service"
                                   :operations
                                   '(get-medical-scribe-stream
                                     start-call-analytics-stream-transcription
                                     start-medical-scribe-stream
                                     start-medical-stream-transcription
                                     start-stream-transcription)
                                   :traits
                                   '(("aws.api#service"
                                      ("sdkId" . "Transcribe Streaming")
                                      ("arnNamespace" . "transcribe")
                                      ("cloudFormationName"
                                       . "TranscribeStreaming")
                                      ("cloudTrailEventSource"
                                       . "transcribestreaming.amazonaws.com")
                                      ("endpointPrefix"
                                       . "transcribestreaming"))
                                     ("aws.auth#sigv4" ("name" . "transcribe"))
                                     ("aws.protocols#restJson1"
                                      ("http" . #("http/1.1" "h2"))
                                      ("eventStreamHttp" . #("h2")))))

(smithy/sdk/shapes:define-structure alternative common-lisp:nil
                                    ((transcript :target-type string
                                      :member-name "Transcript")
                                     (items :target-type item-list :member-name
                                      "Items")
                                     (entities :target-type entity-list
                                      :member-name "Entities"))
                                    (:shape-name "Alternative"))

(smithy/sdk/shapes:define-list alternative-list :member alternative)

(smithy/sdk/shapes:define-type audio-chunk smithy/sdk/smithy-types:blob)

(smithy/sdk/shapes:define-structure audio-event common-lisp:nil
                                    ((audio-chunk :target-type audio-chunk
                                      :member-name "AudioChunk"))
                                    (:shape-name "AudioEvent"))

(smithy/sdk/shapes:define-union audio-stream common-lisp:nil
                                ((audio-event :target-type audio-event
                                  :member-name "AudioEvent")
                                 (configuration-event :target-type
                                  configuration-event :member-name
                                  "ConfigurationEvent"))
                                (:shape-name "AudioStream"))

(smithy/sdk/shapes:define-error bad-request-exception common-lisp:nil
                                ((message :target-type string :member-name
                                  "Message"))
                                (:shape-name "BadRequestException")
                                (:error-code 400))

(smithy/sdk/shapes:define-type boolean smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-type bucket-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure call-analytics-entity common-lisp:nil
                                    ((begin-offset-millis :target-type long
                                      :member-name "BeginOffsetMillis")
                                     (end-offset-millis :target-type long
                                      :member-name "EndOffsetMillis")
                                     (category :target-type string :member-name
                                      "Category")
                                     (type :target-type string :member-name
                                      "Type")
                                     (content :target-type string :member-name
                                      "Content")
                                     (confidence :target-type confidence
                                      :member-name "Confidence"))
                                    (:shape-name "CallAnalyticsEntity"))

(smithy/sdk/shapes:define-list call-analytics-entity-list :member
                               call-analytics-entity)

(smithy/sdk/shapes:define-structure call-analytics-item common-lisp:nil
                                    ((begin-offset-millis :target-type long
                                      :member-name "BeginOffsetMillis")
                                     (end-offset-millis :target-type long
                                      :member-name "EndOffsetMillis")
                                     (type :target-type item-type :member-name
                                      "Type")
                                     (content :target-type string :member-name
                                      "Content")
                                     (confidence :target-type confidence
                                      :member-name "Confidence")
                                     (vocabulary-filter-match :target-type
                                      boolean :member-name
                                      "VocabularyFilterMatch")
                                     (stable :target-type stable :member-name
                                      "Stable"))
                                    (:shape-name "CallAnalyticsItem"))

(smithy/sdk/shapes:define-list call-analytics-item-list :member
                               call-analytics-item)

(smithy/sdk/shapes:define-enum call-analytics-language-code
    common-lisp:nil
  (:en-us "en-US")
  (:en-gb "en-GB")
  (:es-us "es-US")
  (:fr-ca "fr-CA")
  (:fr-fr "fr-FR")
  (:en-au "en-AU")
  (:it-it "it-IT")
  (:de-de "de-DE")
  (:pt-br "pt-BR"))

(smithy/sdk/shapes:define-union call-analytics-transcript-result-stream
                                common-lisp:nil
                                ((utterance-event :target-type utterance-event
                                  :member-name "UtteranceEvent")
                                 (category-event :target-type category-event
                                  :member-name "CategoryEvent")
                                 (bad-request-exception :target-type
                                  bad-request-exception :member-name
                                  "BadRequestException")
                                 (limit-exceeded-exception :target-type
                                  limit-exceeded-exception :member-name
                                  "LimitExceededException")
                                 (internal-failure-exception :target-type
                                  internal-failure-exception :member-name
                                  "InternalFailureException")
                                 (conflict-exception :target-type
                                  conflict-exception :member-name
                                  "ConflictException")
                                 (service-unavailable-exception :target-type
                                  service-unavailable-exception :member-name
                                  "ServiceUnavailableException"))
                                (:shape-name
                                 "CallAnalyticsTranscriptResultStream"))

(smithy/sdk/shapes:define-structure category-event common-lisp:nil
                                    ((matched-categories :target-type
                                      string-list :member-name
                                      "MatchedCategories")
                                     (matched-details :target-type
                                      matched-category-details :member-name
                                      "MatchedDetails"))
                                    (:shape-name "CategoryEvent"))

(smithy/sdk/shapes:define-structure channel-definition common-lisp:nil
                                    ((channel-id :target-type channel-id
                                      :required common-lisp:t :member-name
                                      "ChannelId")
                                     (participant-role :target-type
                                      participant-role :required common-lisp:t
                                      :member-name "ParticipantRole"))
                                    (:shape-name "ChannelDefinition"))

(smithy/sdk/shapes:define-list channel-definitions :member channel-definition)

(smithy/sdk/shapes:define-type channel-id smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-structure character-offsets common-lisp:nil
                                    ((begin :target-type integer :member-name
                                      "Begin")
                                     (end :target-type integer :member-name
                                      "End"))
                                    (:shape-name "CharacterOffsets"))

(smithy/sdk/shapes:define-structure clinical-note-generation-result
                                    common-lisp:nil
                                    ((clinical-note-output-location
                                      :target-type uri :member-name
                                      "ClinicalNoteOutputLocation")
                                     (transcript-output-location :target-type
                                      uri :member-name
                                      "TranscriptOutputLocation")
                                     (status :target-type
                                      clinical-note-generation-status
                                      :member-name "Status")
                                     (failure-reason :target-type string
                                      :member-name "FailureReason"))
                                    (:shape-name
                                     "ClinicalNoteGenerationResult"))

(smithy/sdk/shapes:define-structure clinical-note-generation-settings
                                    common-lisp:nil
                                    ((output-bucket-name :target-type
                                      bucket-name :required common-lisp:t
                                      :member-name "OutputBucketName")
                                     (note-template :target-type
                                      medical-scribe-note-template :member-name
                                      "NoteTemplate"))
                                    (:shape-name
                                     "ClinicalNoteGenerationSettings"))

(smithy/sdk/shapes:define-enum clinical-note-generation-status
    common-lisp:nil
  (:in-progress "IN_PROGRESS")
  (:failed "FAILED")
  (:completed "COMPLETED"))

(smithy/sdk/shapes:define-type confidence smithy/sdk/smithy-types:double)

(smithy/sdk/shapes:define-structure configuration-event common-lisp:nil
                                    ((channel-definitions :target-type
                                      channel-definitions :member-name
                                      "ChannelDefinitions")
                                     (post-call-analytics-settings :target-type
                                      post-call-analytics-settings :member-name
                                      "PostCallAnalyticsSettings"))
                                    (:shape-name "ConfigurationEvent"))

(smithy/sdk/shapes:define-error conflict-exception common-lisp:nil
                                ((message :target-type string :member-name
                                  "Message"))
                                (:shape-name "ConflictException")
                                (:error-code 409))

(smithy/sdk/shapes:define-enum content-identification-type
    common-lisp:nil
  (:pii "PII"))

(smithy/sdk/shapes:define-enum content-redaction-output
    common-lisp:nil
  (:redacted "redacted")
  (:redacted-and-unredacted "redacted_and_unredacted"))

(smithy/sdk/shapes:define-enum content-redaction-type
    common-lisp:nil
  (:pii "PII"))

(smithy/sdk/shapes:define-type date-time smithy/sdk/smithy-types:timestamp)

(smithy/sdk/shapes:define-type double smithy/sdk/smithy-types:double)

(smithy/sdk/shapes:define-structure entity common-lisp:nil
                                    ((start-time :target-type double
                                      :member-name "StartTime")
                                     (end-time :target-type double :member-name
                                      "EndTime")
                                     (category :target-type string :member-name
                                      "Category")
                                     (type :target-type string :member-name
                                      "Type")
                                     (content :target-type string :member-name
                                      "Content")
                                     (confidence :target-type confidence
                                      :member-name "Confidence"))
                                    (:shape-name "Entity"))

(smithy/sdk/shapes:define-list entity-list :member entity)

(smithy/sdk/shapes:define-input get-medical-scribe-stream-request
                                common-lisp:nil
                                ((session-id :target-type session-id :required
                                  common-lisp:t :member-name "SessionId"
                                  :http-label common-lisp:t))
                                (:shape-name "GetMedicalScribeStreamRequest"))

(smithy/sdk/shapes:define-output get-medical-scribe-stream-response
                                 common-lisp:nil
                                 ((medical-scribe-stream-details :target-type
                                   medical-scribe-stream-details :member-name
                                   "MedicalScribeStreamDetails"))
                                 (:shape-name "GetMedicalScribeStreamResponse"))

(smithy/sdk/shapes:define-type iam-role-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type integer smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-error internal-failure-exception common-lisp:nil
                                ((message :target-type string :member-name
                                  "Message"))
                                (:shape-name "InternalFailureException")
                                (:error-code 500))

(smithy/sdk/shapes:define-structure issue-detected common-lisp:nil
                                    ((character-offsets :target-type
                                      character-offsets :member-name
                                      "CharacterOffsets"))
                                    (:shape-name "IssueDetected"))

(smithy/sdk/shapes:define-list issues-detected :member issue-detected)

(smithy/sdk/shapes:define-structure item common-lisp:nil
                                    ((start-time :target-type double
                                      :member-name "StartTime")
                                     (end-time :target-type double :member-name
                                      "EndTime")
                                     (type :target-type item-type :member-name
                                      "Type")
                                     (content :target-type string :member-name
                                      "Content")
                                     (vocabulary-filter-match :target-type
                                      boolean :member-name
                                      "VocabularyFilterMatch")
                                     (speaker :target-type string :member-name
                                      "Speaker")
                                     (confidence :target-type confidence
                                      :member-name "Confidence")
                                     (stable :target-type stable :member-name
                                      "Stable"))
                                    (:shape-name "Item"))

(smithy/sdk/shapes:define-list item-list :member item)

(smithy/sdk/shapes:define-enum item-type
    common-lisp:nil
  (:pronunciation "pronunciation")
  (:punctuation "punctuation"))

(smithy/sdk/shapes:define-map kmsencryption-context-map :key non-empty-string
                              :value non-empty-string)

(smithy/sdk/shapes:define-type kmskey-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum language-code
    common-lisp:nil
  (:en-us "en-US")
  (:en-gb "en-GB")
  (:es-us "es-US")
  (:fr-ca "fr-CA")
  (:fr-fr "fr-FR")
  (:en-au "en-AU")
  (:it-it "it-IT")
  (:de-de "de-DE")
  (:pt-br "pt-BR")
  (:ja-jp "ja-JP")
  (:ko-kr "ko-KR")
  (:zh-cn "zh-CN")
  (:th-th "th-TH")
  (:es-es "es-ES")
  (:ar-sa "ar-SA")
  (:pt-pt "pt-PT")
  (:ca-es "ca-ES")
  (:ar-ae "ar-AE")
  (:hi-in "hi-IN")
  (:zh-hk "zh-HK")
  (:nl-nl "nl-NL")
  (:no-no "no-NO")
  (:sv-se "sv-SE")
  (:pl-pl "pl-PL")
  (:fi-fi "fi-FI")
  (:zh-tw "zh-TW")
  (:en-in "en-IN")
  (:en-ie "en-IE")
  (:en-nz "en-NZ")
  (:en-ab "en-AB")
  (:en-za "en-ZA")
  (:en-wl "en-WL")
  (:de-ch "de-CH")
  (:af-za "af-ZA")
  (:eu-es "eu-ES")
  (:hr-hr "hr-HR")
  (:cs-cz "cs-CZ")
  (:da-dk "da-DK")
  (:fa-ir "fa-IR")
  (:gl-es "gl-ES")
  (:el-gr "el-GR")
  (:he-il "he-IL")
  (:id-id "id-ID")
  (:lv-lv "lv-LV")
  (:ms-my "ms-MY")
  (:ro-ro "ro-RO")
  (:ru-ru "ru-RU")
  (:sr-rs "sr-RS")
  (:sk-sk "sk-SK")
  (:so-so "so-SO")
  (:tl-ph "tl-PH")
  (:uk-ua "uk-UA")
  (:vi-vn "vi-VN")
  (:zu-za "zu-ZA"))

(smithy/sdk/shapes:define-list language-identification :member
                               language-with-score)

(smithy/sdk/shapes:define-type language-options smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure language-with-score common-lisp:nil
                                    ((language-code :target-type language-code
                                      :member-name "LanguageCode")
                                     (score :target-type double :member-name
                                      "Score"))
                                    (:shape-name "LanguageWithScore"))

(smithy/sdk/shapes:define-error limit-exceeded-exception common-lisp:nil
                                ((message :target-type string :member-name
                                  "Message"))
                                (:shape-name "LimitExceededException")
                                (:error-code 429))

(smithy/sdk/shapes:define-type long smithy/sdk/smithy-types:long)

(smithy/sdk/shapes:define-map matched-category-details :key string :value
                              points-of-interest)

(smithy/sdk/shapes:define-enum media-encoding
    common-lisp:nil
  (:pcm "pcm")
  (:ogg-opus "ogg-opus")
  (:flac "flac"))

(smithy/sdk/shapes:define-type media-sample-rate-hertz
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-structure medical-alternative common-lisp:nil
                                    ((transcript :target-type string
                                      :member-name "Transcript")
                                     (items :target-type medical-item-list
                                      :member-name "Items")
                                     (entities :target-type medical-entity-list
                                      :member-name "Entities"))
                                    (:shape-name "MedicalAlternative"))

(smithy/sdk/shapes:define-list medical-alternative-list :member
                               medical-alternative)

(smithy/sdk/shapes:define-enum medical-content-identification-type
    common-lisp:nil
  (:phi "PHI"))

(smithy/sdk/shapes:define-structure medical-entity common-lisp:nil
                                    ((start-time :target-type double
                                      :member-name "StartTime")
                                     (end-time :target-type double :member-name
                                      "EndTime")
                                     (category :target-type string :member-name
                                      "Category")
                                     (content :target-type string :member-name
                                      "Content")
                                     (confidence :target-type confidence
                                      :member-name "Confidence"))
                                    (:shape-name "MedicalEntity"))

(smithy/sdk/shapes:define-list medical-entity-list :member medical-entity)

(smithy/sdk/shapes:define-structure medical-item common-lisp:nil
                                    ((start-time :target-type double
                                      :member-name "StartTime")
                                     (end-time :target-type double :member-name
                                      "EndTime")
                                     (type :target-type item-type :member-name
                                      "Type")
                                     (content :target-type string :member-name
                                      "Content")
                                     (confidence :target-type confidence
                                      :member-name "Confidence")
                                     (speaker :target-type string :member-name
                                      "Speaker"))
                                    (:shape-name "MedicalItem"))

(smithy/sdk/shapes:define-list medical-item-list :member medical-item)

(smithy/sdk/shapes:define-structure medical-result common-lisp:nil
                                    ((result-id :target-type string
                                      :member-name "ResultId")
                                     (start-time :target-type double
                                      :member-name "StartTime")
                                     (end-time :target-type double :member-name
                                      "EndTime")
                                     (is-partial :target-type boolean
                                      :member-name "IsPartial")
                                     (alternatives :target-type
                                      medical-alternative-list :member-name
                                      "Alternatives")
                                     (channel-id :target-type string
                                      :member-name "ChannelId"))
                                    (:shape-name "MedicalResult"))

(smithy/sdk/shapes:define-list medical-result-list :member medical-result)

(smithy/sdk/shapes:define-structure medical-scribe-audio-event common-lisp:nil
                                    ((audio-chunk :target-type audio-chunk
                                      :required common-lisp:t :member-name
                                      "AudioChunk"))
                                    (:shape-name "MedicalScribeAudioEvent"))

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

(smithy/sdk/shapes:define-structure medical-scribe-configuration-event
                                    common-lisp:nil
                                    ((vocabulary-name :target-type
                                      vocabulary-name :member-name
                                      "VocabularyName")
                                     (vocabulary-filter-name :target-type
                                      vocabulary-filter-name :member-name
                                      "VocabularyFilterName")
                                     (vocabulary-filter-method :target-type
                                      medical-scribe-vocabulary-filter-method
                                      :member-name "VocabularyFilterMethod")
                                     (resource-access-role-arn :target-type
                                      iam-role-arn :required common-lisp:t
                                      :member-name "ResourceAccessRoleArn")
                                     (channel-definitions :target-type
                                      medical-scribe-channel-definitions
                                      :member-name "ChannelDefinitions")
                                     (encryption-settings :target-type
                                      medical-scribe-encryption-settings
                                      :member-name "EncryptionSettings")
                                     (post-stream-analytics-settings
                                      :target-type
                                      medical-scribe-post-stream-analytics-settings
                                      :required common-lisp:t :member-name
                                      "PostStreamAnalyticsSettings"))
                                    (:shape-name
                                     "MedicalScribeConfigurationEvent"))

(smithy/sdk/shapes:define-structure medical-scribe-encryption-settings
                                    common-lisp:nil
                                    ((kms-encryption-context :target-type
                                      kmsencryption-context-map :member-name
                                      "KmsEncryptionContext")
                                     (kms-key-id :target-type kmskey-id
                                      :required common-lisp:t :member-name
                                      "KmsKeyId"))
                                    (:shape-name
                                     "MedicalScribeEncryptionSettings"))

(smithy/sdk/shapes:define-union medical-scribe-input-stream common-lisp:nil
                                ((audio-event :target-type
                                  medical-scribe-audio-event :member-name
                                  "AudioEvent")
                                 (session-control-event :target-type
                                  medical-scribe-session-control-event
                                  :member-name "SessionControlEvent")
                                 (configuration-event :target-type
                                  medical-scribe-configuration-event
                                  :member-name "ConfigurationEvent"))
                                (:shape-name "MedicalScribeInputStream"))

(smithy/sdk/shapes:define-enum medical-scribe-language-code
    common-lisp:nil
  (:en-us "en-US"))

(smithy/sdk/shapes:define-enum medical-scribe-media-encoding
    common-lisp:nil
  (:pcm "pcm")
  (:ogg-opus "ogg-opus")
  (:flac "flac"))

(smithy/sdk/shapes:define-type medical-scribe-media-sample-rate-hertz
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-enum medical-scribe-note-template
    common-lisp:nil
  (:history-and-physical "HISTORY_AND_PHYSICAL")
  (:girpp "GIRPP")
  (:dap "DAP")
  (:sirp "SIRP")
  (:birp "BIRP")
  (:behavioral-soap "BEHAVIORAL_SOAP")
  (:physical-soap "PHYSICAL_SOAP"))

(smithy/sdk/shapes:define-enum medical-scribe-participant-role
    common-lisp:nil
  (:patient "PATIENT")
  (:clinician "CLINICIAN"))

(smithy/sdk/shapes:define-structure medical-scribe-post-stream-analytics-result
                                    common-lisp:nil
                                    ((clinical-note-generation-result
                                      :target-type
                                      clinical-note-generation-result
                                      :member-name
                                      "ClinicalNoteGenerationResult"))
                                    (:shape-name
                                     "MedicalScribePostStreamAnalyticsResult"))

(smithy/sdk/shapes:define-structure
 medical-scribe-post-stream-analytics-settings common-lisp:nil
 ((clinical-note-generation-settings :target-type
   clinical-note-generation-settings :required common-lisp:t :member-name
   "ClinicalNoteGenerationSettings"))
 (:shape-name "MedicalScribePostStreamAnalyticsSettings"))

(smithy/sdk/shapes:define-union medical-scribe-result-stream common-lisp:nil
                                ((transcript-event :target-type
                                  medical-scribe-transcript-event :member-name
                                  "TranscriptEvent")
                                 (bad-request-exception :target-type
                                  bad-request-exception :member-name
                                  "BadRequestException")
                                 (limit-exceeded-exception :target-type
                                  limit-exceeded-exception :member-name
                                  "LimitExceededException")
                                 (internal-failure-exception :target-type
                                  internal-failure-exception :member-name
                                  "InternalFailureException")
                                 (conflict-exception :target-type
                                  conflict-exception :member-name
                                  "ConflictException")
                                 (service-unavailable-exception :target-type
                                  service-unavailable-exception :member-name
                                  "ServiceUnavailableException"))
                                (:shape-name "MedicalScribeResultStream"))

(smithy/sdk/shapes:define-structure medical-scribe-session-control-event
                                    common-lisp:nil
                                    ((type :target-type
                                      medical-scribe-session-control-event-type
                                      :required common-lisp:t :member-name
                                      "Type"))
                                    (:shape-name
                                     "MedicalScribeSessionControlEvent"))

(smithy/sdk/shapes:define-enum medical-scribe-session-control-event-type
    common-lisp:nil
  (:end-of-session "END_OF_SESSION"))

(smithy/sdk/shapes:define-structure medical-scribe-stream-details
                                    common-lisp:nil
                                    ((session-id :target-type session-id
                                      :member-name "SessionId")
                                     (stream-created-at :target-type date-time
                                      :member-name "StreamCreatedAt")
                                     (stream-ended-at :target-type date-time
                                      :member-name "StreamEndedAt")
                                     (language-code :target-type
                                      medical-scribe-language-code :member-name
                                      "LanguageCode")
                                     (media-sample-rate-hertz :target-type
                                      medical-scribe-media-sample-rate-hertz
                                      :member-name "MediaSampleRateHertz")
                                     (media-encoding :target-type
                                      medical-scribe-media-encoding
                                      :member-name "MediaEncoding")
                                     (vocabulary-name :target-type
                                      vocabulary-name :member-name
                                      "VocabularyName")
                                     (vocabulary-filter-name :target-type
                                      vocabulary-filter-name :member-name
                                      "VocabularyFilterName")
                                     (vocabulary-filter-method :target-type
                                      medical-scribe-vocabulary-filter-method
                                      :member-name "VocabularyFilterMethod")
                                     (resource-access-role-arn :target-type
                                      iam-role-arn :member-name
                                      "ResourceAccessRoleArn")
                                     (channel-definitions :target-type
                                      medical-scribe-channel-definitions
                                      :member-name "ChannelDefinitions")
                                     (encryption-settings :target-type
                                      medical-scribe-encryption-settings
                                      :member-name "EncryptionSettings")
                                     (stream-status :target-type
                                      medical-scribe-stream-status :member-name
                                      "StreamStatus")
                                     (post-stream-analytics-settings
                                      :target-type
                                      medical-scribe-post-stream-analytics-settings
                                      :member-name
                                      "PostStreamAnalyticsSettings")
                                     (post-stream-analytics-result :target-type
                                      medical-scribe-post-stream-analytics-result
                                      :member-name
                                      "PostStreamAnalyticsResult"))
                                    (:shape-name "MedicalScribeStreamDetails"))

(smithy/sdk/shapes:define-enum medical-scribe-stream-status
    common-lisp:nil
  (:in-progress "IN_PROGRESS")
  (:paused "PAUSED")
  (:failed "FAILED")
  (:completed "COMPLETED"))

(smithy/sdk/shapes:define-structure medical-scribe-transcript-event
                                    common-lisp:nil
                                    ((transcript-segment :target-type
                                      medical-scribe-transcript-segment
                                      :member-name "TranscriptSegment"))
                                    (:shape-name
                                     "MedicalScribeTranscriptEvent"))

(smithy/sdk/shapes:define-structure medical-scribe-transcript-item
                                    common-lisp:nil
                                    ((begin-audio-time :target-type double
                                      :member-name "BeginAudioTime")
                                     (end-audio-time :target-type double
                                      :member-name "EndAudioTime")
                                     (type :target-type
                                      medical-scribe-transcript-item-type
                                      :member-name "Type")
                                     (confidence :target-type confidence
                                      :member-name "Confidence")
                                     (content :target-type string :member-name
                                      "Content")
                                     (vocabulary-filter-match :target-type
                                      nullable-boolean :member-name
                                      "VocabularyFilterMatch"))
                                    (:shape-name "MedicalScribeTranscriptItem"))

(smithy/sdk/shapes:define-list medical-scribe-transcript-item-list :member
                               medical-scribe-transcript-item)

(smithy/sdk/shapes:define-enum medical-scribe-transcript-item-type
    common-lisp:nil
  (:pronunciation "pronunciation")
  (:punctuation "punctuation"))

(smithy/sdk/shapes:define-structure medical-scribe-transcript-segment
                                    common-lisp:nil
                                    ((segment-id :target-type string
                                      :member-name "SegmentId")
                                     (begin-audio-time :target-type double
                                      :member-name "BeginAudioTime")
                                     (end-audio-time :target-type double
                                      :member-name "EndAudioTime")
                                     (content :target-type string :member-name
                                      "Content")
                                     (items :target-type
                                      medical-scribe-transcript-item-list
                                      :member-name "Items")
                                     (is-partial :target-type boolean
                                      :member-name "IsPartial")
                                     (channel-id :target-type string
                                      :member-name "ChannelId"))
                                    (:shape-name
                                     "MedicalScribeTranscriptSegment"))

(smithy/sdk/shapes:define-enum medical-scribe-vocabulary-filter-method
    common-lisp:nil
  (:remove "remove")
  (:mask "mask")
  (:tag "tag"))

(smithy/sdk/shapes:define-structure medical-transcript common-lisp:nil
                                    ((results :target-type medical-result-list
                                      :member-name "Results"))
                                    (:shape-name "MedicalTranscript"))

(smithy/sdk/shapes:define-structure medical-transcript-event common-lisp:nil
                                    ((transcript :target-type
                                      medical-transcript :member-name
                                      "Transcript"))
                                    (:shape-name "MedicalTranscriptEvent"))

(smithy/sdk/shapes:define-union medical-transcript-result-stream
                                common-lisp:nil
                                ((transcript-event :target-type
                                  medical-transcript-event :member-name
                                  "TranscriptEvent")
                                 (bad-request-exception :target-type
                                  bad-request-exception :member-name
                                  "BadRequestException")
                                 (limit-exceeded-exception :target-type
                                  limit-exceeded-exception :member-name
                                  "LimitExceededException")
                                 (internal-failure-exception :target-type
                                  internal-failure-exception :member-name
                                  "InternalFailureException")
                                 (conflict-exception :target-type
                                  conflict-exception :member-name
                                  "ConflictException")
                                 (service-unavailable-exception :target-type
                                  service-unavailable-exception :member-name
                                  "ServiceUnavailableException"))
                                (:shape-name "MedicalTranscriptResultStream"))

(smithy/sdk/shapes:define-type model-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type non-empty-string smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type nullable-boolean smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-type number-of-channels
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-enum partial-results-stability
    common-lisp:nil
  (:high "high")
  (:medium "medium")
  (:low "low"))

(smithy/sdk/shapes:define-enum participant-role
    common-lisp:nil
  (:agent "AGENT")
  (:customer "CUSTOMER"))

(smithy/sdk/shapes:define-type pii-entity-types smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure points-of-interest common-lisp:nil
                                    ((timestamp-ranges :target-type
                                      timestamp-ranges :member-name
                                      "TimestampRanges"))
                                    (:shape-name "PointsOfInterest"))

(smithy/sdk/shapes:define-structure post-call-analytics-settings
                                    common-lisp:nil
                                    ((output-location :target-type string
                                      :required common-lisp:t :member-name
                                      "OutputLocation")
                                     (data-access-role-arn :target-type string
                                      :required common-lisp:t :member-name
                                      "DataAccessRoleArn")
                                     (content-redaction-output :target-type
                                      content-redaction-output :member-name
                                      "ContentRedactionOutput")
                                     (output-encryption-kmskey-id :target-type
                                      string :member-name
                                      "OutputEncryptionKMSKeyId"))
                                    (:shape-name "PostCallAnalyticsSettings"))

(smithy/sdk/shapes:define-type request-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error resource-not-found-exception common-lisp:nil
                                ((message :target-type string :member-name
                                  "Message"))
                                (:shape-name "ResourceNotFoundException")
                                (:error-code 404))

(smithy/sdk/shapes:define-structure result common-lisp:nil
                                    ((result-id :target-type string
                                      :member-name "ResultId")
                                     (start-time :target-type double
                                      :member-name "StartTime")
                                     (end-time :target-type double :member-name
                                      "EndTime")
                                     (is-partial :target-type boolean
                                      :member-name "IsPartial")
                                     (alternatives :target-type
                                      alternative-list :member-name
                                      "Alternatives")
                                     (channel-id :target-type string
                                      :member-name "ChannelId")
                                     (language-code :target-type language-code
                                      :member-name "LanguageCode")
                                     (language-identification :target-type
                                      language-identification :member-name
                                      "LanguageIdentification"))
                                    (:shape-name "Result"))

(smithy/sdk/shapes:define-list result-list :member result)

(smithy/sdk/shapes:define-enum sentiment
    common-lisp:nil
  (:positive "POSITIVE")
  (:negative "NEGATIVE")
  (:mixed "MIXED")
  (:neutral "NEUTRAL"))

(smithy/sdk/shapes:define-error service-unavailable-exception common-lisp:nil
                                ((message :target-type string :member-name
                                  "Message"))
                                (:shape-name "ServiceUnavailableException")
                                (:error-code 503))

(smithy/sdk/shapes:define-type session-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum specialty
    common-lisp:nil
  (:primarycare "PRIMARYCARE")
  (:cardiology "CARDIOLOGY")
  (:neurology "NEUROLOGY")
  (:oncology "ONCOLOGY")
  (:radiology "RADIOLOGY")
  (:urology "UROLOGY"))

(smithy/sdk/shapes:define-type stable smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-input
 start-call-analytics-stream-transcription-request common-lisp:nil
 ((language-code :target-type call-analytics-language-code :required
   common-lisp:t :member-name "LanguageCode" :http-header
   "x-amzn-transcribe-language-code")
  (media-sample-rate-hertz :target-type media-sample-rate-hertz :required
   common-lisp:t :member-name "MediaSampleRateHertz" :http-header
   "x-amzn-transcribe-sample-rate")
  (media-encoding :target-type media-encoding :required common-lisp:t
   :member-name "MediaEncoding" :http-header
   "x-amzn-transcribe-media-encoding")
  (vocabulary-name :target-type vocabulary-name :member-name "VocabularyName"
   :http-header "x-amzn-transcribe-vocabulary-name")
  (session-id :target-type session-id :member-name "SessionId" :http-header
   "x-amzn-transcribe-session-id")
  (audio-stream :target-type audio-stream :required common-lisp:t :member-name
   "AudioStream" :http-payload common-lisp:t)
  (vocabulary-filter-name :target-type vocabulary-filter-name :member-name
   "VocabularyFilterName" :http-header
   "x-amzn-transcribe-vocabulary-filter-name")
  (vocabulary-filter-method :target-type vocabulary-filter-method :member-name
   "VocabularyFilterMethod" :http-header
   "x-amzn-transcribe-vocabulary-filter-method")
  (language-model-name :target-type model-name :member-name "LanguageModelName"
   :http-header "x-amzn-transcribe-language-model-name")
  (enable-partial-results-stabilization :target-type boolean :member-name
   "EnablePartialResultsStabilization" :http-header
   "x-amzn-transcribe-enable-partial-results-stabilization")
  (partial-results-stability :target-type partial-results-stability
   :member-name "PartialResultsStability" :http-header
   "x-amzn-transcribe-partial-results-stability")
  (content-identification-type :target-type content-identification-type
   :member-name "ContentIdentificationType" :http-header
   "x-amzn-transcribe-content-identification-type")
  (content-redaction-type :target-type content-redaction-type :member-name
   "ContentRedactionType" :http-header
   "x-amzn-transcribe-content-redaction-type")
  (pii-entity-types :target-type pii-entity-types :member-name "PiiEntityTypes"
   :http-header "x-amzn-transcribe-pii-entity-types"))
 (:shape-name "StartCallAnalyticsStreamTranscriptionRequest"))

(smithy/sdk/shapes:define-output
 start-call-analytics-stream-transcription-response common-lisp:nil
 ((request-id :target-type request-id :member-name "RequestId" :http-header
   "x-amzn-request-id")
  (language-code :target-type call-analytics-language-code :member-name
   "LanguageCode" :http-header "x-amzn-transcribe-language-code")
  (media-sample-rate-hertz :target-type media-sample-rate-hertz :member-name
   "MediaSampleRateHertz" :http-header "x-amzn-transcribe-sample-rate")
  (media-encoding :target-type media-encoding :member-name "MediaEncoding"
   :http-header "x-amzn-transcribe-media-encoding")
  (vocabulary-name :target-type vocabulary-name :member-name "VocabularyName"
   :http-header "x-amzn-transcribe-vocabulary-name")
  (session-id :target-type session-id :member-name "SessionId" :http-header
   "x-amzn-transcribe-session-id")
  (call-analytics-transcript-result-stream :target-type
   call-analytics-transcript-result-stream :member-name
   "CallAnalyticsTranscriptResultStream" :http-payload common-lisp:t)
  (vocabulary-filter-name :target-type vocabulary-filter-name :member-name
   "VocabularyFilterName" :http-header
   "x-amzn-transcribe-vocabulary-filter-name")
  (vocabulary-filter-method :target-type vocabulary-filter-method :member-name
   "VocabularyFilterMethod" :http-header
   "x-amzn-transcribe-vocabulary-filter-method")
  (language-model-name :target-type model-name :member-name "LanguageModelName"
   :http-header "x-amzn-transcribe-language-model-name")
  (enable-partial-results-stabilization :target-type boolean :member-name
   "EnablePartialResultsStabilization" :http-header
   "x-amzn-transcribe-enable-partial-results-stabilization")
  (partial-results-stability :target-type partial-results-stability
   :member-name "PartialResultsStability" :http-header
   "x-amzn-transcribe-partial-results-stability")
  (content-identification-type :target-type content-identification-type
   :member-name "ContentIdentificationType" :http-header
   "x-amzn-transcribe-content-identification-type")
  (content-redaction-type :target-type content-redaction-type :member-name
   "ContentRedactionType" :http-header
   "x-amzn-transcribe-content-redaction-type")
  (pii-entity-types :target-type pii-entity-types :member-name "PiiEntityTypes"
   :http-header "x-amzn-transcribe-pii-entity-types"))
 (:shape-name "StartCallAnalyticsStreamTranscriptionResponse"))

(smithy/sdk/shapes:define-input start-medical-scribe-stream-request
                                common-lisp:nil
                                ((session-id :target-type session-id
                                  :member-name "SessionId" :http-header
                                  "x-amzn-transcribe-session-id")
                                 (language-code :target-type
                                  medical-scribe-language-code :required
                                  common-lisp:t :member-name "LanguageCode"
                                  :http-header
                                  "x-amzn-transcribe-language-code")
                                 (media-sample-rate-hertz :target-type
                                  medical-scribe-media-sample-rate-hertz
                                  :required common-lisp:t :member-name
                                  "MediaSampleRateHertz" :http-header
                                  "x-amzn-transcribe-sample-rate")
                                 (media-encoding :target-type
                                  medical-scribe-media-encoding :required
                                  common-lisp:t :member-name "MediaEncoding"
                                  :http-header
                                  "x-amzn-transcribe-media-encoding")
                                 (input-stream :target-type
                                  medical-scribe-input-stream :required
                                  common-lisp:t :member-name "InputStream"
                                  :http-payload common-lisp:t))
                                (:shape-name "StartMedicalScribeStreamRequest"))

(smithy/sdk/shapes:define-output start-medical-scribe-stream-response
                                 common-lisp:nil
                                 ((session-id :target-type session-id
                                   :member-name "SessionId" :http-header
                                   "x-amzn-transcribe-session-id")
                                  (request-id :target-type request-id
                                   :member-name "RequestId" :http-header
                                   "x-amzn-request-id")
                                  (language-code :target-type
                                   medical-scribe-language-code :member-name
                                   "LanguageCode" :http-header
                                   "x-amzn-transcribe-language-code")
                                  (media-sample-rate-hertz :target-type
                                   medical-scribe-media-sample-rate-hertz
                                   :member-name "MediaSampleRateHertz"
                                   :http-header
                                   "x-amzn-transcribe-sample-rate")
                                  (media-encoding :target-type
                                   medical-scribe-media-encoding :member-name
                                   "MediaEncoding" :http-header
                                   "x-amzn-transcribe-media-encoding")
                                  (result-stream :target-type
                                   medical-scribe-result-stream :member-name
                                   "ResultStream" :http-payload common-lisp:t))
                                 (:shape-name
                                  "StartMedicalScribeStreamResponse"))

(smithy/sdk/shapes:define-input start-medical-stream-transcription-request
                                common-lisp:nil
                                ((language-code :target-type language-code
                                  :required common-lisp:t :member-name
                                  "LanguageCode" :http-header
                                  "x-amzn-transcribe-language-code")
                                 (media-sample-rate-hertz :target-type
                                  media-sample-rate-hertz :required
                                  common-lisp:t :member-name
                                  "MediaSampleRateHertz" :http-header
                                  "x-amzn-transcribe-sample-rate")
                                 (media-encoding :target-type media-encoding
                                  :required common-lisp:t :member-name
                                  "MediaEncoding" :http-header
                                  "x-amzn-transcribe-media-encoding")
                                 (vocabulary-name :target-type vocabulary-name
                                  :member-name "VocabularyName" :http-header
                                  "x-amzn-transcribe-vocabulary-name")
                                 (specialty :target-type specialty :required
                                  common-lisp:t :member-name "Specialty"
                                  :http-header "x-amzn-transcribe-specialty")
                                 (type :target-type type :required
                                  common-lisp:t :member-name "Type"
                                  :http-header "x-amzn-transcribe-type")
                                 (show-speaker-label :target-type boolean
                                  :member-name "ShowSpeakerLabel" :http-header
                                  "x-amzn-transcribe-show-speaker-label")
                                 (session-id :target-type session-id
                                  :member-name "SessionId" :http-header
                                  "x-amzn-transcribe-session-id")
                                 (audio-stream :target-type audio-stream
                                  :required common-lisp:t :member-name
                                  "AudioStream" :http-payload common-lisp:t)
                                 (enable-channel-identification :target-type
                                  boolean :member-name
                                  "EnableChannelIdentification" :http-header
                                  "x-amzn-transcribe-enable-channel-identification")
                                 (number-of-channels :target-type
                                  number-of-channels :member-name
                                  "NumberOfChannels" :http-header
                                  "x-amzn-transcribe-number-of-channels")
                                 (content-identification-type :target-type
                                  medical-content-identification-type
                                  :member-name "ContentIdentificationType"
                                  :http-header
                                  "x-amzn-transcribe-content-identification-type"))
                                (:shape-name
                                 "StartMedicalStreamTranscriptionRequest"))

(smithy/sdk/shapes:define-output start-medical-stream-transcription-response
                                 common-lisp:nil
                                 ((request-id :target-type request-id
                                   :member-name "RequestId" :http-header
                                   "x-amzn-request-id")
                                  (language-code :target-type language-code
                                   :member-name "LanguageCode" :http-header
                                   "x-amzn-transcribe-language-code")
                                  (media-sample-rate-hertz :target-type
                                   media-sample-rate-hertz :member-name
                                   "MediaSampleRateHertz" :http-header
                                   "x-amzn-transcribe-sample-rate")
                                  (media-encoding :target-type media-encoding
                                   :member-name "MediaEncoding" :http-header
                                   "x-amzn-transcribe-media-encoding")
                                  (vocabulary-name :target-type vocabulary-name
                                   :member-name "VocabularyName" :http-header
                                   "x-amzn-transcribe-vocabulary-name")
                                  (specialty :target-type specialty
                                   :member-name "Specialty" :http-header
                                   "x-amzn-transcribe-specialty")
                                  (type :target-type type :member-name "Type"
                                   :http-header "x-amzn-transcribe-type")
                                  (show-speaker-label :target-type boolean
                                   :member-name "ShowSpeakerLabel" :http-header
                                   "x-amzn-transcribe-show-speaker-label")
                                  (session-id :target-type session-id
                                   :member-name "SessionId" :http-header
                                   "x-amzn-transcribe-session-id")
                                  (transcript-result-stream :target-type
                                   medical-transcript-result-stream
                                   :member-name "TranscriptResultStream"
                                   :http-payload common-lisp:t)
                                  (enable-channel-identification :target-type
                                   boolean :member-name
                                   "EnableChannelIdentification" :http-header
                                   "x-amzn-transcribe-enable-channel-identification")
                                  (number-of-channels :target-type
                                   number-of-channels :member-name
                                   "NumberOfChannels" :http-header
                                   "x-amzn-transcribe-number-of-channels")
                                  (content-identification-type :target-type
                                   medical-content-identification-type
                                   :member-name "ContentIdentificationType"
                                   :http-header
                                   "x-amzn-transcribe-content-identification-type"))
                                 (:shape-name
                                  "StartMedicalStreamTranscriptionResponse"))

(smithy/sdk/shapes:define-input start-stream-transcription-request
                                common-lisp:nil
                                ((language-code :target-type language-code
                                  :member-name "LanguageCode" :http-header
                                  "x-amzn-transcribe-language-code")
                                 (media-sample-rate-hertz :target-type
                                  media-sample-rate-hertz :required
                                  common-lisp:t :member-name
                                  "MediaSampleRateHertz" :http-header
                                  "x-amzn-transcribe-sample-rate")
                                 (media-encoding :target-type media-encoding
                                  :required common-lisp:t :member-name
                                  "MediaEncoding" :http-header
                                  "x-amzn-transcribe-media-encoding")
                                 (vocabulary-name :target-type vocabulary-name
                                  :member-name "VocabularyName" :http-header
                                  "x-amzn-transcribe-vocabulary-name")
                                 (session-id :target-type session-id
                                  :member-name "SessionId" :http-header
                                  "x-amzn-transcribe-session-id")
                                 (audio-stream :target-type audio-stream
                                  :required common-lisp:t :member-name
                                  "AudioStream" :http-payload common-lisp:t)
                                 (vocabulary-filter-name :target-type
                                  vocabulary-filter-name :member-name
                                  "VocabularyFilterName" :http-header
                                  "x-amzn-transcribe-vocabulary-filter-name")
                                 (vocabulary-filter-method :target-type
                                  vocabulary-filter-method :member-name
                                  "VocabularyFilterMethod" :http-header
                                  "x-amzn-transcribe-vocabulary-filter-method")
                                 (show-speaker-label :target-type boolean
                                  :member-name "ShowSpeakerLabel" :http-header
                                  "x-amzn-transcribe-show-speaker-label")
                                 (enable-channel-identification :target-type
                                  boolean :member-name
                                  "EnableChannelIdentification" :http-header
                                  "x-amzn-transcribe-enable-channel-identification")
                                 (number-of-channels :target-type
                                  number-of-channels :member-name
                                  "NumberOfChannels" :http-header
                                  "x-amzn-transcribe-number-of-channels")
                                 (enable-partial-results-stabilization
                                  :target-type boolean :member-name
                                  "EnablePartialResultsStabilization"
                                  :http-header
                                  "x-amzn-transcribe-enable-partial-results-stabilization")
                                 (partial-results-stability :target-type
                                  partial-results-stability :member-name
                                  "PartialResultsStability" :http-header
                                  "x-amzn-transcribe-partial-results-stability")
                                 (content-identification-type :target-type
                                  content-identification-type :member-name
                                  "ContentIdentificationType" :http-header
                                  "x-amzn-transcribe-content-identification-type")
                                 (content-redaction-type :target-type
                                  content-redaction-type :member-name
                                  "ContentRedactionType" :http-header
                                  "x-amzn-transcribe-content-redaction-type")
                                 (pii-entity-types :target-type
                                  pii-entity-types :member-name
                                  "PiiEntityTypes" :http-header
                                  "x-amzn-transcribe-pii-entity-types")
                                 (language-model-name :target-type model-name
                                  :member-name "LanguageModelName" :http-header
                                  "x-amzn-transcribe-language-model-name")
                                 (identify-language :target-type boolean
                                  :member-name "IdentifyLanguage" :http-header
                                  "x-amzn-transcribe-identify-language")
                                 (language-options :target-type
                                  language-options :member-name
                                  "LanguageOptions" :http-header
                                  "x-amzn-transcribe-language-options")
                                 (preferred-language :target-type language-code
                                  :member-name "PreferredLanguage" :http-header
                                  "x-amzn-transcribe-preferred-language")
                                 (identify-multiple-languages :target-type
                                  boolean :member-name
                                  "IdentifyMultipleLanguages" :http-header
                                  "x-amzn-transcribe-identify-multiple-languages")
                                 (vocabulary-names :target-type
                                  vocabulary-names :member-name
                                  "VocabularyNames" :http-header
                                  "x-amzn-transcribe-vocabulary-names")
                                 (vocabulary-filter-names :target-type
                                  vocabulary-filter-names :member-name
                                  "VocabularyFilterNames" :http-header
                                  "x-amzn-transcribe-vocabulary-filter-names"))
                                (:shape-name "StartStreamTranscriptionRequest"))

(smithy/sdk/shapes:define-output start-stream-transcription-response
                                 common-lisp:nil
                                 ((request-id :target-type request-id
                                   :member-name "RequestId" :http-header
                                   "x-amzn-request-id")
                                  (language-code :target-type language-code
                                   :member-name "LanguageCode" :http-header
                                   "x-amzn-transcribe-language-code")
                                  (media-sample-rate-hertz :target-type
                                   media-sample-rate-hertz :member-name
                                   "MediaSampleRateHertz" :http-header
                                   "x-amzn-transcribe-sample-rate")
                                  (media-encoding :target-type media-encoding
                                   :member-name "MediaEncoding" :http-header
                                   "x-amzn-transcribe-media-encoding")
                                  (vocabulary-name :target-type vocabulary-name
                                   :member-name "VocabularyName" :http-header
                                   "x-amzn-transcribe-vocabulary-name")
                                  (session-id :target-type session-id
                                   :member-name "SessionId" :http-header
                                   "x-amzn-transcribe-session-id")
                                  (transcript-result-stream :target-type
                                   transcript-result-stream :member-name
                                   "TranscriptResultStream" :http-payload
                                   common-lisp:t)
                                  (vocabulary-filter-name :target-type
                                   vocabulary-filter-name :member-name
                                   "VocabularyFilterName" :http-header
                                   "x-amzn-transcribe-vocabulary-filter-name")
                                  (vocabulary-filter-method :target-type
                                   vocabulary-filter-method :member-name
                                   "VocabularyFilterMethod" :http-header
                                   "x-amzn-transcribe-vocabulary-filter-method")
                                  (show-speaker-label :target-type boolean
                                   :member-name "ShowSpeakerLabel" :http-header
                                   "x-amzn-transcribe-show-speaker-label")
                                  (enable-channel-identification :target-type
                                   boolean :member-name
                                   "EnableChannelIdentification" :http-header
                                   "x-amzn-transcribe-enable-channel-identification")
                                  (number-of-channels :target-type
                                   number-of-channels :member-name
                                   "NumberOfChannels" :http-header
                                   "x-amzn-transcribe-number-of-channels")
                                  (enable-partial-results-stabilization
                                   :target-type boolean :member-name
                                   "EnablePartialResultsStabilization"
                                   :http-header
                                   "x-amzn-transcribe-enable-partial-results-stabilization")
                                  (partial-results-stability :target-type
                                   partial-results-stability :member-name
                                   "PartialResultsStability" :http-header
                                   "x-amzn-transcribe-partial-results-stability")
                                  (content-identification-type :target-type
                                   content-identification-type :member-name
                                   "ContentIdentificationType" :http-header
                                   "x-amzn-transcribe-content-identification-type")
                                  (content-redaction-type :target-type
                                   content-redaction-type :member-name
                                   "ContentRedactionType" :http-header
                                   "x-amzn-transcribe-content-redaction-type")
                                  (pii-entity-types :target-type
                                   pii-entity-types :member-name
                                   "PiiEntityTypes" :http-header
                                   "x-amzn-transcribe-pii-entity-types")
                                  (language-model-name :target-type model-name
                                   :member-name "LanguageModelName"
                                   :http-header
                                   "x-amzn-transcribe-language-model-name")
                                  (identify-language :target-type boolean
                                   :member-name "IdentifyLanguage" :http-header
                                   "x-amzn-transcribe-identify-language")
                                  (language-options :target-type
                                   language-options :member-name
                                   "LanguageOptions" :http-header
                                   "x-amzn-transcribe-language-options")
                                  (preferred-language :target-type
                                   language-code :member-name
                                   "PreferredLanguage" :http-header
                                   "x-amzn-transcribe-preferred-language")
                                  (identify-multiple-languages :target-type
                                   boolean :member-name
                                   "IdentifyMultipleLanguages" :http-header
                                   "x-amzn-transcribe-identify-multiple-languages")
                                  (vocabulary-names :target-type
                                   vocabulary-names :member-name
                                   "VocabularyNames" :http-header
                                   "x-amzn-transcribe-vocabulary-names")
                                  (vocabulary-filter-names :target-type
                                   vocabulary-filter-names :member-name
                                   "VocabularyFilterNames" :http-header
                                   "x-amzn-transcribe-vocabulary-filter-names"))
                                 (:shape-name
                                  "StartStreamTranscriptionResponse"))

(smithy/sdk/shapes:define-type string smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list string-list :member string)

(smithy/sdk/shapes:define-structure timestamp-range common-lisp:nil
                                    ((begin-offset-millis :target-type long
                                      :member-name "BeginOffsetMillis")
                                     (end-offset-millis :target-type long
                                      :member-name "EndOffsetMillis"))
                                    (:shape-name "TimestampRange"))

(smithy/sdk/shapes:define-list timestamp-ranges :member timestamp-range)

(smithy/sdk/shapes:define-structure transcript common-lisp:nil
                                    ((results :target-type result-list
                                      :member-name "Results"))
                                    (:shape-name "Transcript"))

(smithy/sdk/shapes:define-structure transcript-event common-lisp:nil
                                    ((transcript :target-type transcript
                                      :member-name "Transcript"))
                                    (:shape-name "TranscriptEvent"))

(smithy/sdk/shapes:define-union transcript-result-stream common-lisp:nil
                                ((transcript-event :target-type
                                  transcript-event :member-name
                                  "TranscriptEvent")
                                 (bad-request-exception :target-type
                                  bad-request-exception :member-name
                                  "BadRequestException")
                                 (limit-exceeded-exception :target-type
                                  limit-exceeded-exception :member-name
                                  "LimitExceededException")
                                 (internal-failure-exception :target-type
                                  internal-failure-exception :member-name
                                  "InternalFailureException")
                                 (conflict-exception :target-type
                                  conflict-exception :member-name
                                  "ConflictException")
                                 (service-unavailable-exception :target-type
                                  service-unavailable-exception :member-name
                                  "ServiceUnavailableException"))
                                (:shape-name "TranscriptResultStream"))

(smithy/sdk/shapes:define-enum type
    common-lisp:nil
  (:conversation "CONVERSATION")
  (:dictation "DICTATION"))

(smithy/sdk/shapes:define-type uri smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure utterance-event common-lisp:nil
                                    ((utterance-id :target-type string
                                      :member-name "UtteranceId")
                                     (is-partial :target-type boolean
                                      :member-name "IsPartial")
                                     (participant-role :target-type
                                      participant-role :member-name
                                      "ParticipantRole")
                                     (begin-offset-millis :target-type long
                                      :member-name "BeginOffsetMillis")
                                     (end-offset-millis :target-type long
                                      :member-name "EndOffsetMillis")
                                     (transcript :target-type string
                                      :member-name "Transcript")
                                     (items :target-type
                                      call-analytics-item-list :member-name
                                      "Items")
                                     (entities :target-type
                                      call-analytics-entity-list :member-name
                                      "Entities")
                                     (sentiment :target-type sentiment
                                      :member-name "Sentiment")
                                     (issues-detected :target-type
                                      issues-detected :member-name
                                      "IssuesDetected"))
                                    (:shape-name "UtteranceEvent"))

(smithy/sdk/shapes:define-enum vocabulary-filter-method
    common-lisp:nil
  (:remove "remove")
  (:mask "mask")
  (:tag "tag"))

(smithy/sdk/shapes:define-type vocabulary-filter-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type vocabulary-filter-names
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type vocabulary-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type vocabulary-names smithy/sdk/smithy-types:string)

(smithy/sdk/operation:define-operation get-medical-scribe-stream :shape-name
                                       "GetMedicalScribeStream" :input
                                       get-medical-scribe-stream-request
                                       :output
                                       get-medical-scribe-stream-response
                                       :errors
                                       (bad-request-exception
                                        internal-failure-exception
                                        limit-exceeded-exception
                                        resource-not-found-exception)
                                       :method "GET" :uri
                                       "/medical-scribe-stream/{SessionId}"
                                       :code 200)

(smithy/sdk/operation:define-operation
 start-call-analytics-stream-transcription :shape-name
 "StartCallAnalyticsStreamTranscription" :input
 start-call-analytics-stream-transcription-request :output
 start-call-analytics-stream-transcription-response :errors
 (bad-request-exception conflict-exception internal-failure-exception
  limit-exceeded-exception service-unavailable-exception)
 :method "POST" :uri "/call-analytics-stream-transcription" :code 200)

(smithy/sdk/operation:define-operation start-medical-scribe-stream :shape-name
                                       "StartMedicalScribeStream" :input
                                       start-medical-scribe-stream-request
                                       :output
                                       start-medical-scribe-stream-response
                                       :errors
                                       (bad-request-exception
                                        conflict-exception
                                        internal-failure-exception
                                        limit-exceeded-exception
                                        service-unavailable-exception)
                                       :method "POST" :uri
                                       "/medical-scribe-stream" :code 200)

(smithy/sdk/operation:define-operation start-medical-stream-transcription
                                       :shape-name
                                       "StartMedicalStreamTranscription" :input
                                       start-medical-stream-transcription-request
                                       :output
                                       start-medical-stream-transcription-response
                                       :errors
                                       (bad-request-exception
                                        conflict-exception
                                        internal-failure-exception
                                        limit-exceeded-exception
                                        service-unavailable-exception)
                                       :method "POST" :uri
                                       "/medical-stream-transcription" :code
                                       200)

(smithy/sdk/operation:define-operation start-stream-transcription :shape-name
                                       "StartStreamTranscription" :input
                                       start-stream-transcription-request
                                       :output
                                       start-stream-transcription-response
                                       :errors
                                       (bad-request-exception
                                        conflict-exception
                                        internal-failure-exception
                                        limit-exceeded-exception
                                        service-unavailable-exception)
                                       :method "POST" :uri
                                       "/stream-transcription" :code 200)
