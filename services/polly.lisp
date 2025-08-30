(uiop/package:define-package #:pira/polly (:use)
                             (:export #:alphabet #:audio-stream #:content-type
                              #:date-time #:delete-lexicon #:describe-voices
                              #:engine #:engine-list
                              #:engine-not-supported-exception #:error-message
                              #:gender #:get-lexicon
                              #:get-speech-synthesis-task
                              #:include-additional-language-codes
                              #:invalid-lexicon-exception
                              #:invalid-next-token-exception
                              #:invalid-s3bucket-exception
                              #:invalid-s3key-exception
                              #:invalid-sample-rate-exception
                              #:invalid-sns-topic-arn-exception
                              #:invalid-ssml-exception
                              #:invalid-task-id-exception #:language-code
                              #:language-code-list #:language-name
                              #:language-not-supported-exception
                              #:last-modified #:lexemes-count #:lexicon
                              #:lexicon-arn #:lexicon-attributes
                              #:lexicon-content #:lexicon-description
                              #:lexicon-description-list #:lexicon-name
                              #:lexicon-name-list #:lexicon-not-found-exception
                              #:lexicon-size-exceeded-exception #:list-lexicons
                              #:list-speech-synthesis-tasks
                              #:marks-not-supported-for-format-exception
                              #:max-lexeme-length-exceeded-exception
                              #:max-lexicons-number-exceeded-exception
                              #:max-results #:next-token #:output-format
                              #:output-s3bucket-name #:output-s3key-prefix
                              #:output-uri #:parrot-v1 #:put-lexicon
                              #:request-characters #:sample-rate
                              #:service-failure-exception #:size
                              #:sns-topic-arn #:speech-mark-type
                              #:speech-mark-type-list
                              #:ssml-marks-not-supported-for-text-type-exception
                              #:start-speech-synthesis-task #:synthesis-task
                              #:synthesis-task-not-found-exception
                              #:synthesis-tasks #:synthesize-speech #:task-id
                              #:task-status #:task-status-reason #:text
                              #:text-length-exceeded-exception #:text-type
                              #:unsupported-pls-alphabet-exception
                              #:unsupported-pls-language-exception #:voice
                              #:voice-id #:voice-list #:voice-name
                              #:polly-error))
(common-lisp:in-package #:pira/polly)

(common-lisp:define-condition polly-error
    (pira/error:aws-error)
    common-lisp:nil)

(smithy/sdk/service:define-service parrot-v1 :shape-name "Parrot_v1" :version
                                   "2016-06-10" :title "Amazon Polly"
                                   :operations
                                   '(delete-lexicon describe-voices get-lexicon
                                     get-speech-synthesis-task list-lexicons
                                     list-speech-synthesis-tasks put-lexicon
                                     start-speech-synthesis-task
                                     synthesize-speech)
                                   :xml-namespace
                                   '(:uri "http://polly.amazonaws.com/doc/v1"
                                     :prefix common-lisp:nil)
                                   :traits
                                   '(("aws.api#service" ("sdkId" . "Polly")
                                      ("arnNamespace" . "polly")
                                      ("cloudFormationName" . "Polly")
                                      ("cloudTrailEventSource"
                                       . "polly.amazonaws.com")
                                      ("endpointPrefix" . "polly"))
                                     ("aws.auth#sigv4" ("name" . "polly"))
                                     ("aws.protocols#restJson1")))

(smithy/sdk/shapes:define-type alphabet smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type audio-stream smithy/sdk/smithy-types:blob
                               :streaming common-lisp:t)

(smithy/sdk/shapes:define-type content-type smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type date-time smithy/sdk/smithy-types:timestamp)

(smithy/sdk/shapes:define-input delete-lexicon-input common-lisp:nil
                                ((name :target-type lexicon-name :required
                                  common-lisp:t :member-name "Name" :http-label
                                  common-lisp:t))
                                (:shape-name "DeleteLexiconInput"))

(smithy/sdk/shapes:define-output delete-lexicon-output common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "DeleteLexiconOutput"))

(smithy/sdk/shapes:define-input describe-voices-input common-lisp:nil
                                ((engine :target-type engine :member-name
                                  "Engine" :http-query "Engine")
                                 (language-code :target-type language-code
                                  :member-name "LanguageCode" :http-query
                                  "LanguageCode")
                                 (include-additional-language-codes
                                  :target-type
                                  include-additional-language-codes
                                  :member-name "IncludeAdditionalLanguageCodes"
                                  :http-query "IncludeAdditionalLanguageCodes")
                                 (next-token :target-type next-token
                                  :member-name "NextToken" :http-query
                                  "NextToken"))
                                (:shape-name "DescribeVoicesInput"))

(smithy/sdk/shapes:define-output describe-voices-output common-lisp:nil
                                 ((voices :target-type voice-list :member-name
                                   "Voices")
                                  (next-token :target-type next-token
                                   :member-name "NextToken"))
                                 (:shape-name "DescribeVoicesOutput"))

(smithy/sdk/shapes:define-enum engine
    common-lisp:nil
  (:standard "standard")
  (:neural "neural")
  (:long-form "long-form")
  (:generative "generative"))

(smithy/sdk/shapes:define-list engine-list :member engine)

(smithy/sdk/shapes:define-error engine-not-supported-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message"))
                                (:shape-name "EngineNotSupportedException")
                                (:error-code 400) (:base-class polly-error))

(smithy/sdk/shapes:define-type error-message smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum gender
    common-lisp:nil
  (:female "Female")
  (:male "Male"))

(smithy/sdk/shapes:define-input get-lexicon-input common-lisp:nil
                                ((name :target-type lexicon-name :required
                                  common-lisp:t :member-name "Name" :http-label
                                  common-lisp:t))
                                (:shape-name "GetLexiconInput"))

(smithy/sdk/shapes:define-output get-lexicon-output common-lisp:nil
                                 ((lexicon :target-type lexicon :member-name
                                   "Lexicon")
                                  (lexicon-attributes :target-type
                                   lexicon-attributes :member-name
                                   "LexiconAttributes"))
                                 (:shape-name "GetLexiconOutput"))

(smithy/sdk/shapes:define-input get-speech-synthesis-task-input common-lisp:nil
                                ((task-id :target-type task-id :required
                                  common-lisp:t :member-name "TaskId"
                                  :http-label common-lisp:t))
                                (:shape-name "GetSpeechSynthesisTaskInput"))

(smithy/sdk/shapes:define-output get-speech-synthesis-task-output
                                 common-lisp:nil
                                 ((synthesis-task :target-type synthesis-task
                                   :member-name "SynthesisTask"))
                                 (:shape-name "GetSpeechSynthesisTaskOutput"))

(smithy/sdk/shapes:define-type include-additional-language-codes
                               smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-error invalid-lexicon-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message"))
                                (:shape-name "InvalidLexiconException")
                                (:error-code 400) (:base-class polly-error))

(smithy/sdk/shapes:define-error invalid-next-token-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message"))
                                (:shape-name "InvalidNextTokenException")
                                (:error-code 400) (:base-class polly-error))

(smithy/sdk/shapes:define-error invalid-s3bucket-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message"))
                                (:shape-name "InvalidS3BucketException")
                                (:error-code 400) (:base-class polly-error))

(smithy/sdk/shapes:define-error invalid-s3key-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message"))
                                (:shape-name "InvalidS3KeyException")
                                (:error-code 400) (:base-class polly-error))

(smithy/sdk/shapes:define-error invalid-sample-rate-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message"))
                                (:shape-name "InvalidSampleRateException")
                                (:error-code 400) (:base-class polly-error))

(smithy/sdk/shapes:define-error invalid-sns-topic-arn-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message"))
                                (:shape-name "InvalidSnsTopicArnException")
                                (:error-code 400) (:base-class polly-error))

(smithy/sdk/shapes:define-error invalid-ssml-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message"))
                                (:shape-name "InvalidSsmlException")
                                (:error-code 400) (:base-class polly-error))

(smithy/sdk/shapes:define-error invalid-task-id-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message"))
                                (:shape-name "InvalidTaskIdException")
                                (:error-code 400) (:base-class polly-error))

(smithy/sdk/shapes:define-enum language-code
    common-lisp:nil
  (:arb "arb")
  (:cmn-cn "cmn-CN")
  (:cy-gb "cy-GB")
  (:da-dk "da-DK")
  (:de-de "de-DE")
  (:en-au "en-AU")
  (:en-gb "en-GB")
  (:en-gb-wls "en-GB-WLS")
  (:en-in "en-IN")
  (:en-us "en-US")
  (:es-es "es-ES")
  (:es-mx "es-MX")
  (:es-us "es-US")
  (:fr-ca "fr-CA")
  (:fr-fr "fr-FR")
  (:is-is "is-IS")
  (:it-it "it-IT")
  (:ja-jp "ja-JP")
  (:hi-in "hi-IN")
  (:ko-kr "ko-KR")
  (:nb-no "nb-NO")
  (:nl-nl "nl-NL")
  (:pl-pl "pl-PL")
  (:pt-br "pt-BR")
  (:pt-pt "pt-PT")
  (:ro-ro "ro-RO")
  (:ru-ru "ru-RU")
  (:sv-se "sv-SE")
  (:tr-tr "tr-TR")
  (:en-nz "en-NZ")
  (:en-za "en-ZA")
  (:ca-es "ca-ES")
  (:de-at "de-AT")
  (:yue-cn "yue-CN")
  (:ar-ae "ar-AE")
  (:fi-fi "fi-FI")
  (:en-ie "en-IE")
  (:nl-be "nl-BE")
  (:fr-be "fr-BE")
  (:cs-cz "cs-CZ")
  (:de-ch "de-CH")
  (:en-sg "en-SG"))

(smithy/sdk/shapes:define-list language-code-list :member language-code)

(smithy/sdk/shapes:define-type language-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error language-not-supported-exception
                                common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message"))
                                (:shape-name "LanguageNotSupportedException")
                                (:error-code 400) (:base-class polly-error))

(smithy/sdk/shapes:define-type last-modified smithy/sdk/smithy-types:timestamp)

(smithy/sdk/shapes:define-type lexemes-count smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-structure lexicon common-lisp:nil
                                    ((content :target-type lexicon-content
                                      :member-name "Content")
                                     (name :target-type lexicon-name
                                      :member-name "Name"))
                                    (:shape-name "Lexicon"))

(smithy/sdk/shapes:define-type lexicon-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure lexicon-attributes common-lisp:nil
                                    ((alphabet :target-type alphabet
                                      :member-name "Alphabet")
                                     (language-code :target-type language-code
                                      :member-name "LanguageCode")
                                     (last-modified :target-type last-modified
                                      :member-name "LastModified")
                                     (lexicon-arn :target-type lexicon-arn
                                      :member-name "LexiconArn")
                                     (lexemes-count :target-type lexemes-count
                                      :member-name "LexemesCount")
                                     (size :target-type size :member-name
                                      "Size"))
                                    (:shape-name "LexiconAttributes"))

(smithy/sdk/shapes:define-type lexicon-content smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure lexicon-description common-lisp:nil
                                    ((name :target-type lexicon-name
                                      :member-name "Name")
                                     (attributes :target-type
                                      lexicon-attributes :member-name
                                      "Attributes"))
                                    (:shape-name "LexiconDescription"))

(smithy/sdk/shapes:define-list lexicon-description-list :member
                               lexicon-description)

(smithy/sdk/shapes:define-type lexicon-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list lexicon-name-list :member lexicon-name)

(smithy/sdk/shapes:define-error lexicon-not-found-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message"))
                                (:shape-name "LexiconNotFoundException")
                                (:error-code 404) (:base-class polly-error))

(smithy/sdk/shapes:define-error lexicon-size-exceeded-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message"))
                                (:shape-name "LexiconSizeExceededException")
                                (:error-code 400) (:base-class polly-error))

(smithy/sdk/shapes:define-input list-lexicons-input common-lisp:nil
                                ((next-token :target-type next-token
                                  :member-name "NextToken" :http-query
                                  "NextToken"))
                                (:shape-name "ListLexiconsInput"))

(smithy/sdk/shapes:define-output list-lexicons-output common-lisp:nil
                                 ((lexicons :target-type
                                   lexicon-description-list :member-name
                                   "Lexicons")
                                  (next-token :target-type next-token
                                   :member-name "NextToken"))
                                 (:shape-name "ListLexiconsOutput"))

(smithy/sdk/shapes:define-input list-speech-synthesis-tasks-input
                                common-lisp:nil
                                ((max-results :target-type max-results
                                  :member-name "MaxResults" :http-query
                                  "MaxResults")
                                 (next-token :target-type next-token
                                  :member-name "NextToken" :http-query
                                  "NextToken")
                                 (status :target-type task-status :member-name
                                  "Status" :http-query "Status"))
                                (:shape-name "ListSpeechSynthesisTasksInput"))

(smithy/sdk/shapes:define-output list-speech-synthesis-tasks-output
                                 common-lisp:nil
                                 ((next-token :target-type next-token
                                   :member-name "NextToken")
                                  (synthesis-tasks :target-type synthesis-tasks
                                   :member-name "SynthesisTasks"))
                                 (:shape-name "ListSpeechSynthesisTasksOutput"))

(smithy/sdk/shapes:define-error marks-not-supported-for-format-exception
                                common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message"))
                                (:shape-name
                                 "MarksNotSupportedForFormatException")
                                (:error-code 400) (:base-class polly-error))

(smithy/sdk/shapes:define-error max-lexeme-length-exceeded-exception
                                common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message"))
                                (:shape-name
                                 "MaxLexemeLengthExceededException")
                                (:error-code 400) (:base-class polly-error))

(smithy/sdk/shapes:define-error max-lexicons-number-exceeded-exception
                                common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message"))
                                (:shape-name
                                 "MaxLexiconsNumberExceededException")
                                (:error-code 400) (:base-class polly-error))

(smithy/sdk/shapes:define-type max-results smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type next-token smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum output-format
    common-lisp:nil
  (:json "json")
  (:mp3 "mp3")
  (:ogg-vorbis "ogg_vorbis")
  (:pcm "pcm"))

(smithy/sdk/shapes:define-type output-s3bucket-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type output-s3key-prefix
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type output-uri smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input put-lexicon-input common-lisp:nil
                                ((name :target-type lexicon-name :required
                                  common-lisp:t :member-name "Name" :http-label
                                  common-lisp:t)
                                 (content :target-type lexicon-content
                                  :required common-lisp:t :member-name
                                  "Content"))
                                (:shape-name "PutLexiconInput"))

(smithy/sdk/shapes:define-output put-lexicon-output common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "PutLexiconOutput"))

(smithy/sdk/shapes:define-type request-characters
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type sample-rate smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error service-failure-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message"))
                                (:shape-name "ServiceFailureException")
                                (:error-code 500) (:base-class polly-error))

(smithy/sdk/shapes:define-type size smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type sns-topic-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum speech-mark-type
    common-lisp:nil
  (:sentence "sentence")
  (:ssml "ssml")
  (:viseme "viseme")
  (:word "word"))

(smithy/sdk/shapes:define-list speech-mark-type-list :member speech-mark-type)

(smithy/sdk/shapes:define-error
 ssml-marks-not-supported-for-text-type-exception common-lisp:nil
 ((message :target-type error-message :member-name "message"))
 (:shape-name "SsmlMarksNotSupportedForTextTypeException") (:error-code 400)
 (:base-class polly-error))

(smithy/sdk/shapes:define-input start-speech-synthesis-task-input
                                common-lisp:nil
                                ((engine :target-type engine :member-name
                                  "Engine")
                                 (language-code :target-type language-code
                                  :member-name "LanguageCode")
                                 (lexicon-names :target-type lexicon-name-list
                                  :member-name "LexiconNames")
                                 (output-format :target-type output-format
                                  :required common-lisp:t :member-name
                                  "OutputFormat")
                                 (output-s3bucket-name :target-type
                                  output-s3bucket-name :required common-lisp:t
                                  :member-name "OutputS3BucketName")
                                 (output-s3key-prefix :target-type
                                  output-s3key-prefix :member-name
                                  "OutputS3KeyPrefix")
                                 (sample-rate :target-type sample-rate
                                  :member-name "SampleRate")
                                 (sns-topic-arn :target-type sns-topic-arn
                                  :member-name "SnsTopicArn")
                                 (speech-mark-types :target-type
                                  speech-mark-type-list :member-name
                                  "SpeechMarkTypes")
                                 (text :target-type text :required
                                  common-lisp:t :member-name "Text")
                                 (text-type :target-type text-type :member-name
                                  "TextType")
                                 (voice-id :target-type voice-id :required
                                  common-lisp:t :member-name "VoiceId"))
                                (:shape-name "StartSpeechSynthesisTaskInput"))

(smithy/sdk/shapes:define-output start-speech-synthesis-task-output
                                 common-lisp:nil
                                 ((synthesis-task :target-type synthesis-task
                                   :member-name "SynthesisTask"))
                                 (:shape-name "StartSpeechSynthesisTaskOutput"))

(smithy/sdk/shapes:define-structure synthesis-task common-lisp:nil
                                    ((engine :target-type engine :member-name
                                      "Engine")
                                     (task-id :target-type task-id :member-name
                                      "TaskId")
                                     (task-status :target-type task-status
                                      :member-name "TaskStatus")
                                     (task-status-reason :target-type
                                      task-status-reason :member-name
                                      "TaskStatusReason")
                                     (output-uri :target-type output-uri
                                      :member-name "OutputUri")
                                     (creation-time :target-type date-time
                                      :member-name "CreationTime")
                                     (request-characters :target-type
                                      request-characters :member-name
                                      "RequestCharacters")
                                     (sns-topic-arn :target-type sns-topic-arn
                                      :member-name "SnsTopicArn")
                                     (lexicon-names :target-type
                                      lexicon-name-list :member-name
                                      "LexiconNames")
                                     (output-format :target-type output-format
                                      :member-name "OutputFormat")
                                     (sample-rate :target-type sample-rate
                                      :member-name "SampleRate")
                                     (speech-mark-types :target-type
                                      speech-mark-type-list :member-name
                                      "SpeechMarkTypes")
                                     (text-type :target-type text-type
                                      :member-name "TextType")
                                     (voice-id :target-type voice-id
                                      :member-name "VoiceId")
                                     (language-code :target-type language-code
                                      :member-name "LanguageCode"))
                                    (:shape-name "SynthesisTask"))

(smithy/sdk/shapes:define-error synthesis-task-not-found-exception
                                common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message"))
                                (:shape-name "SynthesisTaskNotFoundException")
                                (:error-code 400) (:base-class polly-error))

(smithy/sdk/shapes:define-list synthesis-tasks :member synthesis-task)

(smithy/sdk/shapes:define-input synthesize-speech-input common-lisp:nil
                                ((engine :target-type engine :member-name
                                  "Engine")
                                 (language-code :target-type language-code
                                  :member-name "LanguageCode")
                                 (lexicon-names :target-type lexicon-name-list
                                  :member-name "LexiconNames")
                                 (output-format :target-type output-format
                                  :required common-lisp:t :member-name
                                  "OutputFormat")
                                 (sample-rate :target-type sample-rate
                                  :member-name "SampleRate")
                                 (speech-mark-types :target-type
                                  speech-mark-type-list :member-name
                                  "SpeechMarkTypes")
                                 (text :target-type text :required
                                  common-lisp:t :member-name "Text")
                                 (text-type :target-type text-type :member-name
                                  "TextType")
                                 (voice-id :target-type voice-id :required
                                  common-lisp:t :member-name "VoiceId"))
                                (:shape-name "SynthesizeSpeechInput"))

(smithy/sdk/shapes:define-output synthesize-speech-output common-lisp:nil
                                 ((audio-stream :target-type audio-stream
                                   :member-name "AudioStream" :http-payload
                                   common-lisp:t)
                                  (content-type :target-type content-type
                                   :member-name "ContentType" :http-header
                                   "Content-Type")
                                  (request-characters :target-type
                                   request-characters :member-name
                                   "RequestCharacters" :http-header
                                   "x-amzn-RequestCharacters"))
                                 (:shape-name "SynthesizeSpeechOutput"))

(smithy/sdk/shapes:define-type task-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum task-status
    common-lisp:nil
  (:scheduled "scheduled")
  (:in-progress "inProgress")
  (:completed "completed")
  (:failed "failed"))

(smithy/sdk/shapes:define-type task-status-reason
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type text smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error text-length-exceeded-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message"))
                                (:shape-name "TextLengthExceededException")
                                (:error-code 400) (:base-class polly-error))

(smithy/sdk/shapes:define-enum text-type
    common-lisp:nil
  (:ssml "ssml")
  (:text "text"))

(smithy/sdk/shapes:define-error unsupported-pls-alphabet-exception
                                common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message"))
                                (:shape-name "UnsupportedPlsAlphabetException")
                                (:error-code 400) (:base-class polly-error))

(smithy/sdk/shapes:define-error unsupported-pls-language-exception
                                common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message"))
                                (:shape-name "UnsupportedPlsLanguageException")
                                (:error-code 400) (:base-class polly-error))

(smithy/sdk/shapes:define-structure voice common-lisp:nil
                                    ((gender :target-type gender :member-name
                                      "Gender")
                                     (id :target-type voice-id :member-name
                                      "Id")
                                     (language-code :target-type language-code
                                      :member-name "LanguageCode")
                                     (language-name :target-type language-name
                                      :member-name "LanguageName")
                                     (name :target-type voice-name :member-name
                                      "Name")
                                     (additional-language-codes :target-type
                                      language-code-list :member-name
                                      "AdditionalLanguageCodes")
                                     (supported-engines :target-type
                                      engine-list :member-name
                                      "SupportedEngines"))
                                    (:shape-name "Voice"))

(smithy/sdk/shapes:define-enum voice-id
    common-lisp:nil
  (:aditi "Aditi")
  (:amy "Amy")
  (:astrid "Astrid")
  (:bianca "Bianca")
  (:brian "Brian")
  (:camila "Camila")
  (:carla "Carla")
  (:carmen "Carmen")
  (:celine "Celine")
  (:chantal "Chantal")
  (:conchita "Conchita")
  (:cristiano "Cristiano")
  (:dora "Dora")
  (:emma "Emma")
  (:enrique "Enrique")
  (:ewa "Ewa")
  (:filiz "Filiz")
  (:gabrielle "Gabrielle")
  (:geraint "Geraint")
  (:giorgio "Giorgio")
  (:gwyneth "Gwyneth")
  (:hans "Hans")
  (:ines "Ines")
  (:ivy "Ivy")
  (:jacek "Jacek")
  (:jan "Jan")
  (:joanna "Joanna")
  (:joey "Joey")
  (:justin "Justin")
  (:karl "Karl")
  (:kendra "Kendra")
  (:kevin "Kevin")
  (:kimberly "Kimberly")
  (:lea "Lea")
  (:liv "Liv")
  (:lotte "Lotte")
  (:lucia "Lucia")
  (:lupe "Lupe")
  (:mads "Mads")
  (:maja "Maja")
  (:marlene "Marlene")
  (:mathieu "Mathieu")
  (:matthew "Matthew")
  (:maxim "Maxim")
  (:mia "Mia")
  (:miguel "Miguel")
  (:mizuki "Mizuki")
  (:naja "Naja")
  (:nicole "Nicole")
  (:olivia "Olivia")
  (:penelope "Penelope")
  (:raveena "Raveena")
  (:ricardo "Ricardo")
  (:ruben "Ruben")
  (:russell "Russell")
  (:salli "Salli")
  (:seoyeon "Seoyeon")
  (:takumi "Takumi")
  (:tatyana "Tatyana")
  (:vicki "Vicki")
  (:vitoria "Vitoria")
  (:zeina "Zeina")
  (:zhiyu "Zhiyu")
  (:aria "Aria")
  (:ayanda "Ayanda")
  (:arlet "Arlet")
  (:hannah "Hannah")
  (:arthur "Arthur")
  (:daniel "Daniel")
  (:liam "Liam")
  (:pedro "Pedro")
  (:kajal "Kajal")
  (:hiujin "Hiujin")
  (:laura "Laura")
  (:elin "Elin")
  (:ida "Ida")
  (:suvi "Suvi")
  (:ola "Ola")
  (:hala "Hala")
  (:andres "Andres")
  (:sergio "Sergio")
  (:remi "Remi")
  (:adriano "Adriano")
  (:thiago "Thiago")
  (:ruth "Ruth")
  (:stephen "Stephen")
  (:kazuha "Kazuha")
  (:tomoko "Tomoko")
  (:niamh "Niamh")
  (:sofie "Sofie")
  (:lisa "Lisa")
  (:isabelle "Isabelle")
  (:zayd "Zayd")
  (:danielle "Danielle")
  (:gregory "Gregory")
  (:burcu "Burcu")
  (:jitka "Jitka")
  (:sabrina "Sabrina")
  (:jasmine "Jasmine")
  (:jihye "Jihye"))

(smithy/sdk/shapes:define-list voice-list :member voice)

(smithy/sdk/shapes:define-type voice-name smithy/sdk/smithy-types:string)

(smithy/sdk/operation:define-operation delete-lexicon :shape-name
                                       "DeleteLexicon" :input
                                       delete-lexicon-input :output
                                       delete-lexicon-output :errors
                                       (lexicon-not-found-exception
                                        service-failure-exception)
                                       :method "DELETE" :uri
                                       "/v1/lexicons/{Name}" :code 200)

(smithy/sdk/operation:define-operation describe-voices :shape-name
                                       "DescribeVoices" :input
                                       describe-voices-input :output
                                       describe-voices-output :errors
                                       (invalid-next-token-exception
                                        service-failure-exception)
                                       :method "GET" :uri "/v1/voices" :code
                                       200)

(smithy/sdk/operation:define-operation get-lexicon :shape-name "GetLexicon"
                                       :input get-lexicon-input :output
                                       get-lexicon-output :errors
                                       (lexicon-not-found-exception
                                        service-failure-exception)
                                       :method "GET" :uri "/v1/lexicons/{Name}"
                                       :code 200)

(smithy/sdk/operation:define-operation get-speech-synthesis-task :shape-name
                                       "GetSpeechSynthesisTask" :input
                                       get-speech-synthesis-task-input :output
                                       get-speech-synthesis-task-output :errors
                                       (invalid-task-id-exception
                                        service-failure-exception
                                        synthesis-task-not-found-exception)
                                       :method "GET" :uri
                                       "/v1/synthesisTasks/{TaskId}" :code 200)

(smithy/sdk/operation:define-operation list-lexicons :shape-name "ListLexicons"
                                       :input list-lexicons-input :output
                                       list-lexicons-output :errors
                                       (invalid-next-token-exception
                                        service-failure-exception)
                                       :method "GET" :uri "/v1/lexicons" :code
                                       200)

(smithy/sdk/operation:define-operation list-speech-synthesis-tasks :shape-name
                                       "ListSpeechSynthesisTasks" :input
                                       list-speech-synthesis-tasks-input
                                       :output
                                       list-speech-synthesis-tasks-output
                                       :errors
                                       (invalid-next-token-exception
                                        service-failure-exception)
                                       :method "GET" :uri "/v1/synthesisTasks"
                                       :code 200)

(smithy/sdk/operation:define-operation put-lexicon :shape-name "PutLexicon"
                                       :input put-lexicon-input :output
                                       put-lexicon-output :errors
                                       (invalid-lexicon-exception
                                        lexicon-size-exceeded-exception
                                        max-lexeme-length-exceeded-exception
                                        max-lexicons-number-exceeded-exception
                                        service-failure-exception
                                        unsupported-pls-alphabet-exception
                                        unsupported-pls-language-exception)
                                       :method "PUT" :uri "/v1/lexicons/{Name}"
                                       :code 200)

(smithy/sdk/operation:define-operation start-speech-synthesis-task :shape-name
                                       "StartSpeechSynthesisTask" :input
                                       start-speech-synthesis-task-input
                                       :output
                                       start-speech-synthesis-task-output
                                       :errors
                                       (engine-not-supported-exception
                                        invalid-s3bucket-exception
                                        invalid-s3key-exception
                                        invalid-sample-rate-exception
                                        invalid-sns-topic-arn-exception
                                        invalid-ssml-exception
                                        language-not-supported-exception
                                        lexicon-not-found-exception
                                        marks-not-supported-for-format-exception
                                        service-failure-exception
                                        ssml-marks-not-supported-for-text-type-exception
                                        text-length-exceeded-exception)
                                       :method "POST" :uri "/v1/synthesisTasks"
                                       :code 200)

(smithy/sdk/operation:define-operation synthesize-speech :shape-name
                                       "SynthesizeSpeech" :input
                                       synthesize-speech-input :output
                                       synthesize-speech-output :errors
                                       (engine-not-supported-exception
                                        invalid-sample-rate-exception
                                        invalid-ssml-exception
                                        language-not-supported-exception
                                        lexicon-not-found-exception
                                        marks-not-supported-for-format-exception
                                        service-failure-exception
                                        ssml-marks-not-supported-for-text-type-exception
                                        text-length-exceeded-exception)
                                       :method "POST" :uri "/v1/speech" :code
                                       200)
