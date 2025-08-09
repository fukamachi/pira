(uiop/package:define-package #:pira/textract (:use)
                             (:export #:adapter #:adapter-description
                              #:adapter-id #:adapter-list #:adapter-name
                              #:adapter-overview #:adapter-page #:adapter-pages
                              #:adapter-version
                              #:adapter-version-dataset-config
                              #:adapter-version-evaluation-metric
                              #:adapter-version-evaluation-metrics
                              #:adapter-version-list #:adapter-version-overview
                              #:adapter-version-status
                              #:adapter-version-status-message #:adapters
                              #:adapters-config #:amazon-resource-name
                              #:analyze-document #:analyze-expense #:analyze-id
                              #:analyze-iddetections #:angle #:auto-update
                              #:block #:block-list #:block-type #:bounding-box
                              #:client-request-token #:content-classifier
                              #:content-classifiers #:create-adapter
                              #:create-adapter-version #:date-time
                              #:delete-adapter #:delete-adapter-version
                              #:detect-document-text #:detected-signature
                              #:detected-signature-list #:document
                              #:document-group #:document-group-list
                              #:document-location #:document-metadata
                              #:document-pages #:entity-type #:entity-types
                              #:error-code #:evaluation-metric
                              #:expense-currency #:expense-detection
                              #:expense-document #:expense-document-list
                              #:expense-field #:expense-field-list
                              #:expense-group-property
                              #:expense-group-property-list #:expense-type
                              #:extraction #:extraction-list #:feature-type
                              #:feature-types #:float #:flow-definition-arn
                              #:geometry #:get-adapter #:get-adapter-version
                              #:get-document-analysis
                              #:get-document-text-detection
                              #:get-expense-analysis #:get-lending-analysis
                              #:get-lending-analysis-summary
                              #:human-loop-activation-output
                              #:human-loop-activation-reason
                              #:human-loop-activation-reasons #:human-loop-arn
                              #:human-loop-config #:human-loop-data-attributes
                              #:human-loop-name #:id-list #:identity-document
                              #:identity-document-field
                              #:identity-document-field-list
                              #:identity-document-list #:image-blob #:job-id
                              #:job-status #:job-tag #:kmskey-id
                              #:lending-detection #:lending-detection-list
                              #:lending-document #:lending-field
                              #:lending-field-list #:lending-result
                              #:lending-result-list #:lending-summary
                              #:line-item-fields #:line-item-group
                              #:line-item-group-list #:line-item-list
                              #:list-adapter-versions #:list-adapters
                              #:list-tags-for-resource #:max-results
                              #:non-empty-string #:normalized-value
                              #:notification-channel #:output-config
                              #:page-classification #:page-list #:pages
                              #:pagination-token #:percent #:point #:polygon
                              #:prediction #:prediction-list #:queries
                              #:queries-config #:query #:query-input
                              #:query-page #:query-pages #:relationship
                              #:relationship-list #:relationship-type
                              #:role-arn #:s3bucket #:s3object #:s3object-name
                              #:s3object-version #:snstopic-arn
                              #:selection-status #:signature-detection
                              #:signature-detection-list #:split-document
                              #:split-document-list #:start-document-analysis
                              #:start-document-text-detection
                              #:start-expense-analysis #:start-lending-analysis
                              #:status-message #:string #:string-list
                              #:synthesized-json-human-loop-activation-conditions-evaluation-results
                              #:tag-key #:tag-key-list #:tag-map #:tag-resource
                              #:tag-value #:text-type #:textract #:uinteger
                              #:undetected-document-type-list
                              #:undetected-signature
                              #:undetected-signature-list #:untag-resource
                              #:update-adapter #:value-type #:warning
                              #:warnings))
(common-lisp:in-package #:pira/textract)

(smithy/sdk/service:define-service textract :shape-name "Textract" :version
                                   "2018-06-27" :title "Amazon Textract"
                                   :traits
                                   '(("aws.api#service" ("sdkId" . "Textract")
                                      ("arnNamespace" . "textract")
                                      ("cloudFormationName" . "Textract")
                                      ("cloudTrailEventSource"
                                       . "textract.amazonaws.com")
                                      ("endpointPrefix" . "textract"))
                                     ("aws.auth#sigv4" ("name" . "textract"))
                                     ("aws.protocols#awsJson1_1")))

(smithy/sdk/shapes:define-error access-denied-exception common-lisp:nil
                                ((message :target-type string :member-name
                                  "Message")
                                 (code :target-type string :member-name
                                  "Code"))
                                (:shape-name "AccessDeniedException")
                                (:error-code 400))

(smithy/sdk/shapes:define-structure adapter common-lisp:nil
                                    ((adapter-id :target-type adapter-id
                                      :required common-lisp:t :member-name
                                      "AdapterId")
                                     (pages :target-type adapter-pages
                                      :member-name "Pages")
                                     (version :target-type adapter-version
                                      :required common-lisp:t :member-name
                                      "Version"))
                                    (:shape-name "Adapter"))

(smithy/sdk/shapes:define-type adapter-description
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type adapter-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list adapter-list :member adapter-overview)

(smithy/sdk/shapes:define-type adapter-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure adapter-overview common-lisp:nil
                                    ((adapter-id :target-type adapter-id
                                      :member-name "AdapterId")
                                     (adapter-name :target-type adapter-name
                                      :member-name "AdapterName")
                                     (creation-time :target-type date-time
                                      :member-name "CreationTime")
                                     (feature-types :target-type feature-types
                                      :member-name "FeatureTypes"))
                                    (:shape-name "AdapterOverview"))

(smithy/sdk/shapes:define-type adapter-page smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list adapter-pages :member adapter-page)

(smithy/sdk/shapes:define-type adapter-version smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure adapter-version-dataset-config
                                    common-lisp:nil
                                    ((manifest-s3object :target-type s3object
                                      :member-name "ManifestS3Object"))
                                    (:shape-name "AdapterVersionDatasetConfig"))

(smithy/sdk/shapes:define-structure adapter-version-evaluation-metric
                                    common-lisp:nil
                                    ((baseline :target-type evaluation-metric
                                      :member-name "Baseline")
                                     (adapter-version :target-type
                                      evaluation-metric :member-name
                                      "AdapterVersion")
                                     (feature-type :target-type feature-type
                                      :member-name "FeatureType"))
                                    (:shape-name
                                     "AdapterVersionEvaluationMetric"))

(smithy/sdk/shapes:define-list adapter-version-evaluation-metrics :member
                               adapter-version-evaluation-metric)

(smithy/sdk/shapes:define-list adapter-version-list :member
                               adapter-version-overview)

(smithy/sdk/shapes:define-structure adapter-version-overview common-lisp:nil
                                    ((adapter-id :target-type adapter-id
                                      :member-name "AdapterId")
                                     (adapter-version :target-type
                                      adapter-version :member-name
                                      "AdapterVersion")
                                     (creation-time :target-type date-time
                                      :member-name "CreationTime")
                                     (feature-types :target-type feature-types
                                      :member-name "FeatureTypes")
                                     (status :target-type
                                      adapter-version-status :member-name
                                      "Status")
                                     (status-message :target-type
                                      adapter-version-status-message
                                      :member-name "StatusMessage"))
                                    (:shape-name "AdapterVersionOverview"))

(smithy/sdk/shapes:define-enum adapter-version-status
    common-lisp:nil
  (:active "ACTIVE")
  (:at-risk "AT_RISK")
  (:deprecated "DEPRECATED")
  (:creation-error "CREATION_ERROR")
  (:creation-in-progress "CREATION_IN_PROGRESS"))

(smithy/sdk/shapes:define-type adapter-version-status-message
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list adapters :member adapter)

(smithy/sdk/shapes:define-structure adapters-config common-lisp:nil
                                    ((adapters :target-type adapters :required
                                      common-lisp:t :member-name "Adapters"))
                                    (:shape-name "AdaptersConfig"))

(smithy/sdk/shapes:define-type amazon-resource-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input analyze-document-request common-lisp:nil
                                ((document :target-type document :required
                                  common-lisp:t :member-name "Document")
                                 (feature-types :target-type feature-types
                                  :required common-lisp:t :member-name
                                  "FeatureTypes")
                                 (human-loop-config :target-type
                                  human-loop-config :member-name
                                  "HumanLoopConfig")
                                 (queries-config :target-type queries-config
                                  :member-name "QueriesConfig")
                                 (adapters-config :target-type adapters-config
                                  :member-name "AdaptersConfig"))
                                (:shape-name "AnalyzeDocumentRequest"))

(smithy/sdk/shapes:define-output analyze-document-response common-lisp:nil
                                 ((document-metadata :target-type
                                   document-metadata :member-name
                                   "DocumentMetadata")
                                  (blocks :target-type block-list :member-name
                                   "Blocks")
                                  (human-loop-activation-output :target-type
                                   human-loop-activation-output :member-name
                                   "HumanLoopActivationOutput")
                                  (analyze-document-model-version :target-type
                                   string :member-name
                                   "AnalyzeDocumentModelVersion"))
                                 (:shape-name "AnalyzeDocumentResponse"))

(smithy/sdk/shapes:define-input analyze-expense-request common-lisp:nil
                                ((document :target-type document :required
                                  common-lisp:t :member-name "Document"))
                                (:shape-name "AnalyzeExpenseRequest"))

(smithy/sdk/shapes:define-output analyze-expense-response common-lisp:nil
                                 ((document-metadata :target-type
                                   document-metadata :member-name
                                   "DocumentMetadata")
                                  (expense-documents :target-type
                                   expense-document-list :member-name
                                   "ExpenseDocuments"))
                                 (:shape-name "AnalyzeExpenseResponse"))

(smithy/sdk/shapes:define-structure analyze-iddetections common-lisp:nil
                                    ((text :target-type string :required
                                      common-lisp:t :member-name "Text")
                                     (normalized-value :target-type
                                      normalized-value :member-name
                                      "NormalizedValue")
                                     (confidence :target-type percent
                                      :member-name "Confidence"))
                                    (:shape-name "AnalyzeIDDetections"))

(smithy/sdk/shapes:define-input analyze-idrequest common-lisp:nil
                                ((document-pages :target-type document-pages
                                  :required common-lisp:t :member-name
                                  "DocumentPages"))
                                (:shape-name "AnalyzeIDRequest"))

(smithy/sdk/shapes:define-output analyze-idresponse common-lisp:nil
                                 ((identity-documents :target-type
                                   identity-document-list :member-name
                                   "IdentityDocuments")
                                  (document-metadata :target-type
                                   document-metadata :member-name
                                   "DocumentMetadata")
                                  (analyze-idmodel-version :target-type string
                                   :member-name "AnalyzeIDModelVersion"))
                                 (:shape-name "AnalyzeIDResponse"))

(smithy/sdk/shapes:define-type angle smithy/sdk/smithy-types:float)

(smithy/sdk/shapes:define-enum auto-update
    common-lisp:nil
  (:enabled "ENABLED")
  (:disabled "DISABLED"))

(smithy/sdk/shapes:define-error bad-document-exception common-lisp:nil
                                ((message :target-type string :member-name
                                  "Message")
                                 (code :target-type string :member-name
                                  "Code"))
                                (:shape-name "BadDocumentException")
                                (:error-code 400))

(smithy/sdk/shapes:define-structure block common-lisp:nil
                                    ((block-type :target-type block-type
                                      :member-name "BlockType")
                                     (confidence :target-type percent
                                      :member-name "Confidence")
                                     (text :target-type string :member-name
                                      "Text")
                                     (text-type :target-type text-type
                                      :member-name "TextType")
                                     (row-index :target-type uinteger
                                      :member-name "RowIndex")
                                     (column-index :target-type uinteger
                                      :member-name "ColumnIndex")
                                     (row-span :target-type uinteger
                                      :member-name "RowSpan")
                                     (column-span :target-type uinteger
                                      :member-name "ColumnSpan")
                                     (geometry :target-type geometry
                                      :member-name "Geometry")
                                     (id :target-type non-empty-string
                                      :member-name "Id")
                                     (relationships :target-type
                                      relationship-list :member-name
                                      "Relationships")
                                     (entity-types :target-type entity-types
                                      :member-name "EntityTypes")
                                     (selection-status :target-type
                                      selection-status :member-name
                                      "SelectionStatus")
                                     (page :target-type uinteger :member-name
                                      "Page")
                                     (query :target-type query :member-name
                                      "Query"))
                                    (:shape-name "Block"))

(smithy/sdk/shapes:define-list block-list :member block)

(smithy/sdk/shapes:define-enum block-type
    common-lisp:nil
  (:key-value-set "KEY_VALUE_SET")
  (:page "PAGE")
  (:line "LINE")
  (:word "WORD")
  (:table "TABLE")
  (:cell "CELL")
  (:selection-element "SELECTION_ELEMENT")
  (:merged-cell "MERGED_CELL")
  (:title "TITLE")
  (:query "QUERY")
  (:query-result "QUERY_RESULT")
  (:signature "SIGNATURE")
  (:table-title "TABLE_TITLE")
  (:table-footer "TABLE_FOOTER")
  (:layout-text "LAYOUT_TEXT")
  (:layout-title "LAYOUT_TITLE")
  (:layout-header "LAYOUT_HEADER")
  (:layout-footer "LAYOUT_FOOTER")
  (:layout-section-header "LAYOUT_SECTION_HEADER")
  (:layout-page-number "LAYOUT_PAGE_NUMBER")
  (:layout-list "LAYOUT_LIST")
  (:layout-figure "LAYOUT_FIGURE")
  (:layout-table "LAYOUT_TABLE")
  (:layout-key-value "LAYOUT_KEY_VALUE"))

(smithy/sdk/shapes:define-structure bounding-box common-lisp:nil
                                    ((width :target-type float :member-name
                                      "Width")
                                     (height :target-type float :member-name
                                      "Height")
                                     (left :target-type float :member-name
                                      "Left")
                                     (top :target-type float :member-name
                                      "Top"))
                                    (:shape-name "BoundingBox"))

(smithy/sdk/shapes:define-type client-request-token
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error conflict-exception common-lisp:nil
                                ((message :target-type string :member-name
                                  "Message")
                                 (code :target-type string :member-name
                                  "Code"))
                                (:shape-name "ConflictException")
                                (:error-code 400))

(smithy/sdk/shapes:define-enum content-classifier
    common-lisp:nil
  (:free-of-personally-identifiable-information
   "FreeOfPersonallyIdentifiableInformation")
  (:free-of-adult-content "FreeOfAdultContent"))

(smithy/sdk/shapes:define-list content-classifiers :member content-classifier)

(smithy/sdk/shapes:define-input create-adapter-request common-lisp:nil
                                ((adapter-name :target-type adapter-name
                                  :required common-lisp:t :member-name
                                  "AdapterName")
                                 (client-request-token :target-type
                                  client-request-token :member-name
                                  "ClientRequestToken")
                                 (description :target-type adapter-description
                                  :member-name "Description")
                                 (feature-types :target-type feature-types
                                  :required common-lisp:t :member-name
                                  "FeatureTypes")
                                 (auto-update :target-type auto-update
                                  :member-name "AutoUpdate")
                                 (tags :target-type tag-map :member-name
                                  "Tags"))
                                (:shape-name "CreateAdapterRequest"))

(smithy/sdk/shapes:define-output create-adapter-response common-lisp:nil
                                 ((adapter-id :target-type adapter-id
                                   :member-name "AdapterId"))
                                 (:shape-name "CreateAdapterResponse"))

(smithy/sdk/shapes:define-input create-adapter-version-request common-lisp:nil
                                ((adapter-id :target-type adapter-id :required
                                  common-lisp:t :member-name "AdapterId")
                                 (client-request-token :target-type
                                  client-request-token :member-name
                                  "ClientRequestToken")
                                 (dataset-config :target-type
                                  adapter-version-dataset-config :required
                                  common-lisp:t :member-name "DatasetConfig")
                                 (kmskey-id :target-type kmskey-id :member-name
                                  "KMSKeyId")
                                 (output-config :target-type output-config
                                  :required common-lisp:t :member-name
                                  "OutputConfig")
                                 (tags :target-type tag-map :member-name
                                  "Tags"))
                                (:shape-name "CreateAdapterVersionRequest"))

(smithy/sdk/shapes:define-output create-adapter-version-response
                                 common-lisp:nil
                                 ((adapter-id :target-type adapter-id
                                   :member-name "AdapterId")
                                  (adapter-version :target-type adapter-version
                                   :member-name "AdapterVersion"))
                                 (:shape-name "CreateAdapterVersionResponse"))

(smithy/sdk/shapes:define-type date-time smithy/sdk/smithy-types:timestamp)

(smithy/sdk/shapes:define-input delete-adapter-request common-lisp:nil
                                ((adapter-id :target-type adapter-id :required
                                  common-lisp:t :member-name "AdapterId"))
                                (:shape-name "DeleteAdapterRequest"))

(smithy/sdk/shapes:define-output delete-adapter-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "DeleteAdapterResponse"))

(smithy/sdk/shapes:define-input delete-adapter-version-request common-lisp:nil
                                ((adapter-id :target-type adapter-id :required
                                  common-lisp:t :member-name "AdapterId")
                                 (adapter-version :target-type adapter-version
                                  :required common-lisp:t :member-name
                                  "AdapterVersion"))
                                (:shape-name "DeleteAdapterVersionRequest"))

(smithy/sdk/shapes:define-output delete-adapter-version-response
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name "DeleteAdapterVersionResponse"))

(smithy/sdk/shapes:define-input detect-document-text-request common-lisp:nil
                                ((document :target-type document :required
                                  common-lisp:t :member-name "Document"))
                                (:shape-name "DetectDocumentTextRequest"))

(smithy/sdk/shapes:define-output detect-document-text-response common-lisp:nil
                                 ((document-metadata :target-type
                                   document-metadata :member-name
                                   "DocumentMetadata")
                                  (blocks :target-type block-list :member-name
                                   "Blocks")
                                  (detect-document-text-model-version
                                   :target-type string :member-name
                                   "DetectDocumentTextModelVersion"))
                                 (:shape-name "DetectDocumentTextResponse"))

(smithy/sdk/shapes:define-structure detected-signature common-lisp:nil
                                    ((page :target-type uinteger :member-name
                                      "Page"))
                                    (:shape-name "DetectedSignature"))

(smithy/sdk/shapes:define-list detected-signature-list :member
                               detected-signature)

(smithy/sdk/shapes:define-structure document common-lisp:nil
                                    ((bytes :target-type image-blob
                                      :member-name "Bytes")
                                     (s3object :target-type s3object
                                      :member-name "S3Object"))
                                    (:shape-name "Document"))

(smithy/sdk/shapes:define-structure document-group common-lisp:nil
                                    ((type :target-type non-empty-string
                                      :member-name "Type")
                                     (split-documents :target-type
                                      split-document-list :member-name
                                      "SplitDocuments")
                                     (detected-signatures :target-type
                                      detected-signature-list :member-name
                                      "DetectedSignatures")
                                     (undetected-signatures :target-type
                                      undetected-signature-list :member-name
                                      "UndetectedSignatures"))
                                    (:shape-name "DocumentGroup"))

(smithy/sdk/shapes:define-list document-group-list :member document-group)

(smithy/sdk/shapes:define-structure document-location common-lisp:nil
                                    ((s3object :target-type s3object
                                      :member-name "S3Object"))
                                    (:shape-name "DocumentLocation"))

(smithy/sdk/shapes:define-structure document-metadata common-lisp:nil
                                    ((pages :target-type uinteger :member-name
                                      "Pages"))
                                    (:shape-name "DocumentMetadata"))

(smithy/sdk/shapes:define-list document-pages :member document)

(smithy/sdk/shapes:define-error document-too-large-exception common-lisp:nil
                                ((message :target-type string :member-name
                                  "Message")
                                 (code :target-type string :member-name
                                  "Code"))
                                (:shape-name "DocumentTooLargeException")
                                (:error-code 400))

(smithy/sdk/shapes:define-enum entity-type
    common-lisp:nil
  (:key "KEY")
  (:value "VALUE")
  (:column-header "COLUMN_HEADER")
  (:table-title "TABLE_TITLE")
  (:table-footer "TABLE_FOOTER")
  (:table-section-title "TABLE_SECTION_TITLE")
  (:table-summary "TABLE_SUMMARY")
  (:structured-table "STRUCTURED_TABLE")
  (:semi-structured-table "SEMI_STRUCTURED_TABLE"))

(smithy/sdk/shapes:define-list entity-types :member entity-type)

(smithy/sdk/shapes:define-type error-code smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure evaluation-metric common-lisp:nil
                                    ((f1score :target-type float :member-name
                                      "F1Score")
                                     (precision :target-type float :member-name
                                      "Precision")
                                     (recall :target-type float :member-name
                                      "Recall"))
                                    (:shape-name "EvaluationMetric"))

(smithy/sdk/shapes:define-structure expense-currency common-lisp:nil
                                    ((code :target-type string :member-name
                                      "Code")
                                     (confidence :target-type percent
                                      :member-name "Confidence"))
                                    (:shape-name "ExpenseCurrency"))

(smithy/sdk/shapes:define-structure expense-detection common-lisp:nil
                                    ((text :target-type string :member-name
                                      "Text")
                                     (geometry :target-type geometry
                                      :member-name "Geometry")
                                     (confidence :target-type percent
                                      :member-name "Confidence"))
                                    (:shape-name "ExpenseDetection"))

(smithy/sdk/shapes:define-structure expense-document common-lisp:nil
                                    ((expense-index :target-type uinteger
                                      :member-name "ExpenseIndex")
                                     (summary-fields :target-type
                                      expense-field-list :member-name
                                      "SummaryFields")
                                     (line-item-groups :target-type
                                      line-item-group-list :member-name
                                      "LineItemGroups")
                                     (blocks :target-type block-list
                                      :member-name "Blocks"))
                                    (:shape-name "ExpenseDocument"))

(smithy/sdk/shapes:define-list expense-document-list :member expense-document)

(smithy/sdk/shapes:define-structure expense-field common-lisp:nil
                                    ((type :target-type expense-type
                                      :member-name "Type")
                                     (label-detection :target-type
                                      expense-detection :member-name
                                      "LabelDetection")
                                     (value-detection :target-type
                                      expense-detection :member-name
                                      "ValueDetection")
                                     (page-number :target-type uinteger
                                      :member-name "PageNumber")
                                     (currency :target-type expense-currency
                                      :member-name "Currency")
                                     (group-properties :target-type
                                      expense-group-property-list :member-name
                                      "GroupProperties"))
                                    (:shape-name "ExpenseField"))

(smithy/sdk/shapes:define-list expense-field-list :member expense-field)

(smithy/sdk/shapes:define-structure expense-group-property common-lisp:nil
                                    ((types :target-type string-list
                                      :member-name "Types")
                                     (id :target-type string :member-name
                                      "Id"))
                                    (:shape-name "ExpenseGroupProperty"))

(smithy/sdk/shapes:define-list expense-group-property-list :member
                               expense-group-property)

(smithy/sdk/shapes:define-structure expense-type common-lisp:nil
                                    ((text :target-type string :member-name
                                      "Text")
                                     (confidence :target-type percent
                                      :member-name "Confidence"))
                                    (:shape-name "ExpenseType"))

(smithy/sdk/shapes:define-structure extraction common-lisp:nil
                                    ((lending-document :target-type
                                      lending-document :member-name
                                      "LendingDocument")
                                     (expense-document :target-type
                                      expense-document :member-name
                                      "ExpenseDocument")
                                     (identity-document :target-type
                                      identity-document :member-name
                                      "IdentityDocument"))
                                    (:shape-name "Extraction"))

(smithy/sdk/shapes:define-list extraction-list :member extraction)

(smithy/sdk/shapes:define-enum feature-type
    common-lisp:nil
  (:tables "TABLES")
  (:forms "FORMS")
  (:queries "QUERIES")
  (:signatures "SIGNATURES")
  (:layout "LAYOUT"))

(smithy/sdk/shapes:define-list feature-types :member feature-type)

(smithy/sdk/shapes:define-type float smithy/sdk/smithy-types:float)

(smithy/sdk/shapes:define-type flow-definition-arn
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure geometry common-lisp:nil
                                    ((bounding-box :target-type bounding-box
                                      :member-name "BoundingBox")
                                     (polygon :target-type polygon :member-name
                                      "Polygon")
                                     (rotation-angle :target-type angle
                                      :member-name "RotationAngle"))
                                    (:shape-name "Geometry"))

(smithy/sdk/shapes:define-input get-adapter-request common-lisp:nil
                                ((adapter-id :target-type adapter-id :required
                                  common-lisp:t :member-name "AdapterId"))
                                (:shape-name "GetAdapterRequest"))

(smithy/sdk/shapes:define-output get-adapter-response common-lisp:nil
                                 ((adapter-id :target-type adapter-id
                                   :member-name "AdapterId")
                                  (adapter-name :target-type adapter-name
                                   :member-name "AdapterName")
                                  (creation-time :target-type date-time
                                   :member-name "CreationTime")
                                  (description :target-type adapter-description
                                   :member-name "Description")
                                  (feature-types :target-type feature-types
                                   :member-name "FeatureTypes")
                                  (auto-update :target-type auto-update
                                   :member-name "AutoUpdate")
                                  (tags :target-type tag-map :member-name
                                   "Tags"))
                                 (:shape-name "GetAdapterResponse"))

(smithy/sdk/shapes:define-input get-adapter-version-request common-lisp:nil
                                ((adapter-id :target-type adapter-id :required
                                  common-lisp:t :member-name "AdapterId")
                                 (adapter-version :target-type adapter-version
                                  :required common-lisp:t :member-name
                                  "AdapterVersion"))
                                (:shape-name "GetAdapterVersionRequest"))

(smithy/sdk/shapes:define-output get-adapter-version-response common-lisp:nil
                                 ((adapter-id :target-type adapter-id
                                   :member-name "AdapterId")
                                  (adapter-version :target-type adapter-version
                                   :member-name "AdapterVersion")
                                  (creation-time :target-type date-time
                                   :member-name "CreationTime")
                                  (feature-types :target-type feature-types
                                   :member-name "FeatureTypes")
                                  (status :target-type adapter-version-status
                                   :member-name "Status")
                                  (status-message :target-type
                                   adapter-version-status-message :member-name
                                   "StatusMessage")
                                  (dataset-config :target-type
                                   adapter-version-dataset-config :member-name
                                   "DatasetConfig")
                                  (kmskey-id :target-type kmskey-id
                                   :member-name "KMSKeyId")
                                  (output-config :target-type output-config
                                   :member-name "OutputConfig")
                                  (evaluation-metrics :target-type
                                   adapter-version-evaluation-metrics
                                   :member-name "EvaluationMetrics")
                                  (tags :target-type tag-map :member-name
                                   "Tags"))
                                 (:shape-name "GetAdapterVersionResponse"))

(smithy/sdk/shapes:define-input get-document-analysis-request common-lisp:nil
                                ((job-id :target-type job-id :required
                                  common-lisp:t :member-name "JobId")
                                 (max-results :target-type max-results
                                  :member-name "MaxResults")
                                 (next-token :target-type pagination-token
                                  :member-name "NextToken"))
                                (:shape-name "GetDocumentAnalysisRequest"))

(smithy/sdk/shapes:define-output get-document-analysis-response common-lisp:nil
                                 ((document-metadata :target-type
                                   document-metadata :member-name
                                   "DocumentMetadata")
                                  (job-status :target-type job-status
                                   :member-name "JobStatus")
                                  (next-token :target-type pagination-token
                                   :member-name "NextToken")
                                  (blocks :target-type block-list :member-name
                                   "Blocks")
                                  (warnings :target-type warnings :member-name
                                   "Warnings")
                                  (status-message :target-type status-message
                                   :member-name "StatusMessage")
                                  (analyze-document-model-version :target-type
                                   string :member-name
                                   "AnalyzeDocumentModelVersion"))
                                 (:shape-name "GetDocumentAnalysisResponse"))

(smithy/sdk/shapes:define-input get-document-text-detection-request
                                common-lisp:nil
                                ((job-id :target-type job-id :required
                                  common-lisp:t :member-name "JobId")
                                 (max-results :target-type max-results
                                  :member-name "MaxResults")
                                 (next-token :target-type pagination-token
                                  :member-name "NextToken"))
                                (:shape-name "GetDocumentTextDetectionRequest"))

(smithy/sdk/shapes:define-output get-document-text-detection-response
                                 common-lisp:nil
                                 ((document-metadata :target-type
                                   document-metadata :member-name
                                   "DocumentMetadata")
                                  (job-status :target-type job-status
                                   :member-name "JobStatus")
                                  (next-token :target-type pagination-token
                                   :member-name "NextToken")
                                  (blocks :target-type block-list :member-name
                                   "Blocks")
                                  (warnings :target-type warnings :member-name
                                   "Warnings")
                                  (status-message :target-type status-message
                                   :member-name "StatusMessage")
                                  (detect-document-text-model-version
                                   :target-type string :member-name
                                   "DetectDocumentTextModelVersion"))
                                 (:shape-name
                                  "GetDocumentTextDetectionResponse"))

(smithy/sdk/shapes:define-input get-expense-analysis-request common-lisp:nil
                                ((job-id :target-type job-id :required
                                  common-lisp:t :member-name "JobId")
                                 (max-results :target-type max-results
                                  :member-name "MaxResults")
                                 (next-token :target-type pagination-token
                                  :member-name "NextToken"))
                                (:shape-name "GetExpenseAnalysisRequest"))

(smithy/sdk/shapes:define-output get-expense-analysis-response common-lisp:nil
                                 ((document-metadata :target-type
                                   document-metadata :member-name
                                   "DocumentMetadata")
                                  (job-status :target-type job-status
                                   :member-name "JobStatus")
                                  (next-token :target-type pagination-token
                                   :member-name "NextToken")
                                  (expense-documents :target-type
                                   expense-document-list :member-name
                                   "ExpenseDocuments")
                                  (warnings :target-type warnings :member-name
                                   "Warnings")
                                  (status-message :target-type status-message
                                   :member-name "StatusMessage")
                                  (analyze-expense-model-version :target-type
                                   string :member-name
                                   "AnalyzeExpenseModelVersion"))
                                 (:shape-name "GetExpenseAnalysisResponse"))

(smithy/sdk/shapes:define-input get-lending-analysis-request common-lisp:nil
                                ((job-id :target-type job-id :required
                                  common-lisp:t :member-name "JobId")
                                 (max-results :target-type max-results
                                  :member-name "MaxResults")
                                 (next-token :target-type pagination-token
                                  :member-name "NextToken"))
                                (:shape-name "GetLendingAnalysisRequest"))

(smithy/sdk/shapes:define-output get-lending-analysis-response common-lisp:nil
                                 ((document-metadata :target-type
                                   document-metadata :member-name
                                   "DocumentMetadata")
                                  (job-status :target-type job-status
                                   :member-name "JobStatus")
                                  (next-token :target-type pagination-token
                                   :member-name "NextToken")
                                  (results :target-type lending-result-list
                                   :member-name "Results")
                                  (warnings :target-type warnings :member-name
                                   "Warnings")
                                  (status-message :target-type status-message
                                   :member-name "StatusMessage")
                                  (analyze-lending-model-version :target-type
                                   string :member-name
                                   "AnalyzeLendingModelVersion"))
                                 (:shape-name "GetLendingAnalysisResponse"))

(smithy/sdk/shapes:define-input get-lending-analysis-summary-request
                                common-lisp:nil
                                ((job-id :target-type job-id :required
                                  common-lisp:t :member-name "JobId"))
                                (:shape-name
                                 "GetLendingAnalysisSummaryRequest"))

(smithy/sdk/shapes:define-output get-lending-analysis-summary-response
                                 common-lisp:nil
                                 ((document-metadata :target-type
                                   document-metadata :member-name
                                   "DocumentMetadata")
                                  (job-status :target-type job-status
                                   :member-name "JobStatus")
                                  (summary :target-type lending-summary
                                   :member-name "Summary")
                                  (warnings :target-type warnings :member-name
                                   "Warnings")
                                  (status-message :target-type status-message
                                   :member-name "StatusMessage")
                                  (analyze-lending-model-version :target-type
                                   string :member-name
                                   "AnalyzeLendingModelVersion"))
                                 (:shape-name
                                  "GetLendingAnalysisSummaryResponse"))

(smithy/sdk/shapes:define-structure human-loop-activation-output
                                    common-lisp:nil
                                    ((human-loop-arn :target-type
                                      human-loop-arn :member-name
                                      "HumanLoopArn")
                                     (human-loop-activation-reasons
                                      :target-type
                                      human-loop-activation-reasons
                                      :member-name
                                      "HumanLoopActivationReasons")
                                     (human-loop-activation-conditions-evaluation-results
                                      :target-type
                                      synthesized-json-human-loop-activation-conditions-evaluation-results
                                      :member-name
                                      "HumanLoopActivationConditionsEvaluationResults"))
                                    (:shape-name "HumanLoopActivationOutput"))

(smithy/sdk/shapes:define-type human-loop-activation-reason
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list human-loop-activation-reasons :member
                               human-loop-activation-reason)

(smithy/sdk/shapes:define-type human-loop-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure human-loop-config common-lisp:nil
                                    ((human-loop-name :target-type
                                      human-loop-name :required common-lisp:t
                                      :member-name "HumanLoopName")
                                     (flow-definition-arn :target-type
                                      flow-definition-arn :required
                                      common-lisp:t :member-name
                                      "FlowDefinitionArn")
                                     (data-attributes :target-type
                                      human-loop-data-attributes :member-name
                                      "DataAttributes"))
                                    (:shape-name "HumanLoopConfig"))

(smithy/sdk/shapes:define-structure human-loop-data-attributes common-lisp:nil
                                    ((content-classifiers :target-type
                                      content-classifiers :member-name
                                      "ContentClassifiers"))
                                    (:shape-name "HumanLoopDataAttributes"))

(smithy/sdk/shapes:define-type human-loop-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error human-loop-quota-exceeded-exception
                                common-lisp:nil
                                ((resource-type :target-type string
                                  :member-name "ResourceType")
                                 (quota-code :target-type string :member-name
                                  "QuotaCode")
                                 (service-code :target-type string :member-name
                                  "ServiceCode")
                                 (message :target-type string :member-name
                                  "Message")
                                 (code :target-type string :member-name
                                  "Code"))
                                (:shape-name "HumanLoopQuotaExceededException")
                                (:error-code 402))

(smithy/sdk/shapes:define-list id-list :member non-empty-string)

(smithy/sdk/shapes:define-error idempotent-parameter-mismatch-exception
                                common-lisp:nil
                                ((message :target-type string :member-name
                                  "Message")
                                 (code :target-type string :member-name
                                  "Code"))
                                (:shape-name
                                 "IdempotentParameterMismatchException")
                                (:error-code 400))

(smithy/sdk/shapes:define-structure identity-document common-lisp:nil
                                    ((document-index :target-type uinteger
                                      :member-name "DocumentIndex")
                                     (identity-document-fields :target-type
                                      identity-document-field-list :member-name
                                      "IdentityDocumentFields")
                                     (blocks :target-type block-list
                                      :member-name "Blocks"))
                                    (:shape-name "IdentityDocument"))

(smithy/sdk/shapes:define-structure identity-document-field common-lisp:nil
                                    ((type :target-type analyze-iddetections
                                      :member-name "Type")
                                     (value-detection :target-type
                                      analyze-iddetections :member-name
                                      "ValueDetection"))
                                    (:shape-name "IdentityDocumentField"))

(smithy/sdk/shapes:define-list identity-document-field-list :member
                               identity-document-field)

(smithy/sdk/shapes:define-list identity-document-list :member identity-document)

(smithy/sdk/shapes:define-type image-blob smithy/sdk/smithy-types:blob)

(smithy/sdk/shapes:define-error internal-server-error common-lisp:nil
                                ((message :target-type string :member-name
                                  "Message")
                                 (code :target-type string :member-name
                                  "Code"))
                                (:shape-name "InternalServerError")
                                (:error-code 500))

(smithy/sdk/shapes:define-error invalid-job-id-exception common-lisp:nil
                                ((message :target-type string :member-name
                                  "Message")
                                 (code :target-type string :member-name
                                  "Code"))
                                (:shape-name "InvalidJobIdException")
                                (:error-code 400))

(smithy/sdk/shapes:define-error invalid-kmskey-exception common-lisp:nil
                                ((message :target-type string :member-name
                                  "Message")
                                 (code :target-type string :member-name
                                  "Code"))
                                (:shape-name "InvalidKMSKeyException")
                                (:error-code 400))

(smithy/sdk/shapes:define-error invalid-parameter-exception common-lisp:nil
                                ((message :target-type string :member-name
                                  "Message")
                                 (code :target-type string :member-name
                                  "Code"))
                                (:shape-name "InvalidParameterException")
                                (:error-code 400))

(smithy/sdk/shapes:define-error invalid-s3object-exception common-lisp:nil
                                ((message :target-type string :member-name
                                  "Message")
                                 (code :target-type string :member-name
                                  "Code"))
                                (:shape-name "InvalidS3ObjectException")
                                (:error-code 400))

(smithy/sdk/shapes:define-type job-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum job-status
    common-lisp:nil
  (:in-progress "IN_PROGRESS")
  (:succeeded "SUCCEEDED")
  (:failed "FAILED")
  (:partial-success "PARTIAL_SUCCESS"))

(smithy/sdk/shapes:define-type job-tag smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type kmskey-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure lending-detection common-lisp:nil
                                    ((text :target-type string :member-name
                                      "Text")
                                     (selection-status :target-type
                                      selection-status :member-name
                                      "SelectionStatus")
                                     (geometry :target-type geometry
                                      :member-name "Geometry")
                                     (confidence :target-type percent
                                      :member-name "Confidence"))
                                    (:shape-name "LendingDetection"))

(smithy/sdk/shapes:define-list lending-detection-list :member lending-detection)

(smithy/sdk/shapes:define-structure lending-document common-lisp:nil
                                    ((lending-fields :target-type
                                      lending-field-list :member-name
                                      "LendingFields")
                                     (signature-detections :target-type
                                      signature-detection-list :member-name
                                      "SignatureDetections"))
                                    (:shape-name "LendingDocument"))

(smithy/sdk/shapes:define-structure lending-field common-lisp:nil
                                    ((type :target-type string :member-name
                                      "Type")
                                     (key-detection :target-type
                                      lending-detection :member-name
                                      "KeyDetection")
                                     (value-detections :target-type
                                      lending-detection-list :member-name
                                      "ValueDetections"))
                                    (:shape-name "LendingField"))

(smithy/sdk/shapes:define-list lending-field-list :member lending-field)

(smithy/sdk/shapes:define-structure lending-result common-lisp:nil
                                    ((page :target-type uinteger :member-name
                                      "Page")
                                     (page-classification :target-type
                                      page-classification :member-name
                                      "PageClassification")
                                     (extractions :target-type extraction-list
                                      :member-name "Extractions"))
                                    (:shape-name "LendingResult"))

(smithy/sdk/shapes:define-list lending-result-list :member lending-result)

(smithy/sdk/shapes:define-structure lending-summary common-lisp:nil
                                    ((document-groups :target-type
                                      document-group-list :member-name
                                      "DocumentGroups")
                                     (undetected-document-types :target-type
                                      undetected-document-type-list
                                      :member-name "UndetectedDocumentTypes"))
                                    (:shape-name "LendingSummary"))

(smithy/sdk/shapes:define-error limit-exceeded-exception common-lisp:nil
                                ((message :target-type string :member-name
                                  "Message")
                                 (code :target-type string :member-name
                                  "Code"))
                                (:shape-name "LimitExceededException")
                                (:error-code 400))

(smithy/sdk/shapes:define-structure line-item-fields common-lisp:nil
                                    ((line-item-expense-fields :target-type
                                      expense-field-list :member-name
                                      "LineItemExpenseFields"))
                                    (:shape-name "LineItemFields"))

(smithy/sdk/shapes:define-structure line-item-group common-lisp:nil
                                    ((line-item-group-index :target-type
                                      uinteger :member-name
                                      "LineItemGroupIndex")
                                     (line-items :target-type line-item-list
                                      :member-name "LineItems"))
                                    (:shape-name "LineItemGroup"))

(smithy/sdk/shapes:define-list line-item-group-list :member line-item-group)

(smithy/sdk/shapes:define-list line-item-list :member line-item-fields)

(smithy/sdk/shapes:define-input list-adapter-versions-request common-lisp:nil
                                ((adapter-id :target-type adapter-id
                                  :member-name "AdapterId")
                                 (after-creation-time :target-type date-time
                                  :member-name "AfterCreationTime")
                                 (before-creation-time :target-type date-time
                                  :member-name "BeforeCreationTime")
                                 (max-results :target-type max-results
                                  :member-name "MaxResults")
                                 (next-token :target-type pagination-token
                                  :member-name "NextToken"))
                                (:shape-name "ListAdapterVersionsRequest"))

(smithy/sdk/shapes:define-output list-adapter-versions-response common-lisp:nil
                                 ((adapter-versions :target-type
                                   adapter-version-list :member-name
                                   "AdapterVersions")
                                  (next-token :target-type pagination-token
                                   :member-name "NextToken"))
                                 (:shape-name "ListAdapterVersionsResponse"))

(smithy/sdk/shapes:define-input list-adapters-request common-lisp:nil
                                ((after-creation-time :target-type date-time
                                  :member-name "AfterCreationTime")
                                 (before-creation-time :target-type date-time
                                  :member-name "BeforeCreationTime")
                                 (max-results :target-type max-results
                                  :member-name "MaxResults")
                                 (next-token :target-type pagination-token
                                  :member-name "NextToken"))
                                (:shape-name "ListAdaptersRequest"))

(smithy/sdk/shapes:define-output list-adapters-response common-lisp:nil
                                 ((adapters :target-type adapter-list
                                   :member-name "Adapters")
                                  (next-token :target-type pagination-token
                                   :member-name "NextToken"))
                                 (:shape-name "ListAdaptersResponse"))

(smithy/sdk/shapes:define-input list-tags-for-resource-request common-lisp:nil
                                ((resource-arn :target-type
                                  amazon-resource-name :required common-lisp:t
                                  :member-name "ResourceARN"))
                                (:shape-name "ListTagsForResourceRequest"))

(smithy/sdk/shapes:define-output list-tags-for-resource-response
                                 common-lisp:nil
                                 ((tags :target-type tag-map :member-name
                                   "Tags"))
                                 (:shape-name "ListTagsForResourceResponse"))

(smithy/sdk/shapes:define-type max-results smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type non-empty-string smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure normalized-value common-lisp:nil
                                    ((value :target-type string :member-name
                                      "Value")
                                     (value-type :target-type value-type
                                      :member-name "ValueType"))
                                    (:shape-name "NormalizedValue"))

(smithy/sdk/shapes:define-structure notification-channel common-lisp:nil
                                    ((snstopic-arn :target-type snstopic-arn
                                      :required common-lisp:t :member-name
                                      "SNSTopicArn")
                                     (role-arn :target-type role-arn :required
                                      common-lisp:t :member-name "RoleArn"))
                                    (:shape-name "NotificationChannel"))

(smithy/sdk/shapes:define-structure output-config common-lisp:nil
                                    ((s3bucket :target-type s3bucket :required
                                      common-lisp:t :member-name "S3Bucket")
                                     (s3prefix :target-type s3object-name
                                      :member-name "S3Prefix"))
                                    (:shape-name "OutputConfig"))

(smithy/sdk/shapes:define-structure page-classification common-lisp:nil
                                    ((page-type :target-type prediction-list
                                      :required common-lisp:t :member-name
                                      "PageType")
                                     (page-number :target-type prediction-list
                                      :required common-lisp:t :member-name
                                      "PageNumber"))
                                    (:shape-name "PageClassification"))

(smithy/sdk/shapes:define-list page-list :member uinteger)

(smithy/sdk/shapes:define-list pages :member uinteger)

(smithy/sdk/shapes:define-type pagination-token smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type percent smithy/sdk/smithy-types:float)

(smithy/sdk/shapes:define-structure point common-lisp:nil
                                    ((x :target-type float :member-name "X")
                                     (y :target-type float :member-name "Y"))
                                    (:shape-name "Point"))

(smithy/sdk/shapes:define-list polygon :member point)

(smithy/sdk/shapes:define-structure prediction common-lisp:nil
                                    ((value :target-type non-empty-string
                                      :member-name "Value")
                                     (confidence :target-type percent
                                      :member-name "Confidence"))
                                    (:shape-name "Prediction"))

(smithy/sdk/shapes:define-list prediction-list :member prediction)

(smithy/sdk/shapes:define-error provisioned-throughput-exceeded-exception
                                common-lisp:nil
                                ((message :target-type string :member-name
                                  "Message")
                                 (code :target-type string :member-name
                                  "Code"))
                                (:shape-name
                                 "ProvisionedThroughputExceededException")
                                (:error-code 400))

(smithy/sdk/shapes:define-list queries :member query)

(smithy/sdk/shapes:define-structure queries-config common-lisp:nil
                                    ((queries :target-type queries :required
                                      common-lisp:t :member-name "Queries"))
                                    (:shape-name "QueriesConfig"))

(smithy/sdk/shapes:define-structure query common-lisp:nil
                                    ((text :target-type query-input :required
                                      common-lisp:t :member-name "Text")
                                     (alias :target-type query-input
                                      :member-name "Alias")
                                     (pages :target-type query-pages
                                      :member-name "Pages"))
                                    (:shape-name "Query"))

(smithy/sdk/shapes:define-type query-input smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type query-page smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list query-pages :member query-page)

(smithy/sdk/shapes:define-structure relationship common-lisp:nil
                                    ((type :target-type relationship-type
                                      :member-name "Type")
                                     (ids :target-type id-list :member-name
                                      "Ids"))
                                    (:shape-name "Relationship"))

(smithy/sdk/shapes:define-list relationship-list :member relationship)

(smithy/sdk/shapes:define-enum relationship-type
    common-lisp:nil
  (:value "VALUE")
  (:child "CHILD")
  (:complex-features "COMPLEX_FEATURES")
  (:merged-cell "MERGED_CELL")
  (:title "TITLE")
  (:answer "ANSWER")
  (:table "TABLE")
  (:table-title "TABLE_TITLE")
  (:table-footer "TABLE_FOOTER"))

(smithy/sdk/shapes:define-error resource-not-found-exception common-lisp:nil
                                ((message :target-type string :member-name
                                  "Message")
                                 (code :target-type string :member-name
                                  "Code"))
                                (:shape-name "ResourceNotFoundException")
                                (:error-code 400))

(smithy/sdk/shapes:define-type role-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type s3bucket smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure s3object common-lisp:nil
                                    ((bucket :target-type s3bucket :member-name
                                      "Bucket")
                                     (name :target-type s3object-name
                                      :member-name "Name")
                                     (version :target-type s3object-version
                                      :member-name "Version"))
                                    (:shape-name "S3Object"))

(smithy/sdk/shapes:define-type s3object-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type s3object-version smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type snstopic-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum selection-status
    common-lisp:nil
  (:selected "SELECTED")
  (:not-selected "NOT_SELECTED"))

(smithy/sdk/shapes:define-error service-quota-exceeded-exception
                                common-lisp:nil
                                ((message :target-type string :member-name
                                  "Message")
                                 (code :target-type string :member-name
                                  "Code"))
                                (:shape-name "ServiceQuotaExceededException")
                                (:error-code 400))

(smithy/sdk/shapes:define-structure signature-detection common-lisp:nil
                                    ((confidence :target-type percent
                                      :member-name "Confidence")
                                     (geometry :target-type geometry
                                      :member-name "Geometry"))
                                    (:shape-name "SignatureDetection"))

(smithy/sdk/shapes:define-list signature-detection-list :member
                               signature-detection)

(smithy/sdk/shapes:define-structure split-document common-lisp:nil
                                    ((index :target-type uinteger :member-name
                                      "Index")
                                     (pages :target-type page-list :member-name
                                      "Pages"))
                                    (:shape-name "SplitDocument"))

(smithy/sdk/shapes:define-list split-document-list :member split-document)

(smithy/sdk/shapes:define-input start-document-analysis-request common-lisp:nil
                                ((document-location :target-type
                                  document-location :required common-lisp:t
                                  :member-name "DocumentLocation")
                                 (feature-types :target-type feature-types
                                  :required common-lisp:t :member-name
                                  "FeatureTypes")
                                 (client-request-token :target-type
                                  client-request-token :member-name
                                  "ClientRequestToken")
                                 (job-tag :target-type job-tag :member-name
                                  "JobTag")
                                 (notification-channel :target-type
                                  notification-channel :member-name
                                  "NotificationChannel")
                                 (output-config :target-type output-config
                                  :member-name "OutputConfig")
                                 (kmskey-id :target-type kmskey-id :member-name
                                  "KMSKeyId")
                                 (queries-config :target-type queries-config
                                  :member-name "QueriesConfig")
                                 (adapters-config :target-type adapters-config
                                  :member-name "AdaptersConfig"))
                                (:shape-name "StartDocumentAnalysisRequest"))

(smithy/sdk/shapes:define-output start-document-analysis-response
                                 common-lisp:nil
                                 ((job-id :target-type job-id :member-name
                                   "JobId"))
                                 (:shape-name "StartDocumentAnalysisResponse"))

(smithy/sdk/shapes:define-input start-document-text-detection-request
                                common-lisp:nil
                                ((document-location :target-type
                                  document-location :required common-lisp:t
                                  :member-name "DocumentLocation")
                                 (client-request-token :target-type
                                  client-request-token :member-name
                                  "ClientRequestToken")
                                 (job-tag :target-type job-tag :member-name
                                  "JobTag")
                                 (notification-channel :target-type
                                  notification-channel :member-name
                                  "NotificationChannel")
                                 (output-config :target-type output-config
                                  :member-name "OutputConfig")
                                 (kmskey-id :target-type kmskey-id :member-name
                                  "KMSKeyId"))
                                (:shape-name
                                 "StartDocumentTextDetectionRequest"))

(smithy/sdk/shapes:define-output start-document-text-detection-response
                                 common-lisp:nil
                                 ((job-id :target-type job-id :member-name
                                   "JobId"))
                                 (:shape-name
                                  "StartDocumentTextDetectionResponse"))

(smithy/sdk/shapes:define-input start-expense-analysis-request common-lisp:nil
                                ((document-location :target-type
                                  document-location :required common-lisp:t
                                  :member-name "DocumentLocation")
                                 (client-request-token :target-type
                                  client-request-token :member-name
                                  "ClientRequestToken")
                                 (job-tag :target-type job-tag :member-name
                                  "JobTag")
                                 (notification-channel :target-type
                                  notification-channel :member-name
                                  "NotificationChannel")
                                 (output-config :target-type output-config
                                  :member-name "OutputConfig")
                                 (kmskey-id :target-type kmskey-id :member-name
                                  "KMSKeyId"))
                                (:shape-name "StartExpenseAnalysisRequest"))

(smithy/sdk/shapes:define-output start-expense-analysis-response
                                 common-lisp:nil
                                 ((job-id :target-type job-id :member-name
                                   "JobId"))
                                 (:shape-name "StartExpenseAnalysisResponse"))

(smithy/sdk/shapes:define-input start-lending-analysis-request common-lisp:nil
                                ((document-location :target-type
                                  document-location :required common-lisp:t
                                  :member-name "DocumentLocation")
                                 (client-request-token :target-type
                                  client-request-token :member-name
                                  "ClientRequestToken")
                                 (job-tag :target-type job-tag :member-name
                                  "JobTag")
                                 (notification-channel :target-type
                                  notification-channel :member-name
                                  "NotificationChannel")
                                 (output-config :target-type output-config
                                  :member-name "OutputConfig")
                                 (kmskey-id :target-type kmskey-id :member-name
                                  "KMSKeyId"))
                                (:shape-name "StartLendingAnalysisRequest"))

(smithy/sdk/shapes:define-output start-lending-analysis-response
                                 common-lisp:nil
                                 ((job-id :target-type job-id :member-name
                                   "JobId"))
                                 (:shape-name "StartLendingAnalysisResponse"))

(smithy/sdk/shapes:define-type status-message smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type string smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list string-list :member string)

(smithy/sdk/shapes:define-type
 synthesized-json-human-loop-activation-conditions-evaluation-results
 smithy/sdk/smithy-types:string :media-type "application/json")

(smithy/sdk/shapes:define-type tag-key smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list tag-key-list :member tag-key)

(smithy/sdk/shapes:define-map tag-map :key tag-key :value tag-value)

(smithy/sdk/shapes:define-input tag-resource-request common-lisp:nil
                                ((resource-arn :target-type
                                  amazon-resource-name :required common-lisp:t
                                  :member-name "ResourceARN")
                                 (tags :target-type tag-map :required
                                  common-lisp:t :member-name "Tags"))
                                (:shape-name "TagResourceRequest"))

(smithy/sdk/shapes:define-output tag-resource-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "TagResourceResponse"))

(smithy/sdk/shapes:define-type tag-value smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum text-type
    common-lisp:nil
  (:handwriting "HANDWRITING")
  (:printed "PRINTED"))

(smithy/sdk/shapes:define-error throttling-exception common-lisp:nil
                                ((message :target-type string :member-name
                                  "Message")
                                 (code :target-type string :member-name
                                  "Code"))
                                (:shape-name "ThrottlingException")
                                (:error-code 500))

(smithy/sdk/shapes:define-type uinteger smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-list undetected-document-type-list :member
                               non-empty-string)

(smithy/sdk/shapes:define-structure undetected-signature common-lisp:nil
                                    ((page :target-type uinteger :member-name
                                      "Page"))
                                    (:shape-name "UndetectedSignature"))

(smithy/sdk/shapes:define-list undetected-signature-list :member
                               undetected-signature)

(smithy/sdk/shapes:define-error unsupported-document-exception common-lisp:nil
                                ((message :target-type string :member-name
                                  "Message")
                                 (code :target-type string :member-name
                                  "Code"))
                                (:shape-name "UnsupportedDocumentException")
                                (:error-code 400))

(smithy/sdk/shapes:define-input untag-resource-request common-lisp:nil
                                ((resource-arn :target-type
                                  amazon-resource-name :required common-lisp:t
                                  :member-name "ResourceARN")
                                 (tag-keys :target-type tag-key-list :required
                                  common-lisp:t :member-name "TagKeys"))
                                (:shape-name "UntagResourceRequest"))

(smithy/sdk/shapes:define-output untag-resource-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "UntagResourceResponse"))

(smithy/sdk/shapes:define-input update-adapter-request common-lisp:nil
                                ((adapter-id :target-type adapter-id :required
                                  common-lisp:t :member-name "AdapterId")
                                 (description :target-type adapter-description
                                  :member-name "Description")
                                 (adapter-name :target-type adapter-name
                                  :member-name "AdapterName")
                                 (auto-update :target-type auto-update
                                  :member-name "AutoUpdate"))
                                (:shape-name "UpdateAdapterRequest"))

(smithy/sdk/shapes:define-output update-adapter-response common-lisp:nil
                                 ((adapter-id :target-type adapter-id
                                   :member-name "AdapterId")
                                  (adapter-name :target-type adapter-name
                                   :member-name "AdapterName")
                                  (creation-time :target-type date-time
                                   :member-name "CreationTime")
                                  (description :target-type adapter-description
                                   :member-name "Description")
                                  (feature-types :target-type feature-types
                                   :member-name "FeatureTypes")
                                  (auto-update :target-type auto-update
                                   :member-name "AutoUpdate"))
                                 (:shape-name "UpdateAdapterResponse"))

(smithy/sdk/shapes:define-error validation-exception common-lisp:nil
                                ((message :target-type string :member-name
                                  "Message")
                                 (code :target-type string :member-name
                                  "Code"))
                                (:shape-name "ValidationException")
                                (:error-code 400))

(smithy/sdk/shapes:define-enum value-type
    common-lisp:nil
  (:date "DATE"))

(smithy/sdk/shapes:define-structure warning common-lisp:nil
                                    ((error-code :target-type error-code
                                      :member-name "ErrorCode")
                                     (pages :target-type pages :member-name
                                      "Pages"))
                                    (:shape-name "Warning"))

(smithy/sdk/shapes:define-list warnings :member warning)

(smithy/sdk/operation:define-operation analyze-document :shape-name
                                       "AnalyzeDocument" :input
                                       analyze-document-request :output
                                       analyze-document-response :errors
                                       (access-denied-exception
                                        bad-document-exception
                                        document-too-large-exception
                                        human-loop-quota-exceeded-exception
                                        internal-server-error
                                        invalid-parameter-exception
                                        invalid-s3object-exception
                                        provisioned-throughput-exceeded-exception
                                        throttling-exception
                                        unsupported-document-exception))

(smithy/sdk/operation:define-operation analyze-expense :shape-name
                                       "AnalyzeExpense" :input
                                       analyze-expense-request :output
                                       analyze-expense-response :errors
                                       (access-denied-exception
                                        bad-document-exception
                                        document-too-large-exception
                                        internal-server-error
                                        invalid-parameter-exception
                                        invalid-s3object-exception
                                        provisioned-throughput-exceeded-exception
                                        throttling-exception
                                        unsupported-document-exception))

(smithy/sdk/operation:define-operation analyze-id :shape-name "AnalyzeID"
                                       :input analyze-idrequest :output
                                       analyze-idresponse :errors
                                       (access-denied-exception
                                        bad-document-exception
                                        document-too-large-exception
                                        internal-server-error
                                        invalid-parameter-exception
                                        invalid-s3object-exception
                                        provisioned-throughput-exceeded-exception
                                        throttling-exception
                                        unsupported-document-exception))

(smithy/sdk/operation:define-operation create-adapter :shape-name
                                       "CreateAdapter" :input
                                       create-adapter-request :output
                                       create-adapter-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        idempotent-parameter-mismatch-exception
                                        internal-server-error
                                        invalid-parameter-exception
                                        limit-exceeded-exception
                                        provisioned-throughput-exceeded-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation create-adapter-version :shape-name
                                       "CreateAdapterVersion" :input
                                       create-adapter-version-request :output
                                       create-adapter-version-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        idempotent-parameter-mismatch-exception
                                        internal-server-error
                                        invalid-kmskey-exception
                                        invalid-parameter-exception
                                        invalid-s3object-exception
                                        limit-exceeded-exception
                                        provisioned-throughput-exceeded-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation delete-adapter :shape-name
                                       "DeleteAdapter" :input
                                       delete-adapter-request :output
                                       delete-adapter-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-error
                                        invalid-parameter-exception
                                        provisioned-throughput-exceeded-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation delete-adapter-version :shape-name
                                       "DeleteAdapterVersion" :input
                                       delete-adapter-version-request :output
                                       delete-adapter-version-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-error
                                        invalid-parameter-exception
                                        provisioned-throughput-exceeded-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation detect-document-text :shape-name
                                       "DetectDocumentText" :input
                                       detect-document-text-request :output
                                       detect-document-text-response :errors
                                       (access-denied-exception
                                        bad-document-exception
                                        document-too-large-exception
                                        internal-server-error
                                        invalid-parameter-exception
                                        invalid-s3object-exception
                                        provisioned-throughput-exceeded-exception
                                        throttling-exception
                                        unsupported-document-exception))

(smithy/sdk/operation:define-operation get-adapter :shape-name "GetAdapter"
                                       :input get-adapter-request :output
                                       get-adapter-response :errors
                                       (access-denied-exception
                                        internal-server-error
                                        invalid-parameter-exception
                                        provisioned-throughput-exceeded-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation get-adapter-version :shape-name
                                       "GetAdapterVersion" :input
                                       get-adapter-version-request :output
                                       get-adapter-version-response :errors
                                       (access-denied-exception
                                        internal-server-error
                                        invalid-parameter-exception
                                        provisioned-throughput-exceeded-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation get-document-analysis :shape-name
                                       "GetDocumentAnalysis" :input
                                       get-document-analysis-request :output
                                       get-document-analysis-response :errors
                                       (access-denied-exception
                                        internal-server-error
                                        invalid-job-id-exception
                                        invalid-kmskey-exception
                                        invalid-parameter-exception
                                        invalid-s3object-exception
                                        provisioned-throughput-exceeded-exception
                                        throttling-exception))

(smithy/sdk/operation:define-operation get-document-text-detection :shape-name
                                       "GetDocumentTextDetection" :input
                                       get-document-text-detection-request
                                       :output
                                       get-document-text-detection-response
                                       :errors
                                       (access-denied-exception
                                        internal-server-error
                                        invalid-job-id-exception
                                        invalid-kmskey-exception
                                        invalid-parameter-exception
                                        invalid-s3object-exception
                                        provisioned-throughput-exceeded-exception
                                        throttling-exception))

(smithy/sdk/operation:define-operation get-expense-analysis :shape-name
                                       "GetExpenseAnalysis" :input
                                       get-expense-analysis-request :output
                                       get-expense-analysis-response :errors
                                       (access-denied-exception
                                        internal-server-error
                                        invalid-job-id-exception
                                        invalid-kmskey-exception
                                        invalid-parameter-exception
                                        invalid-s3object-exception
                                        provisioned-throughput-exceeded-exception
                                        throttling-exception))

(smithy/sdk/operation:define-operation get-lending-analysis :shape-name
                                       "GetLendingAnalysis" :input
                                       get-lending-analysis-request :output
                                       get-lending-analysis-response :errors
                                       (access-denied-exception
                                        internal-server-error
                                        invalid-job-id-exception
                                        invalid-kmskey-exception
                                        invalid-parameter-exception
                                        invalid-s3object-exception
                                        provisioned-throughput-exceeded-exception
                                        throttling-exception))

(smithy/sdk/operation:define-operation get-lending-analysis-summary :shape-name
                                       "GetLendingAnalysisSummary" :input
                                       get-lending-analysis-summary-request
                                       :output
                                       get-lending-analysis-summary-response
                                       :errors
                                       (access-denied-exception
                                        internal-server-error
                                        invalid-job-id-exception
                                        invalid-kmskey-exception
                                        invalid-parameter-exception
                                        invalid-s3object-exception
                                        provisioned-throughput-exceeded-exception
                                        throttling-exception))

(smithy/sdk/operation:define-operation list-adapter-versions :shape-name
                                       "ListAdapterVersions" :input
                                       list-adapter-versions-request :output
                                       list-adapter-versions-response :errors
                                       (access-denied-exception
                                        internal-server-error
                                        invalid-parameter-exception
                                        provisioned-throughput-exceeded-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation list-adapters :shape-name "ListAdapters"
                                       :input list-adapters-request :output
                                       list-adapters-response :errors
                                       (access-denied-exception
                                        internal-server-error
                                        invalid-parameter-exception
                                        provisioned-throughput-exceeded-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation list-tags-for-resource :shape-name
                                       "ListTagsForResource" :input
                                       list-tags-for-resource-request :output
                                       list-tags-for-resource-response :errors
                                       (access-denied-exception
                                        internal-server-error
                                        invalid-parameter-exception
                                        provisioned-throughput-exceeded-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation start-document-analysis :shape-name
                                       "StartDocumentAnalysis" :input
                                       start-document-analysis-request :output
                                       start-document-analysis-response :errors
                                       (access-denied-exception
                                        bad-document-exception
                                        document-too-large-exception
                                        idempotent-parameter-mismatch-exception
                                        internal-server-error
                                        invalid-kmskey-exception
                                        invalid-parameter-exception
                                        invalid-s3object-exception
                                        limit-exceeded-exception
                                        provisioned-throughput-exceeded-exception
                                        throttling-exception
                                        unsupported-document-exception))

(smithy/sdk/operation:define-operation start-document-text-detection
                                       :shape-name "StartDocumentTextDetection"
                                       :input
                                       start-document-text-detection-request
                                       :output
                                       start-document-text-detection-response
                                       :errors
                                       (access-denied-exception
                                        bad-document-exception
                                        document-too-large-exception
                                        idempotent-parameter-mismatch-exception
                                        internal-server-error
                                        invalid-kmskey-exception
                                        invalid-parameter-exception
                                        invalid-s3object-exception
                                        limit-exceeded-exception
                                        provisioned-throughput-exceeded-exception
                                        throttling-exception
                                        unsupported-document-exception))

(smithy/sdk/operation:define-operation start-expense-analysis :shape-name
                                       "StartExpenseAnalysis" :input
                                       start-expense-analysis-request :output
                                       start-expense-analysis-response :errors
                                       (access-denied-exception
                                        bad-document-exception
                                        document-too-large-exception
                                        idempotent-parameter-mismatch-exception
                                        internal-server-error
                                        invalid-kmskey-exception
                                        invalid-parameter-exception
                                        invalid-s3object-exception
                                        limit-exceeded-exception
                                        provisioned-throughput-exceeded-exception
                                        throttling-exception
                                        unsupported-document-exception))

(smithy/sdk/operation:define-operation start-lending-analysis :shape-name
                                       "StartLendingAnalysis" :input
                                       start-lending-analysis-request :output
                                       start-lending-analysis-response :errors
                                       (access-denied-exception
                                        bad-document-exception
                                        document-too-large-exception
                                        idempotent-parameter-mismatch-exception
                                        internal-server-error
                                        invalid-kmskey-exception
                                        invalid-parameter-exception
                                        invalid-s3object-exception
                                        limit-exceeded-exception
                                        provisioned-throughput-exceeded-exception
                                        throttling-exception
                                        unsupported-document-exception))

(smithy/sdk/operation:define-operation tag-resource :shape-name "TagResource"
                                       :input tag-resource-request :output
                                       tag-resource-response :errors
                                       (access-denied-exception
                                        internal-server-error
                                        invalid-parameter-exception
                                        provisioned-throughput-exceeded-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation untag-resource :shape-name
                                       "UntagResource" :input
                                       untag-resource-request :output
                                       untag-resource-response :errors
                                       (access-denied-exception
                                        internal-server-error
                                        invalid-parameter-exception
                                        provisioned-throughput-exceeded-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation update-adapter :shape-name
                                       "UpdateAdapter" :input
                                       update-adapter-request :output
                                       update-adapter-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-error
                                        invalid-parameter-exception
                                        provisioned-throughput-exceeded-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception))
