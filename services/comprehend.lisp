(uiop/package:define-package #:pira/comprehend (:use)
                             (:export #:any-length-string
                              #:attribute-names-list
                              #:attribute-names-list-item
                              #:augmented-manifests-document-type-format
                              #:augmented-manifests-list-item
                              #:batch-detect-dominant-language
                              #:batch-detect-dominant-language-item-result
                              #:batch-detect-entities
                              #:batch-detect-entities-item-result
                              #:batch-detect-key-phrases
                              #:batch-detect-key-phrases-item-result
                              #:batch-detect-sentiment
                              #:batch-detect-sentiment-item-result
                              #:batch-detect-syntax
                              #:batch-detect-syntax-item-result
                              #:batch-detect-targeted-sentiment
                              #:batch-detect-targeted-sentiment-item-result
                              #:batch-item-error #:batch-item-error-list
                              #:block #:block-reference #:block-type
                              #:bounding-box #:child-block
                              #:classifier-evaluation-metrics
                              #:classifier-metadata #:classify-document
                              #:client-request-token-string #:comprehend-arn
                              #:comprehend-arn-name #:comprehend-dataset-arn
                              #:comprehend-endpoint-arn
                              #:comprehend-endpoint-name
                              #:comprehend-flywheel-arn #:comprehend-model-arn
                              #:comprehend-20171127 #:contains-pii-entities
                              #:create-dataset #:create-document-classifier
                              #:create-endpoint #:create-entity-recognizer
                              #:create-flywheel #:customer-input-string
                              #:customer-input-string-list
                              #:data-security-config
                              #:dataset-augmented-manifests-list
                              #:dataset-augmented-manifests-list-item
                              #:dataset-data-format
                              #:dataset-document-classifier-input-data-config
                              #:dataset-entity-recognizer-annotations
                              #:dataset-entity-recognizer-documents
                              #:dataset-entity-recognizer-entity-list
                              #:dataset-entity-recognizer-input-data-config
                              #:dataset-filter #:dataset-input-data-config
                              #:dataset-properties #:dataset-properties-list
                              #:dataset-status #:dataset-type
                              #:delete-document-classifier #:delete-endpoint
                              #:delete-entity-recognizer #:delete-flywheel
                              #:delete-resource-policy #:describe-dataset
                              #:describe-document-classification-job
                              #:describe-document-classifier
                              #:describe-dominant-language-detection-job
                              #:describe-endpoint
                              #:describe-entities-detection-job
                              #:describe-entity-recognizer
                              #:describe-events-detection-job
                              #:describe-flywheel #:describe-flywheel-iteration
                              #:describe-key-phrases-detection-job
                              #:describe-pii-entities-detection-job
                              #:describe-resource-policy
                              #:describe-sentiment-detection-job
                              #:describe-targeted-sentiment-detection-job
                              #:describe-topics-detection-job #:description
                              #:detect-dominant-language #:detect-entities
                              #:detect-key-phrases #:detect-pii-entities
                              #:detect-sentiment #:detect-syntax
                              #:detect-targeted-sentiment
                              #:detect-toxic-content #:document-class
                              #:document-classification-config
                              #:document-classification-job-filter
                              #:document-classification-job-properties
                              #:document-classification-job-properties-list
                              #:document-classifier-arn
                              #:document-classifier-augmented-manifests-list
                              #:document-classifier-data-format
                              #:document-classifier-document-type-format
                              #:document-classifier-documents
                              #:document-classifier-endpoint-arn
                              #:document-classifier-filter
                              #:document-classifier-input-data-config
                              #:document-classifier-mode
                              #:document-classifier-output-data-config
                              #:document-classifier-properties
                              #:document-classifier-properties-list
                              #:document-classifier-summaries-list
                              #:document-classifier-summary #:document-label
                              #:document-metadata #:document-read-action
                              #:document-read-feature-types
                              #:document-read-mode #:document-reader-config
                              #:document-type #:document-type-list-item
                              #:dominant-language
                              #:dominant-language-detection-job-filter
                              #:dominant-language-detection-job-properties
                              #:dominant-language-detection-job-properties-list
                              #:double #:endpoint-filter #:endpoint-properties
                              #:endpoint-properties-list #:endpoint-status
                              #:entities-detection-job-filter
                              #:entities-detection-job-properties
                              #:entities-detection-job-properties-list #:entity
                              #:entity-label #:entity-recognition-config
                              #:entity-recognizer-annotations
                              #:entity-recognizer-arn
                              #:entity-recognizer-augmented-manifests-list
                              #:entity-recognizer-data-format
                              #:entity-recognizer-documents
                              #:entity-recognizer-endpoint-arn
                              #:entity-recognizer-entity-list
                              #:entity-recognizer-evaluation-metrics
                              #:entity-recognizer-filter
                              #:entity-recognizer-input-data-config
                              #:entity-recognizer-metadata
                              #:entity-recognizer-metadata-entity-types-list
                              #:entity-recognizer-metadata-entity-types-list-item
                              #:entity-recognizer-output-data-config
                              #:entity-recognizer-properties
                              #:entity-recognizer-properties-list
                              #:entity-recognizer-summaries-list
                              #:entity-recognizer-summary #:entity-type
                              #:entity-type-name
                              #:entity-types-evaluation-metrics
                              #:entity-types-list #:entity-types-list-item
                              #:errors-list-item #:event-type-string
                              #:events-detection-job-filter
                              #:events-detection-job-properties
                              #:events-detection-job-properties-list
                              #:extracted-characters-list-item #:float
                              #:flywheel-filter #:flywheel-iteration-filter
                              #:flywheel-iteration-id
                              #:flywheel-iteration-properties
                              #:flywheel-iteration-properties-list
                              #:flywheel-iteration-status
                              #:flywheel-model-evaluation-metrics
                              #:flywheel-properties #:flywheel-s3uri
                              #:flywheel-status #:flywheel-summary
                              #:flywheel-summary-list #:geometry #:iam-role-arn
                              #:import-model #:inference-units-integer
                              #:input-data-config #:input-format #:integer
                              #:invalid-request-detail
                              #:invalid-request-detail-reason
                              #:invalid-request-reason #:job-id #:job-name
                              #:job-status #:key-phrase
                              #:key-phrases-detection-job-filter
                              #:key-phrases-detection-job-properties
                              #:key-phrases-detection-job-properties-list
                              #:kms-key-id #:label-delimiter #:label-list-item
                              #:labels-list #:language-code #:list-datasets
                              #:list-document-classification-jobs
                              #:list-document-classifier-summaries
                              #:list-document-classifiers
                              #:list-dominant-language-detection-jobs
                              #:list-endpoints #:list-entities-detection-jobs
                              #:list-entity-recognizer-summaries
                              #:list-entity-recognizers
                              #:list-events-detection-jobs
                              #:list-flywheel-iteration-history
                              #:list-flywheels
                              #:list-key-phrases-detection-jobs
                              #:list-of-block-references #:list-of-blocks
                              #:list-of-child-blocks #:list-of-classes
                              #:list-of-descriptive-mention-indices
                              #:list-of-detect-dominant-language-result
                              #:list-of-detect-entities-result
                              #:list-of-detect-key-phrases-result
                              #:list-of-detect-sentiment-result
                              #:list-of-detect-syntax-result
                              #:list-of-detect-targeted-sentiment-result
                              #:list-of-document-read-feature-types
                              #:list-of-document-type
                              #:list-of-dominant-languages #:list-of-entities
                              #:list-of-entity-labels #:list-of-errors
                              #:list-of-extracted-characters
                              #:list-of-key-phrases #:list-of-labels
                              #:list-of-mentions #:list-of-pii-entities
                              #:list-of-pii-entity-types
                              #:list-of-relationships #:list-of-syntax-tokens
                              #:list-of-targeted-sentiment-entities
                              #:list-of-text-segments #:list-of-toxic-content
                              #:list-of-toxic-labels #:list-of-warnings
                              #:list-pii-entities-detection-jobs
                              #:list-sentiment-detection-jobs
                              #:list-tags-for-resource
                              #:list-targeted-sentiment-detection-jobs
                              #:list-topics-detection-jobs #:mask-character
                              #:max-results-integer #:mention-sentiment
                              #:model-status #:model-type #:number-of-documents
                              #:number-of-topics-integer #:output-data-config
                              #:page-based-error-code #:page-based-warning-code
                              #:part-of-speech-tag #:part-of-speech-tag-type
                              #:pii-entities-detection-job-filter
                              #:pii-entities-detection-job-properties
                              #:pii-entities-detection-job-properties-list
                              #:pii-entities-detection-mask-mode
                              #:pii-entities-detection-mode #:pii-entity
                              #:pii-entity-type #:pii-output-data-config
                              #:point #:policy #:policy-revision-id #:polygon
                              #:put-resource-policy #:redaction-config
                              #:relationship-type #:relationships-list-item
                              #:s3uri #:security-group-id #:security-group-ids
                              #:semi-structured-document-blob
                              #:sentiment-detection-job-filter
                              #:sentiment-detection-job-properties
                              #:sentiment-detection-job-properties-list
                              #:sentiment-score #:sentiment-type #:split
                              #:start-document-classification-job
                              #:start-dominant-language-detection-job
                              #:start-entities-detection-job
                              #:start-events-detection-job
                              #:start-flywheel-iteration
                              #:start-key-phrases-detection-job
                              #:start-pii-entities-detection-job
                              #:start-sentiment-detection-job
                              #:start-targeted-sentiment-detection-job
                              #:start-topics-detection-job
                              #:stop-dominant-language-detection-job
                              #:stop-entities-detection-job
                              #:stop-events-detection-job
                              #:stop-key-phrases-detection-job
                              #:stop-pii-entities-detection-job
                              #:stop-sentiment-detection-job
                              #:stop-targeted-sentiment-detection-job
                              #:stop-training-document-classifier
                              #:stop-training-entity-recognizer #:string
                              #:string-list #:subnet-id #:subnets
                              #:syntax-language-code #:syntax-token #:tag
                              #:tag-key #:tag-key-list #:tag-list
                              #:tag-resource #:tag-value #:target-event-types
                              #:targeted-sentiment-detection-job-filter
                              #:targeted-sentiment-detection-job-properties
                              #:targeted-sentiment-detection-job-properties-list
                              #:targeted-sentiment-entity
                              #:targeted-sentiment-entity-type
                              #:targeted-sentiment-mention #:task-config
                              #:text-segment #:timestamp
                              #:topics-detection-job-filter
                              #:topics-detection-job-properties
                              #:topics-detection-job-properties-list
                              #:toxic-content #:toxic-content-type
                              #:toxic-labels #:untag-resource
                              #:update-data-security-config #:update-endpoint
                              #:update-flywheel #:version-name #:vpc-config
                              #:warnings-list-item))
(common-lisp:in-package #:pira/comprehend)

(smithy/sdk/service:define-service comprehend-20171127 :shape-name
                                   "Comprehend_20171127" :version "2017-11-27"
                                   :title "Amazon Comprehend" :operations
                                   '(batch-detect-dominant-language
                                     batch-detect-entities
                                     batch-detect-key-phrases
                                     batch-detect-sentiment batch-detect-syntax
                                     batch-detect-targeted-sentiment
                                     classify-document contains-pii-entities
                                     create-dataset create-document-classifier
                                     create-endpoint create-entity-recognizer
                                     create-flywheel delete-document-classifier
                                     delete-endpoint delete-entity-recognizer
                                     delete-flywheel delete-resource-policy
                                     describe-dataset
                                     describe-document-classification-job
                                     describe-document-classifier
                                     describe-dominant-language-detection-job
                                     describe-endpoint
                                     describe-entities-detection-job
                                     describe-entity-recognizer
                                     describe-events-detection-job
                                     describe-flywheel
                                     describe-flywheel-iteration
                                     describe-key-phrases-detection-job
                                     describe-pii-entities-detection-job
                                     describe-resource-policy
                                     describe-sentiment-detection-job
                                     describe-targeted-sentiment-detection-job
                                     describe-topics-detection-job
                                     detect-dominant-language detect-entities
                                     detect-key-phrases detect-pii-entities
                                     detect-sentiment detect-syntax
                                     detect-targeted-sentiment
                                     detect-toxic-content import-model
                                     list-datasets
                                     list-document-classification-jobs
                                     list-document-classifiers
                                     list-document-classifier-summaries
                                     list-dominant-language-detection-jobs
                                     list-endpoints
                                     list-entities-detection-jobs
                                     list-entity-recognizers
                                     list-entity-recognizer-summaries
                                     list-events-detection-jobs
                                     list-flywheel-iteration-history
                                     list-flywheels
                                     list-key-phrases-detection-jobs
                                     list-pii-entities-detection-jobs
                                     list-sentiment-detection-jobs
                                     list-tags-for-resource
                                     list-targeted-sentiment-detection-jobs
                                     list-topics-detection-jobs
                                     put-resource-policy
                                     start-document-classification-job
                                     start-dominant-language-detection-job
                                     start-entities-detection-job
                                     start-events-detection-job
                                     start-flywheel-iteration
                                     start-key-phrases-detection-job
                                     start-pii-entities-detection-job
                                     start-sentiment-detection-job
                                     start-targeted-sentiment-detection-job
                                     start-topics-detection-job
                                     stop-dominant-language-detection-job
                                     stop-entities-detection-job
                                     stop-events-detection-job
                                     stop-key-phrases-detection-job
                                     stop-pii-entities-detection-job
                                     stop-sentiment-detection-job
                                     stop-targeted-sentiment-detection-job
                                     stop-training-document-classifier
                                     stop-training-entity-recognizer
                                     tag-resource untag-resource
                                     update-endpoint update-flywheel)
                                   :traits
                                   '(("aws.api#service"
                                      ("sdkId" . "Comprehend")
                                      ("arnNamespace" . "comprehend")
                                      ("cloudFormationName" . "Comprehend")
                                      ("cloudTrailEventSource"
                                       . "comprehend.amazonaws.com")
                                      ("endpointPrefix" . "comprehend"))
                                     ("aws.auth#sigv4" ("name" . "comprehend"))
                                     ("aws.protocols#awsJson1_1")))

(smithy/sdk/shapes:define-type any-length-string smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list attribute-names-list :member
                               attribute-names-list-item)

(smithy/sdk/shapes:define-type attribute-names-list-item
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum augmented-manifests-document-type-format
    common-lisp:nil
  (:plain-text-document "PLAIN_TEXT_DOCUMENT")
  (:semi-structured-document "SEMI_STRUCTURED_DOCUMENT"))

(smithy/sdk/shapes:define-structure augmented-manifests-list-item
                                    common-lisp:nil
                                    ((s3uri :target-type s3uri :required
                                      common-lisp:t :member-name "S3Uri")
                                     (split :target-type split :member-name
                                      "Split")
                                     (attribute-names :target-type
                                      attribute-names-list :required
                                      common-lisp:t :member-name
                                      "AttributeNames")
                                     (annotation-data-s3uri :target-type s3uri
                                      :member-name "AnnotationDataS3Uri")
                                     (source-documents-s3uri :target-type s3uri
                                      :member-name "SourceDocumentsS3Uri")
                                     (document-type :target-type
                                      augmented-manifests-document-type-format
                                      :member-name "DocumentType"))
                                    (:shape-name "AugmentedManifestsListItem"))

(smithy/sdk/shapes:define-structure batch-detect-dominant-language-item-result
                                    common-lisp:nil
                                    ((index :target-type integer :member-name
                                      "Index")
                                     (languages :target-type
                                      list-of-dominant-languages :member-name
                                      "Languages"))
                                    (:shape-name
                                     "BatchDetectDominantLanguageItemResult"))

(smithy/sdk/shapes:define-input batch-detect-dominant-language-request
                                common-lisp:nil
                                ((text-list :target-type
                                  customer-input-string-list :required
                                  common-lisp:t :member-name "TextList"))
                                (:shape-name
                                 "BatchDetectDominantLanguageRequest"))

(smithy/sdk/shapes:define-output batch-detect-dominant-language-response
                                 common-lisp:nil
                                 ((result-list :target-type
                                   list-of-detect-dominant-language-result
                                   :required common-lisp:t :member-name
                                   "ResultList")
                                  (error-list :target-type
                                   batch-item-error-list :required
                                   common-lisp:t :member-name "ErrorList"))
                                 (:shape-name
                                  "BatchDetectDominantLanguageResponse"))

(smithy/sdk/shapes:define-structure batch-detect-entities-item-result
                                    common-lisp:nil
                                    ((index :target-type integer :member-name
                                      "Index")
                                     (entities :target-type list-of-entities
                                      :member-name "Entities"))
                                    (:shape-name
                                     "BatchDetectEntitiesItemResult"))

(smithy/sdk/shapes:define-input batch-detect-entities-request common-lisp:nil
                                ((text-list :target-type
                                  customer-input-string-list :required
                                  common-lisp:t :member-name "TextList")
                                 (language-code :target-type language-code
                                  :required common-lisp:t :member-name
                                  "LanguageCode"))
                                (:shape-name "BatchDetectEntitiesRequest"))

(smithy/sdk/shapes:define-output batch-detect-entities-response common-lisp:nil
                                 ((result-list :target-type
                                   list-of-detect-entities-result :required
                                   common-lisp:t :member-name "ResultList")
                                  (error-list :target-type
                                   batch-item-error-list :required
                                   common-lisp:t :member-name "ErrorList"))
                                 (:shape-name "BatchDetectEntitiesResponse"))

(smithy/sdk/shapes:define-structure batch-detect-key-phrases-item-result
                                    common-lisp:nil
                                    ((index :target-type integer :member-name
                                      "Index")
                                     (key-phrases :target-type
                                      list-of-key-phrases :member-name
                                      "KeyPhrases"))
                                    (:shape-name
                                     "BatchDetectKeyPhrasesItemResult"))

(smithy/sdk/shapes:define-input batch-detect-key-phrases-request
                                common-lisp:nil
                                ((text-list :target-type
                                  customer-input-string-list :required
                                  common-lisp:t :member-name "TextList")
                                 (language-code :target-type language-code
                                  :required common-lisp:t :member-name
                                  "LanguageCode"))
                                (:shape-name "BatchDetectKeyPhrasesRequest"))

(smithy/sdk/shapes:define-output batch-detect-key-phrases-response
                                 common-lisp:nil
                                 ((result-list :target-type
                                   list-of-detect-key-phrases-result :required
                                   common-lisp:t :member-name "ResultList")
                                  (error-list :target-type
                                   batch-item-error-list :required
                                   common-lisp:t :member-name "ErrorList"))
                                 (:shape-name "BatchDetectKeyPhrasesResponse"))

(smithy/sdk/shapes:define-structure batch-detect-sentiment-item-result
                                    common-lisp:nil
                                    ((index :target-type integer :member-name
                                      "Index")
                                     (sentiment :target-type sentiment-type
                                      :member-name "Sentiment")
                                     (sentiment-score :target-type
                                      sentiment-score :member-name
                                      "SentimentScore"))
                                    (:shape-name
                                     "BatchDetectSentimentItemResult"))

(smithy/sdk/shapes:define-input batch-detect-sentiment-request common-lisp:nil
                                ((text-list :target-type
                                  customer-input-string-list :required
                                  common-lisp:t :member-name "TextList")
                                 (language-code :target-type language-code
                                  :required common-lisp:t :member-name
                                  "LanguageCode"))
                                (:shape-name "BatchDetectSentimentRequest"))

(smithy/sdk/shapes:define-output batch-detect-sentiment-response
                                 common-lisp:nil
                                 ((result-list :target-type
                                   list-of-detect-sentiment-result :required
                                   common-lisp:t :member-name "ResultList")
                                  (error-list :target-type
                                   batch-item-error-list :required
                                   common-lisp:t :member-name "ErrorList"))
                                 (:shape-name "BatchDetectSentimentResponse"))

(smithy/sdk/shapes:define-structure batch-detect-syntax-item-result
                                    common-lisp:nil
                                    ((index :target-type integer :member-name
                                      "Index")
                                     (syntax-tokens :target-type
                                      list-of-syntax-tokens :member-name
                                      "SyntaxTokens"))
                                    (:shape-name "BatchDetectSyntaxItemResult"))

(smithy/sdk/shapes:define-input batch-detect-syntax-request common-lisp:nil
                                ((text-list :target-type
                                  customer-input-string-list :required
                                  common-lisp:t :member-name "TextList")
                                 (language-code :target-type
                                  syntax-language-code :required common-lisp:t
                                  :member-name "LanguageCode"))
                                (:shape-name "BatchDetectSyntaxRequest"))

(smithy/sdk/shapes:define-output batch-detect-syntax-response common-lisp:nil
                                 ((result-list :target-type
                                   list-of-detect-syntax-result :required
                                   common-lisp:t :member-name "ResultList")
                                  (error-list :target-type
                                   batch-item-error-list :required
                                   common-lisp:t :member-name "ErrorList"))
                                 (:shape-name "BatchDetectSyntaxResponse"))

(smithy/sdk/shapes:define-structure batch-detect-targeted-sentiment-item-result
                                    common-lisp:nil
                                    ((index :target-type integer :member-name
                                      "Index")
                                     (entities :target-type
                                      list-of-targeted-sentiment-entities
                                      :member-name "Entities"))
                                    (:shape-name
                                     "BatchDetectTargetedSentimentItemResult"))

(smithy/sdk/shapes:define-input batch-detect-targeted-sentiment-request
                                common-lisp:nil
                                ((text-list :target-type
                                  customer-input-string-list :required
                                  common-lisp:t :member-name "TextList")
                                 (language-code :target-type language-code
                                  :required common-lisp:t :member-name
                                  "LanguageCode"))
                                (:shape-name
                                 "BatchDetectTargetedSentimentRequest"))

(smithy/sdk/shapes:define-output batch-detect-targeted-sentiment-response
                                 common-lisp:nil
                                 ((result-list :target-type
                                   list-of-detect-targeted-sentiment-result
                                   :required common-lisp:t :member-name
                                   "ResultList")
                                  (error-list :target-type
                                   batch-item-error-list :required
                                   common-lisp:t :member-name "ErrorList"))
                                 (:shape-name
                                  "BatchDetectTargetedSentimentResponse"))

(smithy/sdk/shapes:define-structure batch-item-error common-lisp:nil
                                    ((index :target-type integer :member-name
                                      "Index")
                                     (error-code :target-type string
                                      :member-name "ErrorCode")
                                     (error-message :target-type string
                                      :member-name "ErrorMessage"))
                                    (:shape-name "BatchItemError"))

(smithy/sdk/shapes:define-list batch-item-error-list :member batch-item-error)

(smithy/sdk/shapes:define-error batch-size-limit-exceeded-exception
                                common-lisp:nil
                                ((message :target-type string :member-name
                                  "Message"))
                                (:shape-name "BatchSizeLimitExceededException")
                                (:error-code 400))

(smithy/sdk/shapes:define-structure block common-lisp:nil
                                    ((id :target-type string :member-name "Id")
                                     (block-type :target-type block-type
                                      :member-name "BlockType")
                                     (text :target-type string :member-name
                                      "Text")
                                     (page :target-type integer :member-name
                                      "Page")
                                     (geometry :target-type geometry
                                      :member-name "Geometry")
                                     (relationships :target-type
                                      list-of-relationships :member-name
                                      "Relationships"))
                                    (:shape-name "Block"))

(smithy/sdk/shapes:define-structure block-reference common-lisp:nil
                                    ((block-id :target-type string :member-name
                                      "BlockId")
                                     (begin-offset :target-type integer
                                      :member-name "BeginOffset")
                                     (end-offset :target-type integer
                                      :member-name "EndOffset")
                                     (child-blocks :target-type
                                      list-of-child-blocks :member-name
                                      "ChildBlocks"))
                                    (:shape-name "BlockReference"))

(smithy/sdk/shapes:define-enum block-type
    common-lisp:nil
  (:line "LINE")
  (:word "WORD"))

(smithy/sdk/shapes:define-structure bounding-box common-lisp:nil
                                    ((height :target-type float :member-name
                                      "Height")
                                     (left :target-type float :member-name
                                      "Left")
                                     (top :target-type float :member-name
                                      "Top")
                                     (width :target-type float :member-name
                                      "Width"))
                                    (:shape-name "BoundingBox"))

(smithy/sdk/shapes:define-structure child-block common-lisp:nil
                                    ((child-block-id :target-type string
                                      :member-name "ChildBlockId")
                                     (begin-offset :target-type integer
                                      :member-name "BeginOffset")
                                     (end-offset :target-type integer
                                      :member-name "EndOffset"))
                                    (:shape-name "ChildBlock"))

(smithy/sdk/shapes:define-structure classifier-evaluation-metrics
                                    common-lisp:nil
                                    ((accuracy :target-type double :member-name
                                      "Accuracy")
                                     (precision :target-type double
                                      :member-name "Precision")
                                     (recall :target-type double :member-name
                                      "Recall")
                                     (f1score :target-type double :member-name
                                      "F1Score")
                                     (micro-precision :target-type double
                                      :member-name "MicroPrecision")
                                     (micro-recall :target-type double
                                      :member-name "MicroRecall")
                                     (micro-f1score :target-type double
                                      :member-name "MicroF1Score")
                                     (hamming-loss :target-type double
                                      :member-name "HammingLoss"))
                                    (:shape-name "ClassifierEvaluationMetrics"))

(smithy/sdk/shapes:define-structure classifier-metadata common-lisp:nil
                                    ((number-of-labels :target-type integer
                                      :member-name "NumberOfLabels")
                                     (number-of-trained-documents :target-type
                                      integer :member-name
                                      "NumberOfTrainedDocuments")
                                     (number-of-test-documents :target-type
                                      integer :member-name
                                      "NumberOfTestDocuments")
                                     (evaluation-metrics :target-type
                                      classifier-evaluation-metrics
                                      :member-name "EvaluationMetrics"))
                                    (:shape-name "ClassifierMetadata"))

(smithy/sdk/shapes:define-input classify-document-request common-lisp:nil
                                ((text :target-type customer-input-string
                                  :member-name "Text")
                                 (endpoint-arn :target-type
                                  document-classifier-endpoint-arn :required
                                  common-lisp:t :member-name "EndpointArn")
                                 (bytes :target-type
                                  semi-structured-document-blob :member-name
                                  "Bytes")
                                 (document-reader-config :target-type
                                  document-reader-config :member-name
                                  "DocumentReaderConfig"))
                                (:shape-name "ClassifyDocumentRequest"))

(smithy/sdk/shapes:define-output classify-document-response common-lisp:nil
                                 ((classes :target-type list-of-classes
                                   :member-name "Classes")
                                  (labels :target-type list-of-labels
                                   :member-name "Labels")
                                  (document-metadata :target-type
                                   document-metadata :member-name
                                   "DocumentMetadata")
                                  (document-type :target-type
                                   list-of-document-type :member-name
                                   "DocumentType")
                                  (errors :target-type list-of-errors
                                   :member-name "Errors")
                                  (warnings :target-type list-of-warnings
                                   :member-name "Warnings"))
                                 (:shape-name "ClassifyDocumentResponse"))

(smithy/sdk/shapes:define-type client-request-token-string
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type comprehend-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type comprehend-arn-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type comprehend-dataset-arn
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type comprehend-endpoint-arn
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type comprehend-endpoint-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type comprehend-flywheel-arn
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type comprehend-model-arn
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error concurrent-modification-exception
                                common-lisp:nil
                                ((message :target-type string :member-name
                                  "Message"))
                                (:shape-name "ConcurrentModificationException")
                                (:error-code 400))

(smithy/sdk/shapes:define-input contains-pii-entities-request common-lisp:nil
                                ((text :target-type string :required
                                  common-lisp:t :member-name "Text")
                                 (language-code :target-type language-code
                                  :required common-lisp:t :member-name
                                  "LanguageCode"))
                                (:shape-name "ContainsPiiEntitiesRequest"))

(smithy/sdk/shapes:define-output contains-pii-entities-response common-lisp:nil
                                 ((labels :target-type list-of-entity-labels
                                   :member-name "Labels"))
                                 (:shape-name "ContainsPiiEntitiesResponse"))

(smithy/sdk/shapes:define-input create-dataset-request common-lisp:nil
                                ((flywheel-arn :target-type
                                  comprehend-flywheel-arn :required
                                  common-lisp:t :member-name "FlywheelArn")
                                 (dataset-name :target-type comprehend-arn-name
                                  :required common-lisp:t :member-name
                                  "DatasetName")
                                 (dataset-type :target-type dataset-type
                                  :member-name "DatasetType")
                                 (description :target-type description
                                  :member-name "Description")
                                 (input-data-config :target-type
                                  dataset-input-data-config :required
                                  common-lisp:t :member-name "InputDataConfig")
                                 (client-request-token :target-type
                                  client-request-token-string :member-name
                                  "ClientRequestToken")
                                 (tags :target-type tag-list :member-name
                                  "Tags"))
                                (:shape-name "CreateDatasetRequest"))

(smithy/sdk/shapes:define-output create-dataset-response common-lisp:nil
                                 ((dataset-arn :target-type
                                   comprehend-dataset-arn :member-name
                                   "DatasetArn"))
                                 (:shape-name "CreateDatasetResponse"))

(smithy/sdk/shapes:define-input create-document-classifier-request
                                common-lisp:nil
                                ((document-classifier-name :target-type
                                  comprehend-arn-name :required common-lisp:t
                                  :member-name "DocumentClassifierName")
                                 (version-name :target-type version-name
                                  :member-name "VersionName")
                                 (data-access-role-arn :target-type
                                  iam-role-arn :required common-lisp:t
                                  :member-name "DataAccessRoleArn")
                                 (tags :target-type tag-list :member-name
                                  "Tags")
                                 (input-data-config :target-type
                                  document-classifier-input-data-config
                                  :required common-lisp:t :member-name
                                  "InputDataConfig")
                                 (output-data-config :target-type
                                  document-classifier-output-data-config
                                  :member-name "OutputDataConfig")
                                 (client-request-token :target-type
                                  client-request-token-string :member-name
                                  "ClientRequestToken")
                                 (language-code :target-type language-code
                                  :required common-lisp:t :member-name
                                  "LanguageCode")
                                 (volume-kms-key-id :target-type kms-key-id
                                  :member-name "VolumeKmsKeyId")
                                 (vpc-config :target-type vpc-config
                                  :member-name "VpcConfig")
                                 (mode :target-type document-classifier-mode
                                  :member-name "Mode")
                                 (model-kms-key-id :target-type kms-key-id
                                  :member-name "ModelKmsKeyId")
                                 (model-policy :target-type policy :member-name
                                  "ModelPolicy"))
                                (:shape-name "CreateDocumentClassifierRequest"))

(smithy/sdk/shapes:define-output create-document-classifier-response
                                 common-lisp:nil
                                 ((document-classifier-arn :target-type
                                   document-classifier-arn :member-name
                                   "DocumentClassifierArn"))
                                 (:shape-name
                                  "CreateDocumentClassifierResponse"))

(smithy/sdk/shapes:define-input create-endpoint-request common-lisp:nil
                                ((endpoint-name :target-type
                                  comprehend-endpoint-name :required
                                  common-lisp:t :member-name "EndpointName")
                                 (model-arn :target-type comprehend-model-arn
                                  :member-name "ModelArn")
                                 (desired-inference-units :target-type
                                  inference-units-integer :required
                                  common-lisp:t :member-name
                                  "DesiredInferenceUnits")
                                 (client-request-token :target-type
                                  client-request-token-string :member-name
                                  "ClientRequestToken")
                                 (tags :target-type tag-list :member-name
                                  "Tags")
                                 (data-access-role-arn :target-type
                                  iam-role-arn :member-name
                                  "DataAccessRoleArn")
                                 (flywheel-arn :target-type
                                  comprehend-flywheel-arn :member-name
                                  "FlywheelArn"))
                                (:shape-name "CreateEndpointRequest"))

(smithy/sdk/shapes:define-output create-endpoint-response common-lisp:nil
                                 ((endpoint-arn :target-type
                                   comprehend-endpoint-arn :member-name
                                   "EndpointArn")
                                  (model-arn :target-type comprehend-model-arn
                                   :member-name "ModelArn"))
                                 (:shape-name "CreateEndpointResponse"))

(smithy/sdk/shapes:define-input create-entity-recognizer-request
                                common-lisp:nil
                                ((recognizer-name :target-type
                                  comprehend-arn-name :required common-lisp:t
                                  :member-name "RecognizerName")
                                 (version-name :target-type version-name
                                  :member-name "VersionName")
                                 (data-access-role-arn :target-type
                                  iam-role-arn :required common-lisp:t
                                  :member-name "DataAccessRoleArn")
                                 (tags :target-type tag-list :member-name
                                  "Tags")
                                 (input-data-config :target-type
                                  entity-recognizer-input-data-config :required
                                  common-lisp:t :member-name "InputDataConfig")
                                 (client-request-token :target-type
                                  client-request-token-string :member-name
                                  "ClientRequestToken")
                                 (language-code :target-type language-code
                                  :required common-lisp:t :member-name
                                  "LanguageCode")
                                 (volume-kms-key-id :target-type kms-key-id
                                  :member-name "VolumeKmsKeyId")
                                 (vpc-config :target-type vpc-config
                                  :member-name "VpcConfig")
                                 (model-kms-key-id :target-type kms-key-id
                                  :member-name "ModelKmsKeyId")
                                 (model-policy :target-type policy :member-name
                                  "ModelPolicy"))
                                (:shape-name "CreateEntityRecognizerRequest"))

(smithy/sdk/shapes:define-output create-entity-recognizer-response
                                 common-lisp:nil
                                 ((entity-recognizer-arn :target-type
                                   entity-recognizer-arn :member-name
                                   "EntityRecognizerArn"))
                                 (:shape-name "CreateEntityRecognizerResponse"))

(smithy/sdk/shapes:define-input create-flywheel-request common-lisp:nil
                                ((flywheel-name :target-type
                                  comprehend-arn-name :required common-lisp:t
                                  :member-name "FlywheelName")
                                 (active-model-arn :target-type
                                  comprehend-model-arn :member-name
                                  "ActiveModelArn")
                                 (data-access-role-arn :target-type
                                  iam-role-arn :required common-lisp:t
                                  :member-name "DataAccessRoleArn")
                                 (task-config :target-type task-config
                                  :member-name "TaskConfig")
                                 (model-type :target-type model-type
                                  :member-name "ModelType")
                                 (data-lake-s3uri :target-type flywheel-s3uri
                                  :required common-lisp:t :member-name
                                  "DataLakeS3Uri")
                                 (data-security-config :target-type
                                  data-security-config :member-name
                                  "DataSecurityConfig")
                                 (client-request-token :target-type
                                  client-request-token-string :member-name
                                  "ClientRequestToken")
                                 (tags :target-type tag-list :member-name
                                  "Tags"))
                                (:shape-name "CreateFlywheelRequest"))

(smithy/sdk/shapes:define-output create-flywheel-response common-lisp:nil
                                 ((flywheel-arn :target-type
                                   comprehend-flywheel-arn :member-name
                                   "FlywheelArn")
                                  (active-model-arn :target-type
                                   comprehend-model-arn :member-name
                                   "ActiveModelArn"))
                                 (:shape-name "CreateFlywheelResponse"))

(smithy/sdk/shapes:define-type customer-input-string
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list customer-input-string-list :member
                               customer-input-string)

(smithy/sdk/shapes:define-structure data-security-config common-lisp:nil
                                    ((model-kms-key-id :target-type kms-key-id
                                      :member-name "ModelKmsKeyId")
                                     (volume-kms-key-id :target-type kms-key-id
                                      :member-name "VolumeKmsKeyId")
                                     (data-lake-kms-key-id :target-type
                                      kms-key-id :member-name
                                      "DataLakeKmsKeyId")
                                     (vpc-config :target-type vpc-config
                                      :member-name "VpcConfig"))
                                    (:shape-name "DataSecurityConfig"))

(smithy/sdk/shapes:define-list dataset-augmented-manifests-list :member
                               dataset-augmented-manifests-list-item)

(smithy/sdk/shapes:define-structure dataset-augmented-manifests-list-item
                                    common-lisp:nil
                                    ((attribute-names :target-type
                                      attribute-names-list :required
                                      common-lisp:t :member-name
                                      "AttributeNames")
                                     (s3uri :target-type s3uri :required
                                      common-lisp:t :member-name "S3Uri")
                                     (annotation-data-s3uri :target-type s3uri
                                      :member-name "AnnotationDataS3Uri")
                                     (source-documents-s3uri :target-type s3uri
                                      :member-name "SourceDocumentsS3Uri")
                                     (document-type :target-type
                                      augmented-manifests-document-type-format
                                      :member-name "DocumentType"))
                                    (:shape-name
                                     "DatasetAugmentedManifestsListItem"))

(smithy/sdk/shapes:define-enum dataset-data-format
    common-lisp:nil
  (:comprehend-csv "COMPREHEND_CSV")
  (:augmented-manifest "AUGMENTED_MANIFEST"))

(smithy/sdk/shapes:define-structure
 dataset-document-classifier-input-data-config common-lisp:nil
 ((s3uri :target-type s3uri :required common-lisp:t :member-name "S3Uri")
  (label-delimiter :target-type label-delimiter :member-name "LabelDelimiter"))
 (:shape-name "DatasetDocumentClassifierInputDataConfig"))

(smithy/sdk/shapes:define-structure dataset-entity-recognizer-annotations
                                    common-lisp:nil
                                    ((s3uri :target-type s3uri :required
                                      common-lisp:t :member-name "S3Uri"))
                                    (:shape-name
                                     "DatasetEntityRecognizerAnnotations"))

(smithy/sdk/shapes:define-structure dataset-entity-recognizer-documents
                                    common-lisp:nil
                                    ((s3uri :target-type s3uri :required
                                      common-lisp:t :member-name "S3Uri")
                                     (input-format :target-type input-format
                                      :member-name "InputFormat"))
                                    (:shape-name
                                     "DatasetEntityRecognizerDocuments"))

(smithy/sdk/shapes:define-structure dataset-entity-recognizer-entity-list
                                    common-lisp:nil
                                    ((s3uri :target-type s3uri :required
                                      common-lisp:t :member-name "S3Uri"))
                                    (:shape-name
                                     "DatasetEntityRecognizerEntityList"))

(smithy/sdk/shapes:define-structure dataset-entity-recognizer-input-data-config
                                    common-lisp:nil
                                    ((annotations :target-type
                                      dataset-entity-recognizer-annotations
                                      :member-name "Annotations")
                                     (documents :target-type
                                      dataset-entity-recognizer-documents
                                      :required common-lisp:t :member-name
                                      "Documents")
                                     (entity-list :target-type
                                      dataset-entity-recognizer-entity-list
                                      :member-name "EntityList"))
                                    (:shape-name
                                     "DatasetEntityRecognizerInputDataConfig"))

(smithy/sdk/shapes:define-structure dataset-filter common-lisp:nil
                                    ((status :target-type dataset-status
                                      :member-name "Status")
                                     (dataset-type :target-type dataset-type
                                      :member-name "DatasetType")
                                     (creation-time-after :target-type
                                      timestamp :member-name
                                      "CreationTimeAfter")
                                     (creation-time-before :target-type
                                      timestamp :member-name
                                      "CreationTimeBefore"))
                                    (:shape-name "DatasetFilter"))

(smithy/sdk/shapes:define-structure dataset-input-data-config common-lisp:nil
                                    ((augmented-manifests :target-type
                                      dataset-augmented-manifests-list
                                      :member-name "AugmentedManifests")
                                     (data-format :target-type
                                      dataset-data-format :member-name
                                      "DataFormat")
                                     (document-classifier-input-data-config
                                      :target-type
                                      dataset-document-classifier-input-data-config
                                      :member-name
                                      "DocumentClassifierInputDataConfig")
                                     (entity-recognizer-input-data-config
                                      :target-type
                                      dataset-entity-recognizer-input-data-config
                                      :member-name
                                      "EntityRecognizerInputDataConfig"))
                                    (:shape-name "DatasetInputDataConfig"))

(smithy/sdk/shapes:define-structure dataset-properties common-lisp:nil
                                    ((dataset-arn :target-type
                                      comprehend-dataset-arn :member-name
                                      "DatasetArn")
                                     (dataset-name :target-type
                                      comprehend-arn-name :member-name
                                      "DatasetName")
                                     (dataset-type :target-type dataset-type
                                      :member-name "DatasetType")
                                     (dataset-s3uri :target-type s3uri
                                      :member-name "DatasetS3Uri")
                                     (description :target-type description
                                      :member-name "Description")
                                     (status :target-type dataset-status
                                      :member-name "Status")
                                     (message :target-type any-length-string
                                      :member-name "Message")
                                     (number-of-documents :target-type
                                      number-of-documents :member-name
                                      "NumberOfDocuments")
                                     (creation-time :target-type timestamp
                                      :member-name "CreationTime")
                                     (end-time :target-type timestamp
                                      :member-name "EndTime"))
                                    (:shape-name "DatasetProperties"))

(smithy/sdk/shapes:define-list dataset-properties-list :member
                               dataset-properties)

(smithy/sdk/shapes:define-enum dataset-status
    common-lisp:nil
  (:creating "CREATING")
  (:completed "COMPLETED")
  (:failed "FAILED"))

(smithy/sdk/shapes:define-enum dataset-type
    common-lisp:nil
  (:train "TRAIN")
  (:test "TEST"))

(smithy/sdk/shapes:define-input delete-document-classifier-request
                                common-lisp:nil
                                ((document-classifier-arn :target-type
                                  document-classifier-arn :required
                                  common-lisp:t :member-name
                                  "DocumentClassifierArn"))
                                (:shape-name "DeleteDocumentClassifierRequest"))

(smithy/sdk/shapes:define-output delete-document-classifier-response
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name
                                  "DeleteDocumentClassifierResponse"))

(smithy/sdk/shapes:define-input delete-endpoint-request common-lisp:nil
                                ((endpoint-arn :target-type
                                  comprehend-endpoint-arn :required
                                  common-lisp:t :member-name "EndpointArn"))
                                (:shape-name "DeleteEndpointRequest"))

(smithy/sdk/shapes:define-output delete-endpoint-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "DeleteEndpointResponse"))

(smithy/sdk/shapes:define-input delete-entity-recognizer-request
                                common-lisp:nil
                                ((entity-recognizer-arn :target-type
                                  entity-recognizer-arn :required common-lisp:t
                                  :member-name "EntityRecognizerArn"))
                                (:shape-name "DeleteEntityRecognizerRequest"))

(smithy/sdk/shapes:define-output delete-entity-recognizer-response
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name "DeleteEntityRecognizerResponse"))

(smithy/sdk/shapes:define-input delete-flywheel-request common-lisp:nil
                                ((flywheel-arn :target-type
                                  comprehend-flywheel-arn :required
                                  common-lisp:t :member-name "FlywheelArn"))
                                (:shape-name "DeleteFlywheelRequest"))

(smithy/sdk/shapes:define-output delete-flywheel-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "DeleteFlywheelResponse"))

(smithy/sdk/shapes:define-input delete-resource-policy-request common-lisp:nil
                                ((resource-arn :target-type
                                  comprehend-model-arn :required common-lisp:t
                                  :member-name "ResourceArn")
                                 (policy-revision-id :target-type
                                  policy-revision-id :member-name
                                  "PolicyRevisionId"))
                                (:shape-name "DeleteResourcePolicyRequest"))

(smithy/sdk/shapes:define-output delete-resource-policy-response
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name "DeleteResourcePolicyResponse"))

(smithy/sdk/shapes:define-input describe-dataset-request common-lisp:nil
                                ((dataset-arn :target-type
                                  comprehend-dataset-arn :required
                                  common-lisp:t :member-name "DatasetArn"))
                                (:shape-name "DescribeDatasetRequest"))

(smithy/sdk/shapes:define-output describe-dataset-response common-lisp:nil
                                 ((dataset-properties :target-type
                                   dataset-properties :member-name
                                   "DatasetProperties"))
                                 (:shape-name "DescribeDatasetResponse"))

(smithy/sdk/shapes:define-input describe-document-classification-job-request
                                common-lisp:nil
                                ((job-id :target-type job-id :required
                                  common-lisp:t :member-name "JobId"))
                                (:shape-name
                                 "DescribeDocumentClassificationJobRequest"))

(smithy/sdk/shapes:define-output describe-document-classification-job-response
                                 common-lisp:nil
                                 ((document-classification-job-properties
                                   :target-type
                                   document-classification-job-properties
                                   :member-name
                                   "DocumentClassificationJobProperties"))
                                 (:shape-name
                                  "DescribeDocumentClassificationJobResponse"))

(smithy/sdk/shapes:define-input describe-document-classifier-request
                                common-lisp:nil
                                ((document-classifier-arn :target-type
                                  document-classifier-arn :required
                                  common-lisp:t :member-name
                                  "DocumentClassifierArn"))
                                (:shape-name
                                 "DescribeDocumentClassifierRequest"))

(smithy/sdk/shapes:define-output describe-document-classifier-response
                                 common-lisp:nil
                                 ((document-classifier-properties :target-type
                                   document-classifier-properties :member-name
                                   "DocumentClassifierProperties"))
                                 (:shape-name
                                  "DescribeDocumentClassifierResponse"))

(smithy/sdk/shapes:define-input
 describe-dominant-language-detection-job-request common-lisp:nil
 ((job-id :target-type job-id :required common-lisp:t :member-name "JobId"))
 (:shape-name "DescribeDominantLanguageDetectionJobRequest"))

(smithy/sdk/shapes:define-output
 describe-dominant-language-detection-job-response common-lisp:nil
 ((dominant-language-detection-job-properties :target-type
   dominant-language-detection-job-properties :member-name
   "DominantLanguageDetectionJobProperties"))
 (:shape-name "DescribeDominantLanguageDetectionJobResponse"))

(smithy/sdk/shapes:define-input describe-endpoint-request common-lisp:nil
                                ((endpoint-arn :target-type
                                  comprehend-endpoint-arn :required
                                  common-lisp:t :member-name "EndpointArn"))
                                (:shape-name "DescribeEndpointRequest"))

(smithy/sdk/shapes:define-output describe-endpoint-response common-lisp:nil
                                 ((endpoint-properties :target-type
                                   endpoint-properties :member-name
                                   "EndpointProperties"))
                                 (:shape-name "DescribeEndpointResponse"))

(smithy/sdk/shapes:define-input describe-entities-detection-job-request
                                common-lisp:nil
                                ((job-id :target-type job-id :required
                                  common-lisp:t :member-name "JobId"))
                                (:shape-name
                                 "DescribeEntitiesDetectionJobRequest"))

(smithy/sdk/shapes:define-output describe-entities-detection-job-response
                                 common-lisp:nil
                                 ((entities-detection-job-properties
                                   :target-type
                                   entities-detection-job-properties
                                   :member-name
                                   "EntitiesDetectionJobProperties"))
                                 (:shape-name
                                  "DescribeEntitiesDetectionJobResponse"))

(smithy/sdk/shapes:define-input describe-entity-recognizer-request
                                common-lisp:nil
                                ((entity-recognizer-arn :target-type
                                  entity-recognizer-arn :required common-lisp:t
                                  :member-name "EntityRecognizerArn"))
                                (:shape-name "DescribeEntityRecognizerRequest"))

(smithy/sdk/shapes:define-output describe-entity-recognizer-response
                                 common-lisp:nil
                                 ((entity-recognizer-properties :target-type
                                   entity-recognizer-properties :member-name
                                   "EntityRecognizerProperties"))
                                 (:shape-name
                                  "DescribeEntityRecognizerResponse"))

(smithy/sdk/shapes:define-input describe-events-detection-job-request
                                common-lisp:nil
                                ((job-id :target-type job-id :required
                                  common-lisp:t :member-name "JobId"))
                                (:shape-name
                                 "DescribeEventsDetectionJobRequest"))

(smithy/sdk/shapes:define-output describe-events-detection-job-response
                                 common-lisp:nil
                                 ((events-detection-job-properties :target-type
                                   events-detection-job-properties :member-name
                                   "EventsDetectionJobProperties"))
                                 (:shape-name
                                  "DescribeEventsDetectionJobResponse"))

(smithy/sdk/shapes:define-input describe-flywheel-iteration-request
                                common-lisp:nil
                                ((flywheel-arn :target-type
                                  comprehend-flywheel-arn :required
                                  common-lisp:t :member-name "FlywheelArn")
                                 (flywheel-iteration-id :target-type
                                  flywheel-iteration-id :required common-lisp:t
                                  :member-name "FlywheelIterationId"))
                                (:shape-name
                                 "DescribeFlywheelIterationRequest"))

(smithy/sdk/shapes:define-output describe-flywheel-iteration-response
                                 common-lisp:nil
                                 ((flywheel-iteration-properties :target-type
                                   flywheel-iteration-properties :member-name
                                   "FlywheelIterationProperties"))
                                 (:shape-name
                                  "DescribeFlywheelIterationResponse"))

(smithy/sdk/shapes:define-input describe-flywheel-request common-lisp:nil
                                ((flywheel-arn :target-type
                                  comprehend-flywheel-arn :required
                                  common-lisp:t :member-name "FlywheelArn"))
                                (:shape-name "DescribeFlywheelRequest"))

(smithy/sdk/shapes:define-output describe-flywheel-response common-lisp:nil
                                 ((flywheel-properties :target-type
                                   flywheel-properties :member-name
                                   "FlywheelProperties"))
                                 (:shape-name "DescribeFlywheelResponse"))

(smithy/sdk/shapes:define-input describe-key-phrases-detection-job-request
                                common-lisp:nil
                                ((job-id :target-type job-id :required
                                  common-lisp:t :member-name "JobId"))
                                (:shape-name
                                 "DescribeKeyPhrasesDetectionJobRequest"))

(smithy/sdk/shapes:define-output describe-key-phrases-detection-job-response
                                 common-lisp:nil
                                 ((key-phrases-detection-job-properties
                                   :target-type
                                   key-phrases-detection-job-properties
                                   :member-name
                                   "KeyPhrasesDetectionJobProperties"))
                                 (:shape-name
                                  "DescribeKeyPhrasesDetectionJobResponse"))

(smithy/sdk/shapes:define-input describe-pii-entities-detection-job-request
                                common-lisp:nil
                                ((job-id :target-type job-id :required
                                  common-lisp:t :member-name "JobId"))
                                (:shape-name
                                 "DescribePiiEntitiesDetectionJobRequest"))

(smithy/sdk/shapes:define-output describe-pii-entities-detection-job-response
                                 common-lisp:nil
                                 ((pii-entities-detection-job-properties
                                   :target-type
                                   pii-entities-detection-job-properties
                                   :member-name
                                   "PiiEntitiesDetectionJobProperties"))
                                 (:shape-name
                                  "DescribePiiEntitiesDetectionJobResponse"))

(smithy/sdk/shapes:define-input describe-resource-policy-request
                                common-lisp:nil
                                ((resource-arn :target-type
                                  comprehend-model-arn :required common-lisp:t
                                  :member-name "ResourceArn"))
                                (:shape-name "DescribeResourcePolicyRequest"))

(smithy/sdk/shapes:define-output describe-resource-policy-response
                                 common-lisp:nil
                                 ((resource-policy :target-type policy
                                   :member-name "ResourcePolicy")
                                  (creation-time :target-type timestamp
                                   :member-name "CreationTime")
                                  (last-modified-time :target-type timestamp
                                   :member-name "LastModifiedTime")
                                  (policy-revision-id :target-type
                                   policy-revision-id :member-name
                                   "PolicyRevisionId"))
                                 (:shape-name "DescribeResourcePolicyResponse"))

(smithy/sdk/shapes:define-input describe-sentiment-detection-job-request
                                common-lisp:nil
                                ((job-id :target-type job-id :required
                                  common-lisp:t :member-name "JobId"))
                                (:shape-name
                                 "DescribeSentimentDetectionJobRequest"))

(smithy/sdk/shapes:define-output describe-sentiment-detection-job-response
                                 common-lisp:nil
                                 ((sentiment-detection-job-properties
                                   :target-type
                                   sentiment-detection-job-properties
                                   :member-name
                                   "SentimentDetectionJobProperties"))
                                 (:shape-name
                                  "DescribeSentimentDetectionJobResponse"))

(smithy/sdk/shapes:define-input
 describe-targeted-sentiment-detection-job-request common-lisp:nil
 ((job-id :target-type job-id :required common-lisp:t :member-name "JobId"))
 (:shape-name "DescribeTargetedSentimentDetectionJobRequest"))

(smithy/sdk/shapes:define-output
 describe-targeted-sentiment-detection-job-response common-lisp:nil
 ((targeted-sentiment-detection-job-properties :target-type
   targeted-sentiment-detection-job-properties :member-name
   "TargetedSentimentDetectionJobProperties"))
 (:shape-name "DescribeTargetedSentimentDetectionJobResponse"))

(smithy/sdk/shapes:define-input describe-topics-detection-job-request
                                common-lisp:nil
                                ((job-id :target-type job-id :required
                                  common-lisp:t :member-name "JobId"))
                                (:shape-name
                                 "DescribeTopicsDetectionJobRequest"))

(smithy/sdk/shapes:define-output describe-topics-detection-job-response
                                 common-lisp:nil
                                 ((topics-detection-job-properties :target-type
                                   topics-detection-job-properties :member-name
                                   "TopicsDetectionJobProperties"))
                                 (:shape-name
                                  "DescribeTopicsDetectionJobResponse"))

(smithy/sdk/shapes:define-type description smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input detect-dominant-language-request
                                common-lisp:nil
                                ((text :target-type customer-input-string
                                  :required common-lisp:t :member-name "Text"))
                                (:shape-name "DetectDominantLanguageRequest"))

(smithy/sdk/shapes:define-output detect-dominant-language-response
                                 common-lisp:nil
                                 ((languages :target-type
                                   list-of-dominant-languages :member-name
                                   "Languages"))
                                 (:shape-name "DetectDominantLanguageResponse"))

(smithy/sdk/shapes:define-input detect-entities-request common-lisp:nil
                                ((text :target-type customer-input-string
                                  :member-name "Text")
                                 (language-code :target-type language-code
                                  :member-name "LanguageCode")
                                 (endpoint-arn :target-type
                                  entity-recognizer-endpoint-arn :member-name
                                  "EndpointArn")
                                 (bytes :target-type
                                  semi-structured-document-blob :member-name
                                  "Bytes")
                                 (document-reader-config :target-type
                                  document-reader-config :member-name
                                  "DocumentReaderConfig"))
                                (:shape-name "DetectEntitiesRequest"))

(smithy/sdk/shapes:define-output detect-entities-response common-lisp:nil
                                 ((entities :target-type list-of-entities
                                   :member-name "Entities")
                                  (document-metadata :target-type
                                   document-metadata :member-name
                                   "DocumentMetadata")
                                  (document-type :target-type
                                   list-of-document-type :member-name
                                   "DocumentType")
                                  (blocks :target-type list-of-blocks
                                   :member-name "Blocks")
                                  (errors :target-type list-of-errors
                                   :member-name "Errors"))
                                 (:shape-name "DetectEntitiesResponse"))

(smithy/sdk/shapes:define-input detect-key-phrases-request common-lisp:nil
                                ((text :target-type customer-input-string
                                  :required common-lisp:t :member-name "Text")
                                 (language-code :target-type language-code
                                  :required common-lisp:t :member-name
                                  "LanguageCode"))
                                (:shape-name "DetectKeyPhrasesRequest"))

(smithy/sdk/shapes:define-output detect-key-phrases-response common-lisp:nil
                                 ((key-phrases :target-type list-of-key-phrases
                                   :member-name "KeyPhrases"))
                                 (:shape-name "DetectKeyPhrasesResponse"))

(smithy/sdk/shapes:define-input detect-pii-entities-request common-lisp:nil
                                ((text :target-type string :required
                                  common-lisp:t :member-name "Text")
                                 (language-code :target-type language-code
                                  :required common-lisp:t :member-name
                                  "LanguageCode"))
                                (:shape-name "DetectPiiEntitiesRequest"))

(smithy/sdk/shapes:define-output detect-pii-entities-response common-lisp:nil
                                 ((entities :target-type list-of-pii-entities
                                   :member-name "Entities"))
                                 (:shape-name "DetectPiiEntitiesResponse"))

(smithy/sdk/shapes:define-input detect-sentiment-request common-lisp:nil
                                ((text :target-type customer-input-string
                                  :required common-lisp:t :member-name "Text")
                                 (language-code :target-type language-code
                                  :required common-lisp:t :member-name
                                  "LanguageCode"))
                                (:shape-name "DetectSentimentRequest"))

(smithy/sdk/shapes:define-output detect-sentiment-response common-lisp:nil
                                 ((sentiment :target-type sentiment-type
                                   :member-name "Sentiment")
                                  (sentiment-score :target-type sentiment-score
                                   :member-name "SentimentScore"))
                                 (:shape-name "DetectSentimentResponse"))

(smithy/sdk/shapes:define-input detect-syntax-request common-lisp:nil
                                ((text :target-type customer-input-string
                                  :required common-lisp:t :member-name "Text")
                                 (language-code :target-type
                                  syntax-language-code :required common-lisp:t
                                  :member-name "LanguageCode"))
                                (:shape-name "DetectSyntaxRequest"))

(smithy/sdk/shapes:define-output detect-syntax-response common-lisp:nil
                                 ((syntax-tokens :target-type
                                   list-of-syntax-tokens :member-name
                                   "SyntaxTokens"))
                                 (:shape-name "DetectSyntaxResponse"))

(smithy/sdk/shapes:define-input detect-targeted-sentiment-request
                                common-lisp:nil
                                ((text :target-type customer-input-string
                                  :required common-lisp:t :member-name "Text")
                                 (language-code :target-type language-code
                                  :required common-lisp:t :member-name
                                  "LanguageCode"))
                                (:shape-name "DetectTargetedSentimentRequest"))

(smithy/sdk/shapes:define-output detect-targeted-sentiment-response
                                 common-lisp:nil
                                 ((entities :target-type
                                   list-of-targeted-sentiment-entities
                                   :member-name "Entities"))
                                 (:shape-name
                                  "DetectTargetedSentimentResponse"))

(smithy/sdk/shapes:define-input detect-toxic-content-request common-lisp:nil
                                ((text-segments :target-type
                                  list-of-text-segments :required common-lisp:t
                                  :member-name "TextSegments")
                                 (language-code :target-type language-code
                                  :required common-lisp:t :member-name
                                  "LanguageCode"))
                                (:shape-name "DetectToxicContentRequest"))

(smithy/sdk/shapes:define-output detect-toxic-content-response common-lisp:nil
                                 ((result-list :target-type
                                   list-of-toxic-labels :member-name
                                   "ResultList"))
                                 (:shape-name "DetectToxicContentResponse"))

(smithy/sdk/shapes:define-structure document-class common-lisp:nil
                                    ((name :target-type string :member-name
                                      "Name")
                                     (score :target-type float :member-name
                                      "Score")
                                     (page :target-type integer :member-name
                                      "Page"))
                                    (:shape-name "DocumentClass"))

(smithy/sdk/shapes:define-structure document-classification-config
                                    common-lisp:nil
                                    ((mode :target-type
                                      document-classifier-mode :required
                                      common-lisp:t :member-name "Mode")
                                     (labels :target-type labels-list
                                      :member-name "Labels"))
                                    (:shape-name
                                     "DocumentClassificationConfig"))

(smithy/sdk/shapes:define-structure document-classification-job-filter
                                    common-lisp:nil
                                    ((job-name :target-type job-name
                                      :member-name "JobName")
                                     (job-status :target-type job-status
                                      :member-name "JobStatus")
                                     (submit-time-before :target-type timestamp
                                      :member-name "SubmitTimeBefore")
                                     (submit-time-after :target-type timestamp
                                      :member-name "SubmitTimeAfter"))
                                    (:shape-name
                                     "DocumentClassificationJobFilter"))

(smithy/sdk/shapes:define-structure document-classification-job-properties
                                    common-lisp:nil
                                    ((job-id :target-type job-id :member-name
                                      "JobId")
                                     (job-arn :target-type comprehend-arn
                                      :member-name "JobArn")
                                     (job-name :target-type job-name
                                      :member-name "JobName")
                                     (job-status :target-type job-status
                                      :member-name "JobStatus")
                                     (message :target-type any-length-string
                                      :member-name "Message")
                                     (submit-time :target-type timestamp
                                      :member-name "SubmitTime")
                                     (end-time :target-type timestamp
                                      :member-name "EndTime")
                                     (document-classifier-arn :target-type
                                      document-classifier-arn :member-name
                                      "DocumentClassifierArn")
                                     (input-data-config :target-type
                                      input-data-config :member-name
                                      "InputDataConfig")
                                     (output-data-config :target-type
                                      output-data-config :member-name
                                      "OutputDataConfig")
                                     (data-access-role-arn :target-type
                                      iam-role-arn :member-name
                                      "DataAccessRoleArn")
                                     (volume-kms-key-id :target-type kms-key-id
                                      :member-name "VolumeKmsKeyId")
                                     (vpc-config :target-type vpc-config
                                      :member-name "VpcConfig")
                                     (flywheel-arn :target-type
                                      comprehend-flywheel-arn :member-name
                                      "FlywheelArn"))
                                    (:shape-name
                                     "DocumentClassificationJobProperties"))

(smithy/sdk/shapes:define-list document-classification-job-properties-list
                               :member document-classification-job-properties)

(smithy/sdk/shapes:define-type document-classifier-arn
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list document-classifier-augmented-manifests-list
                               :member augmented-manifests-list-item)

(smithy/sdk/shapes:define-enum document-classifier-data-format
    common-lisp:nil
  (:comprehend-csv "COMPREHEND_CSV")
  (:augmented-manifest "AUGMENTED_MANIFEST"))

(smithy/sdk/shapes:define-enum document-classifier-document-type-format
    common-lisp:nil
  (:plain-text-document "PLAIN_TEXT_DOCUMENT")
  (:semi-structured-document "SEMI_STRUCTURED_DOCUMENT"))

(smithy/sdk/shapes:define-structure document-classifier-documents
                                    common-lisp:nil
                                    ((s3uri :target-type s3uri :required
                                      common-lisp:t :member-name "S3Uri")
                                     (test-s3uri :target-type s3uri
                                      :member-name "TestS3Uri"))
                                    (:shape-name "DocumentClassifierDocuments"))

(smithy/sdk/shapes:define-type document-classifier-endpoint-arn
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure document-classifier-filter common-lisp:nil
                                    ((status :target-type model-status
                                      :member-name "Status")
                                     (document-classifier-name :target-type
                                      comprehend-arn-name :member-name
                                      "DocumentClassifierName")
                                     (submit-time-before :target-type timestamp
                                      :member-name "SubmitTimeBefore")
                                     (submit-time-after :target-type timestamp
                                      :member-name "SubmitTimeAfter"))
                                    (:shape-name "DocumentClassifierFilter"))

(smithy/sdk/shapes:define-structure document-classifier-input-data-config
                                    common-lisp:nil
                                    ((data-format :target-type
                                      document-classifier-data-format
                                      :member-name "DataFormat")
                                     (s3uri :target-type s3uri :member-name
                                      "S3Uri")
                                     (test-s3uri :target-type s3uri
                                      :member-name "TestS3Uri")
                                     (label-delimiter :target-type
                                      label-delimiter :member-name
                                      "LabelDelimiter")
                                     (augmented-manifests :target-type
                                      document-classifier-augmented-manifests-list
                                      :member-name "AugmentedManifests")
                                     (document-type :target-type
                                      document-classifier-document-type-format
                                      :member-name "DocumentType")
                                     (documents :target-type
                                      document-classifier-documents
                                      :member-name "Documents")
                                     (document-reader-config :target-type
                                      document-reader-config :member-name
                                      "DocumentReaderConfig"))
                                    (:shape-name
                                     "DocumentClassifierInputDataConfig"))

(smithy/sdk/shapes:define-enum document-classifier-mode
    common-lisp:nil
  (:multi-class "MULTI_CLASS")
  (:multi-label "MULTI_LABEL"))

(smithy/sdk/shapes:define-structure document-classifier-output-data-config
                                    common-lisp:nil
                                    ((s3uri :target-type s3uri :member-name
                                      "S3Uri")
                                     (kms-key-id :target-type kms-key-id
                                      :member-name "KmsKeyId")
                                     (flywheel-stats-s3prefix :target-type
                                      s3uri :member-name
                                      "FlywheelStatsS3Prefix"))
                                    (:shape-name
                                     "DocumentClassifierOutputDataConfig"))

(smithy/sdk/shapes:define-structure document-classifier-properties
                                    common-lisp:nil
                                    ((document-classifier-arn :target-type
                                      document-classifier-arn :member-name
                                      "DocumentClassifierArn")
                                     (language-code :target-type language-code
                                      :member-name "LanguageCode")
                                     (status :target-type model-status
                                      :member-name "Status")
                                     (message :target-type any-length-string
                                      :member-name "Message")
                                     (submit-time :target-type timestamp
                                      :member-name "SubmitTime")
                                     (end-time :target-type timestamp
                                      :member-name "EndTime")
                                     (training-start-time :target-type
                                      timestamp :member-name
                                      "TrainingStartTime")
                                     (training-end-time :target-type timestamp
                                      :member-name "TrainingEndTime")
                                     (input-data-config :target-type
                                      document-classifier-input-data-config
                                      :member-name "InputDataConfig")
                                     (output-data-config :target-type
                                      document-classifier-output-data-config
                                      :member-name "OutputDataConfig")
                                     (classifier-metadata :target-type
                                      classifier-metadata :member-name
                                      "ClassifierMetadata")
                                     (data-access-role-arn :target-type
                                      iam-role-arn :member-name
                                      "DataAccessRoleArn")
                                     (volume-kms-key-id :target-type kms-key-id
                                      :member-name "VolumeKmsKeyId")
                                     (vpc-config :target-type vpc-config
                                      :member-name "VpcConfig")
                                     (mode :target-type
                                      document-classifier-mode :member-name
                                      "Mode")
                                     (model-kms-key-id :target-type kms-key-id
                                      :member-name "ModelKmsKeyId")
                                     (version-name :target-type version-name
                                      :member-name "VersionName")
                                     (source-model-arn :target-type
                                      document-classifier-arn :member-name
                                      "SourceModelArn")
                                     (flywheel-arn :target-type
                                      comprehend-flywheel-arn :member-name
                                      "FlywheelArn"))
                                    (:shape-name
                                     "DocumentClassifierProperties"))

(smithy/sdk/shapes:define-list document-classifier-properties-list :member
                               document-classifier-properties)

(smithy/sdk/shapes:define-list document-classifier-summaries-list :member
                               document-classifier-summary)

(smithy/sdk/shapes:define-structure document-classifier-summary common-lisp:nil
                                    ((document-classifier-name :target-type
                                      comprehend-arn-name :member-name
                                      "DocumentClassifierName")
                                     (number-of-versions :target-type integer
                                      :member-name "NumberOfVersions")
                                     (latest-version-created-at :target-type
                                      timestamp :member-name
                                      "LatestVersionCreatedAt")
                                     (latest-version-name :target-type
                                      version-name :member-name
                                      "LatestVersionName")
                                     (latest-version-status :target-type
                                      model-status :member-name
                                      "LatestVersionStatus"))
                                    (:shape-name "DocumentClassifierSummary"))

(smithy/sdk/shapes:define-structure document-label common-lisp:nil
                                    ((name :target-type string :member-name
                                      "Name")
                                     (score :target-type float :member-name
                                      "Score")
                                     (page :target-type integer :member-name
                                      "Page"))
                                    (:shape-name "DocumentLabel"))

(smithy/sdk/shapes:define-structure document-metadata common-lisp:nil
                                    ((pages :target-type integer :member-name
                                      "Pages")
                                     (extracted-characters :target-type
                                      list-of-extracted-characters :member-name
                                      "ExtractedCharacters"))
                                    (:shape-name "DocumentMetadata"))

(smithy/sdk/shapes:define-enum document-read-action
    common-lisp:nil
  (:textract-detect-document-text "TEXTRACT_DETECT_DOCUMENT_TEXT")
  (:textract-analyze-document "TEXTRACT_ANALYZE_DOCUMENT"))

(smithy/sdk/shapes:define-enum document-read-feature-types
    common-lisp:nil
  (:tables "TABLES")
  (:forms "FORMS"))

(smithy/sdk/shapes:define-enum document-read-mode
    common-lisp:nil
  (:service-default "SERVICE_DEFAULT")
  (:force-document-read-action "FORCE_DOCUMENT_READ_ACTION"))

(smithy/sdk/shapes:define-structure document-reader-config common-lisp:nil
                                    ((document-read-action :target-type
                                      document-read-action :required
                                      common-lisp:t :member-name
                                      "DocumentReadAction")
                                     (document-read-mode :target-type
                                      document-read-mode :member-name
                                      "DocumentReadMode")
                                     (feature-types :target-type
                                      list-of-document-read-feature-types
                                      :member-name "FeatureTypes"))
                                    (:shape-name "DocumentReaderConfig"))

(smithy/sdk/shapes:define-enum document-type
    common-lisp:nil
  (:native-pdf "NATIVE_PDF")
  (:scanned-pdf "SCANNED_PDF")
  (:ms-word "MS_WORD")
  (:image "IMAGE")
  (:plain-text "PLAIN_TEXT")
  (:textract-detect-document-text-json "TEXTRACT_DETECT_DOCUMENT_TEXT_JSON")
  (:textract-analyze-document-json "TEXTRACT_ANALYZE_DOCUMENT_JSON"))

(smithy/sdk/shapes:define-structure document-type-list-item common-lisp:nil
                                    ((page :target-type integer :member-name
                                      "Page")
                                     (type :target-type document-type
                                      :member-name "Type"))
                                    (:shape-name "DocumentTypeListItem"))

(smithy/sdk/shapes:define-structure dominant-language common-lisp:nil
                                    ((language-code :target-type string
                                      :member-name "LanguageCode")
                                     (score :target-type float :member-name
                                      "Score"))
                                    (:shape-name "DominantLanguage"))

(smithy/sdk/shapes:define-structure dominant-language-detection-job-filter
                                    common-lisp:nil
                                    ((job-name :target-type job-name
                                      :member-name "JobName")
                                     (job-status :target-type job-status
                                      :member-name "JobStatus")
                                     (submit-time-before :target-type timestamp
                                      :member-name "SubmitTimeBefore")
                                     (submit-time-after :target-type timestamp
                                      :member-name "SubmitTimeAfter"))
                                    (:shape-name
                                     "DominantLanguageDetectionJobFilter"))

(smithy/sdk/shapes:define-structure dominant-language-detection-job-properties
                                    common-lisp:nil
                                    ((job-id :target-type job-id :member-name
                                      "JobId")
                                     (job-arn :target-type comprehend-arn
                                      :member-name "JobArn")
                                     (job-name :target-type job-name
                                      :member-name "JobName")
                                     (job-status :target-type job-status
                                      :member-name "JobStatus")
                                     (message :target-type any-length-string
                                      :member-name "Message")
                                     (submit-time :target-type timestamp
                                      :member-name "SubmitTime")
                                     (end-time :target-type timestamp
                                      :member-name "EndTime")
                                     (input-data-config :target-type
                                      input-data-config :member-name
                                      "InputDataConfig")
                                     (output-data-config :target-type
                                      output-data-config :member-name
                                      "OutputDataConfig")
                                     (data-access-role-arn :target-type
                                      iam-role-arn :member-name
                                      "DataAccessRoleArn")
                                     (volume-kms-key-id :target-type kms-key-id
                                      :member-name "VolumeKmsKeyId")
                                     (vpc-config :target-type vpc-config
                                      :member-name "VpcConfig"))
                                    (:shape-name
                                     "DominantLanguageDetectionJobProperties"))

(smithy/sdk/shapes:define-list dominant-language-detection-job-properties-list
                               :member
                               dominant-language-detection-job-properties)

(smithy/sdk/shapes:define-type double smithy/sdk/smithy-types:double)

(smithy/sdk/shapes:define-structure endpoint-filter common-lisp:nil
                                    ((model-arn :target-type
                                      comprehend-model-arn :member-name
                                      "ModelArn")
                                     (status :target-type endpoint-status
                                      :member-name "Status")
                                     (creation-time-before :target-type
                                      timestamp :member-name
                                      "CreationTimeBefore")
                                     (creation-time-after :target-type
                                      timestamp :member-name
                                      "CreationTimeAfter"))
                                    (:shape-name "EndpointFilter"))

(smithy/sdk/shapes:define-structure endpoint-properties common-lisp:nil
                                    ((endpoint-arn :target-type
                                      comprehend-endpoint-arn :member-name
                                      "EndpointArn")
                                     (status :target-type endpoint-status
                                      :member-name "Status")
                                     (message :target-type any-length-string
                                      :member-name "Message")
                                     (model-arn :target-type
                                      comprehend-model-arn :member-name
                                      "ModelArn")
                                     (desired-model-arn :target-type
                                      comprehend-model-arn :member-name
                                      "DesiredModelArn")
                                     (desired-inference-units :target-type
                                      inference-units-integer :member-name
                                      "DesiredInferenceUnits")
                                     (current-inference-units :target-type
                                      inference-units-integer :member-name
                                      "CurrentInferenceUnits")
                                     (creation-time :target-type timestamp
                                      :member-name "CreationTime")
                                     (last-modified-time :target-type timestamp
                                      :member-name "LastModifiedTime")
                                     (data-access-role-arn :target-type
                                      iam-role-arn :member-name
                                      "DataAccessRoleArn")
                                     (desired-data-access-role-arn :target-type
                                      iam-role-arn :member-name
                                      "DesiredDataAccessRoleArn")
                                     (flywheel-arn :target-type
                                      comprehend-flywheel-arn :member-name
                                      "FlywheelArn"))
                                    (:shape-name "EndpointProperties"))

(smithy/sdk/shapes:define-list endpoint-properties-list :member
                               endpoint-properties)

(smithy/sdk/shapes:define-enum endpoint-status
    common-lisp:nil
  (:creating "CREATING")
  (:deleting "DELETING")
  (:failed "FAILED")
  (:in-service "IN_SERVICE")
  (:updating "UPDATING"))

(smithy/sdk/shapes:define-structure entities-detection-job-filter
                                    common-lisp:nil
                                    ((job-name :target-type job-name
                                      :member-name "JobName")
                                     (job-status :target-type job-status
                                      :member-name "JobStatus")
                                     (submit-time-before :target-type timestamp
                                      :member-name "SubmitTimeBefore")
                                     (submit-time-after :target-type timestamp
                                      :member-name "SubmitTimeAfter"))
                                    (:shape-name "EntitiesDetectionJobFilter"))

(smithy/sdk/shapes:define-structure entities-detection-job-properties
                                    common-lisp:nil
                                    ((job-id :target-type job-id :member-name
                                      "JobId")
                                     (job-arn :target-type comprehend-arn
                                      :member-name "JobArn")
                                     (job-name :target-type job-name
                                      :member-name "JobName")
                                     (job-status :target-type job-status
                                      :member-name "JobStatus")
                                     (message :target-type any-length-string
                                      :member-name "Message")
                                     (submit-time :target-type timestamp
                                      :member-name "SubmitTime")
                                     (end-time :target-type timestamp
                                      :member-name "EndTime")
                                     (entity-recognizer-arn :target-type
                                      entity-recognizer-arn :member-name
                                      "EntityRecognizerArn")
                                     (input-data-config :target-type
                                      input-data-config :member-name
                                      "InputDataConfig")
                                     (output-data-config :target-type
                                      output-data-config :member-name
                                      "OutputDataConfig")
                                     (language-code :target-type language-code
                                      :member-name "LanguageCode")
                                     (data-access-role-arn :target-type
                                      iam-role-arn :member-name
                                      "DataAccessRoleArn")
                                     (volume-kms-key-id :target-type kms-key-id
                                      :member-name "VolumeKmsKeyId")
                                     (vpc-config :target-type vpc-config
                                      :member-name "VpcConfig")
                                     (flywheel-arn :target-type
                                      comprehend-flywheel-arn :member-name
                                      "FlywheelArn"))
                                    (:shape-name
                                     "EntitiesDetectionJobProperties"))

(smithy/sdk/shapes:define-list entities-detection-job-properties-list :member
                               entities-detection-job-properties)

(smithy/sdk/shapes:define-structure entity common-lisp:nil
                                    ((score :target-type float :member-name
                                      "Score")
                                     (type :target-type entity-type
                                      :member-name "Type")
                                     (text :target-type string :member-name
                                      "Text")
                                     (begin-offset :target-type integer
                                      :member-name "BeginOffset")
                                     (end-offset :target-type integer
                                      :member-name "EndOffset")
                                     (block-references :target-type
                                      list-of-block-references :member-name
                                      "BlockReferences"))
                                    (:shape-name "Entity"))

(smithy/sdk/shapes:define-structure entity-label common-lisp:nil
                                    ((name :target-type pii-entity-type
                                      :member-name "Name")
                                     (score :target-type float :member-name
                                      "Score"))
                                    (:shape-name "EntityLabel"))

(smithy/sdk/shapes:define-structure entity-recognition-config common-lisp:nil
                                    ((entity-types :target-type
                                      entity-types-list :required common-lisp:t
                                      :member-name "EntityTypes"))
                                    (:shape-name "EntityRecognitionConfig"))

(smithy/sdk/shapes:define-structure entity-recognizer-annotations
                                    common-lisp:nil
                                    ((s3uri :target-type s3uri :required
                                      common-lisp:t :member-name "S3Uri")
                                     (test-s3uri :target-type s3uri
                                      :member-name "TestS3Uri"))
                                    (:shape-name "EntityRecognizerAnnotations"))

(smithy/sdk/shapes:define-type entity-recognizer-arn
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list entity-recognizer-augmented-manifests-list
                               :member augmented-manifests-list-item)

(smithy/sdk/shapes:define-enum entity-recognizer-data-format
    common-lisp:nil
  (:comprehend-csv "COMPREHEND_CSV")
  (:augmented-manifest "AUGMENTED_MANIFEST"))

(smithy/sdk/shapes:define-structure entity-recognizer-documents common-lisp:nil
                                    ((s3uri :target-type s3uri :required
                                      common-lisp:t :member-name "S3Uri")
                                     (test-s3uri :target-type s3uri
                                      :member-name "TestS3Uri")
                                     (input-format :target-type input-format
                                      :member-name "InputFormat"))
                                    (:shape-name "EntityRecognizerDocuments"))

(smithy/sdk/shapes:define-type entity-recognizer-endpoint-arn
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure entity-recognizer-entity-list
                                    common-lisp:nil
                                    ((s3uri :target-type s3uri :required
                                      common-lisp:t :member-name "S3Uri"))
                                    (:shape-name "EntityRecognizerEntityList"))

(smithy/sdk/shapes:define-structure entity-recognizer-evaluation-metrics
                                    common-lisp:nil
                                    ((precision :target-type double
                                      :member-name "Precision")
                                     (recall :target-type double :member-name
                                      "Recall")
                                     (f1score :target-type double :member-name
                                      "F1Score"))
                                    (:shape-name
                                     "EntityRecognizerEvaluationMetrics"))

(smithy/sdk/shapes:define-structure entity-recognizer-filter common-lisp:nil
                                    ((status :target-type model-status
                                      :member-name "Status")
                                     (recognizer-name :target-type
                                      comprehend-arn-name :member-name
                                      "RecognizerName")
                                     (submit-time-before :target-type timestamp
                                      :member-name "SubmitTimeBefore")
                                     (submit-time-after :target-type timestamp
                                      :member-name "SubmitTimeAfter"))
                                    (:shape-name "EntityRecognizerFilter"))

(smithy/sdk/shapes:define-structure entity-recognizer-input-data-config
                                    common-lisp:nil
                                    ((data-format :target-type
                                      entity-recognizer-data-format
                                      :member-name "DataFormat")
                                     (entity-types :target-type
                                      entity-types-list :required common-lisp:t
                                      :member-name "EntityTypes")
                                     (documents :target-type
                                      entity-recognizer-documents :member-name
                                      "Documents")
                                     (annotations :target-type
                                      entity-recognizer-annotations
                                      :member-name "Annotations")
                                     (entity-list :target-type
                                      entity-recognizer-entity-list
                                      :member-name "EntityList")
                                     (augmented-manifests :target-type
                                      entity-recognizer-augmented-manifests-list
                                      :member-name "AugmentedManifests"))
                                    (:shape-name
                                     "EntityRecognizerInputDataConfig"))

(smithy/sdk/shapes:define-structure entity-recognizer-metadata common-lisp:nil
                                    ((number-of-trained-documents :target-type
                                      integer :member-name
                                      "NumberOfTrainedDocuments")
                                     (number-of-test-documents :target-type
                                      integer :member-name
                                      "NumberOfTestDocuments")
                                     (evaluation-metrics :target-type
                                      entity-recognizer-evaluation-metrics
                                      :member-name "EvaluationMetrics")
                                     (entity-types :target-type
                                      entity-recognizer-metadata-entity-types-list
                                      :member-name "EntityTypes"))
                                    (:shape-name "EntityRecognizerMetadata"))

(smithy/sdk/shapes:define-list entity-recognizer-metadata-entity-types-list
                               :member
                               entity-recognizer-metadata-entity-types-list-item)

(smithy/sdk/shapes:define-structure
 entity-recognizer-metadata-entity-types-list-item common-lisp:nil
 ((type :target-type any-length-string :member-name "Type")
  (evaluation-metrics :target-type entity-types-evaluation-metrics :member-name
   "EvaluationMetrics")
  (number-of-train-mentions :target-type integer :member-name
   "NumberOfTrainMentions"))
 (:shape-name "EntityRecognizerMetadataEntityTypesListItem"))

(smithy/sdk/shapes:define-structure entity-recognizer-output-data-config
                                    common-lisp:nil
                                    ((flywheel-stats-s3prefix :target-type
                                      s3uri :member-name
                                      "FlywheelStatsS3Prefix"))
                                    (:shape-name
                                     "EntityRecognizerOutputDataConfig"))

(smithy/sdk/shapes:define-structure entity-recognizer-properties
                                    common-lisp:nil
                                    ((entity-recognizer-arn :target-type
                                      entity-recognizer-arn :member-name
                                      "EntityRecognizerArn")
                                     (language-code :target-type language-code
                                      :member-name "LanguageCode")
                                     (status :target-type model-status
                                      :member-name "Status")
                                     (message :target-type any-length-string
                                      :member-name "Message")
                                     (submit-time :target-type timestamp
                                      :member-name "SubmitTime")
                                     (end-time :target-type timestamp
                                      :member-name "EndTime")
                                     (training-start-time :target-type
                                      timestamp :member-name
                                      "TrainingStartTime")
                                     (training-end-time :target-type timestamp
                                      :member-name "TrainingEndTime")
                                     (input-data-config :target-type
                                      entity-recognizer-input-data-config
                                      :member-name "InputDataConfig")
                                     (recognizer-metadata :target-type
                                      entity-recognizer-metadata :member-name
                                      "RecognizerMetadata")
                                     (data-access-role-arn :target-type
                                      iam-role-arn :member-name
                                      "DataAccessRoleArn")
                                     (volume-kms-key-id :target-type kms-key-id
                                      :member-name "VolumeKmsKeyId")
                                     (vpc-config :target-type vpc-config
                                      :member-name "VpcConfig")
                                     (model-kms-key-id :target-type kms-key-id
                                      :member-name "ModelKmsKeyId")
                                     (version-name :target-type version-name
                                      :member-name "VersionName")
                                     (source-model-arn :target-type
                                      entity-recognizer-arn :member-name
                                      "SourceModelArn")
                                     (flywheel-arn :target-type
                                      comprehend-flywheel-arn :member-name
                                      "FlywheelArn")
                                     (output-data-config :target-type
                                      entity-recognizer-output-data-config
                                      :member-name "OutputDataConfig"))
                                    (:shape-name "EntityRecognizerProperties"))

(smithy/sdk/shapes:define-list entity-recognizer-properties-list :member
                               entity-recognizer-properties)

(smithy/sdk/shapes:define-list entity-recognizer-summaries-list :member
                               entity-recognizer-summary)

(smithy/sdk/shapes:define-structure entity-recognizer-summary common-lisp:nil
                                    ((recognizer-name :target-type
                                      comprehend-arn-name :member-name
                                      "RecognizerName")
                                     (number-of-versions :target-type integer
                                      :member-name "NumberOfVersions")
                                     (latest-version-created-at :target-type
                                      timestamp :member-name
                                      "LatestVersionCreatedAt")
                                     (latest-version-name :target-type
                                      version-name :member-name
                                      "LatestVersionName")
                                     (latest-version-status :target-type
                                      model-status :member-name
                                      "LatestVersionStatus"))
                                    (:shape-name "EntityRecognizerSummary"))

(smithy/sdk/shapes:define-enum entity-type
    common-lisp:nil
  (:person "PERSON")
  (:location "LOCATION")
  (:organization "ORGANIZATION")
  (:commercial-item "COMMERCIAL_ITEM")
  (:event "EVENT")
  (:date "DATE")
  (:quantity "QUANTITY")
  (:title "TITLE")
  (:other "OTHER"))

(smithy/sdk/shapes:define-type entity-type-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure entity-types-evaluation-metrics
                                    common-lisp:nil
                                    ((precision :target-type double
                                      :member-name "Precision")
                                     (recall :target-type double :member-name
                                      "Recall")
                                     (f1score :target-type double :member-name
                                      "F1Score"))
                                    (:shape-name
                                     "EntityTypesEvaluationMetrics"))

(smithy/sdk/shapes:define-list entity-types-list :member entity-types-list-item)

(smithy/sdk/shapes:define-structure entity-types-list-item common-lisp:nil
                                    ((type :target-type entity-type-name
                                      :required common-lisp:t :member-name
                                      "Type"))
                                    (:shape-name "EntityTypesListItem"))

(smithy/sdk/shapes:define-structure errors-list-item common-lisp:nil
                                    ((page :target-type integer :member-name
                                      "Page")
                                     (error-code :target-type
                                      page-based-error-code :member-name
                                      "ErrorCode")
                                     (error-message :target-type string
                                      :member-name "ErrorMessage"))
                                    (:shape-name "ErrorsListItem"))

(smithy/sdk/shapes:define-type event-type-string smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure events-detection-job-filter common-lisp:nil
                                    ((job-name :target-type job-name
                                      :member-name "JobName")
                                     (job-status :target-type job-status
                                      :member-name "JobStatus")
                                     (submit-time-before :target-type timestamp
                                      :member-name "SubmitTimeBefore")
                                     (submit-time-after :target-type timestamp
                                      :member-name "SubmitTimeAfter"))
                                    (:shape-name "EventsDetectionJobFilter"))

(smithy/sdk/shapes:define-structure events-detection-job-properties
                                    common-lisp:nil
                                    ((job-id :target-type job-id :member-name
                                      "JobId")
                                     (job-arn :target-type comprehend-arn
                                      :member-name "JobArn")
                                     (job-name :target-type job-name
                                      :member-name "JobName")
                                     (job-status :target-type job-status
                                      :member-name "JobStatus")
                                     (message :target-type any-length-string
                                      :member-name "Message")
                                     (submit-time :target-type timestamp
                                      :member-name "SubmitTime")
                                     (end-time :target-type timestamp
                                      :member-name "EndTime")
                                     (input-data-config :target-type
                                      input-data-config :member-name
                                      "InputDataConfig")
                                     (output-data-config :target-type
                                      output-data-config :member-name
                                      "OutputDataConfig")
                                     (language-code :target-type language-code
                                      :member-name "LanguageCode")
                                     (data-access-role-arn :target-type
                                      iam-role-arn :member-name
                                      "DataAccessRoleArn")
                                     (target-event-types :target-type
                                      target-event-types :member-name
                                      "TargetEventTypes"))
                                    (:shape-name
                                     "EventsDetectionJobProperties"))

(smithy/sdk/shapes:define-list events-detection-job-properties-list :member
                               events-detection-job-properties)

(smithy/sdk/shapes:define-structure extracted-characters-list-item
                                    common-lisp:nil
                                    ((page :target-type integer :member-name
                                      "Page")
                                     (count :target-type integer :member-name
                                      "Count"))
                                    (:shape-name "ExtractedCharactersListItem"))

(smithy/sdk/shapes:define-type float smithy/sdk/smithy-types:float)

(smithy/sdk/shapes:define-structure flywheel-filter common-lisp:nil
                                    ((status :target-type flywheel-status
                                      :member-name "Status")
                                     (creation-time-after :target-type
                                      timestamp :member-name
                                      "CreationTimeAfter")
                                     (creation-time-before :target-type
                                      timestamp :member-name
                                      "CreationTimeBefore"))
                                    (:shape-name "FlywheelFilter"))

(smithy/sdk/shapes:define-structure flywheel-iteration-filter common-lisp:nil
                                    ((creation-time-after :target-type
                                      timestamp :member-name
                                      "CreationTimeAfter")
                                     (creation-time-before :target-type
                                      timestamp :member-name
                                      "CreationTimeBefore"))
                                    (:shape-name "FlywheelIterationFilter"))

(smithy/sdk/shapes:define-type flywheel-iteration-id
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure flywheel-iteration-properties
                                    common-lisp:nil
                                    ((flywheel-arn :target-type
                                      comprehend-flywheel-arn :member-name
                                      "FlywheelArn")
                                     (flywheel-iteration-id :target-type
                                      flywheel-iteration-id :member-name
                                      "FlywheelIterationId")
                                     (creation-time :target-type timestamp
                                      :member-name "CreationTime")
                                     (end-time :target-type timestamp
                                      :member-name "EndTime")
                                     (status :target-type
                                      flywheel-iteration-status :member-name
                                      "Status")
                                     (message :target-type any-length-string
                                      :member-name "Message")
                                     (evaluated-model-arn :target-type
                                      comprehend-model-arn :member-name
                                      "EvaluatedModelArn")
                                     (evaluated-model-metrics :target-type
                                      flywheel-model-evaluation-metrics
                                      :member-name "EvaluatedModelMetrics")
                                     (trained-model-arn :target-type
                                      comprehend-model-arn :member-name
                                      "TrainedModelArn")
                                     (trained-model-metrics :target-type
                                      flywheel-model-evaluation-metrics
                                      :member-name "TrainedModelMetrics")
                                     (evaluation-manifest-s3prefix :target-type
                                      s3uri :member-name
                                      "EvaluationManifestS3Prefix"))
                                    (:shape-name "FlywheelIterationProperties"))

(smithy/sdk/shapes:define-list flywheel-iteration-properties-list :member
                               flywheel-iteration-properties)

(smithy/sdk/shapes:define-enum flywheel-iteration-status
    common-lisp:nil
  (:training "TRAINING")
  (:evaluating "EVALUATING")
  (:completed "COMPLETED")
  (:failed "FAILED")
  (:stop-requested "STOP_REQUESTED")
  (:stopped "STOPPED"))

(smithy/sdk/shapes:define-structure flywheel-model-evaluation-metrics
                                    common-lisp:nil
                                    ((average-f1score :target-type double
                                      :member-name "AverageF1Score")
                                     (average-precision :target-type double
                                      :member-name "AveragePrecision")
                                     (average-recall :target-type double
                                      :member-name "AverageRecall")
                                     (average-accuracy :target-type double
                                      :member-name "AverageAccuracy"))
                                    (:shape-name
                                     "FlywheelModelEvaluationMetrics"))

(smithy/sdk/shapes:define-structure flywheel-properties common-lisp:nil
                                    ((flywheel-arn :target-type
                                      comprehend-flywheel-arn :member-name
                                      "FlywheelArn")
                                     (active-model-arn :target-type
                                      comprehend-model-arn :member-name
                                      "ActiveModelArn")
                                     (data-access-role-arn :target-type
                                      iam-role-arn :member-name
                                      "DataAccessRoleArn")
                                     (task-config :target-type task-config
                                      :member-name "TaskConfig")
                                     (data-lake-s3uri :target-type s3uri
                                      :member-name "DataLakeS3Uri")
                                     (data-security-config :target-type
                                      data-security-config :member-name
                                      "DataSecurityConfig")
                                     (status :target-type flywheel-status
                                      :member-name "Status")
                                     (model-type :target-type model-type
                                      :member-name "ModelType")
                                     (message :target-type any-length-string
                                      :member-name "Message")
                                     (creation-time :target-type timestamp
                                      :member-name "CreationTime")
                                     (last-modified-time :target-type timestamp
                                      :member-name "LastModifiedTime")
                                     (latest-flywheel-iteration :target-type
                                      flywheel-iteration-id :member-name
                                      "LatestFlywheelIteration"))
                                    (:shape-name "FlywheelProperties"))

(smithy/sdk/shapes:define-type flywheel-s3uri smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum flywheel-status
    common-lisp:nil
  (:creating "CREATING")
  (:active "ACTIVE")
  (:updating "UPDATING")
  (:deleting "DELETING")
  (:failed "FAILED"))

(smithy/sdk/shapes:define-structure flywheel-summary common-lisp:nil
                                    ((flywheel-arn :target-type
                                      comprehend-flywheel-arn :member-name
                                      "FlywheelArn")
                                     (active-model-arn :target-type
                                      comprehend-model-arn :member-name
                                      "ActiveModelArn")
                                     (data-lake-s3uri :target-type s3uri
                                      :member-name "DataLakeS3Uri")
                                     (status :target-type flywheel-status
                                      :member-name "Status")
                                     (model-type :target-type model-type
                                      :member-name "ModelType")
                                     (message :target-type any-length-string
                                      :member-name "Message")
                                     (creation-time :target-type timestamp
                                      :member-name "CreationTime")
                                     (last-modified-time :target-type timestamp
                                      :member-name "LastModifiedTime")
                                     (latest-flywheel-iteration :target-type
                                      flywheel-iteration-id :member-name
                                      "LatestFlywheelIteration"))
                                    (:shape-name "FlywheelSummary"))

(smithy/sdk/shapes:define-list flywheel-summary-list :member flywheel-summary)

(smithy/sdk/shapes:define-structure geometry common-lisp:nil
                                    ((bounding-box :target-type bounding-box
                                      :member-name "BoundingBox")
                                     (polygon :target-type polygon :member-name
                                      "Polygon"))
                                    (:shape-name "Geometry"))

(smithy/sdk/shapes:define-type iam-role-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input import-model-request common-lisp:nil
                                ((source-model-arn :target-type
                                  comprehend-model-arn :required common-lisp:t
                                  :member-name "SourceModelArn")
                                 (model-name :target-type comprehend-arn-name
                                  :member-name "ModelName")
                                 (version-name :target-type version-name
                                  :member-name "VersionName")
                                 (model-kms-key-id :target-type kms-key-id
                                  :member-name "ModelKmsKeyId")
                                 (data-access-role-arn :target-type
                                  iam-role-arn :member-name
                                  "DataAccessRoleArn")
                                 (tags :target-type tag-list :member-name
                                  "Tags"))
                                (:shape-name "ImportModelRequest"))

(smithy/sdk/shapes:define-output import-model-response common-lisp:nil
                                 ((model-arn :target-type comprehend-model-arn
                                   :member-name "ModelArn"))
                                 (:shape-name "ImportModelResponse"))

(smithy/sdk/shapes:define-type inference-units-integer
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-structure input-data-config common-lisp:nil
                                    ((s3uri :target-type s3uri :required
                                      common-lisp:t :member-name "S3Uri")
                                     (input-format :target-type input-format
                                      :member-name "InputFormat")
                                     (document-reader-config :target-type
                                      document-reader-config :member-name
                                      "DocumentReaderConfig"))
                                    (:shape-name "InputDataConfig"))

(smithy/sdk/shapes:define-enum input-format
    common-lisp:nil
  (:one-doc-per-file "ONE_DOC_PER_FILE")
  (:one-doc-per-line "ONE_DOC_PER_LINE"))

(smithy/sdk/shapes:define-type integer smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-error internal-server-exception common-lisp:nil
                                ((message :target-type string :member-name
                                  "Message"))
                                (:shape-name "InternalServerException")
                                (:error-code 500))

(smithy/sdk/shapes:define-error invalid-filter-exception common-lisp:nil
                                ((message :target-type string :member-name
                                  "Message"))
                                (:shape-name "InvalidFilterException")
                                (:error-code 400))

(smithy/sdk/shapes:define-structure invalid-request-detail common-lisp:nil
                                    ((reason :target-type
                                      invalid-request-detail-reason
                                      :member-name "Reason"))
                                    (:shape-name "InvalidRequestDetail"))

(smithy/sdk/shapes:define-enum invalid-request-detail-reason
    common-lisp:nil
  (:document-size-exceeded "DOCUMENT_SIZE_EXCEEDED")
  (:unsupported-doc-type "UNSUPPORTED_DOC_TYPE")
  (:page-limit-exceeded "PAGE_LIMIT_EXCEEDED")
  (:textract-access-denied "TEXTRACT_ACCESS_DENIED"))

(smithy/sdk/shapes:define-error invalid-request-exception common-lisp:nil
                                ((message :target-type string :member-name
                                  "Message")
                                 (reason :target-type invalid-request-reason
                                  :member-name "Reason")
                                 (detail :target-type invalid-request-detail
                                  :member-name "Detail"))
                                (:shape-name "InvalidRequestException")
                                (:error-code 400))

(smithy/sdk/shapes:define-enum invalid-request-reason
    common-lisp:nil
  (:invalid-document "INVALID_DOCUMENT"))

(smithy/sdk/shapes:define-type job-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type job-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error job-not-found-exception common-lisp:nil
                                ((message :target-type string :member-name
                                  "Message"))
                                (:shape-name "JobNotFoundException")
                                (:error-code 404))

(smithy/sdk/shapes:define-enum job-status
    common-lisp:nil
  (:submitted "SUBMITTED")
  (:in-progress "IN_PROGRESS")
  (:completed "COMPLETED")
  (:failed "FAILED")
  (:stop-requested "STOP_REQUESTED")
  (:stopped "STOPPED"))

(smithy/sdk/shapes:define-structure key-phrase common-lisp:nil
                                    ((score :target-type float :member-name
                                      "Score")
                                     (text :target-type string :member-name
                                      "Text")
                                     (begin-offset :target-type integer
                                      :member-name "BeginOffset")
                                     (end-offset :target-type integer
                                      :member-name "EndOffset"))
                                    (:shape-name "KeyPhrase"))

(smithy/sdk/shapes:define-structure key-phrases-detection-job-filter
                                    common-lisp:nil
                                    ((job-name :target-type job-name
                                      :member-name "JobName")
                                     (job-status :target-type job-status
                                      :member-name "JobStatus")
                                     (submit-time-before :target-type timestamp
                                      :member-name "SubmitTimeBefore")
                                     (submit-time-after :target-type timestamp
                                      :member-name "SubmitTimeAfter"))
                                    (:shape-name
                                     "KeyPhrasesDetectionJobFilter"))

(smithy/sdk/shapes:define-structure key-phrases-detection-job-properties
                                    common-lisp:nil
                                    ((job-id :target-type job-id :member-name
                                      "JobId")
                                     (job-arn :target-type comprehend-arn
                                      :member-name "JobArn")
                                     (job-name :target-type job-name
                                      :member-name "JobName")
                                     (job-status :target-type job-status
                                      :member-name "JobStatus")
                                     (message :target-type any-length-string
                                      :member-name "Message")
                                     (submit-time :target-type timestamp
                                      :member-name "SubmitTime")
                                     (end-time :target-type timestamp
                                      :member-name "EndTime")
                                     (input-data-config :target-type
                                      input-data-config :member-name
                                      "InputDataConfig")
                                     (output-data-config :target-type
                                      output-data-config :member-name
                                      "OutputDataConfig")
                                     (language-code :target-type language-code
                                      :member-name "LanguageCode")
                                     (data-access-role-arn :target-type
                                      iam-role-arn :member-name
                                      "DataAccessRoleArn")
                                     (volume-kms-key-id :target-type kms-key-id
                                      :member-name "VolumeKmsKeyId")
                                     (vpc-config :target-type vpc-config
                                      :member-name "VpcConfig"))
                                    (:shape-name
                                     "KeyPhrasesDetectionJobProperties"))

(smithy/sdk/shapes:define-list key-phrases-detection-job-properties-list
                               :member key-phrases-detection-job-properties)

(smithy/sdk/shapes:define-type kms-key-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error kms-key-validation-exception common-lisp:nil
                                ((message :target-type string :member-name
                                  "Message"))
                                (:shape-name "KmsKeyValidationException")
                                (:error-code 400))

(smithy/sdk/shapes:define-type label-delimiter smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type label-list-item smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list labels-list :member label-list-item)

(smithy/sdk/shapes:define-enum language-code
    common-lisp:nil
  (:en "en")
  (:es "es")
  (:fr "fr")
  (:de "de")
  (:it "it")
  (:pt "pt")
  (:ar "ar")
  (:hi "hi")
  (:ja "ja")
  (:ko "ko")
  (:zh "zh")
  (:zh-tw "zh-TW"))

(smithy/sdk/shapes:define-input list-datasets-request common-lisp:nil
                                ((flywheel-arn :target-type
                                  comprehend-flywheel-arn :member-name
                                  "FlywheelArn")
                                 (filter :target-type dataset-filter
                                  :member-name "Filter")
                                 (next-token :target-type string :member-name
                                  "NextToken")
                                 (max-results :target-type max-results-integer
                                  :member-name "MaxResults"))
                                (:shape-name "ListDatasetsRequest"))

(smithy/sdk/shapes:define-output list-datasets-response common-lisp:nil
                                 ((dataset-properties-list :target-type
                                   dataset-properties-list :member-name
                                   "DatasetPropertiesList")
                                  (next-token :target-type string :member-name
                                   "NextToken"))
                                 (:shape-name "ListDatasetsResponse"))

(smithy/sdk/shapes:define-input list-document-classification-jobs-request
                                common-lisp:nil
                                ((filter :target-type
                                  document-classification-job-filter
                                  :member-name "Filter")
                                 (next-token :target-type string :member-name
                                  "NextToken")
                                 (max-results :target-type max-results-integer
                                  :member-name "MaxResults"))
                                (:shape-name
                                 "ListDocumentClassificationJobsRequest"))

(smithy/sdk/shapes:define-output list-document-classification-jobs-response
                                 common-lisp:nil
                                 ((document-classification-job-properties-list
                                   :target-type
                                   document-classification-job-properties-list
                                   :member-name
                                   "DocumentClassificationJobPropertiesList")
                                  (next-token :target-type string :member-name
                                   "NextToken"))
                                 (:shape-name
                                  "ListDocumentClassificationJobsResponse"))

(smithy/sdk/shapes:define-input list-document-classifier-summaries-request
                                common-lisp:nil
                                ((next-token :target-type string :member-name
                                  "NextToken")
                                 (max-results :target-type max-results-integer
                                  :member-name "MaxResults"))
                                (:shape-name
                                 "ListDocumentClassifierSummariesRequest"))

(smithy/sdk/shapes:define-output list-document-classifier-summaries-response
                                 common-lisp:nil
                                 ((document-classifier-summaries-list
                                   :target-type
                                   document-classifier-summaries-list
                                   :member-name
                                   "DocumentClassifierSummariesList")
                                  (next-token :target-type string :member-name
                                   "NextToken"))
                                 (:shape-name
                                  "ListDocumentClassifierSummariesResponse"))

(smithy/sdk/shapes:define-input list-document-classifiers-request
                                common-lisp:nil
                                ((filter :target-type
                                  document-classifier-filter :member-name
                                  "Filter")
                                 (next-token :target-type string :member-name
                                  "NextToken")
                                 (max-results :target-type max-results-integer
                                  :member-name "MaxResults"))
                                (:shape-name "ListDocumentClassifiersRequest"))

(smithy/sdk/shapes:define-output list-document-classifiers-response
                                 common-lisp:nil
                                 ((document-classifier-properties-list
                                   :target-type
                                   document-classifier-properties-list
                                   :member-name
                                   "DocumentClassifierPropertiesList")
                                  (next-token :target-type string :member-name
                                   "NextToken"))
                                 (:shape-name
                                  "ListDocumentClassifiersResponse"))

(smithy/sdk/shapes:define-input list-dominant-language-detection-jobs-request
                                common-lisp:nil
                                ((filter :target-type
                                  dominant-language-detection-job-filter
                                  :member-name "Filter")
                                 (next-token :target-type string :member-name
                                  "NextToken")
                                 (max-results :target-type max-results-integer
                                  :member-name "MaxResults"))
                                (:shape-name
                                 "ListDominantLanguageDetectionJobsRequest"))

(smithy/sdk/shapes:define-output list-dominant-language-detection-jobs-response
                                 common-lisp:nil
                                 ((dominant-language-detection-job-properties-list
                                   :target-type
                                   dominant-language-detection-job-properties-list
                                   :member-name
                                   "DominantLanguageDetectionJobPropertiesList")
                                  (next-token :target-type string :member-name
                                   "NextToken"))
                                 (:shape-name
                                  "ListDominantLanguageDetectionJobsResponse"))

(smithy/sdk/shapes:define-input list-endpoints-request common-lisp:nil
                                ((filter :target-type endpoint-filter
                                  :member-name "Filter")
                                 (next-token :target-type string :member-name
                                  "NextToken")
                                 (max-results :target-type max-results-integer
                                  :member-name "MaxResults"))
                                (:shape-name "ListEndpointsRequest"))

(smithy/sdk/shapes:define-output list-endpoints-response common-lisp:nil
                                 ((endpoint-properties-list :target-type
                                   endpoint-properties-list :member-name
                                   "EndpointPropertiesList")
                                  (next-token :target-type string :member-name
                                   "NextToken"))
                                 (:shape-name "ListEndpointsResponse"))

(smithy/sdk/shapes:define-input list-entities-detection-jobs-request
                                common-lisp:nil
                                ((filter :target-type
                                  entities-detection-job-filter :member-name
                                  "Filter")
                                 (next-token :target-type string :member-name
                                  "NextToken")
                                 (max-results :target-type max-results-integer
                                  :member-name "MaxResults"))
                                (:shape-name
                                 "ListEntitiesDetectionJobsRequest"))

(smithy/sdk/shapes:define-output list-entities-detection-jobs-response
                                 common-lisp:nil
                                 ((entities-detection-job-properties-list
                                   :target-type
                                   entities-detection-job-properties-list
                                   :member-name
                                   "EntitiesDetectionJobPropertiesList")
                                  (next-token :target-type string :member-name
                                   "NextToken"))
                                 (:shape-name
                                  "ListEntitiesDetectionJobsResponse"))

(smithy/sdk/shapes:define-input list-entity-recognizer-summaries-request
                                common-lisp:nil
                                ((next-token :target-type string :member-name
                                  "NextToken")
                                 (max-results :target-type max-results-integer
                                  :member-name "MaxResults"))
                                (:shape-name
                                 "ListEntityRecognizerSummariesRequest"))

(smithy/sdk/shapes:define-output list-entity-recognizer-summaries-response
                                 common-lisp:nil
                                 ((entity-recognizer-summaries-list
                                   :target-type
                                   entity-recognizer-summaries-list
                                   :member-name
                                   "EntityRecognizerSummariesList")
                                  (next-token :target-type string :member-name
                                   "NextToken"))
                                 (:shape-name
                                  "ListEntityRecognizerSummariesResponse"))

(smithy/sdk/shapes:define-input list-entity-recognizers-request common-lisp:nil
                                ((filter :target-type entity-recognizer-filter
                                  :member-name "Filter")
                                 (next-token :target-type string :member-name
                                  "NextToken")
                                 (max-results :target-type max-results-integer
                                  :member-name "MaxResults"))
                                (:shape-name "ListEntityRecognizersRequest"))

(smithy/sdk/shapes:define-output list-entity-recognizers-response
                                 common-lisp:nil
                                 ((entity-recognizer-properties-list
                                   :target-type
                                   entity-recognizer-properties-list
                                   :member-name
                                   "EntityRecognizerPropertiesList")
                                  (next-token :target-type string :member-name
                                   "NextToken"))
                                 (:shape-name "ListEntityRecognizersResponse"))

(smithy/sdk/shapes:define-input list-events-detection-jobs-request
                                common-lisp:nil
                                ((filter :target-type
                                  events-detection-job-filter :member-name
                                  "Filter")
                                 (next-token :target-type string :member-name
                                  "NextToken")
                                 (max-results :target-type max-results-integer
                                  :member-name "MaxResults"))
                                (:shape-name "ListEventsDetectionJobsRequest"))

(smithy/sdk/shapes:define-output list-events-detection-jobs-response
                                 common-lisp:nil
                                 ((events-detection-job-properties-list
                                   :target-type
                                   events-detection-job-properties-list
                                   :member-name
                                   "EventsDetectionJobPropertiesList")
                                  (next-token :target-type string :member-name
                                   "NextToken"))
                                 (:shape-name
                                  "ListEventsDetectionJobsResponse"))

(smithy/sdk/shapes:define-input list-flywheel-iteration-history-request
                                common-lisp:nil
                                ((flywheel-arn :target-type
                                  comprehend-flywheel-arn :required
                                  common-lisp:t :member-name "FlywheelArn")
                                 (filter :target-type flywheel-iteration-filter
                                  :member-name "Filter")
                                 (next-token :target-type string :member-name
                                  "NextToken")
                                 (max-results :target-type max-results-integer
                                  :member-name "MaxResults"))
                                (:shape-name
                                 "ListFlywheelIterationHistoryRequest"))

(smithy/sdk/shapes:define-output list-flywheel-iteration-history-response
                                 common-lisp:nil
                                 ((flywheel-iteration-properties-list
                                   :target-type
                                   flywheel-iteration-properties-list
                                   :member-name
                                   "FlywheelIterationPropertiesList")
                                  (next-token :target-type string :member-name
                                   "NextToken"))
                                 (:shape-name
                                  "ListFlywheelIterationHistoryResponse"))

(smithy/sdk/shapes:define-input list-flywheels-request common-lisp:nil
                                ((filter :target-type flywheel-filter
                                  :member-name "Filter")
                                 (next-token :target-type string :member-name
                                  "NextToken")
                                 (max-results :target-type max-results-integer
                                  :member-name "MaxResults"))
                                (:shape-name "ListFlywheelsRequest"))

(smithy/sdk/shapes:define-output list-flywheels-response common-lisp:nil
                                 ((flywheel-summary-list :target-type
                                   flywheel-summary-list :member-name
                                   "FlywheelSummaryList")
                                  (next-token :target-type string :member-name
                                   "NextToken"))
                                 (:shape-name "ListFlywheelsResponse"))

(smithy/sdk/shapes:define-input list-key-phrases-detection-jobs-request
                                common-lisp:nil
                                ((filter :target-type
                                  key-phrases-detection-job-filter :member-name
                                  "Filter")
                                 (next-token :target-type string :member-name
                                  "NextToken")
                                 (max-results :target-type max-results-integer
                                  :member-name "MaxResults"))
                                (:shape-name
                                 "ListKeyPhrasesDetectionJobsRequest"))

(smithy/sdk/shapes:define-output list-key-phrases-detection-jobs-response
                                 common-lisp:nil
                                 ((key-phrases-detection-job-properties-list
                                   :target-type
                                   key-phrases-detection-job-properties-list
                                   :member-name
                                   "KeyPhrasesDetectionJobPropertiesList")
                                  (next-token :target-type string :member-name
                                   "NextToken"))
                                 (:shape-name
                                  "ListKeyPhrasesDetectionJobsResponse"))

(smithy/sdk/shapes:define-list list-of-block-references :member block-reference)

(smithy/sdk/shapes:define-list list-of-blocks :member block)

(smithy/sdk/shapes:define-list list-of-child-blocks :member child-block)

(smithy/sdk/shapes:define-list list-of-classes :member document-class)

(smithy/sdk/shapes:define-list list-of-descriptive-mention-indices :member
                               integer)

(smithy/sdk/shapes:define-list list-of-detect-dominant-language-result :member
                               batch-detect-dominant-language-item-result)

(smithy/sdk/shapes:define-list list-of-detect-entities-result :member
                               batch-detect-entities-item-result)

(smithy/sdk/shapes:define-list list-of-detect-key-phrases-result :member
                               batch-detect-key-phrases-item-result)

(smithy/sdk/shapes:define-list list-of-detect-sentiment-result :member
                               batch-detect-sentiment-item-result)

(smithy/sdk/shapes:define-list list-of-detect-syntax-result :member
                               batch-detect-syntax-item-result)

(smithy/sdk/shapes:define-list list-of-detect-targeted-sentiment-result :member
                               batch-detect-targeted-sentiment-item-result)

(smithy/sdk/shapes:define-list list-of-document-read-feature-types :member
                               document-read-feature-types)

(smithy/sdk/shapes:define-list list-of-document-type :member
                               document-type-list-item)

(smithy/sdk/shapes:define-list list-of-dominant-languages :member
                               dominant-language)

(smithy/sdk/shapes:define-list list-of-entities :member entity)

(smithy/sdk/shapes:define-list list-of-entity-labels :member entity-label)

(smithy/sdk/shapes:define-list list-of-errors :member errors-list-item)

(smithy/sdk/shapes:define-list list-of-extracted-characters :member
                               extracted-characters-list-item)

(smithy/sdk/shapes:define-list list-of-key-phrases :member key-phrase)

(smithy/sdk/shapes:define-list list-of-labels :member document-label)

(smithy/sdk/shapes:define-list list-of-mentions :member
                               targeted-sentiment-mention)

(smithy/sdk/shapes:define-list list-of-pii-entities :member pii-entity)

(smithy/sdk/shapes:define-list list-of-pii-entity-types :member pii-entity-type)

(smithy/sdk/shapes:define-list list-of-relationships :member
                               relationships-list-item)

(smithy/sdk/shapes:define-list list-of-syntax-tokens :member syntax-token)

(smithy/sdk/shapes:define-list list-of-targeted-sentiment-entities :member
                               targeted-sentiment-entity)

(smithy/sdk/shapes:define-list list-of-text-segments :member text-segment)

(smithy/sdk/shapes:define-list list-of-toxic-content :member toxic-content)

(smithy/sdk/shapes:define-list list-of-toxic-labels :member toxic-labels)

(smithy/sdk/shapes:define-list list-of-warnings :member warnings-list-item)

(smithy/sdk/shapes:define-input list-pii-entities-detection-jobs-request
                                common-lisp:nil
                                ((filter :target-type
                                  pii-entities-detection-job-filter
                                  :member-name "Filter")
                                 (next-token :target-type string :member-name
                                  "NextToken")
                                 (max-results :target-type max-results-integer
                                  :member-name "MaxResults"))
                                (:shape-name
                                 "ListPiiEntitiesDetectionJobsRequest"))

(smithy/sdk/shapes:define-output list-pii-entities-detection-jobs-response
                                 common-lisp:nil
                                 ((pii-entities-detection-job-properties-list
                                   :target-type
                                   pii-entities-detection-job-properties-list
                                   :member-name
                                   "PiiEntitiesDetectionJobPropertiesList")
                                  (next-token :target-type string :member-name
                                   "NextToken"))
                                 (:shape-name
                                  "ListPiiEntitiesDetectionJobsResponse"))

(smithy/sdk/shapes:define-input list-sentiment-detection-jobs-request
                                common-lisp:nil
                                ((filter :target-type
                                  sentiment-detection-job-filter :member-name
                                  "Filter")
                                 (next-token :target-type string :member-name
                                  "NextToken")
                                 (max-results :target-type max-results-integer
                                  :member-name "MaxResults"))
                                (:shape-name
                                 "ListSentimentDetectionJobsRequest"))

(smithy/sdk/shapes:define-output list-sentiment-detection-jobs-response
                                 common-lisp:nil
                                 ((sentiment-detection-job-properties-list
                                   :target-type
                                   sentiment-detection-job-properties-list
                                   :member-name
                                   "SentimentDetectionJobPropertiesList")
                                  (next-token :target-type string :member-name
                                   "NextToken"))
                                 (:shape-name
                                  "ListSentimentDetectionJobsResponse"))

(smithy/sdk/shapes:define-input list-tags-for-resource-request common-lisp:nil
                                ((resource-arn :target-type comprehend-arn
                                  :required common-lisp:t :member-name
                                  "ResourceArn"))
                                (:shape-name "ListTagsForResourceRequest"))

(smithy/sdk/shapes:define-output list-tags-for-resource-response
                                 common-lisp:nil
                                 ((resource-arn :target-type comprehend-arn
                                   :member-name "ResourceArn")
                                  (tags :target-type tag-list :member-name
                                   "Tags"))
                                 (:shape-name "ListTagsForResourceResponse"))

(smithy/sdk/shapes:define-input list-targeted-sentiment-detection-jobs-request
                                common-lisp:nil
                                ((filter :target-type
                                  targeted-sentiment-detection-job-filter
                                  :member-name "Filter")
                                 (next-token :target-type string :member-name
                                  "NextToken")
                                 (max-results :target-type max-results-integer
                                  :member-name "MaxResults"))
                                (:shape-name
                                 "ListTargetedSentimentDetectionJobsRequest"))

(smithy/sdk/shapes:define-output
 list-targeted-sentiment-detection-jobs-response common-lisp:nil
 ((targeted-sentiment-detection-job-properties-list :target-type
   targeted-sentiment-detection-job-properties-list :member-name
   "TargetedSentimentDetectionJobPropertiesList")
  (next-token :target-type string :member-name "NextToken"))
 (:shape-name "ListTargetedSentimentDetectionJobsResponse"))

(smithy/sdk/shapes:define-input list-topics-detection-jobs-request
                                common-lisp:nil
                                ((filter :target-type
                                  topics-detection-job-filter :member-name
                                  "Filter")
                                 (next-token :target-type string :member-name
                                  "NextToken")
                                 (max-results :target-type max-results-integer
                                  :member-name "MaxResults"))
                                (:shape-name "ListTopicsDetectionJobsRequest"))

(smithy/sdk/shapes:define-output list-topics-detection-jobs-response
                                 common-lisp:nil
                                 ((topics-detection-job-properties-list
                                   :target-type
                                   topics-detection-job-properties-list
                                   :member-name
                                   "TopicsDetectionJobPropertiesList")
                                  (next-token :target-type string :member-name
                                   "NextToken"))
                                 (:shape-name
                                  "ListTopicsDetectionJobsResponse"))

(smithy/sdk/shapes:define-type mask-character smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type max-results-integer
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-structure mention-sentiment common-lisp:nil
                                    ((sentiment :target-type sentiment-type
                                      :member-name "Sentiment")
                                     (sentiment-score :target-type
                                      sentiment-score :member-name
                                      "SentimentScore"))
                                    (:shape-name "MentionSentiment"))

(smithy/sdk/shapes:define-enum model-status
    common-lisp:nil
  (:submitted "SUBMITTED")
  (:training "TRAINING")
  (:deleting "DELETING")
  (:stop-requested "STOP_REQUESTED")
  (:stopped "STOPPED")
  (:in-error "IN_ERROR")
  (:trained "TRAINED")
  (:trained-with-warning "TRAINED_WITH_WARNING"))

(smithy/sdk/shapes:define-enum model-type
    common-lisp:nil
  (:document-classifier "DOCUMENT_CLASSIFIER")
  (:entity-recognizer "ENTITY_RECOGNIZER"))

(smithy/sdk/shapes:define-type number-of-documents smithy/sdk/smithy-types:long)

(smithy/sdk/shapes:define-type number-of-topics-integer
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-structure output-data-config common-lisp:nil
                                    ((s3uri :target-type s3uri :required
                                      common-lisp:t :member-name "S3Uri")
                                     (kms-key-id :target-type kms-key-id
                                      :member-name "KmsKeyId"))
                                    (:shape-name "OutputDataConfig"))

(smithy/sdk/shapes:define-enum page-based-error-code
    common-lisp:nil
  (:textract-bad-page "TEXTRACT_BAD_PAGE")
  (:textract-provisioned-throughput-exceeded
   "TEXTRACT_PROVISIONED_THROUGHPUT_EXCEEDED")
  (:page-characters-exceeded "PAGE_CHARACTERS_EXCEEDED")
  (:page-size-exceeded "PAGE_SIZE_EXCEEDED")
  (:internal-server-error "INTERNAL_SERVER_ERROR"))

(smithy/sdk/shapes:define-enum page-based-warning-code
    common-lisp:nil
  (:inferencing-plaintext-with-native-trained-model
   "INFERENCING_PLAINTEXT_WITH_NATIVE_TRAINED_MODEL")
  (:inferencing-native-document-with-plaintext-trained-model
   "INFERENCING_NATIVE_DOCUMENT_WITH_PLAINTEXT_TRAINED_MODEL"))

(smithy/sdk/shapes:define-structure part-of-speech-tag common-lisp:nil
                                    ((tag :target-type part-of-speech-tag-type
                                      :member-name "Tag")
                                     (score :target-type float :member-name
                                      "Score"))
                                    (:shape-name "PartOfSpeechTag"))

(smithy/sdk/shapes:define-enum part-of-speech-tag-type
    common-lisp:nil
  (:adj "ADJ")
  (:adp "ADP")
  (:adv "ADV")
  (:aux "AUX")
  (:conj "CONJ")
  (:cconj "CCONJ")
  (:det "DET")
  (:intj "INTJ")
  (:noun "NOUN")
  (:num "NUM")
  (:o "O")
  (:part "PART")
  (:pron "PRON")
  (:propn "PROPN")
  (:punct "PUNCT")
  (:sconj "SCONJ")
  (:sym "SYM")
  (:verb "VERB"))

(smithy/sdk/shapes:define-structure pii-entities-detection-job-filter
                                    common-lisp:nil
                                    ((job-name :target-type job-name
                                      :member-name "JobName")
                                     (job-status :target-type job-status
                                      :member-name "JobStatus")
                                     (submit-time-before :target-type timestamp
                                      :member-name "SubmitTimeBefore")
                                     (submit-time-after :target-type timestamp
                                      :member-name "SubmitTimeAfter"))
                                    (:shape-name
                                     "PiiEntitiesDetectionJobFilter"))

(smithy/sdk/shapes:define-structure pii-entities-detection-job-properties
                                    common-lisp:nil
                                    ((job-id :target-type job-id :member-name
                                      "JobId")
                                     (job-arn :target-type comprehend-arn
                                      :member-name "JobArn")
                                     (job-name :target-type job-name
                                      :member-name "JobName")
                                     (job-status :target-type job-status
                                      :member-name "JobStatus")
                                     (message :target-type any-length-string
                                      :member-name "Message")
                                     (submit-time :target-type timestamp
                                      :member-name "SubmitTime")
                                     (end-time :target-type timestamp
                                      :member-name "EndTime")
                                     (input-data-config :target-type
                                      input-data-config :member-name
                                      "InputDataConfig")
                                     (output-data-config :target-type
                                      pii-output-data-config :member-name
                                      "OutputDataConfig")
                                     (redaction-config :target-type
                                      redaction-config :member-name
                                      "RedactionConfig")
                                     (language-code :target-type language-code
                                      :member-name "LanguageCode")
                                     (data-access-role-arn :target-type
                                      iam-role-arn :member-name
                                      "DataAccessRoleArn")
                                     (mode :target-type
                                      pii-entities-detection-mode :member-name
                                      "Mode"))
                                    (:shape-name
                                     "PiiEntitiesDetectionJobProperties"))

(smithy/sdk/shapes:define-list pii-entities-detection-job-properties-list
                               :member pii-entities-detection-job-properties)

(smithy/sdk/shapes:define-enum pii-entities-detection-mask-mode
    common-lisp:nil
  (:mask "MASK")
  (:replace-with-pii-entity-type "REPLACE_WITH_PII_ENTITY_TYPE"))

(smithy/sdk/shapes:define-enum pii-entities-detection-mode
    common-lisp:nil
  (:only-redaction "ONLY_REDACTION")
  (:only-offsets "ONLY_OFFSETS"))

(smithy/sdk/shapes:define-structure pii-entity common-lisp:nil
                                    ((score :target-type float :member-name
                                      "Score")
                                     (type :target-type pii-entity-type
                                      :member-name "Type")
                                     (begin-offset :target-type integer
                                      :member-name "BeginOffset")
                                     (end-offset :target-type integer
                                      :member-name "EndOffset"))
                                    (:shape-name "PiiEntity"))

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
  (:date-time "DATE_TIME")
  (:passport-number "PASSPORT_NUMBER")
  (:driver-id "DRIVER_ID")
  (:url "URL")
  (:age "AGE")
  (:username "USERNAME")
  (:password "PASSWORD")
  (:aws-access-key "AWS_ACCESS_KEY")
  (:aws-secret-key "AWS_SECRET_KEY")
  (:ip-address "IP_ADDRESS")
  (:mac-address "MAC_ADDRESS")
  (:all "ALL")
  (:license-plate "LICENSE_PLATE")
  (:vehicle-identification-number "VEHICLE_IDENTIFICATION_NUMBER")
  (:uk-national-insurance-number "UK_NATIONAL_INSURANCE_NUMBER")
  (:ca-social-insurance-number "CA_SOCIAL_INSURANCE_NUMBER")
  (:us-individual-tax-identification-number
   "US_INDIVIDUAL_TAX_IDENTIFICATION_NUMBER")
  (:uk-unique-taxpayer-reference-number "UK_UNIQUE_TAXPAYER_REFERENCE_NUMBER")
  (:in-permanent-account-number "IN_PERMANENT_ACCOUNT_NUMBER")
  (:in-nrega "IN_NREGA")
  (:international-bank-account-number "INTERNATIONAL_BANK_ACCOUNT_NUMBER")
  (:swift-code "SWIFT_CODE")
  (:uk-national-health-service-number "UK_NATIONAL_HEALTH_SERVICE_NUMBER")
  (:ca-health-number "CA_HEALTH_NUMBER")
  (:in-aadhaar "IN_AADHAAR")
  (:in-voter-number "IN_VOTER_NUMBER"))

(smithy/sdk/shapes:define-structure pii-output-data-config common-lisp:nil
                                    ((s3uri :target-type s3uri :required
                                      common-lisp:t :member-name "S3Uri")
                                     (kms-key-id :target-type kms-key-id
                                      :member-name "KmsKeyId"))
                                    (:shape-name "PiiOutputDataConfig"))

(smithy/sdk/shapes:define-structure point common-lisp:nil
                                    ((x :target-type float :member-name "X")
                                     (y :target-type float :member-name "Y"))
                                    (:shape-name "Point"))

(smithy/sdk/shapes:define-type policy smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type policy-revision-id
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list polygon :member point)

(smithy/sdk/shapes:define-input put-resource-policy-request common-lisp:nil
                                ((resource-arn :target-type
                                  comprehend-model-arn :required common-lisp:t
                                  :member-name "ResourceArn")
                                 (resource-policy :target-type policy :required
                                  common-lisp:t :member-name "ResourcePolicy")
                                 (policy-revision-id :target-type
                                  policy-revision-id :member-name
                                  "PolicyRevisionId"))
                                (:shape-name "PutResourcePolicyRequest"))

(smithy/sdk/shapes:define-output put-resource-policy-response common-lisp:nil
                                 ((policy-revision-id :target-type
                                   policy-revision-id :member-name
                                   "PolicyRevisionId"))
                                 (:shape-name "PutResourcePolicyResponse"))

(smithy/sdk/shapes:define-structure redaction-config common-lisp:nil
                                    ((pii-entity-types :target-type
                                      list-of-pii-entity-types :member-name
                                      "PiiEntityTypes")
                                     (mask-mode :target-type
                                      pii-entities-detection-mask-mode
                                      :member-name "MaskMode")
                                     (mask-character :target-type
                                      mask-character :member-name
                                      "MaskCharacter"))
                                    (:shape-name "RedactionConfig"))

(smithy/sdk/shapes:define-enum relationship-type
    common-lisp:nil
  (:child "CHILD"))

(smithy/sdk/shapes:define-structure relationships-list-item common-lisp:nil
                                    ((ids :target-type string-list :member-name
                                      "Ids")
                                     (type :target-type relationship-type
                                      :member-name "Type"))
                                    (:shape-name "RelationshipsListItem"))

(smithy/sdk/shapes:define-error resource-in-use-exception common-lisp:nil
                                ((message :target-type string :member-name
                                  "Message"))
                                (:shape-name "ResourceInUseException")
                                (:error-code 400))

(smithy/sdk/shapes:define-error resource-limit-exceeded-exception
                                common-lisp:nil
                                ((message :target-type string :member-name
                                  "Message"))
                                (:shape-name "ResourceLimitExceededException")
                                (:error-code 400))

(smithy/sdk/shapes:define-error resource-not-found-exception common-lisp:nil
                                ((message :target-type string :member-name
                                  "Message"))
                                (:shape-name "ResourceNotFoundException")
                                (:error-code 404))

(smithy/sdk/shapes:define-error resource-unavailable-exception common-lisp:nil
                                ((message :target-type string :member-name
                                  "Message"))
                                (:shape-name "ResourceUnavailableException")
                                (:error-code 404))

(smithy/sdk/shapes:define-type s3uri smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type security-group-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list security-group-ids :member security-group-id)

(smithy/sdk/shapes:define-type semi-structured-document-blob
                               smithy/sdk/smithy-types:blob)

(smithy/sdk/shapes:define-structure sentiment-detection-job-filter
                                    common-lisp:nil
                                    ((job-name :target-type job-name
                                      :member-name "JobName")
                                     (job-status :target-type job-status
                                      :member-name "JobStatus")
                                     (submit-time-before :target-type timestamp
                                      :member-name "SubmitTimeBefore")
                                     (submit-time-after :target-type timestamp
                                      :member-name "SubmitTimeAfter"))
                                    (:shape-name "SentimentDetectionJobFilter"))

(smithy/sdk/shapes:define-structure sentiment-detection-job-properties
                                    common-lisp:nil
                                    ((job-id :target-type job-id :member-name
                                      "JobId")
                                     (job-arn :target-type comprehend-arn
                                      :member-name "JobArn")
                                     (job-name :target-type job-name
                                      :member-name "JobName")
                                     (job-status :target-type job-status
                                      :member-name "JobStatus")
                                     (message :target-type any-length-string
                                      :member-name "Message")
                                     (submit-time :target-type timestamp
                                      :member-name "SubmitTime")
                                     (end-time :target-type timestamp
                                      :member-name "EndTime")
                                     (input-data-config :target-type
                                      input-data-config :member-name
                                      "InputDataConfig")
                                     (output-data-config :target-type
                                      output-data-config :member-name
                                      "OutputDataConfig")
                                     (language-code :target-type language-code
                                      :member-name "LanguageCode")
                                     (data-access-role-arn :target-type
                                      iam-role-arn :member-name
                                      "DataAccessRoleArn")
                                     (volume-kms-key-id :target-type kms-key-id
                                      :member-name "VolumeKmsKeyId")
                                     (vpc-config :target-type vpc-config
                                      :member-name "VpcConfig"))
                                    (:shape-name
                                     "SentimentDetectionJobProperties"))

(smithy/sdk/shapes:define-list sentiment-detection-job-properties-list :member
                               sentiment-detection-job-properties)

(smithy/sdk/shapes:define-structure sentiment-score common-lisp:nil
                                    ((positive :target-type float :member-name
                                      "Positive")
                                     (negative :target-type float :member-name
                                      "Negative")
                                     (neutral :target-type float :member-name
                                      "Neutral")
                                     (mixed :target-type float :member-name
                                      "Mixed"))
                                    (:shape-name "SentimentScore"))

(smithy/sdk/shapes:define-enum sentiment-type
    common-lisp:nil
  (:positive "POSITIVE")
  (:negative "NEGATIVE")
  (:neutral "NEUTRAL")
  (:mixed "MIXED"))

(smithy/sdk/shapes:define-enum split
    common-lisp:nil
  (:train "TRAIN")
  (:test "TEST"))

(smithy/sdk/shapes:define-input start-document-classification-job-request
                                common-lisp:nil
                                ((job-name :target-type job-name :member-name
                                  "JobName")
                                 (document-classifier-arn :target-type
                                  document-classifier-arn :member-name
                                  "DocumentClassifierArn")
                                 (input-data-config :target-type
                                  input-data-config :required common-lisp:t
                                  :member-name "InputDataConfig")
                                 (output-data-config :target-type
                                  output-data-config :required common-lisp:t
                                  :member-name "OutputDataConfig")
                                 (data-access-role-arn :target-type
                                  iam-role-arn :required common-lisp:t
                                  :member-name "DataAccessRoleArn")
                                 (client-request-token :target-type
                                  client-request-token-string :member-name
                                  "ClientRequestToken")
                                 (volume-kms-key-id :target-type kms-key-id
                                  :member-name "VolumeKmsKeyId")
                                 (vpc-config :target-type vpc-config
                                  :member-name "VpcConfig")
                                 (tags :target-type tag-list :member-name
                                  "Tags")
                                 (flywheel-arn :target-type
                                  comprehend-flywheel-arn :member-name
                                  "FlywheelArn"))
                                (:shape-name
                                 "StartDocumentClassificationJobRequest"))

(smithy/sdk/shapes:define-output start-document-classification-job-response
                                 common-lisp:nil
                                 ((job-id :target-type job-id :member-name
                                   "JobId")
                                  (job-arn :target-type comprehend-arn
                                   :member-name "JobArn")
                                  (job-status :target-type job-status
                                   :member-name "JobStatus")
                                  (document-classifier-arn :target-type
                                   document-classifier-arn :member-name
                                   "DocumentClassifierArn"))
                                 (:shape-name
                                  "StartDocumentClassificationJobResponse"))

(smithy/sdk/shapes:define-input start-dominant-language-detection-job-request
                                common-lisp:nil
                                ((input-data-config :target-type
                                  input-data-config :required common-lisp:t
                                  :member-name "InputDataConfig")
                                 (output-data-config :target-type
                                  output-data-config :required common-lisp:t
                                  :member-name "OutputDataConfig")
                                 (data-access-role-arn :target-type
                                  iam-role-arn :required common-lisp:t
                                  :member-name "DataAccessRoleArn")
                                 (job-name :target-type job-name :member-name
                                  "JobName")
                                 (client-request-token :target-type
                                  client-request-token-string :member-name
                                  "ClientRequestToken")
                                 (volume-kms-key-id :target-type kms-key-id
                                  :member-name "VolumeKmsKeyId")
                                 (vpc-config :target-type vpc-config
                                  :member-name "VpcConfig")
                                 (tags :target-type tag-list :member-name
                                  "Tags"))
                                (:shape-name
                                 "StartDominantLanguageDetectionJobRequest"))

(smithy/sdk/shapes:define-output start-dominant-language-detection-job-response
                                 common-lisp:nil
                                 ((job-id :target-type job-id :member-name
                                   "JobId")
                                  (job-arn :target-type comprehend-arn
                                   :member-name "JobArn")
                                  (job-status :target-type job-status
                                   :member-name "JobStatus"))
                                 (:shape-name
                                  "StartDominantLanguageDetectionJobResponse"))

(smithy/sdk/shapes:define-input start-entities-detection-job-request
                                common-lisp:nil
                                ((input-data-config :target-type
                                  input-data-config :required common-lisp:t
                                  :member-name "InputDataConfig")
                                 (output-data-config :target-type
                                  output-data-config :required common-lisp:t
                                  :member-name "OutputDataConfig")
                                 (data-access-role-arn :target-type
                                  iam-role-arn :required common-lisp:t
                                  :member-name "DataAccessRoleArn")
                                 (job-name :target-type job-name :member-name
                                  "JobName")
                                 (entity-recognizer-arn :target-type
                                  entity-recognizer-arn :member-name
                                  "EntityRecognizerArn")
                                 (language-code :target-type language-code
                                  :required common-lisp:t :member-name
                                  "LanguageCode")
                                 (client-request-token :target-type
                                  client-request-token-string :member-name
                                  "ClientRequestToken")
                                 (volume-kms-key-id :target-type kms-key-id
                                  :member-name "VolumeKmsKeyId")
                                 (vpc-config :target-type vpc-config
                                  :member-name "VpcConfig")
                                 (tags :target-type tag-list :member-name
                                  "Tags")
                                 (flywheel-arn :target-type
                                  comprehend-flywheel-arn :member-name
                                  "FlywheelArn"))
                                (:shape-name
                                 "StartEntitiesDetectionJobRequest"))

(smithy/sdk/shapes:define-output start-entities-detection-job-response
                                 common-lisp:nil
                                 ((job-id :target-type job-id :member-name
                                   "JobId")
                                  (job-arn :target-type comprehend-arn
                                   :member-name "JobArn")
                                  (job-status :target-type job-status
                                   :member-name "JobStatus")
                                  (entity-recognizer-arn :target-type
                                   entity-recognizer-arn :member-name
                                   "EntityRecognizerArn"))
                                 (:shape-name
                                  "StartEntitiesDetectionJobResponse"))

(smithy/sdk/shapes:define-input start-events-detection-job-request
                                common-lisp:nil
                                ((input-data-config :target-type
                                  input-data-config :required common-lisp:t
                                  :member-name "InputDataConfig")
                                 (output-data-config :target-type
                                  output-data-config :required common-lisp:t
                                  :member-name "OutputDataConfig")
                                 (data-access-role-arn :target-type
                                  iam-role-arn :required common-lisp:t
                                  :member-name "DataAccessRoleArn")
                                 (job-name :target-type job-name :member-name
                                  "JobName")
                                 (language-code :target-type language-code
                                  :required common-lisp:t :member-name
                                  "LanguageCode")
                                 (client-request-token :target-type
                                  client-request-token-string :member-name
                                  "ClientRequestToken")
                                 (target-event-types :target-type
                                  target-event-types :required common-lisp:t
                                  :member-name "TargetEventTypes")
                                 (tags :target-type tag-list :member-name
                                  "Tags"))
                                (:shape-name "StartEventsDetectionJobRequest"))

(smithy/sdk/shapes:define-output start-events-detection-job-response
                                 common-lisp:nil
                                 ((job-id :target-type job-id :member-name
                                   "JobId")
                                  (job-arn :target-type comprehend-arn
                                   :member-name "JobArn")
                                  (job-status :target-type job-status
                                   :member-name "JobStatus"))
                                 (:shape-name
                                  "StartEventsDetectionJobResponse"))

(smithy/sdk/shapes:define-input start-flywheel-iteration-request
                                common-lisp:nil
                                ((flywheel-arn :target-type
                                  comprehend-flywheel-arn :required
                                  common-lisp:t :member-name "FlywheelArn")
                                 (client-request-token :target-type
                                  client-request-token-string :member-name
                                  "ClientRequestToken"))
                                (:shape-name "StartFlywheelIterationRequest"))

(smithy/sdk/shapes:define-output start-flywheel-iteration-response
                                 common-lisp:nil
                                 ((flywheel-arn :target-type
                                   comprehend-flywheel-arn :member-name
                                   "FlywheelArn")
                                  (flywheel-iteration-id :target-type
                                   flywheel-iteration-id :member-name
                                   "FlywheelIterationId"))
                                 (:shape-name "StartFlywheelIterationResponse"))

(smithy/sdk/shapes:define-input start-key-phrases-detection-job-request
                                common-lisp:nil
                                ((input-data-config :target-type
                                  input-data-config :required common-lisp:t
                                  :member-name "InputDataConfig")
                                 (output-data-config :target-type
                                  output-data-config :required common-lisp:t
                                  :member-name "OutputDataConfig")
                                 (data-access-role-arn :target-type
                                  iam-role-arn :required common-lisp:t
                                  :member-name "DataAccessRoleArn")
                                 (job-name :target-type job-name :member-name
                                  "JobName")
                                 (language-code :target-type language-code
                                  :required common-lisp:t :member-name
                                  "LanguageCode")
                                 (client-request-token :target-type
                                  client-request-token-string :member-name
                                  "ClientRequestToken")
                                 (volume-kms-key-id :target-type kms-key-id
                                  :member-name "VolumeKmsKeyId")
                                 (vpc-config :target-type vpc-config
                                  :member-name "VpcConfig")
                                 (tags :target-type tag-list :member-name
                                  "Tags"))
                                (:shape-name
                                 "StartKeyPhrasesDetectionJobRequest"))

(smithy/sdk/shapes:define-output start-key-phrases-detection-job-response
                                 common-lisp:nil
                                 ((job-id :target-type job-id :member-name
                                   "JobId")
                                  (job-arn :target-type comprehend-arn
                                   :member-name "JobArn")
                                  (job-status :target-type job-status
                                   :member-name "JobStatus"))
                                 (:shape-name
                                  "StartKeyPhrasesDetectionJobResponse"))

(smithy/sdk/shapes:define-input start-pii-entities-detection-job-request
                                common-lisp:nil
                                ((input-data-config :target-type
                                  input-data-config :required common-lisp:t
                                  :member-name "InputDataConfig")
                                 (output-data-config :target-type
                                  output-data-config :required common-lisp:t
                                  :member-name "OutputDataConfig")
                                 (mode :target-type pii-entities-detection-mode
                                  :required common-lisp:t :member-name "Mode")
                                 (redaction-config :target-type
                                  redaction-config :member-name
                                  "RedactionConfig")
                                 (data-access-role-arn :target-type
                                  iam-role-arn :required common-lisp:t
                                  :member-name "DataAccessRoleArn")
                                 (job-name :target-type job-name :member-name
                                  "JobName")
                                 (language-code :target-type language-code
                                  :required common-lisp:t :member-name
                                  "LanguageCode")
                                 (client-request-token :target-type
                                  client-request-token-string :member-name
                                  "ClientRequestToken")
                                 (tags :target-type tag-list :member-name
                                  "Tags"))
                                (:shape-name
                                 "StartPiiEntitiesDetectionJobRequest"))

(smithy/sdk/shapes:define-output start-pii-entities-detection-job-response
                                 common-lisp:nil
                                 ((job-id :target-type job-id :member-name
                                   "JobId")
                                  (job-arn :target-type comprehend-arn
                                   :member-name "JobArn")
                                  (job-status :target-type job-status
                                   :member-name "JobStatus"))
                                 (:shape-name
                                  "StartPiiEntitiesDetectionJobResponse"))

(smithy/sdk/shapes:define-input start-sentiment-detection-job-request
                                common-lisp:nil
                                ((input-data-config :target-type
                                  input-data-config :required common-lisp:t
                                  :member-name "InputDataConfig")
                                 (output-data-config :target-type
                                  output-data-config :required common-lisp:t
                                  :member-name "OutputDataConfig")
                                 (data-access-role-arn :target-type
                                  iam-role-arn :required common-lisp:t
                                  :member-name "DataAccessRoleArn")
                                 (job-name :target-type job-name :member-name
                                  "JobName")
                                 (language-code :target-type language-code
                                  :required common-lisp:t :member-name
                                  "LanguageCode")
                                 (client-request-token :target-type
                                  client-request-token-string :member-name
                                  "ClientRequestToken")
                                 (volume-kms-key-id :target-type kms-key-id
                                  :member-name "VolumeKmsKeyId")
                                 (vpc-config :target-type vpc-config
                                  :member-name "VpcConfig")
                                 (tags :target-type tag-list :member-name
                                  "Tags"))
                                (:shape-name
                                 "StartSentimentDetectionJobRequest"))

(smithy/sdk/shapes:define-output start-sentiment-detection-job-response
                                 common-lisp:nil
                                 ((job-id :target-type job-id :member-name
                                   "JobId")
                                  (job-arn :target-type comprehend-arn
                                   :member-name "JobArn")
                                  (job-status :target-type job-status
                                   :member-name "JobStatus"))
                                 (:shape-name
                                  "StartSentimentDetectionJobResponse"))

(smithy/sdk/shapes:define-input start-targeted-sentiment-detection-job-request
                                common-lisp:nil
                                ((input-data-config :target-type
                                  input-data-config :required common-lisp:t
                                  :member-name "InputDataConfig")
                                 (output-data-config :target-type
                                  output-data-config :required common-lisp:t
                                  :member-name "OutputDataConfig")
                                 (data-access-role-arn :target-type
                                  iam-role-arn :required common-lisp:t
                                  :member-name "DataAccessRoleArn")
                                 (job-name :target-type job-name :member-name
                                  "JobName")
                                 (language-code :target-type language-code
                                  :required common-lisp:t :member-name
                                  "LanguageCode")
                                 (client-request-token :target-type
                                  client-request-token-string :member-name
                                  "ClientRequestToken")
                                 (volume-kms-key-id :target-type kms-key-id
                                  :member-name "VolumeKmsKeyId")
                                 (vpc-config :target-type vpc-config
                                  :member-name "VpcConfig")
                                 (tags :target-type tag-list :member-name
                                  "Tags"))
                                (:shape-name
                                 "StartTargetedSentimentDetectionJobRequest"))

(smithy/sdk/shapes:define-output
 start-targeted-sentiment-detection-job-response common-lisp:nil
 ((job-id :target-type job-id :member-name "JobId")
  (job-arn :target-type comprehend-arn :member-name "JobArn")
  (job-status :target-type job-status :member-name "JobStatus"))
 (:shape-name "StartTargetedSentimentDetectionJobResponse"))

(smithy/sdk/shapes:define-input start-topics-detection-job-request
                                common-lisp:nil
                                ((input-data-config :target-type
                                  input-data-config :required common-lisp:t
                                  :member-name "InputDataConfig")
                                 (output-data-config :target-type
                                  output-data-config :required common-lisp:t
                                  :member-name "OutputDataConfig")
                                 (data-access-role-arn :target-type
                                  iam-role-arn :required common-lisp:t
                                  :member-name "DataAccessRoleArn")
                                 (job-name :target-type job-name :member-name
                                  "JobName")
                                 (number-of-topics :target-type
                                  number-of-topics-integer :member-name
                                  "NumberOfTopics")
                                 (client-request-token :target-type
                                  client-request-token-string :member-name
                                  "ClientRequestToken")
                                 (volume-kms-key-id :target-type kms-key-id
                                  :member-name "VolumeKmsKeyId")
                                 (vpc-config :target-type vpc-config
                                  :member-name "VpcConfig")
                                 (tags :target-type tag-list :member-name
                                  "Tags"))
                                (:shape-name "StartTopicsDetectionJobRequest"))

(smithy/sdk/shapes:define-output start-topics-detection-job-response
                                 common-lisp:nil
                                 ((job-id :target-type job-id :member-name
                                   "JobId")
                                  (job-arn :target-type comprehend-arn
                                   :member-name "JobArn")
                                  (job-status :target-type job-status
                                   :member-name "JobStatus"))
                                 (:shape-name
                                  "StartTopicsDetectionJobResponse"))

(smithy/sdk/shapes:define-input stop-dominant-language-detection-job-request
                                common-lisp:nil
                                ((job-id :target-type job-id :required
                                  common-lisp:t :member-name "JobId"))
                                (:shape-name
                                 "StopDominantLanguageDetectionJobRequest"))

(smithy/sdk/shapes:define-output stop-dominant-language-detection-job-response
                                 common-lisp:nil
                                 ((job-id :target-type job-id :member-name
                                   "JobId")
                                  (job-status :target-type job-status
                                   :member-name "JobStatus"))
                                 (:shape-name
                                  "StopDominantLanguageDetectionJobResponse"))

(smithy/sdk/shapes:define-input stop-entities-detection-job-request
                                common-lisp:nil
                                ((job-id :target-type job-id :required
                                  common-lisp:t :member-name "JobId"))
                                (:shape-name "StopEntitiesDetectionJobRequest"))

(smithy/sdk/shapes:define-output stop-entities-detection-job-response
                                 common-lisp:nil
                                 ((job-id :target-type job-id :member-name
                                   "JobId")
                                  (job-status :target-type job-status
                                   :member-name "JobStatus"))
                                 (:shape-name
                                  "StopEntitiesDetectionJobResponse"))

(smithy/sdk/shapes:define-input stop-events-detection-job-request
                                common-lisp:nil
                                ((job-id :target-type job-id :required
                                  common-lisp:t :member-name "JobId"))
                                (:shape-name "StopEventsDetectionJobRequest"))

(smithy/sdk/shapes:define-output stop-events-detection-job-response
                                 common-lisp:nil
                                 ((job-id :target-type job-id :member-name
                                   "JobId")
                                  (job-status :target-type job-status
                                   :member-name "JobStatus"))
                                 (:shape-name "StopEventsDetectionJobResponse"))

(smithy/sdk/shapes:define-input stop-key-phrases-detection-job-request
                                common-lisp:nil
                                ((job-id :target-type job-id :required
                                  common-lisp:t :member-name "JobId"))
                                (:shape-name
                                 "StopKeyPhrasesDetectionJobRequest"))

(smithy/sdk/shapes:define-output stop-key-phrases-detection-job-response
                                 common-lisp:nil
                                 ((job-id :target-type job-id :member-name
                                   "JobId")
                                  (job-status :target-type job-status
                                   :member-name "JobStatus"))
                                 (:shape-name
                                  "StopKeyPhrasesDetectionJobResponse"))

(smithy/sdk/shapes:define-input stop-pii-entities-detection-job-request
                                common-lisp:nil
                                ((job-id :target-type job-id :required
                                  common-lisp:t :member-name "JobId"))
                                (:shape-name
                                 "StopPiiEntitiesDetectionJobRequest"))

(smithy/sdk/shapes:define-output stop-pii-entities-detection-job-response
                                 common-lisp:nil
                                 ((job-id :target-type job-id :member-name
                                   "JobId")
                                  (job-status :target-type job-status
                                   :member-name "JobStatus"))
                                 (:shape-name
                                  "StopPiiEntitiesDetectionJobResponse"))

(smithy/sdk/shapes:define-input stop-sentiment-detection-job-request
                                common-lisp:nil
                                ((job-id :target-type job-id :required
                                  common-lisp:t :member-name "JobId"))
                                (:shape-name
                                 "StopSentimentDetectionJobRequest"))

(smithy/sdk/shapes:define-output stop-sentiment-detection-job-response
                                 common-lisp:nil
                                 ((job-id :target-type job-id :member-name
                                   "JobId")
                                  (job-status :target-type job-status
                                   :member-name "JobStatus"))
                                 (:shape-name
                                  "StopSentimentDetectionJobResponse"))

(smithy/sdk/shapes:define-input stop-targeted-sentiment-detection-job-request
                                common-lisp:nil
                                ((job-id :target-type job-id :required
                                  common-lisp:t :member-name "JobId"))
                                (:shape-name
                                 "StopTargetedSentimentDetectionJobRequest"))

(smithy/sdk/shapes:define-output stop-targeted-sentiment-detection-job-response
                                 common-lisp:nil
                                 ((job-id :target-type job-id :member-name
                                   "JobId")
                                  (job-status :target-type job-status
                                   :member-name "JobStatus"))
                                 (:shape-name
                                  "StopTargetedSentimentDetectionJobResponse"))

(smithy/sdk/shapes:define-input stop-training-document-classifier-request
                                common-lisp:nil
                                ((document-classifier-arn :target-type
                                  document-classifier-arn :required
                                  common-lisp:t :member-name
                                  "DocumentClassifierArn"))
                                (:shape-name
                                 "StopTrainingDocumentClassifierRequest"))

(smithy/sdk/shapes:define-output stop-training-document-classifier-response
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name
                                  "StopTrainingDocumentClassifierResponse"))

(smithy/sdk/shapes:define-input stop-training-entity-recognizer-request
                                common-lisp:nil
                                ((entity-recognizer-arn :target-type
                                  entity-recognizer-arn :required common-lisp:t
                                  :member-name "EntityRecognizerArn"))
                                (:shape-name
                                 "StopTrainingEntityRecognizerRequest"))

(smithy/sdk/shapes:define-output stop-training-entity-recognizer-response
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name
                                  "StopTrainingEntityRecognizerResponse"))

(smithy/sdk/shapes:define-type string smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list string-list :member string)

(smithy/sdk/shapes:define-type subnet-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list subnets :member subnet-id)

(smithy/sdk/shapes:define-enum syntax-language-code
    common-lisp:nil
  (:en "en")
  (:es "es")
  (:fr "fr")
  (:de "de")
  (:it "it")
  (:pt "pt"))

(smithy/sdk/shapes:define-structure syntax-token common-lisp:nil
                                    ((token-id :target-type integer
                                      :member-name "TokenId")
                                     (text :target-type string :member-name
                                      "Text")
                                     (begin-offset :target-type integer
                                      :member-name "BeginOffset")
                                     (end-offset :target-type integer
                                      :member-name "EndOffset")
                                     (part-of-speech :target-type
                                      part-of-speech-tag :member-name
                                      "PartOfSpeech"))
                                    (:shape-name "SyntaxToken"))

(smithy/sdk/shapes:define-structure tag common-lisp:nil
                                    ((key :target-type tag-key :required
                                      common-lisp:t :member-name "Key")
                                     (value :target-type tag-value :member-name
                                      "Value"))
                                    (:shape-name "Tag"))

(smithy/sdk/shapes:define-type tag-key smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list tag-key-list :member tag-key)

(smithy/sdk/shapes:define-list tag-list :member tag)

(smithy/sdk/shapes:define-input tag-resource-request common-lisp:nil
                                ((resource-arn :target-type comprehend-arn
                                  :required common-lisp:t :member-name
                                  "ResourceArn")
                                 (tags :target-type tag-list :required
                                  common-lisp:t :member-name "Tags"))
                                (:shape-name "TagResourceRequest"))

(smithy/sdk/shapes:define-output tag-resource-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "TagResourceResponse"))

(smithy/sdk/shapes:define-type tag-value smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list target-event-types :member event-type-string)

(smithy/sdk/shapes:define-structure targeted-sentiment-detection-job-filter
                                    common-lisp:nil
                                    ((job-name :target-type job-name
                                      :member-name "JobName")
                                     (job-status :target-type job-status
                                      :member-name "JobStatus")
                                     (submit-time-before :target-type timestamp
                                      :member-name "SubmitTimeBefore")
                                     (submit-time-after :target-type timestamp
                                      :member-name "SubmitTimeAfter"))
                                    (:shape-name
                                     "TargetedSentimentDetectionJobFilter"))

(smithy/sdk/shapes:define-structure targeted-sentiment-detection-job-properties
                                    common-lisp:nil
                                    ((job-id :target-type job-id :member-name
                                      "JobId")
                                     (job-arn :target-type comprehend-arn
                                      :member-name "JobArn")
                                     (job-name :target-type job-name
                                      :member-name "JobName")
                                     (job-status :target-type job-status
                                      :member-name "JobStatus")
                                     (message :target-type any-length-string
                                      :member-name "Message")
                                     (submit-time :target-type timestamp
                                      :member-name "SubmitTime")
                                     (end-time :target-type timestamp
                                      :member-name "EndTime")
                                     (input-data-config :target-type
                                      input-data-config :member-name
                                      "InputDataConfig")
                                     (output-data-config :target-type
                                      output-data-config :member-name
                                      "OutputDataConfig")
                                     (language-code :target-type language-code
                                      :member-name "LanguageCode")
                                     (data-access-role-arn :target-type
                                      iam-role-arn :member-name
                                      "DataAccessRoleArn")
                                     (volume-kms-key-id :target-type kms-key-id
                                      :member-name "VolumeKmsKeyId")
                                     (vpc-config :target-type vpc-config
                                      :member-name "VpcConfig"))
                                    (:shape-name
                                     "TargetedSentimentDetectionJobProperties"))

(smithy/sdk/shapes:define-list targeted-sentiment-detection-job-properties-list
                               :member
                               targeted-sentiment-detection-job-properties)

(smithy/sdk/shapes:define-structure targeted-sentiment-entity common-lisp:nil
                                    ((descriptive-mention-index :target-type
                                      list-of-descriptive-mention-indices
                                      :member-name "DescriptiveMentionIndex")
                                     (mentions :target-type list-of-mentions
                                      :member-name "Mentions"))
                                    (:shape-name "TargetedSentimentEntity"))

(smithy/sdk/shapes:define-enum targeted-sentiment-entity-type
    common-lisp:nil
  (:person "PERSON")
  (:location "LOCATION")
  (:organization "ORGANIZATION")
  (:facility "FACILITY")
  (:brand "BRAND")
  (:commercial-item "COMMERCIAL_ITEM")
  (:movie "MOVIE")
  (:music "MUSIC")
  (:book "BOOK")
  (:software "SOFTWARE")
  (:game "GAME")
  (:personal-title "PERSONAL_TITLE")
  (:event "EVENT")
  (:date "DATE")
  (:quantity "QUANTITY")
  (:attribute "ATTRIBUTE")
  (:other "OTHER"))

(smithy/sdk/shapes:define-structure targeted-sentiment-mention common-lisp:nil
                                    ((score :target-type float :member-name
                                      "Score")
                                     (group-score :target-type float
                                      :member-name "GroupScore")
                                     (text :target-type string :member-name
                                      "Text")
                                     (type :target-type
                                      targeted-sentiment-entity-type
                                      :member-name "Type")
                                     (mention-sentiment :target-type
                                      mention-sentiment :member-name
                                      "MentionSentiment")
                                     (begin-offset :target-type integer
                                      :member-name "BeginOffset")
                                     (end-offset :target-type integer
                                      :member-name "EndOffset"))
                                    (:shape-name "TargetedSentimentMention"))

(smithy/sdk/shapes:define-structure task-config common-lisp:nil
                                    ((language-code :target-type language-code
                                      :required common-lisp:t :member-name
                                      "LanguageCode")
                                     (document-classification-config
                                      :target-type
                                      document-classification-config
                                      :member-name
                                      "DocumentClassificationConfig")
                                     (entity-recognition-config :target-type
                                      entity-recognition-config :member-name
                                      "EntityRecognitionConfig"))
                                    (:shape-name "TaskConfig"))

(smithy/sdk/shapes:define-structure text-segment common-lisp:nil
                                    ((text :target-type customer-input-string
                                      :required common-lisp:t :member-name
                                      "Text"))
                                    (:shape-name "TextSegment"))

(smithy/sdk/shapes:define-error text-size-limit-exceeded-exception
                                common-lisp:nil
                                ((message :target-type string :member-name
                                  "Message"))
                                (:shape-name "TextSizeLimitExceededException")
                                (:error-code 400))

(smithy/sdk/shapes:define-type timestamp smithy/sdk/smithy-types:timestamp)

(smithy/sdk/shapes:define-error too-many-requests-exception common-lisp:nil
                                ((message :target-type string :member-name
                                  "Message"))
                                (:shape-name "TooManyRequestsException")
                                (:error-code 429))

(smithy/sdk/shapes:define-error too-many-tag-keys-exception common-lisp:nil
                                ((message :target-type string :member-name
                                  "Message"))
                                (:shape-name "TooManyTagKeysException")
                                (:error-code 400))

(smithy/sdk/shapes:define-error too-many-tags-exception common-lisp:nil
                                ((message :target-type string :member-name
                                  "Message"))
                                (:shape-name "TooManyTagsException")
                                (:error-code 400))

(smithy/sdk/shapes:define-structure topics-detection-job-filter common-lisp:nil
                                    ((job-name :target-type job-name
                                      :member-name "JobName")
                                     (job-status :target-type job-status
                                      :member-name "JobStatus")
                                     (submit-time-before :target-type timestamp
                                      :member-name "SubmitTimeBefore")
                                     (submit-time-after :target-type timestamp
                                      :member-name "SubmitTimeAfter"))
                                    (:shape-name "TopicsDetectionJobFilter"))

(smithy/sdk/shapes:define-structure topics-detection-job-properties
                                    common-lisp:nil
                                    ((job-id :target-type job-id :member-name
                                      "JobId")
                                     (job-arn :target-type comprehend-arn
                                      :member-name "JobArn")
                                     (job-name :target-type job-name
                                      :member-name "JobName")
                                     (job-status :target-type job-status
                                      :member-name "JobStatus")
                                     (message :target-type any-length-string
                                      :member-name "Message")
                                     (submit-time :target-type timestamp
                                      :member-name "SubmitTime")
                                     (end-time :target-type timestamp
                                      :member-name "EndTime")
                                     (input-data-config :target-type
                                      input-data-config :member-name
                                      "InputDataConfig")
                                     (output-data-config :target-type
                                      output-data-config :member-name
                                      "OutputDataConfig")
                                     (number-of-topics :target-type integer
                                      :member-name "NumberOfTopics")
                                     (data-access-role-arn :target-type
                                      iam-role-arn :member-name
                                      "DataAccessRoleArn")
                                     (volume-kms-key-id :target-type kms-key-id
                                      :member-name "VolumeKmsKeyId")
                                     (vpc-config :target-type vpc-config
                                      :member-name "VpcConfig"))
                                    (:shape-name
                                     "TopicsDetectionJobProperties"))

(smithy/sdk/shapes:define-list topics-detection-job-properties-list :member
                               topics-detection-job-properties)

(smithy/sdk/shapes:define-structure toxic-content common-lisp:nil
                                    ((name :target-type toxic-content-type
                                      :member-name "Name")
                                     (score :target-type float :member-name
                                      "Score"))
                                    (:shape-name "ToxicContent"))

(smithy/sdk/shapes:define-enum toxic-content-type
    common-lisp:nil
  (:graphic "GRAPHIC")
  (:harassment-or-abuse "HARASSMENT_OR_ABUSE")
  (:hate-speech "HATE_SPEECH")
  (:insult "INSULT")
  (:profanity "PROFANITY")
  (:sexual "SEXUAL")
  (:violence-or-threat "VIOLENCE_OR_THREAT"))

(smithy/sdk/shapes:define-structure toxic-labels common-lisp:nil
                                    ((labels :target-type list-of-toxic-content
                                      :member-name "Labels")
                                     (toxicity :target-type float :member-name
                                      "Toxicity"))
                                    (:shape-name "ToxicLabels"))

(smithy/sdk/shapes:define-error unsupported-language-exception common-lisp:nil
                                ((message :target-type string :member-name
                                  "Message"))
                                (:shape-name "UnsupportedLanguageException")
                                (:error-code 400))

(smithy/sdk/shapes:define-input untag-resource-request common-lisp:nil
                                ((resource-arn :target-type comprehend-arn
                                  :required common-lisp:t :member-name
                                  "ResourceArn")
                                 (tag-keys :target-type tag-key-list :required
                                  common-lisp:t :member-name "TagKeys"))
                                (:shape-name "UntagResourceRequest"))

(smithy/sdk/shapes:define-output untag-resource-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "UntagResourceResponse"))

(smithy/sdk/shapes:define-structure update-data-security-config common-lisp:nil
                                    ((model-kms-key-id :target-type kms-key-id
                                      :member-name "ModelKmsKeyId")
                                     (volume-kms-key-id :target-type kms-key-id
                                      :member-name "VolumeKmsKeyId")
                                     (vpc-config :target-type vpc-config
                                      :member-name "VpcConfig"))
                                    (:shape-name "UpdateDataSecurityConfig"))

(smithy/sdk/shapes:define-input update-endpoint-request common-lisp:nil
                                ((endpoint-arn :target-type
                                  comprehend-endpoint-arn :required
                                  common-lisp:t :member-name "EndpointArn")
                                 (desired-model-arn :target-type
                                  comprehend-model-arn :member-name
                                  "DesiredModelArn")
                                 (desired-inference-units :target-type
                                  inference-units-integer :member-name
                                  "DesiredInferenceUnits")
                                 (desired-data-access-role-arn :target-type
                                  iam-role-arn :member-name
                                  "DesiredDataAccessRoleArn")
                                 (flywheel-arn :target-type
                                  comprehend-flywheel-arn :member-name
                                  "FlywheelArn"))
                                (:shape-name "UpdateEndpointRequest"))

(smithy/sdk/shapes:define-output update-endpoint-response common-lisp:nil
                                 ((desired-model-arn :target-type
                                   comprehend-model-arn :member-name
                                   "DesiredModelArn"))
                                 (:shape-name "UpdateEndpointResponse"))

(smithy/sdk/shapes:define-input update-flywheel-request common-lisp:nil
                                ((flywheel-arn :target-type
                                  comprehend-flywheel-arn :required
                                  common-lisp:t :member-name "FlywheelArn")
                                 (active-model-arn :target-type
                                  comprehend-model-arn :member-name
                                  "ActiveModelArn")
                                 (data-access-role-arn :target-type
                                  iam-role-arn :member-name
                                  "DataAccessRoleArn")
                                 (data-security-config :target-type
                                  update-data-security-config :member-name
                                  "DataSecurityConfig"))
                                (:shape-name "UpdateFlywheelRequest"))

(smithy/sdk/shapes:define-output update-flywheel-response common-lisp:nil
                                 ((flywheel-properties :target-type
                                   flywheel-properties :member-name
                                   "FlywheelProperties"))
                                 (:shape-name "UpdateFlywheelResponse"))

(smithy/sdk/shapes:define-type version-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure vpc-config common-lisp:nil
                                    ((security-group-ids :target-type
                                      security-group-ids :required
                                      common-lisp:t :member-name
                                      "SecurityGroupIds")
                                     (subnets :target-type subnets :required
                                      common-lisp:t :member-name "Subnets"))
                                    (:shape-name "VpcConfig"))

(smithy/sdk/shapes:define-structure warnings-list-item common-lisp:nil
                                    ((page :target-type integer :member-name
                                      "Page")
                                     (warn-code :target-type
                                      page-based-warning-code :member-name
                                      "WarnCode")
                                     (warn-message :target-type string
                                      :member-name "WarnMessage"))
                                    (:shape-name "WarningsListItem"))

(smithy/sdk/operation:define-operation batch-detect-dominant-language
                                       :shape-name
                                       "BatchDetectDominantLanguage" :input
                                       batch-detect-dominant-language-request
                                       :output
                                       batch-detect-dominant-language-response
                                       :errors
                                       (batch-size-limit-exceeded-exception
                                        internal-server-exception
                                        invalid-request-exception
                                        text-size-limit-exceeded-exception))

(smithy/sdk/operation:define-operation batch-detect-entities :shape-name
                                       "BatchDetectEntities" :input
                                       batch-detect-entities-request :output
                                       batch-detect-entities-response :errors
                                       (batch-size-limit-exceeded-exception
                                        internal-server-exception
                                        invalid-request-exception
                                        text-size-limit-exceeded-exception
                                        unsupported-language-exception))

(smithy/sdk/operation:define-operation batch-detect-key-phrases :shape-name
                                       "BatchDetectKeyPhrases" :input
                                       batch-detect-key-phrases-request :output
                                       batch-detect-key-phrases-response
                                       :errors
                                       (batch-size-limit-exceeded-exception
                                        internal-server-exception
                                        invalid-request-exception
                                        text-size-limit-exceeded-exception
                                        unsupported-language-exception))

(smithy/sdk/operation:define-operation batch-detect-sentiment :shape-name
                                       "BatchDetectSentiment" :input
                                       batch-detect-sentiment-request :output
                                       batch-detect-sentiment-response :errors
                                       (batch-size-limit-exceeded-exception
                                        internal-server-exception
                                        invalid-request-exception
                                        text-size-limit-exceeded-exception
                                        unsupported-language-exception))

(smithy/sdk/operation:define-operation batch-detect-syntax :shape-name
                                       "BatchDetectSyntax" :input
                                       batch-detect-syntax-request :output
                                       batch-detect-syntax-response :errors
                                       (batch-size-limit-exceeded-exception
                                        internal-server-exception
                                        invalid-request-exception
                                        text-size-limit-exceeded-exception
                                        unsupported-language-exception))

(smithy/sdk/operation:define-operation batch-detect-targeted-sentiment
                                       :shape-name
                                       "BatchDetectTargetedSentiment" :input
                                       batch-detect-targeted-sentiment-request
                                       :output
                                       batch-detect-targeted-sentiment-response
                                       :errors
                                       (batch-size-limit-exceeded-exception
                                        internal-server-exception
                                        invalid-request-exception
                                        text-size-limit-exceeded-exception
                                        unsupported-language-exception))

(smithy/sdk/operation:define-operation classify-document :shape-name
                                       "ClassifyDocument" :input
                                       classify-document-request :output
                                       classify-document-response :errors
                                       (internal-server-exception
                                        invalid-request-exception
                                        resource-unavailable-exception
                                        text-size-limit-exceeded-exception))

(smithy/sdk/operation:define-operation contains-pii-entities :shape-name
                                       "ContainsPiiEntities" :input
                                       contains-pii-entities-request :output
                                       contains-pii-entities-response :errors
                                       (internal-server-exception
                                        invalid-request-exception
                                        text-size-limit-exceeded-exception
                                        unsupported-language-exception))

(smithy/sdk/operation:define-operation create-dataset :shape-name
                                       "CreateDataset" :input
                                       create-dataset-request :output
                                       create-dataset-response :errors
                                       (internal-server-exception
                                        invalid-request-exception
                                        resource-in-use-exception
                                        resource-limit-exceeded-exception
                                        resource-not-found-exception
                                        too-many-requests-exception
                                        too-many-tags-exception))

(smithy/sdk/operation:define-operation create-document-classifier :shape-name
                                       "CreateDocumentClassifier" :input
                                       create-document-classifier-request
                                       :output
                                       create-document-classifier-response
                                       :errors
                                       (internal-server-exception
                                        invalid-request-exception
                                        kms-key-validation-exception
                                        resource-in-use-exception
                                        resource-limit-exceeded-exception
                                        too-many-requests-exception
                                        too-many-tags-exception
                                        unsupported-language-exception))

(smithy/sdk/operation:define-operation create-endpoint :shape-name
                                       "CreateEndpoint" :input
                                       create-endpoint-request :output
                                       create-endpoint-response :errors
                                       (internal-server-exception
                                        invalid-request-exception
                                        resource-in-use-exception
                                        resource-limit-exceeded-exception
                                        resource-not-found-exception
                                        resource-unavailable-exception
                                        too-many-requests-exception
                                        too-many-tags-exception))

(smithy/sdk/operation:define-operation create-entity-recognizer :shape-name
                                       "CreateEntityRecognizer" :input
                                       create-entity-recognizer-request :output
                                       create-entity-recognizer-response
                                       :errors
                                       (internal-server-exception
                                        invalid-request-exception
                                        kms-key-validation-exception
                                        resource-in-use-exception
                                        resource-limit-exceeded-exception
                                        too-many-requests-exception
                                        too-many-tags-exception
                                        unsupported-language-exception))

(smithy/sdk/operation:define-operation create-flywheel :shape-name
                                       "CreateFlywheel" :input
                                       create-flywheel-request :output
                                       create-flywheel-response :errors
                                       (internal-server-exception
                                        invalid-request-exception
                                        kms-key-validation-exception
                                        resource-in-use-exception
                                        resource-limit-exceeded-exception
                                        resource-not-found-exception
                                        resource-unavailable-exception
                                        too-many-requests-exception
                                        too-many-tags-exception
                                        unsupported-language-exception))

(smithy/sdk/operation:define-operation delete-document-classifier :shape-name
                                       "DeleteDocumentClassifier" :input
                                       delete-document-classifier-request
                                       :output
                                       delete-document-classifier-response
                                       :errors
                                       (internal-server-exception
                                        invalid-request-exception
                                        resource-in-use-exception
                                        resource-not-found-exception
                                        resource-unavailable-exception
                                        too-many-requests-exception))

(smithy/sdk/operation:define-operation delete-endpoint :shape-name
                                       "DeleteEndpoint" :input
                                       delete-endpoint-request :output
                                       delete-endpoint-response :errors
                                       (internal-server-exception
                                        invalid-request-exception
                                        resource-in-use-exception
                                        resource-not-found-exception
                                        too-many-requests-exception))

(smithy/sdk/operation:define-operation delete-entity-recognizer :shape-name
                                       "DeleteEntityRecognizer" :input
                                       delete-entity-recognizer-request :output
                                       delete-entity-recognizer-response
                                       :errors
                                       (internal-server-exception
                                        invalid-request-exception
                                        resource-in-use-exception
                                        resource-not-found-exception
                                        resource-unavailable-exception
                                        too-many-requests-exception))

(smithy/sdk/operation:define-operation delete-flywheel :shape-name
                                       "DeleteFlywheel" :input
                                       delete-flywheel-request :output
                                       delete-flywheel-response :errors
                                       (internal-server-exception
                                        invalid-request-exception
                                        resource-in-use-exception
                                        resource-not-found-exception
                                        resource-unavailable-exception
                                        too-many-requests-exception))

(smithy/sdk/operation:define-operation delete-resource-policy :shape-name
                                       "DeleteResourcePolicy" :input
                                       delete-resource-policy-request :output
                                       delete-resource-policy-response :errors
                                       (internal-server-exception
                                        invalid-request-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation describe-dataset :shape-name
                                       "DescribeDataset" :input
                                       describe-dataset-request :output
                                       describe-dataset-response :errors
                                       (internal-server-exception
                                        invalid-request-exception
                                        resource-not-found-exception
                                        too-many-requests-exception))

(smithy/sdk/operation:define-operation describe-document-classification-job
                                       :shape-name
                                       "DescribeDocumentClassificationJob"
                                       :input
                                       describe-document-classification-job-request
                                       :output
                                       describe-document-classification-job-response
                                       :errors
                                       (internal-server-exception
                                        invalid-request-exception
                                        job-not-found-exception
                                        too-many-requests-exception))

(smithy/sdk/operation:define-operation describe-document-classifier :shape-name
                                       "DescribeDocumentClassifier" :input
                                       describe-document-classifier-request
                                       :output
                                       describe-document-classifier-response
                                       :errors
                                       (internal-server-exception
                                        invalid-request-exception
                                        resource-not-found-exception
                                        too-many-requests-exception))

(smithy/sdk/operation:define-operation describe-dominant-language-detection-job
                                       :shape-name
                                       "DescribeDominantLanguageDetectionJob"
                                       :input
                                       describe-dominant-language-detection-job-request
                                       :output
                                       describe-dominant-language-detection-job-response
                                       :errors
                                       (internal-server-exception
                                        invalid-request-exception
                                        job-not-found-exception
                                        too-many-requests-exception))

(smithy/sdk/operation:define-operation describe-endpoint :shape-name
                                       "DescribeEndpoint" :input
                                       describe-endpoint-request :output
                                       describe-endpoint-response :errors
                                       (internal-server-exception
                                        invalid-request-exception
                                        resource-not-found-exception
                                        too-many-requests-exception))

(smithy/sdk/operation:define-operation describe-entities-detection-job
                                       :shape-name
                                       "DescribeEntitiesDetectionJob" :input
                                       describe-entities-detection-job-request
                                       :output
                                       describe-entities-detection-job-response
                                       :errors
                                       (internal-server-exception
                                        invalid-request-exception
                                        job-not-found-exception
                                        too-many-requests-exception))

(smithy/sdk/operation:define-operation describe-entity-recognizer :shape-name
                                       "DescribeEntityRecognizer" :input
                                       describe-entity-recognizer-request
                                       :output
                                       describe-entity-recognizer-response
                                       :errors
                                       (internal-server-exception
                                        invalid-request-exception
                                        resource-not-found-exception
                                        too-many-requests-exception))

(smithy/sdk/operation:define-operation describe-events-detection-job
                                       :shape-name "DescribeEventsDetectionJob"
                                       :input
                                       describe-events-detection-job-request
                                       :output
                                       describe-events-detection-job-response
                                       :errors
                                       (internal-server-exception
                                        invalid-request-exception
                                        job-not-found-exception
                                        too-many-requests-exception))

(smithy/sdk/operation:define-operation describe-flywheel :shape-name
                                       "DescribeFlywheel" :input
                                       describe-flywheel-request :output
                                       describe-flywheel-response :errors
                                       (internal-server-exception
                                        invalid-request-exception
                                        resource-not-found-exception
                                        too-many-requests-exception))

(smithy/sdk/operation:define-operation describe-flywheel-iteration :shape-name
                                       "DescribeFlywheelIteration" :input
                                       describe-flywheel-iteration-request
                                       :output
                                       describe-flywheel-iteration-response
                                       :errors
                                       (internal-server-exception
                                        invalid-request-exception
                                        resource-not-found-exception
                                        too-many-requests-exception))

(smithy/sdk/operation:define-operation describe-key-phrases-detection-job
                                       :shape-name
                                       "DescribeKeyPhrasesDetectionJob" :input
                                       describe-key-phrases-detection-job-request
                                       :output
                                       describe-key-phrases-detection-job-response
                                       :errors
                                       (internal-server-exception
                                        invalid-request-exception
                                        job-not-found-exception
                                        too-many-requests-exception))

(smithy/sdk/operation:define-operation describe-pii-entities-detection-job
                                       :shape-name
                                       "DescribePiiEntitiesDetectionJob" :input
                                       describe-pii-entities-detection-job-request
                                       :output
                                       describe-pii-entities-detection-job-response
                                       :errors
                                       (internal-server-exception
                                        invalid-request-exception
                                        job-not-found-exception
                                        too-many-requests-exception))

(smithy/sdk/operation:define-operation describe-resource-policy :shape-name
                                       "DescribeResourcePolicy" :input
                                       describe-resource-policy-request :output
                                       describe-resource-policy-response
                                       :errors
                                       (internal-server-exception
                                        invalid-request-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation describe-sentiment-detection-job
                                       :shape-name
                                       "DescribeSentimentDetectionJob" :input
                                       describe-sentiment-detection-job-request
                                       :output
                                       describe-sentiment-detection-job-response
                                       :errors
                                       (internal-server-exception
                                        invalid-request-exception
                                        job-not-found-exception
                                        too-many-requests-exception))

(smithy/sdk/operation:define-operation
 describe-targeted-sentiment-detection-job :shape-name
 "DescribeTargetedSentimentDetectionJob" :input
 describe-targeted-sentiment-detection-job-request :output
 describe-targeted-sentiment-detection-job-response :errors
 (internal-server-exception invalid-request-exception job-not-found-exception
  too-many-requests-exception))

(smithy/sdk/operation:define-operation describe-topics-detection-job
                                       :shape-name "DescribeTopicsDetectionJob"
                                       :input
                                       describe-topics-detection-job-request
                                       :output
                                       describe-topics-detection-job-response
                                       :errors
                                       (internal-server-exception
                                        invalid-request-exception
                                        job-not-found-exception
                                        too-many-requests-exception))

(smithy/sdk/operation:define-operation detect-dominant-language :shape-name
                                       "DetectDominantLanguage" :input
                                       detect-dominant-language-request :output
                                       detect-dominant-language-response
                                       :errors
                                       (internal-server-exception
                                        invalid-request-exception
                                        text-size-limit-exceeded-exception))

(smithy/sdk/operation:define-operation detect-entities :shape-name
                                       "DetectEntities" :input
                                       detect-entities-request :output
                                       detect-entities-response :errors
                                       (internal-server-exception
                                        invalid-request-exception
                                        resource-unavailable-exception
                                        text-size-limit-exceeded-exception
                                        unsupported-language-exception))

(smithy/sdk/operation:define-operation detect-key-phrases :shape-name
                                       "DetectKeyPhrases" :input
                                       detect-key-phrases-request :output
                                       detect-key-phrases-response :errors
                                       (internal-server-exception
                                        invalid-request-exception
                                        text-size-limit-exceeded-exception
                                        unsupported-language-exception))

(smithy/sdk/operation:define-operation detect-pii-entities :shape-name
                                       "DetectPiiEntities" :input
                                       detect-pii-entities-request :output
                                       detect-pii-entities-response :errors
                                       (internal-server-exception
                                        invalid-request-exception
                                        text-size-limit-exceeded-exception
                                        unsupported-language-exception))

(smithy/sdk/operation:define-operation detect-sentiment :shape-name
                                       "DetectSentiment" :input
                                       detect-sentiment-request :output
                                       detect-sentiment-response :errors
                                       (internal-server-exception
                                        invalid-request-exception
                                        text-size-limit-exceeded-exception
                                        unsupported-language-exception))

(smithy/sdk/operation:define-operation detect-syntax :shape-name "DetectSyntax"
                                       :input detect-syntax-request :output
                                       detect-syntax-response :errors
                                       (internal-server-exception
                                        invalid-request-exception
                                        text-size-limit-exceeded-exception
                                        unsupported-language-exception))

(smithy/sdk/operation:define-operation detect-targeted-sentiment :shape-name
                                       "DetectTargetedSentiment" :input
                                       detect-targeted-sentiment-request
                                       :output
                                       detect-targeted-sentiment-response
                                       :errors
                                       (internal-server-exception
                                        invalid-request-exception
                                        text-size-limit-exceeded-exception
                                        unsupported-language-exception))

(smithy/sdk/operation:define-operation detect-toxic-content :shape-name
                                       "DetectToxicContent" :input
                                       detect-toxic-content-request :output
                                       detect-toxic-content-response :errors
                                       (internal-server-exception
                                        invalid-request-exception
                                        text-size-limit-exceeded-exception
                                        unsupported-language-exception))

(smithy/sdk/operation:define-operation import-model :shape-name "ImportModel"
                                       :input import-model-request :output
                                       import-model-response :errors
                                       (internal-server-exception
                                        invalid-request-exception
                                        kms-key-validation-exception
                                        resource-in-use-exception
                                        resource-limit-exceeded-exception
                                        resource-not-found-exception
                                        resource-unavailable-exception
                                        too-many-requests-exception
                                        too-many-tags-exception))

(smithy/sdk/operation:define-operation list-datasets :shape-name "ListDatasets"
                                       :input list-datasets-request :output
                                       list-datasets-response :errors
                                       (internal-server-exception
                                        invalid-filter-exception
                                        invalid-request-exception
                                        resource-not-found-exception
                                        too-many-requests-exception))

(smithy/sdk/operation:define-operation list-document-classification-jobs
                                       :shape-name
                                       "ListDocumentClassificationJobs" :input
                                       list-document-classification-jobs-request
                                       :output
                                       list-document-classification-jobs-response
                                       :errors
                                       (internal-server-exception
                                        invalid-filter-exception
                                        invalid-request-exception
                                        too-many-requests-exception))

(smithy/sdk/operation:define-operation list-document-classifier-summaries
                                       :shape-name
                                       "ListDocumentClassifierSummaries" :input
                                       list-document-classifier-summaries-request
                                       :output
                                       list-document-classifier-summaries-response
                                       :errors
                                       (internal-server-exception
                                        invalid-request-exception
                                        too-many-requests-exception))

(smithy/sdk/operation:define-operation list-document-classifiers :shape-name
                                       "ListDocumentClassifiers" :input
                                       list-document-classifiers-request
                                       :output
                                       list-document-classifiers-response
                                       :errors
                                       (internal-server-exception
                                        invalid-filter-exception
                                        invalid-request-exception
                                        too-many-requests-exception))

(smithy/sdk/operation:define-operation list-dominant-language-detection-jobs
                                       :shape-name
                                       "ListDominantLanguageDetectionJobs"
                                       :input
                                       list-dominant-language-detection-jobs-request
                                       :output
                                       list-dominant-language-detection-jobs-response
                                       :errors
                                       (internal-server-exception
                                        invalid-filter-exception
                                        invalid-request-exception
                                        too-many-requests-exception))

(smithy/sdk/operation:define-operation list-endpoints :shape-name
                                       "ListEndpoints" :input
                                       list-endpoints-request :output
                                       list-endpoints-response :errors
                                       (internal-server-exception
                                        invalid-request-exception
                                        too-many-requests-exception))

(smithy/sdk/operation:define-operation list-entities-detection-jobs :shape-name
                                       "ListEntitiesDetectionJobs" :input
                                       list-entities-detection-jobs-request
                                       :output
                                       list-entities-detection-jobs-response
                                       :errors
                                       (internal-server-exception
                                        invalid-filter-exception
                                        invalid-request-exception
                                        too-many-requests-exception))

(smithy/sdk/operation:define-operation list-entity-recognizer-summaries
                                       :shape-name
                                       "ListEntityRecognizerSummaries" :input
                                       list-entity-recognizer-summaries-request
                                       :output
                                       list-entity-recognizer-summaries-response
                                       :errors
                                       (internal-server-exception
                                        invalid-request-exception
                                        too-many-requests-exception))

(smithy/sdk/operation:define-operation list-entity-recognizers :shape-name
                                       "ListEntityRecognizers" :input
                                       list-entity-recognizers-request :output
                                       list-entity-recognizers-response :errors
                                       (internal-server-exception
                                        invalid-filter-exception
                                        invalid-request-exception
                                        too-many-requests-exception))

(smithy/sdk/operation:define-operation list-events-detection-jobs :shape-name
                                       "ListEventsDetectionJobs" :input
                                       list-events-detection-jobs-request
                                       :output
                                       list-events-detection-jobs-response
                                       :errors
                                       (internal-server-exception
                                        invalid-filter-exception
                                        invalid-request-exception
                                        too-many-requests-exception))

(smithy/sdk/operation:define-operation list-flywheel-iteration-history
                                       :shape-name
                                       "ListFlywheelIterationHistory" :input
                                       list-flywheel-iteration-history-request
                                       :output
                                       list-flywheel-iteration-history-response
                                       :errors
                                       (internal-server-exception
                                        invalid-filter-exception
                                        invalid-request-exception
                                        resource-not-found-exception
                                        too-many-requests-exception))

(smithy/sdk/operation:define-operation list-flywheels :shape-name
                                       "ListFlywheels" :input
                                       list-flywheels-request :output
                                       list-flywheels-response :errors
                                       (internal-server-exception
                                        invalid-filter-exception
                                        invalid-request-exception
                                        too-many-requests-exception))

(smithy/sdk/operation:define-operation list-key-phrases-detection-jobs
                                       :shape-name
                                       "ListKeyPhrasesDetectionJobs" :input
                                       list-key-phrases-detection-jobs-request
                                       :output
                                       list-key-phrases-detection-jobs-response
                                       :errors
                                       (internal-server-exception
                                        invalid-filter-exception
                                        invalid-request-exception
                                        too-many-requests-exception))

(smithy/sdk/operation:define-operation list-pii-entities-detection-jobs
                                       :shape-name
                                       "ListPiiEntitiesDetectionJobs" :input
                                       list-pii-entities-detection-jobs-request
                                       :output
                                       list-pii-entities-detection-jobs-response
                                       :errors
                                       (internal-server-exception
                                        invalid-filter-exception
                                        invalid-request-exception
                                        too-many-requests-exception))

(smithy/sdk/operation:define-operation list-sentiment-detection-jobs
                                       :shape-name "ListSentimentDetectionJobs"
                                       :input
                                       list-sentiment-detection-jobs-request
                                       :output
                                       list-sentiment-detection-jobs-response
                                       :errors
                                       (internal-server-exception
                                        invalid-filter-exception
                                        invalid-request-exception
                                        too-many-requests-exception))

(smithy/sdk/operation:define-operation list-tags-for-resource :shape-name
                                       "ListTagsForResource" :input
                                       list-tags-for-resource-request :output
                                       list-tags-for-resource-response :errors
                                       (internal-server-exception
                                        invalid-request-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation list-targeted-sentiment-detection-jobs
                                       :shape-name
                                       "ListTargetedSentimentDetectionJobs"
                                       :input
                                       list-targeted-sentiment-detection-jobs-request
                                       :output
                                       list-targeted-sentiment-detection-jobs-response
                                       :errors
                                       (internal-server-exception
                                        invalid-filter-exception
                                        invalid-request-exception
                                        too-many-requests-exception))

(smithy/sdk/operation:define-operation list-topics-detection-jobs :shape-name
                                       "ListTopicsDetectionJobs" :input
                                       list-topics-detection-jobs-request
                                       :output
                                       list-topics-detection-jobs-response
                                       :errors
                                       (internal-server-exception
                                        invalid-filter-exception
                                        invalid-request-exception
                                        too-many-requests-exception))

(smithy/sdk/operation:define-operation put-resource-policy :shape-name
                                       "PutResourcePolicy" :input
                                       put-resource-policy-request :output
                                       put-resource-policy-response :errors
                                       (internal-server-exception
                                        invalid-request-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation start-document-classification-job
                                       :shape-name
                                       "StartDocumentClassificationJob" :input
                                       start-document-classification-job-request
                                       :output
                                       start-document-classification-job-response
                                       :errors
                                       (internal-server-exception
                                        invalid-request-exception
                                        kms-key-validation-exception
                                        resource-in-use-exception
                                        resource-not-found-exception
                                        resource-unavailable-exception
                                        too-many-requests-exception
                                        too-many-tags-exception))

(smithy/sdk/operation:define-operation start-dominant-language-detection-job
                                       :shape-name
                                       "StartDominantLanguageDetectionJob"
                                       :input
                                       start-dominant-language-detection-job-request
                                       :output
                                       start-dominant-language-detection-job-response
                                       :errors
                                       (internal-server-exception
                                        invalid-request-exception
                                        kms-key-validation-exception
                                        resource-in-use-exception
                                        too-many-requests-exception
                                        too-many-tags-exception))

(smithy/sdk/operation:define-operation start-entities-detection-job :shape-name
                                       "StartEntitiesDetectionJob" :input
                                       start-entities-detection-job-request
                                       :output
                                       start-entities-detection-job-response
                                       :errors
                                       (internal-server-exception
                                        invalid-request-exception
                                        kms-key-validation-exception
                                        resource-in-use-exception
                                        resource-not-found-exception
                                        resource-unavailable-exception
                                        too-many-requests-exception
                                        too-many-tags-exception))

(smithy/sdk/operation:define-operation start-events-detection-job :shape-name
                                       "StartEventsDetectionJob" :input
                                       start-events-detection-job-request
                                       :output
                                       start-events-detection-job-response
                                       :errors
                                       (internal-server-exception
                                        invalid-request-exception
                                        kms-key-validation-exception
                                        resource-in-use-exception
                                        too-many-requests-exception
                                        too-many-tags-exception))

(smithy/sdk/operation:define-operation start-flywheel-iteration :shape-name
                                       "StartFlywheelIteration" :input
                                       start-flywheel-iteration-request :output
                                       start-flywheel-iteration-response
                                       :errors
                                       (internal-server-exception
                                        invalid-request-exception
                                        resource-in-use-exception
                                        resource-not-found-exception
                                        too-many-requests-exception))

(smithy/sdk/operation:define-operation start-key-phrases-detection-job
                                       :shape-name
                                       "StartKeyPhrasesDetectionJob" :input
                                       start-key-phrases-detection-job-request
                                       :output
                                       start-key-phrases-detection-job-response
                                       :errors
                                       (internal-server-exception
                                        invalid-request-exception
                                        kms-key-validation-exception
                                        resource-in-use-exception
                                        too-many-requests-exception
                                        too-many-tags-exception))

(smithy/sdk/operation:define-operation start-pii-entities-detection-job
                                       :shape-name
                                       "StartPiiEntitiesDetectionJob" :input
                                       start-pii-entities-detection-job-request
                                       :output
                                       start-pii-entities-detection-job-response
                                       :errors
                                       (internal-server-exception
                                        invalid-request-exception
                                        kms-key-validation-exception
                                        resource-in-use-exception
                                        too-many-requests-exception
                                        too-many-tags-exception))

(smithy/sdk/operation:define-operation start-sentiment-detection-job
                                       :shape-name "StartSentimentDetectionJob"
                                       :input
                                       start-sentiment-detection-job-request
                                       :output
                                       start-sentiment-detection-job-response
                                       :errors
                                       (internal-server-exception
                                        invalid-request-exception
                                        kms-key-validation-exception
                                        resource-in-use-exception
                                        too-many-requests-exception
                                        too-many-tags-exception))

(smithy/sdk/operation:define-operation start-targeted-sentiment-detection-job
                                       :shape-name
                                       "StartTargetedSentimentDetectionJob"
                                       :input
                                       start-targeted-sentiment-detection-job-request
                                       :output
                                       start-targeted-sentiment-detection-job-response
                                       :errors
                                       (internal-server-exception
                                        invalid-request-exception
                                        kms-key-validation-exception
                                        resource-in-use-exception
                                        too-many-requests-exception
                                        too-many-tags-exception))

(smithy/sdk/operation:define-operation start-topics-detection-job :shape-name
                                       "StartTopicsDetectionJob" :input
                                       start-topics-detection-job-request
                                       :output
                                       start-topics-detection-job-response
                                       :errors
                                       (internal-server-exception
                                        invalid-request-exception
                                        kms-key-validation-exception
                                        resource-in-use-exception
                                        too-many-requests-exception
                                        too-many-tags-exception))

(smithy/sdk/operation:define-operation stop-dominant-language-detection-job
                                       :shape-name
                                       "StopDominantLanguageDetectionJob"
                                       :input
                                       stop-dominant-language-detection-job-request
                                       :output
                                       stop-dominant-language-detection-job-response
                                       :errors
                                       (internal-server-exception
                                        invalid-request-exception
                                        job-not-found-exception))

(smithy/sdk/operation:define-operation stop-entities-detection-job :shape-name
                                       "StopEntitiesDetectionJob" :input
                                       stop-entities-detection-job-request
                                       :output
                                       stop-entities-detection-job-response
                                       :errors
                                       (internal-server-exception
                                        invalid-request-exception
                                        job-not-found-exception))

(smithy/sdk/operation:define-operation stop-events-detection-job :shape-name
                                       "StopEventsDetectionJob" :input
                                       stop-events-detection-job-request
                                       :output
                                       stop-events-detection-job-response
                                       :errors
                                       (internal-server-exception
                                        invalid-request-exception
                                        job-not-found-exception))

(smithy/sdk/operation:define-operation stop-key-phrases-detection-job
                                       :shape-name "StopKeyPhrasesDetectionJob"
                                       :input
                                       stop-key-phrases-detection-job-request
                                       :output
                                       stop-key-phrases-detection-job-response
                                       :errors
                                       (internal-server-exception
                                        invalid-request-exception
                                        job-not-found-exception))

(smithy/sdk/operation:define-operation stop-pii-entities-detection-job
                                       :shape-name
                                       "StopPiiEntitiesDetectionJob" :input
                                       stop-pii-entities-detection-job-request
                                       :output
                                       stop-pii-entities-detection-job-response
                                       :errors
                                       (internal-server-exception
                                        invalid-request-exception
                                        job-not-found-exception))

(smithy/sdk/operation:define-operation stop-sentiment-detection-job :shape-name
                                       "StopSentimentDetectionJob" :input
                                       stop-sentiment-detection-job-request
                                       :output
                                       stop-sentiment-detection-job-response
                                       :errors
                                       (internal-server-exception
                                        invalid-request-exception
                                        job-not-found-exception))

(smithy/sdk/operation:define-operation stop-targeted-sentiment-detection-job
                                       :shape-name
                                       "StopTargetedSentimentDetectionJob"
                                       :input
                                       stop-targeted-sentiment-detection-job-request
                                       :output
                                       stop-targeted-sentiment-detection-job-response
                                       :errors
                                       (internal-server-exception
                                        invalid-request-exception
                                        job-not-found-exception))

(smithy/sdk/operation:define-operation stop-training-document-classifier
                                       :shape-name
                                       "StopTrainingDocumentClassifier" :input
                                       stop-training-document-classifier-request
                                       :output
                                       stop-training-document-classifier-response
                                       :errors
                                       (internal-server-exception
                                        invalid-request-exception
                                        resource-not-found-exception
                                        too-many-requests-exception))

(smithy/sdk/operation:define-operation stop-training-entity-recognizer
                                       :shape-name
                                       "StopTrainingEntityRecognizer" :input
                                       stop-training-entity-recognizer-request
                                       :output
                                       stop-training-entity-recognizer-response
                                       :errors
                                       (internal-server-exception
                                        invalid-request-exception
                                        resource-not-found-exception
                                        too-many-requests-exception))

(smithy/sdk/operation:define-operation tag-resource :shape-name "TagResource"
                                       :input tag-resource-request :output
                                       tag-resource-response :errors
                                       (concurrent-modification-exception
                                        internal-server-exception
                                        invalid-request-exception
                                        resource-not-found-exception
                                        too-many-tags-exception))

(smithy/sdk/operation:define-operation untag-resource :shape-name
                                       "UntagResource" :input
                                       untag-resource-request :output
                                       untag-resource-response :errors
                                       (concurrent-modification-exception
                                        internal-server-exception
                                        invalid-request-exception
                                        resource-not-found-exception
                                        too-many-tag-keys-exception))

(smithy/sdk/operation:define-operation update-endpoint :shape-name
                                       "UpdateEndpoint" :input
                                       update-endpoint-request :output
                                       update-endpoint-response :errors
                                       (internal-server-exception
                                        invalid-request-exception
                                        resource-in-use-exception
                                        resource-limit-exceeded-exception
                                        resource-not-found-exception
                                        resource-unavailable-exception
                                        too-many-requests-exception))

(smithy/sdk/operation:define-operation update-flywheel :shape-name
                                       "UpdateFlywheel" :input
                                       update-flywheel-request :output
                                       update-flywheel-response :errors
                                       (internal-server-exception
                                        invalid-request-exception
                                        kms-key-validation-exception
                                        resource-not-found-exception
                                        too-many-requests-exception))
