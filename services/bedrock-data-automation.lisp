(uiop/package:define-package #:pira/bedrock-data-automation (:use)
                             (:export
                              #:amazon-bedrock-keystone-build-time-service
                              #:audio-extraction-category
                              #:audio-extraction-category-type
                              #:audio-extraction-category-types
                              #:audio-override-configuration
                              #:audio-standard-extraction
                              #:audio-standard-generative-field
                              #:audio-standard-generative-field-type
                              #:audio-standard-generative-field-types
                              #:audio-standard-output-configuration #:blueprint
                              #:blueprint-arn #:blueprint-filter
                              #:blueprint-item #:blueprint-items
                              #:blueprint-name #:blueprint-resource
                              #:blueprint-schema #:blueprint-stage
                              #:blueprint-stage-filter #:blueprint-summary
                              #:blueprint-version #:blueprints #:client-token
                              #:create-blueprint #:create-blueprint-version
                              #:create-data-automation-project
                              #:custom-output-configuration
                              #:data-automation-project
                              #:data-automation-project-arn
                              #:data-automation-project-description
                              #:data-automation-project-filter
                              #:data-automation-project-name
                              #:data-automation-project-resource
                              #:data-automation-project-stage
                              #:data-automation-project-stage-filter
                              #:data-automation-project-status
                              #:data-automation-project-summaries
                              #:data-automation-project-summary
                              #:date-timestamp #:delete-blueprint
                              #:delete-data-automation-project
                              #:desired-modality #:document-bounding-box
                              #:document-extraction-granularity
                              #:document-extraction-granularity-type
                              #:document-extraction-granularity-types
                              #:document-output-additional-file-format
                              #:document-output-format
                              #:document-output-text-format
                              #:document-output-text-format-type
                              #:document-output-text-format-types
                              #:document-override-configuration
                              #:document-standard-extraction
                              #:document-standard-generative-field
                              #:document-standard-output-configuration
                              #:encryption-configuration
                              #:encryption-context-key
                              #:encryption-context-value #:get-blueprint
                              #:get-data-automation-project
                              #:image-bounding-box #:image-extraction-category
                              #:image-extraction-category-type
                              #:image-extraction-category-types
                              #:image-override-configuration
                              #:image-standard-extraction
                              #:image-standard-generative-field
                              #:image-standard-generative-field-type
                              #:image-standard-generative-field-types
                              #:image-standard-output-configuration
                              #:kms-encryption-context #:kms-key-id
                              #:list-blueprints #:list-data-automation-projects
                              #:list-tags-for-resource #:max-results
                              #:modality-processing-configuration
                              #:modality-routing-configuration #:next-token
                              #:non-blank-string #:override-configuration
                              #:resource-owner #:splitter-configuration
                              #:standard-output-configuration #:state #:tag
                              #:tag-key #:tag-key-list #:tag-list
                              #:tag-resource #:tag-value
                              #:taggable-resource-arn #:type #:untag-resource
                              #:update-blueprint
                              #:update-data-automation-project
                              #:validation-exception-field
                              #:validation-exception-field-list
                              #:video-bounding-box #:video-extraction-category
                              #:video-extraction-category-type
                              #:video-extraction-category-types
                              #:video-override-configuration
                              #:video-standard-extraction
                              #:video-standard-generative-field
                              #:video-standard-generative-field-type
                              #:video-standard-generative-field-types
                              #:video-standard-output-configuration))
(common-lisp:in-package #:pira/bedrock-data-automation)

(smithy/sdk/service:define-service amazon-bedrock-keystone-build-time-service
                                   :shape-name
                                   "AmazonBedrockKeystoneBuildTimeService"
                                   :version "2023-07-26" :title
                                   "Data Automation for Amazon Bedrock"
                                   :operations
                                   '(create-blueprint-version
                                     list-tags-for-resource tag-resource
                                     untag-resource)
                                   :traits
                                   '(("aws.api#service"
                                      ("sdkId" . "Bedrock Data Automation")
                                      ("arnNamespace" . "bedrock")
                                      ("endpointPrefix"
                                       . "bedrock-data-automation")
                                      ("cloudTrailEventSource"
                                       . "bedrock.amazonaws.com"))
                                     ("aws.auth#sigv4" ("name" . "bedrock"))
                                     ("aws.protocols#restJson1")))

(smithy/sdk/shapes:define-error access-denied-exception common-lisp:nil
                                ((message :target-type non-blank-string
                                  :member-name "message"))
                                (:shape-name "AccessDeniedException")
                                (:error-code 403))

(smithy/sdk/shapes:define-structure audio-extraction-category common-lisp:nil
                                    ((state :target-type state :required
                                      common-lisp:t :member-name "state")
                                     (types :target-type
                                      audio-extraction-category-types
                                      :member-name "types"))
                                    (:shape-name "AudioExtractionCategory"))

(smithy/sdk/shapes:define-enum audio-extraction-category-type
    common-lisp:nil
  (:audio-content-moderation "AUDIO_CONTENT_MODERATION")
  (:transcript "TRANSCRIPT")
  (:topic-content-moderation "TOPIC_CONTENT_MODERATION"))

(smithy/sdk/shapes:define-list audio-extraction-category-types :member
                               audio-extraction-category-type)

(smithy/sdk/shapes:define-structure audio-override-configuration
                                    common-lisp:nil
                                    ((modality-processing :target-type
                                      modality-processing-configuration
                                      :member-name "modalityProcessing"))
                                    (:shape-name "AudioOverrideConfiguration"))

(smithy/sdk/shapes:define-structure audio-standard-extraction common-lisp:nil
                                    ((category :target-type
                                      audio-extraction-category :required
                                      common-lisp:t :member-name "category"))
                                    (:shape-name "AudioStandardExtraction"))

(smithy/sdk/shapes:define-structure audio-standard-generative-field
                                    common-lisp:nil
                                    ((state :target-type state :required
                                      common-lisp:t :member-name "state")
                                     (types :target-type
                                      audio-standard-generative-field-types
                                      :member-name "types"))
                                    (:shape-name
                                     "AudioStandardGenerativeField"))

(smithy/sdk/shapes:define-enum audio-standard-generative-field-type
    common-lisp:nil
  (:audio-summary "AUDIO_SUMMARY")
  (:iab "IAB")
  (:topic-summary "TOPIC_SUMMARY"))

(smithy/sdk/shapes:define-list audio-standard-generative-field-types :member
                               audio-standard-generative-field-type)

(smithy/sdk/shapes:define-structure audio-standard-output-configuration
                                    common-lisp:nil
                                    ((extraction :target-type
                                      audio-standard-extraction :member-name
                                      "extraction")
                                     (generative-field :target-type
                                      audio-standard-generative-field
                                      :member-name "generativeField"))
                                    (:shape-name
                                     "AudioStandardOutputConfiguration"))

(smithy/sdk/shapes:define-structure blueprint common-lisp:nil
                                    ((blueprint-arn :target-type blueprint-arn
                                      :required common-lisp:t :member-name
                                      "blueprintArn")
                                     (schema :target-type blueprint-schema
                                      :required common-lisp:t :member-name
                                      "schema")
                                     (type :target-type type :required
                                      common-lisp:t :member-name "type")
                                     (creation-time :target-type date-timestamp
                                      :required common-lisp:t :member-name
                                      "creationTime")
                                     (last-modified-time :target-type
                                      date-timestamp :required common-lisp:t
                                      :member-name "lastModifiedTime")
                                     (blueprint-name :target-type
                                      blueprint-name :required common-lisp:t
                                      :member-name "blueprintName")
                                     (blueprint-version :target-type
                                      blueprint-version :member-name
                                      "blueprintVersion")
                                     (blueprint-stage :target-type
                                      blueprint-stage :member-name
                                      "blueprintStage")
                                     (kms-key-id :target-type kms-key-id
                                      :member-name "kmsKeyId")
                                     (kms-encryption-context :target-type
                                      kms-encryption-context :member-name
                                      "kmsEncryptionContext"))
                                    (:shape-name "Blueprint"))

(smithy/sdk/shapes:define-type blueprint-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure blueprint-filter common-lisp:nil
                                    ((blueprint-arn :target-type blueprint-arn
                                      :required common-lisp:t :member-name
                                      "blueprintArn")
                                     (blueprint-version :target-type
                                      blueprint-version :member-name
                                      "blueprintVersion")
                                     (blueprint-stage :target-type
                                      blueprint-stage :member-name
                                      "blueprintStage"))
                                    (:shape-name "BlueprintFilter"))

(smithy/sdk/shapes:define-structure blueprint-item common-lisp:nil
                                    ((blueprint-arn :target-type blueprint-arn
                                      :required common-lisp:t :member-name
                                      "blueprintArn")
                                     (blueprint-version :target-type
                                      blueprint-version :member-name
                                      "blueprintVersion")
                                     (blueprint-stage :target-type
                                      blueprint-stage :member-name
                                      "blueprintStage"))
                                    (:shape-name "BlueprintItem"))

(smithy/sdk/shapes:define-list blueprint-items :member blueprint-item)

(smithy/sdk/shapes:define-type blueprint-name smithy/sdk/smithy-types:string)

common-lisp:nil

(smithy/sdk/shapes:define-type blueprint-schema smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum blueprint-stage
    common-lisp:nil
  (:development "DEVELOPMENT")
  (:live "LIVE"))

(smithy/sdk/shapes:define-enum blueprint-stage-filter
    common-lisp:nil
  (:development "DEVELOPMENT")
  (:live "LIVE")
  (:all "ALL"))

(smithy/sdk/shapes:define-structure blueprint-summary common-lisp:nil
                                    ((blueprint-arn :target-type blueprint-arn
                                      :required common-lisp:t :member-name
                                      "blueprintArn")
                                     (blueprint-version :target-type
                                      blueprint-version :member-name
                                      "blueprintVersion")
                                     (blueprint-stage :target-type
                                      blueprint-stage :member-name
                                      "blueprintStage")
                                     (blueprint-name :target-type
                                      blueprint-name :member-name
                                      "blueprintName")
                                     (creation-time :target-type date-timestamp
                                      :required common-lisp:t :member-name
                                      "creationTime")
                                     (last-modified-time :target-type
                                      date-timestamp :member-name
                                      "lastModifiedTime"))
                                    (:shape-name "BlueprintSummary"))

(smithy/sdk/shapes:define-type blueprint-version smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list blueprints :member blueprint-summary)

(smithy/sdk/shapes:define-type client-token smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error conflict-exception common-lisp:nil
                                ((message :target-type non-blank-string
                                  :member-name "message"))
                                (:shape-name "ConflictException")
                                (:error-code 409))

(smithy/sdk/shapes:define-input create-blueprint-request common-lisp:nil
                                ((blueprint-name :target-type blueprint-name
                                  :required common-lisp:t :member-name
                                  "blueprintName")
                                 (type :target-type type :required
                                  common-lisp:t :member-name "type")
                                 (blueprint-stage :target-type blueprint-stage
                                  :member-name "blueprintStage")
                                 (schema :target-type blueprint-schema
                                  :required common-lisp:t :member-name
                                  "schema")
                                 (client-token :target-type client-token
                                  :member-name "clientToken")
                                 (encryption-configuration :target-type
                                  encryption-configuration :member-name
                                  "encryptionConfiguration")
                                 (tags :target-type tag-list :member-name
                                  "tags"))
                                (:shape-name "CreateBlueprintRequest"))

(smithy/sdk/shapes:define-output create-blueprint-response common-lisp:nil
                                 ((blueprint :target-type blueprint :required
                                   common-lisp:t :member-name "blueprint"))
                                 (:shape-name "CreateBlueprintResponse"))

(smithy/sdk/shapes:define-input create-blueprint-version-request
                                common-lisp:nil
                                ((blueprint-arn :target-type blueprint-arn
                                  :required common-lisp:t :member-name
                                  "blueprintArn" :http-label common-lisp:t)
                                 (client-token :target-type client-token
                                  :member-name "clientToken"))
                                (:shape-name "CreateBlueprintVersionRequest"))

(smithy/sdk/shapes:define-output create-blueprint-version-response
                                 common-lisp:nil
                                 ((blueprint :target-type blueprint :required
                                   common-lisp:t :member-name "blueprint"))
                                 (:shape-name "CreateBlueprintVersionResponse"))

(smithy/sdk/shapes:define-input create-data-automation-project-request
                                common-lisp:nil
                                ((project-name :target-type
                                  data-automation-project-name :required
                                  common-lisp:t :member-name "projectName")
                                 (project-description :target-type
                                  data-automation-project-description
                                  :member-name "projectDescription")
                                 (project-stage :target-type
                                  data-automation-project-stage :member-name
                                  "projectStage")
                                 (standard-output-configuration :target-type
                                  standard-output-configuration :required
                                  common-lisp:t :member-name
                                  "standardOutputConfiguration")
                                 (custom-output-configuration :target-type
                                  custom-output-configuration :member-name
                                  "customOutputConfiguration")
                                 (override-configuration :target-type
                                  override-configuration :member-name
                                  "overrideConfiguration")
                                 (client-token :target-type client-token
                                  :member-name "clientToken")
                                 (encryption-configuration :target-type
                                  encryption-configuration :member-name
                                  "encryptionConfiguration")
                                 (tags :target-type tag-list :member-name
                                  "tags"))
                                (:shape-name
                                 "CreateDataAutomationProjectRequest"))

(smithy/sdk/shapes:define-output create-data-automation-project-response
                                 common-lisp:nil
                                 ((project-arn :target-type
                                   data-automation-project-arn :required
                                   common-lisp:t :member-name "projectArn")
                                  (project-stage :target-type
                                   data-automation-project-stage :member-name
                                   "projectStage")
                                  (status :target-type
                                   data-automation-project-status :member-name
                                   "status"))
                                 (:shape-name
                                  "CreateDataAutomationProjectResponse"))

(smithy/sdk/shapes:define-structure custom-output-configuration common-lisp:nil
                                    ((blueprints :target-type blueprint-items
                                      :member-name "blueprints"))
                                    (:shape-name "CustomOutputConfiguration"))

(smithy/sdk/shapes:define-structure data-automation-project common-lisp:nil
                                    ((project-arn :target-type
                                      data-automation-project-arn :required
                                      common-lisp:t :member-name "projectArn")
                                     (creation-time :target-type date-timestamp
                                      :required common-lisp:t :member-name
                                      "creationTime")
                                     (last-modified-time :target-type
                                      date-timestamp :required common-lisp:t
                                      :member-name "lastModifiedTime")
                                     (project-name :target-type
                                      data-automation-project-name :required
                                      common-lisp:t :member-name "projectName")
                                     (project-stage :target-type
                                      data-automation-project-stage
                                      :member-name "projectStage")
                                     (project-description :target-type
                                      data-automation-project-description
                                      :member-name "projectDescription")
                                     (standard-output-configuration
                                      :target-type
                                      standard-output-configuration
                                      :member-name
                                      "standardOutputConfiguration")
                                     (custom-output-configuration :target-type
                                      custom-output-configuration :member-name
                                      "customOutputConfiguration")
                                     (override-configuration :target-type
                                      override-configuration :member-name
                                      "overrideConfiguration")
                                     (status :target-type
                                      data-automation-project-status :required
                                      common-lisp:t :member-name "status")
                                     (kms-key-id :target-type kms-key-id
                                      :member-name "kmsKeyId")
                                     (kms-encryption-context :target-type
                                      kms-encryption-context :member-name
                                      "kmsEncryptionContext"))
                                    (:shape-name "DataAutomationProject"))

(smithy/sdk/shapes:define-type data-automation-project-arn
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type data-automation-project-description
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure data-automation-project-filter
                                    common-lisp:nil
                                    ((project-arn :target-type
                                      data-automation-project-arn :required
                                      common-lisp:t :member-name "projectArn")
                                     (project-stage :target-type
                                      data-automation-project-stage
                                      :member-name "projectStage"))
                                    (:shape-name "DataAutomationProjectFilter"))

(smithy/sdk/shapes:define-type data-automation-project-name
                               smithy/sdk/smithy-types:string)

common-lisp:nil

(smithy/sdk/shapes:define-enum data-automation-project-stage
    common-lisp:nil
  (:development "DEVELOPMENT")
  (:live "LIVE"))

(smithy/sdk/shapes:define-enum data-automation-project-stage-filter
    common-lisp:nil
  (:development "DEVELOPMENT")
  (:live "LIVE")
  (:all "ALL"))

(smithy/sdk/shapes:define-enum data-automation-project-status
    common-lisp:nil
  (:completed "COMPLETED")
  (:in-progress "IN_PROGRESS")
  (:failed "FAILED"))

(smithy/sdk/shapes:define-list data-automation-project-summaries :member
                               data-automation-project-summary)

(smithy/sdk/shapes:define-structure data-automation-project-summary
                                    common-lisp:nil
                                    ((project-arn :target-type
                                      data-automation-project-arn :required
                                      common-lisp:t :member-name "projectArn")
                                     (project-stage :target-type
                                      data-automation-project-stage
                                      :member-name "projectStage")
                                     (project-name :target-type
                                      data-automation-project-name :member-name
                                      "projectName")
                                     (creation-time :target-type date-timestamp
                                      :required common-lisp:t :member-name
                                      "creationTime"))
                                    (:shape-name
                                     "DataAutomationProjectSummary"))

(smithy/sdk/shapes:define-type date-timestamp smithy/sdk/smithy-types:timestamp)

(smithy/sdk/shapes:define-input delete-blueprint-request common-lisp:nil
                                ((blueprint-arn :target-type blueprint-arn
                                  :required common-lisp:t :member-name
                                  "blueprintArn" :http-label common-lisp:t)
                                 (blueprint-version :target-type
                                  blueprint-version :member-name
                                  "blueprintVersion" :http-query
                                  "blueprintVersion"))
                                (:shape-name "DeleteBlueprintRequest"))

(smithy/sdk/shapes:define-output delete-blueprint-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "DeleteBlueprintResponse"))

(smithy/sdk/shapes:define-input delete-data-automation-project-request
                                common-lisp:nil
                                ((project-arn :target-type
                                  data-automation-project-arn :required
                                  common-lisp:t :member-name "projectArn"
                                  :http-label common-lisp:t))
                                (:shape-name
                                 "DeleteDataAutomationProjectRequest"))

(smithy/sdk/shapes:define-output delete-data-automation-project-response
                                 common-lisp:nil
                                 ((project-arn :target-type
                                   data-automation-project-arn :required
                                   common-lisp:t :member-name "projectArn")
                                  (status :target-type
                                   data-automation-project-status :member-name
                                   "status"))
                                 (:shape-name
                                  "DeleteDataAutomationProjectResponse"))

(smithy/sdk/shapes:define-enum desired-modality
    common-lisp:nil
  (:image "IMAGE")
  (:document "DOCUMENT")
  (:audio "AUDIO")
  (:video "VIDEO"))

(smithy/sdk/shapes:define-structure document-bounding-box common-lisp:nil
                                    ((state :target-type state :required
                                      common-lisp:t :member-name "state"))
                                    (:shape-name "DocumentBoundingBox"))

(smithy/sdk/shapes:define-structure document-extraction-granularity
                                    common-lisp:nil
                                    ((types :target-type
                                      document-extraction-granularity-types
                                      :member-name "types"))
                                    (:shape-name
                                     "DocumentExtractionGranularity"))

(smithy/sdk/shapes:define-enum document-extraction-granularity-type
    common-lisp:nil
  (:document "DOCUMENT")
  (:page "PAGE")
  (:element "ELEMENT")
  (:word "WORD")
  (:line "LINE"))

(smithy/sdk/shapes:define-list document-extraction-granularity-types :member
                               document-extraction-granularity-type)

(smithy/sdk/shapes:define-structure document-output-additional-file-format
                                    common-lisp:nil
                                    ((state :target-type state :required
                                      common-lisp:t :member-name "state"))
                                    (:shape-name
                                     "DocumentOutputAdditionalFileFormat"))

(smithy/sdk/shapes:define-structure document-output-format common-lisp:nil
                                    ((text-format :target-type
                                      document-output-text-format :required
                                      common-lisp:t :member-name "textFormat")
                                     (additional-file-format :target-type
                                      document-output-additional-file-format
                                      :required common-lisp:t :member-name
                                      "additionalFileFormat"))
                                    (:shape-name "DocumentOutputFormat"))

(smithy/sdk/shapes:define-structure document-output-text-format common-lisp:nil
                                    ((types :target-type
                                      document-output-text-format-types
                                      :member-name "types"))
                                    (:shape-name "DocumentOutputTextFormat"))

(smithy/sdk/shapes:define-enum document-output-text-format-type
    common-lisp:nil
  (:plain-text "PLAIN_TEXT")
  (:markdown "MARKDOWN")
  (:html "HTML")
  (:csv "CSV"))

(smithy/sdk/shapes:define-list document-output-text-format-types :member
                               document-output-text-format-type)

(smithy/sdk/shapes:define-structure document-override-configuration
                                    common-lisp:nil
                                    ((splitter :target-type
                                      splitter-configuration :member-name
                                      "splitter")
                                     (modality-processing :target-type
                                      modality-processing-configuration
                                      :member-name "modalityProcessing"))
                                    (:shape-name
                                     "DocumentOverrideConfiguration"))

(smithy/sdk/shapes:define-structure document-standard-extraction
                                    common-lisp:nil
                                    ((granularity :target-type
                                      document-extraction-granularity :required
                                      common-lisp:t :member-name "granularity")
                                     (bounding-box :target-type
                                      document-bounding-box :required
                                      common-lisp:t :member-name
                                      "boundingBox"))
                                    (:shape-name "DocumentStandardExtraction"))

(smithy/sdk/shapes:define-structure document-standard-generative-field
                                    common-lisp:nil
                                    ((state :target-type state :required
                                      common-lisp:t :member-name "state"))
                                    (:shape-name
                                     "DocumentStandardGenerativeField"))

(smithy/sdk/shapes:define-structure document-standard-output-configuration
                                    common-lisp:nil
                                    ((extraction :target-type
                                      document-standard-extraction :member-name
                                      "extraction")
                                     (generative-field :target-type
                                      document-standard-generative-field
                                      :member-name "generativeField")
                                     (output-format :target-type
                                      document-output-format :member-name
                                      "outputFormat"))
                                    (:shape-name
                                     "DocumentStandardOutputConfiguration"))

(smithy/sdk/shapes:define-structure encryption-configuration common-lisp:nil
                                    ((kms-key-id :target-type kms-key-id
                                      :required common-lisp:t :member-name
                                      "kmsKeyId")
                                     (kms-encryption-context :target-type
                                      kms-encryption-context :member-name
                                      "kmsEncryptionContext"))
                                    (:shape-name "EncryptionConfiguration"))

(smithy/sdk/shapes:define-type encryption-context-key
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type encryption-context-value
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input get-blueprint-request common-lisp:nil
                                ((blueprint-arn :target-type blueprint-arn
                                  :required common-lisp:t :member-name
                                  "blueprintArn" :http-label common-lisp:t)
                                 (blueprint-version :target-type
                                  blueprint-version :member-name
                                  "blueprintVersion")
                                 (blueprint-stage :target-type blueprint-stage
                                  :member-name "blueprintStage"))
                                (:shape-name "GetBlueprintRequest"))

(smithy/sdk/shapes:define-output get-blueprint-response common-lisp:nil
                                 ((blueprint :target-type blueprint :required
                                   common-lisp:t :member-name "blueprint"))
                                 (:shape-name "GetBlueprintResponse"))

(smithy/sdk/shapes:define-input get-data-automation-project-request
                                common-lisp:nil
                                ((project-arn :target-type
                                  data-automation-project-arn :required
                                  common-lisp:t :member-name "projectArn"
                                  :http-label common-lisp:t)
                                 (project-stage :target-type
                                  data-automation-project-stage :member-name
                                  "projectStage"))
                                (:shape-name "GetDataAutomationProjectRequest"))

(smithy/sdk/shapes:define-output get-data-automation-project-response
                                 common-lisp:nil
                                 ((project :target-type data-automation-project
                                   :required common-lisp:t :member-name
                                   "project"))
                                 (:shape-name
                                  "GetDataAutomationProjectResponse"))

(smithy/sdk/shapes:define-structure image-bounding-box common-lisp:nil
                                    ((state :target-type state :required
                                      common-lisp:t :member-name "state"))
                                    (:shape-name "ImageBoundingBox"))

(smithy/sdk/shapes:define-structure image-extraction-category common-lisp:nil
                                    ((state :target-type state :required
                                      common-lisp:t :member-name "state")
                                     (types :target-type
                                      image-extraction-category-types
                                      :member-name "types"))
                                    (:shape-name "ImageExtractionCategory"))

(smithy/sdk/shapes:define-enum image-extraction-category-type
    common-lisp:nil
  (:content-moderation "CONTENT_MODERATION")
  (:text-detection "TEXT_DETECTION")
  (:logos "LOGOS"))

(smithy/sdk/shapes:define-list image-extraction-category-types :member
                               image-extraction-category-type)

(smithy/sdk/shapes:define-structure image-override-configuration
                                    common-lisp:nil
                                    ((modality-processing :target-type
                                      modality-processing-configuration
                                      :member-name "modalityProcessing"))
                                    (:shape-name "ImageOverrideConfiguration"))

(smithy/sdk/shapes:define-structure image-standard-extraction common-lisp:nil
                                    ((category :target-type
                                      image-extraction-category :required
                                      common-lisp:t :member-name "category")
                                     (bounding-box :target-type
                                      image-bounding-box :required
                                      common-lisp:t :member-name
                                      "boundingBox"))
                                    (:shape-name "ImageStandardExtraction"))

(smithy/sdk/shapes:define-structure image-standard-generative-field
                                    common-lisp:nil
                                    ((state :target-type state :required
                                      common-lisp:t :member-name "state")
                                     (types :target-type
                                      image-standard-generative-field-types
                                      :member-name "types"))
                                    (:shape-name
                                     "ImageStandardGenerativeField"))

(smithy/sdk/shapes:define-enum image-standard-generative-field-type
    common-lisp:nil
  (:image-summary "IMAGE_SUMMARY")
  (:iab "IAB"))

(smithy/sdk/shapes:define-list image-standard-generative-field-types :member
                               image-standard-generative-field-type)

(smithy/sdk/shapes:define-structure image-standard-output-configuration
                                    common-lisp:nil
                                    ((extraction :target-type
                                      image-standard-extraction :member-name
                                      "extraction")
                                     (generative-field :target-type
                                      image-standard-generative-field
                                      :member-name "generativeField"))
                                    (:shape-name
                                     "ImageStandardOutputConfiguration"))

(smithy/sdk/shapes:define-error internal-server-exception common-lisp:nil
                                ((message :target-type non-blank-string
                                  :member-name "message"))
                                (:shape-name "InternalServerException")
                                (:error-code 500))

(smithy/sdk/shapes:define-map kms-encryption-context :key
                              encryption-context-key :value
                              encryption-context-value)

(smithy/sdk/shapes:define-type kms-key-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input list-blueprints-request common-lisp:nil
                                ((blueprint-arn :target-type blueprint-arn
                                  :member-name "blueprintArn")
                                 (resource-owner :target-type resource-owner
                                  :member-name "resourceOwner")
                                 (blueprint-stage-filter :target-type
                                  blueprint-stage-filter :member-name
                                  "blueprintStageFilter")
                                 (max-results :target-type max-results
                                  :member-name "maxResults")
                                 (next-token :target-type next-token
                                  :member-name "nextToken")
                                 (project-filter :target-type
                                  data-automation-project-filter :member-name
                                  "projectFilter"))
                                (:shape-name "ListBlueprintsRequest"))

(smithy/sdk/shapes:define-output list-blueprints-response common-lisp:nil
                                 ((blueprints :target-type blueprints :required
                                   common-lisp:t :member-name "blueprints")
                                  (next-token :target-type next-token
                                   :member-name "nextToken"))
                                 (:shape-name "ListBlueprintsResponse"))

(smithy/sdk/shapes:define-input list-data-automation-projects-request
                                common-lisp:nil
                                ((max-results :target-type max-results
                                  :member-name "maxResults")
                                 (next-token :target-type next-token
                                  :member-name "nextToken")
                                 (project-stage-filter :target-type
                                  data-automation-project-stage-filter
                                  :member-name "projectStageFilter")
                                 (blueprint-filter :target-type
                                  blueprint-filter :member-name
                                  "blueprintFilter")
                                 (resource-owner :target-type resource-owner
                                  :member-name "resourceOwner"))
                                (:shape-name
                                 "ListDataAutomationProjectsRequest"))

(smithy/sdk/shapes:define-output list-data-automation-projects-response
                                 common-lisp:nil
                                 ((projects :target-type
                                   data-automation-project-summaries :required
                                   common-lisp:t :member-name "projects")
                                  (next-token :target-type next-token
                                   :member-name "nextToken"))
                                 (:shape-name
                                  "ListDataAutomationProjectsResponse"))

(smithy/sdk/shapes:define-input list-tags-for-resource-request common-lisp:nil
                                ((resource-arn :target-type
                                  taggable-resource-arn :required common-lisp:t
                                  :member-name "resourceARN"))
                                (:shape-name "ListTagsForResourceRequest"))

(smithy/sdk/shapes:define-output list-tags-for-resource-response
                                 common-lisp:nil
                                 ((tags :target-type tag-list :member-name
                                   "tags"))
                                 (:shape-name "ListTagsForResourceResponse"))

(smithy/sdk/shapes:define-type max-results smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-structure modality-processing-configuration
                                    common-lisp:nil
                                    ((state :target-type state :member-name
                                      "state"))
                                    (:shape-name
                                     "ModalityProcessingConfiguration"))

(smithy/sdk/shapes:define-structure modality-routing-configuration
                                    common-lisp:nil
                                    ((jpeg :target-type desired-modality
                                      :member-name "jpeg")
                                     (png :target-type desired-modality
                                      :member-name "png")
                                     (mp4 :target-type desired-modality
                                      :member-name "mp4")
                                     (mov :target-type desired-modality
                                      :member-name "mov"))
                                    (:shape-name
                                     "ModalityRoutingConfiguration"))

(smithy/sdk/shapes:define-type next-token smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type non-blank-string smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure override-configuration common-lisp:nil
                                    ((document :target-type
                                      document-override-configuration
                                      :member-name "document")
                                     (image :target-type
                                      image-override-configuration :member-name
                                      "image")
                                     (video :target-type
                                      video-override-configuration :member-name
                                      "video")
                                     (audio :target-type
                                      audio-override-configuration :member-name
                                      "audio")
                                     (modality-routing :target-type
                                      modality-routing-configuration
                                      :member-name "modalityRouting"))
                                    (:shape-name "OverrideConfiguration"))

(smithy/sdk/shapes:define-error resource-not-found-exception common-lisp:nil
                                ((message :target-type non-blank-string
                                  :member-name "message"))
                                (:shape-name "ResourceNotFoundException")
                                (:error-code 404))

(smithy/sdk/shapes:define-enum resource-owner
    common-lisp:nil
  (:service "SERVICE")
  (:account "ACCOUNT"))

(smithy/sdk/shapes:define-error service-quota-exceeded-exception
                                common-lisp:nil
                                ((message :target-type non-blank-string
                                  :member-name "message"))
                                (:shape-name "ServiceQuotaExceededException")
                                (:error-code 402))

(smithy/sdk/shapes:define-structure splitter-configuration common-lisp:nil
                                    ((state :target-type state :member-name
                                      "state"))
                                    (:shape-name "SplitterConfiguration"))

(smithy/sdk/shapes:define-structure standard-output-configuration
                                    common-lisp:nil
                                    ((document :target-type
                                      document-standard-output-configuration
                                      :member-name "document")
                                     (image :target-type
                                      image-standard-output-configuration
                                      :member-name "image")
                                     (video :target-type
                                      video-standard-output-configuration
                                      :member-name "video")
                                     (audio :target-type
                                      audio-standard-output-configuration
                                      :member-name "audio"))
                                    (:shape-name "StandardOutputConfiguration"))

(smithy/sdk/shapes:define-enum state
    common-lisp:nil
  (:enabled "ENABLED")
  (:disabled "DISABLED"))

(smithy/sdk/shapes:define-structure tag common-lisp:nil
                                    ((key :target-type tag-key :required
                                      common-lisp:t :member-name "key")
                                     (value :target-type tag-value :required
                                      common-lisp:t :member-name "value"))
                                    (:shape-name "Tag"))

(smithy/sdk/shapes:define-type tag-key smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list tag-key-list :member tag-key)

(smithy/sdk/shapes:define-list tag-list :member tag)

(smithy/sdk/shapes:define-input tag-resource-request common-lisp:nil
                                ((resource-arn :target-type
                                  taggable-resource-arn :required common-lisp:t
                                  :member-name "resourceARN")
                                 (tags :target-type tag-list :required
                                  common-lisp:t :member-name "tags"))
                                (:shape-name "TagResourceRequest"))

(smithy/sdk/shapes:define-output tag-resource-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "TagResourceResponse"))

(smithy/sdk/shapes:define-type tag-value smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type taggable-resource-arn
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error throttling-exception common-lisp:nil
                                ((message :target-type non-blank-string
                                  :member-name "message"))
                                (:shape-name "ThrottlingException")
                                (:error-code 429))

(smithy/sdk/shapes:define-enum type
    common-lisp:nil
  (:document "DOCUMENT")
  (:image "IMAGE")
  (:audio "AUDIO")
  (:video "VIDEO"))

(smithy/sdk/shapes:define-input untag-resource-request common-lisp:nil
                                ((resource-arn :target-type
                                  taggable-resource-arn :required common-lisp:t
                                  :member-name "resourceARN")
                                 (tag-keys :target-type tag-key-list :required
                                  common-lisp:t :member-name "tagKeys"))
                                (:shape-name "UntagResourceRequest"))

(smithy/sdk/shapes:define-output untag-resource-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "UntagResourceResponse"))

(smithy/sdk/shapes:define-input update-blueprint-request common-lisp:nil
                                ((blueprint-arn :target-type blueprint-arn
                                  :required common-lisp:t :member-name
                                  "blueprintArn" :http-label common-lisp:t)
                                 (schema :target-type blueprint-schema
                                  :required common-lisp:t :member-name
                                  "schema")
                                 (blueprint-stage :target-type blueprint-stage
                                  :member-name "blueprintStage")
                                 (encryption-configuration :target-type
                                  encryption-configuration :member-name
                                  "encryptionConfiguration"))
                                (:shape-name "UpdateBlueprintRequest"))

(smithy/sdk/shapes:define-output update-blueprint-response common-lisp:nil
                                 ((blueprint :target-type blueprint :required
                                   common-lisp:t :member-name "blueprint"))
                                 (:shape-name "UpdateBlueprintResponse"))

(smithy/sdk/shapes:define-input update-data-automation-project-request
                                common-lisp:nil
                                ((project-arn :target-type
                                  data-automation-project-arn :required
                                  common-lisp:t :member-name "projectArn"
                                  :http-label common-lisp:t)
                                 (project-stage :target-type
                                  data-automation-project-stage :member-name
                                  "projectStage")
                                 (project-description :target-type
                                  data-automation-project-description
                                  :member-name "projectDescription")
                                 (standard-output-configuration :target-type
                                  standard-output-configuration :required
                                  common-lisp:t :member-name
                                  "standardOutputConfiguration")
                                 (custom-output-configuration :target-type
                                  custom-output-configuration :member-name
                                  "customOutputConfiguration")
                                 (override-configuration :target-type
                                  override-configuration :member-name
                                  "overrideConfiguration")
                                 (encryption-configuration :target-type
                                  encryption-configuration :member-name
                                  "encryptionConfiguration"))
                                (:shape-name
                                 "UpdateDataAutomationProjectRequest"))

(smithy/sdk/shapes:define-output update-data-automation-project-response
                                 common-lisp:nil
                                 ((project-arn :target-type
                                   data-automation-project-arn :required
                                   common-lisp:t :member-name "projectArn")
                                  (project-stage :target-type
                                   data-automation-project-stage :member-name
                                   "projectStage")
                                  (status :target-type
                                   data-automation-project-status :member-name
                                   "status"))
                                 (:shape-name
                                  "UpdateDataAutomationProjectResponse"))

(smithy/sdk/shapes:define-error validation-exception common-lisp:nil
                                ((message :target-type non-blank-string
                                  :member-name "message")
                                 (field-list :target-type
                                  validation-exception-field-list :member-name
                                  "fieldList"))
                                (:shape-name "ValidationException")
                                (:error-code 400))

(smithy/sdk/shapes:define-structure validation-exception-field common-lisp:nil
                                    ((name :target-type non-blank-string
                                      :required common-lisp:t :member-name
                                      "name")
                                     (message :target-type non-blank-string
                                      :required common-lisp:t :member-name
                                      "message"))
                                    (:shape-name "ValidationExceptionField"))

(smithy/sdk/shapes:define-list validation-exception-field-list :member
                               validation-exception-field)

(smithy/sdk/shapes:define-structure video-bounding-box common-lisp:nil
                                    ((state :target-type state :required
                                      common-lisp:t :member-name "state"))
                                    (:shape-name "VideoBoundingBox"))

(smithy/sdk/shapes:define-structure video-extraction-category common-lisp:nil
                                    ((state :target-type state :required
                                      common-lisp:t :member-name "state")
                                     (types :target-type
                                      video-extraction-category-types
                                      :member-name "types"))
                                    (:shape-name "VideoExtractionCategory"))

(smithy/sdk/shapes:define-enum video-extraction-category-type
    common-lisp:nil
  (:content-moderation "CONTENT_MODERATION")
  (:text-detection "TEXT_DETECTION")
  (:transcript "TRANSCRIPT")
  (:logos "LOGOS"))

(smithy/sdk/shapes:define-list video-extraction-category-types :member
                               video-extraction-category-type)

(smithy/sdk/shapes:define-structure video-override-configuration
                                    common-lisp:nil
                                    ((modality-processing :target-type
                                      modality-processing-configuration
                                      :member-name "modalityProcessing"))
                                    (:shape-name "VideoOverrideConfiguration"))

(smithy/sdk/shapes:define-structure video-standard-extraction common-lisp:nil
                                    ((category :target-type
                                      video-extraction-category :required
                                      common-lisp:t :member-name "category")
                                     (bounding-box :target-type
                                      video-bounding-box :required
                                      common-lisp:t :member-name
                                      "boundingBox"))
                                    (:shape-name "VideoStandardExtraction"))

(smithy/sdk/shapes:define-structure video-standard-generative-field
                                    common-lisp:nil
                                    ((state :target-type state :required
                                      common-lisp:t :member-name "state")
                                     (types :target-type
                                      video-standard-generative-field-types
                                      :member-name "types"))
                                    (:shape-name
                                     "VideoStandardGenerativeField"))

(smithy/sdk/shapes:define-enum video-standard-generative-field-type
    common-lisp:nil
  (:video-summary "VIDEO_SUMMARY")
  (:iab "IAB")
  (:chapter-summary "CHAPTER_SUMMARY"))

(smithy/sdk/shapes:define-list video-standard-generative-field-types :member
                               video-standard-generative-field-type)

(smithy/sdk/shapes:define-structure video-standard-output-configuration
                                    common-lisp:nil
                                    ((extraction :target-type
                                      video-standard-extraction :member-name
                                      "extraction")
                                     (generative-field :target-type
                                      video-standard-generative-field
                                      :member-name "generativeField"))
                                    (:shape-name
                                     "VideoStandardOutputConfiguration"))

(smithy/sdk/operation:define-operation create-blueprint :shape-name
                                       "CreateBlueprint" :input
                                       create-blueprint-request :output
                                       create-blueprint-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "PUT" :uri "/blueprints/" :code
                                       201)

(smithy/sdk/operation:define-operation create-blueprint-version :shape-name
                                       "CreateBlueprintVersion" :input
                                       create-blueprint-version-request :output
                                       create-blueprint-version-response
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/blueprints/{blueprintArn}/versions/"
                                       :code 201)

(smithy/sdk/operation:define-operation create-data-automation-project
                                       :shape-name
                                       "CreateDataAutomationProject" :input
                                       create-data-automation-project-request
                                       :output
                                       create-data-automation-project-response
                                       :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "PUT" :uri
                                       "/data-automation-projects/" :code 201)

(smithy/sdk/operation:define-operation delete-blueprint :shape-name
                                       "DeleteBlueprint" :input
                                       delete-blueprint-request :output
                                       delete-blueprint-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "DELETE" :uri
                                       "/blueprints/{blueprintArn}/" :code 200)

(smithy/sdk/operation:define-operation delete-data-automation-project
                                       :shape-name
                                       "DeleteDataAutomationProject" :input
                                       delete-data-automation-project-request
                                       :output
                                       delete-data-automation-project-response
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "DELETE" :uri
                                       "/data-automation-projects/{projectArn}/"
                                       :code 200)

(smithy/sdk/operation:define-operation get-blueprint :shape-name "GetBlueprint"
                                       :input get-blueprint-request :output
                                       get-blueprint-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/blueprints/{blueprintArn}/" :code 200)

(smithy/sdk/operation:define-operation get-data-automation-project :shape-name
                                       "GetDataAutomationProject" :input
                                       get-data-automation-project-request
                                       :output
                                       get-data-automation-project-response
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/data-automation-projects/{projectArn}/"
                                       :code 200)

(smithy/sdk/operation:define-operation list-blueprints :shape-name
                                       "ListBlueprints" :input
                                       list-blueprints-request :output
                                       list-blueprints-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri "/blueprints/" :code
                                       200)

(smithy/sdk/operation:define-operation list-data-automation-projects
                                       :shape-name "ListDataAutomationProjects"
                                       :input
                                       list-data-automation-projects-request
                                       :output
                                       list-data-automation-projects-response
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/data-automation-projects/" :code 200)

(smithy/sdk/operation:define-operation list-tags-for-resource :shape-name
                                       "ListTagsForResource" :input
                                       list-tags-for-resource-request :output
                                       list-tags-for-resource-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/listTagsForResource" :code 200)

(smithy/sdk/operation:define-operation tag-resource :shape-name "TagResource"
                                       :input tag-resource-request :output
                                       tag-resource-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri "/tagResource" :code
                                       200)

(smithy/sdk/operation:define-operation untag-resource :shape-name
                                       "UntagResource" :input
                                       untag-resource-request :output
                                       untag-resource-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri "/untagResource"
                                       :code 200)

(smithy/sdk/operation:define-operation update-blueprint :shape-name
                                       "UpdateBlueprint" :input
                                       update-blueprint-request :output
                                       update-blueprint-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "PUT" :uri
                                       "/blueprints/{blueprintArn}/" :code 200)

(smithy/sdk/operation:define-operation update-data-automation-project
                                       :shape-name
                                       "UpdateDataAutomationProject" :input
                                       update-data-automation-project-request
                                       :output
                                       update-data-automation-project-response
                                       :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "PUT" :uri
                                       "/data-automation-projects/{projectArn}/"
                                       :code 200)
