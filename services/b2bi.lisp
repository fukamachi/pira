(uiop/package:define-package #:pira/b2bi (:use)
                             (:export #:advanced-options #:amazon-resource-name
                              #:b2bi #:bucket-name #:business-name #:capability
                              #:capability-configuration #:capability-direction
                              #:capability-id #:capability-list
                              #:capability-name #:capability-options
                              #:capability-summary #:capability-type
                              #:conversion-source #:conversion-source-format
                              #:conversion-target #:conversion-target-format
                              #:conversion-target-format-details
                              #:create-capability #:create-partnership
                              #:create-profile
                              #:create-starter-mapping-template
                              #:create-transformer #:created-date
                              #:delete-capability #:delete-partnership
                              #:delete-profile #:delete-transformer
                              #:edi-configuration #:edi-type #:email
                              #:error-message #:file-format #:file-location
                              #:format-options #:from-format #:generate-mapping
                              #:generate-mapping-input-file-content
                              #:generate-mapping-output-file-content
                              #:get-capability #:get-partnership #:get-profile
                              #:get-transformer #:get-transformer-job
                              #:inbound-edi-options #:input-conversion
                              #:input-file-source #:instructions-documents
                              #:key-list #:line-length #:line-terminator
                              #:list-capabilities #:list-partnerships
                              #:list-profiles #:list-tags-for-resource
                              #:list-transformers #:log-group-name #:logging
                              #:mapping #:mapping-template
                              #:mapping-template-language #:mapping-type
                              #:max-results #:modified-date
                              #:outbound-edi-options #:output-conversion
                              #:output-sample-file-source #:page-token
                              #:parsed-split-file-contents-list #:partner-name
                              #:partnership #:partnership-capabilities
                              #:partnership-id #:partnership-list
                              #:partnership-summary #:phone #:profile
                              #:profile-id #:profile-list #:profile-name
                              #:profile-summary #:resource-arn #:s3key
                              #:s3location #:s3location-list
                              #:sample-document-keys #:sample-documents
                              #:start-transformer-job
                              #:starting-functional-group-control-number
                              #:starting-interchange-control-number
                              #:starting-transaction-set-control-number #:tag
                              #:tag-key #:tag-key-list #:tag-list
                              #:tag-resource #:tag-value #:template-details
                              #:test-conversion #:test-mapping
                              #:test-mapping-input-file-content #:test-parsing
                              #:to-format #:trading-partner-id #:transformer
                              #:transformer-id #:transformer-job-id
                              #:transformer-job-status #:transformer-list
                              #:transformer-name #:transformer-status
                              #:transformer-summary #:untag-resource
                              #:update-capability #:update-partnership
                              #:update-profile #:update-transformer
                              #:validation-messages #:wrap-format
                              #:wrap-options #:x12acknowledgment-options
                              #:x12acknowledgment-requested-code
                              #:x12advanced-options
                              #:x12application-receiver-code
                              #:x12application-sender-code
                              #:x12component-separator #:x12control-numbers
                              #:x12data-element-separator #:x12delimiters
                              #:x12details #:x12envelope
                              #:x12functional-acknowledgment
                              #:x12functional-group-headers
                              #:x12gs05time-format #:x12id-qualifier
                              #:x12inbound-edi-options
                              #:x12interchange-control-headers
                              #:x12outbound-edi-headers #:x12receiver-id
                              #:x12repetition-separator
                              #:x12responsible-agency-code
                              #:x12segment-terminator #:x12sender-id
                              #:x12split-by #:x12split-options
                              #:x12technical-acknowledgment
                              #:x12transaction-set #:x12usage-indicator-code
                              #:x12validate-edi #:x12version))
(common-lisp:in-package #:pira/b2bi)

(smithy/sdk/service:define-service b2bi :shape-name "B2BI" :version
                                   "2022-06-23" :title
                                   "AWS B2B Data Interchange" :operations
                                   '(create-starter-mapping-template
                                     generate-mapping get-transformer-job
                                     list-tags-for-resource
                                     start-transformer-job tag-resource
                                     test-conversion test-mapping test-parsing
                                     untag-resource)
                                   :traits
                                   '(("aws.api#service" ("sdkId" . "b2bi")
                                      ("endpointPrefix" . "b2bi"))
                                     ("aws.api#tagEnabled")
                                     ("aws.auth#sigv4" ("name" . "b2bi"))
                                     ("aws.protocols#awsJson1_0")))

(smithy/sdk/shapes:define-error access-denied-exception common-lisp:nil
                                ((message :target-type error-message :required
                                  common-lisp:t :member-name "message"))
                                (:shape-name "AccessDeniedException")
                                (:error-code 403))

(smithy/sdk/shapes:define-structure advanced-options common-lisp:nil
                                    ((x12 :target-type x12advanced-options
                                      :member-name "x12"))
                                    (:shape-name "AdvancedOptions"))

(smithy/sdk/shapes:define-type amazon-resource-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type bucket-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type business-name smithy/sdk/smithy-types:string)

common-lisp:nil

(smithy/sdk/shapes:define-union capability-configuration common-lisp:nil
                                ((edi :target-type edi-configuration
                                  :member-name "edi"))
                                (:shape-name "CapabilityConfiguration"))

(smithy/sdk/shapes:define-enum capability-direction
    common-lisp:nil
  (:inbound "INBOUND")
  (:outbound "OUTBOUND"))

(smithy/sdk/shapes:define-type capability-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list capability-list :member capability-summary)

(smithy/sdk/shapes:define-type capability-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure capability-options common-lisp:nil
                                    ((outbound-edi :target-type
                                      outbound-edi-options :member-name
                                      "outboundEdi")
                                     (inbound-edi :target-type
                                      inbound-edi-options :member-name
                                      "inboundEdi"))
                                    (:shape-name "CapabilityOptions"))

(smithy/sdk/shapes:define-structure capability-summary common-lisp:nil
                                    ((capability-id :target-type capability-id
                                      :required common-lisp:t :member-name
                                      "capabilityId")
                                     (name :target-type capability-name
                                      :required common-lisp:t :member-name
                                      "name")
                                     (type :target-type capability-type
                                      :required common-lisp:t :member-name
                                      "type")
                                     (created-at :target-type created-date
                                      :required common-lisp:t :member-name
                                      "createdAt")
                                     (modified-at :target-type modified-date
                                      :member-name "modifiedAt"))
                                    (:shape-name "CapabilitySummary"))

(smithy/sdk/shapes:define-enum capability-type
    common-lisp:nil
  (:edi "edi"))

(smithy/sdk/shapes:define-error conflict-exception common-lisp:nil
                                ((message :target-type error-message :required
                                  common-lisp:t :member-name "message"))
                                (:shape-name "ConflictException")
                                (:error-code 409))

(smithy/sdk/shapes:define-structure conversion-source common-lisp:nil
                                    ((file-format :target-type
                                      conversion-source-format :required
                                      common-lisp:t :member-name "fileFormat")
                                     (input-file :target-type input-file-source
                                      :required common-lisp:t :member-name
                                      "inputFile"))
                                    (:shape-name "ConversionSource"))

(smithy/sdk/shapes:define-enum conversion-source-format
    common-lisp:nil
  (:json "JSON")
  (:xml "XML"))

(smithy/sdk/shapes:define-structure conversion-target common-lisp:nil
                                    ((file-format :target-type
                                      conversion-target-format :required
                                      common-lisp:t :member-name "fileFormat")
                                     (format-details :target-type
                                      conversion-target-format-details
                                      :member-name "formatDetails")
                                     (output-sample-file :target-type
                                      output-sample-file-source :member-name
                                      "outputSampleFile"))
                                    (:shape-name "ConversionTarget"))

(smithy/sdk/shapes:define-enum conversion-target-format
    common-lisp:nil
  (:x12 "X12"))

(smithy/sdk/shapes:define-union conversion-target-format-details
                                common-lisp:nil
                                ((x12 :target-type x12details :member-name
                                  "x12"))
                                (:shape-name "ConversionTargetFormatDetails"))

(smithy/sdk/shapes:define-input create-capability-request common-lisp:nil
                                ((name :target-type capability-name :required
                                  common-lisp:t :member-name "name")
                                 (type :target-type capability-type :required
                                  common-lisp:t :member-name "type")
                                 (configuration :target-type
                                  capability-configuration :required
                                  common-lisp:t :member-name "configuration")
                                 (instructions-documents :target-type
                                  instructions-documents :member-name
                                  "instructionsDocuments")
                                 (client-token :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "clientToken")
                                 (tags :target-type tag-list :member-name
                                  "tags"))
                                (:shape-name "CreateCapabilityRequest"))

(smithy/sdk/shapes:define-output create-capability-response common-lisp:nil
                                 ((capability-id :target-type capability-id
                                   :required common-lisp:t :member-name
                                   "capabilityId")
                                  (capability-arn :target-type resource-arn
                                   :required common-lisp:t :member-name
                                   "capabilityArn")
                                  (name :target-type capability-name :required
                                   common-lisp:t :member-name "name")
                                  (type :target-type capability-type :required
                                   common-lisp:t :member-name "type")
                                  (configuration :target-type
                                   capability-configuration :required
                                   common-lisp:t :member-name "configuration")
                                  (instructions-documents :target-type
                                   instructions-documents :member-name
                                   "instructionsDocuments")
                                  (created-at :target-type created-date
                                   :required common-lisp:t :member-name
                                   "createdAt"))
                                 (:shape-name "CreateCapabilityResponse"))

(smithy/sdk/shapes:define-input create-partnership-request common-lisp:nil
                                ((profile-id :target-type profile-id :required
                                  common-lisp:t :member-name "profileId")
                                 (name :target-type partner-name :required
                                  common-lisp:t :member-name "name")
                                 (email :target-type email :required
                                  common-lisp:t :member-name "email")
                                 (phone :target-type phone :member-name
                                  "phone")
                                 (capabilities :target-type
                                  partnership-capabilities :required
                                  common-lisp:t :member-name "capabilities")
                                 (capability-options :target-type
                                  capability-options :member-name
                                  "capabilityOptions")
                                 (client-token :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "clientToken")
                                 (tags :target-type tag-list :member-name
                                  "tags"))
                                (:shape-name "CreatePartnershipRequest"))

(smithy/sdk/shapes:define-output create-partnership-response common-lisp:nil
                                 ((profile-id :target-type profile-id :required
                                   common-lisp:t :member-name "profileId")
                                  (partnership-id :target-type partnership-id
                                   :required common-lisp:t :member-name
                                   "partnershipId")
                                  (partnership-arn :target-type resource-arn
                                   :required common-lisp:t :member-name
                                   "partnershipArn")
                                  (name :target-type partner-name :member-name
                                   "name")
                                  (email :target-type email :member-name
                                   "email")
                                  (phone :target-type phone :member-name
                                   "phone")
                                  (capabilities :target-type
                                   partnership-capabilities :member-name
                                   "capabilities")
                                  (capability-options :target-type
                                   capability-options :member-name
                                   "capabilityOptions")
                                  (trading-partner-id :target-type
                                   trading-partner-id :member-name
                                   "tradingPartnerId")
                                  (created-at :target-type created-date
                                   :required common-lisp:t :member-name
                                   "createdAt"))
                                 (:shape-name "CreatePartnershipResponse"))

(smithy/sdk/shapes:define-input create-profile-request common-lisp:nil
                                ((name :target-type profile-name :required
                                  common-lisp:t :member-name "name")
                                 (email :target-type email :member-name
                                  "email")
                                 (phone :target-type phone :required
                                  common-lisp:t :member-name "phone")
                                 (business-name :target-type business-name
                                  :required common-lisp:t :member-name
                                  "businessName")
                                 (logging :target-type logging :required
                                  common-lisp:t :member-name "logging")
                                 (client-token :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "clientToken")
                                 (tags :target-type tag-list :member-name
                                  "tags"))
                                (:shape-name "CreateProfileRequest"))

(smithy/sdk/shapes:define-output create-profile-response common-lisp:nil
                                 ((profile-id :target-type profile-id :required
                                   common-lisp:t :member-name "profileId")
                                  (profile-arn :target-type resource-arn
                                   :required common-lisp:t :member-name
                                   "profileArn")
                                  (name :target-type profile-name :required
                                   common-lisp:t :member-name "name")
                                  (business-name :target-type business-name
                                   :required common-lisp:t :member-name
                                   "businessName")
                                  (phone :target-type phone :required
                                   common-lisp:t :member-name "phone")
                                  (email :target-type email :member-name
                                   "email")
                                  (logging :target-type logging :member-name
                                   "logging")
                                  (log-group-name :target-type log-group-name
                                   :member-name "logGroupName")
                                  (created-at :target-type created-date
                                   :required common-lisp:t :member-name
                                   "createdAt"))
                                 (:shape-name "CreateProfileResponse"))

(smithy/sdk/shapes:define-input create-starter-mapping-template-request
                                common-lisp:nil
                                ((output-sample-location :target-type
                                  s3location :member-name
                                  "outputSampleLocation")
                                 (mapping-type :target-type mapping-type
                                  :required common-lisp:t :member-name
                                  "mappingType")
                                 (template-details :target-type
                                  template-details :required common-lisp:t
                                  :member-name "templateDetails"))
                                (:shape-name
                                 "CreateStarterMappingTemplateRequest"))

(smithy/sdk/shapes:define-output create-starter-mapping-template-response
                                 common-lisp:nil
                                 ((mapping-template :target-type
                                   smithy/sdk/smithy-types:string :required
                                   common-lisp:t :member-name
                                   "mappingTemplate"))
                                 (:shape-name
                                  "CreateStarterMappingTemplateResponse"))

(smithy/sdk/shapes:define-input create-transformer-request common-lisp:nil
                                ((name :target-type transformer-name :required
                                  common-lisp:t :member-name "name")
                                 (client-token :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "clientToken")
                                 (tags :target-type tag-list :member-name
                                  "tags")
                                 (file-format :target-type file-format
                                  :member-name "fileFormat")
                                 (mapping-template :target-type
                                  mapping-template :member-name
                                  "mappingTemplate")
                                 (edi-type :target-type edi-type :member-name
                                  "ediType")
                                 (sample-document :target-type file-location
                                  :member-name "sampleDocument")
                                 (input-conversion :target-type
                                  input-conversion :member-name
                                  "inputConversion")
                                 (mapping :target-type mapping :member-name
                                  "mapping")
                                 (output-conversion :target-type
                                  output-conversion :member-name
                                  "outputConversion")
                                 (sample-documents :target-type
                                  sample-documents :member-name
                                  "sampleDocuments"))
                                (:shape-name "CreateTransformerRequest"))

(smithy/sdk/shapes:define-output create-transformer-response common-lisp:nil
                                 ((transformer-id :target-type transformer-id
                                   :required common-lisp:t :member-name
                                   "transformerId")
                                  (transformer-arn :target-type resource-arn
                                   :required common-lisp:t :member-name
                                   "transformerArn")
                                  (name :target-type transformer-name :required
                                   common-lisp:t :member-name "name")
                                  (status :target-type transformer-status
                                   :required common-lisp:t :member-name
                                   "status")
                                  (created-at :target-type created-date
                                   :required common-lisp:t :member-name
                                   "createdAt")
                                  (file-format :target-type file-format
                                   :member-name "fileFormat")
                                  (mapping-template :target-type
                                   mapping-template :member-name
                                   "mappingTemplate")
                                  (edi-type :target-type edi-type :member-name
                                   "ediType")
                                  (sample-document :target-type file-location
                                   :member-name "sampleDocument")
                                  (input-conversion :target-type
                                   input-conversion :member-name
                                   "inputConversion")
                                  (mapping :target-type mapping :member-name
                                   "mapping")
                                  (output-conversion :target-type
                                   output-conversion :member-name
                                   "outputConversion")
                                  (sample-documents :target-type
                                   sample-documents :member-name
                                   "sampleDocuments"))
                                 (:shape-name "CreateTransformerResponse"))

(smithy/sdk/shapes:define-type created-date smithy/sdk/smithy-types:timestamp
                               :timestamp-format "date-time")

(smithy/sdk/shapes:define-input delete-capability-request common-lisp:nil
                                ((capability-id :target-type capability-id
                                  :required common-lisp:t :member-name
                                  "capabilityId" :http-label common-lisp:t))
                                (:shape-name "DeleteCapabilityRequest"))

(smithy/sdk/shapes:define-input delete-partnership-request common-lisp:nil
                                ((partnership-id :target-type partnership-id
                                  :required common-lisp:t :member-name
                                  "partnershipId" :http-label common-lisp:t))
                                (:shape-name "DeletePartnershipRequest"))

(smithy/sdk/shapes:define-input delete-profile-request common-lisp:nil
                                ((profile-id :target-type profile-id :required
                                  common-lisp:t :member-name "profileId"
                                  :http-label common-lisp:t))
                                (:shape-name "DeleteProfileRequest"))

(smithy/sdk/shapes:define-input delete-transformer-request common-lisp:nil
                                ((transformer-id :target-type transformer-id
                                  :required common-lisp:t :member-name
                                  "transformerId" :http-label common-lisp:t))
                                (:shape-name "DeleteTransformerRequest"))

(smithy/sdk/shapes:define-structure edi-configuration common-lisp:nil
                                    ((capability-direction :target-type
                                      capability-direction :member-name
                                      "capabilityDirection")
                                     (type :target-type edi-type :required
                                      common-lisp:t :member-name "type")
                                     (input-location :target-type s3location
                                      :required common-lisp:t :member-name
                                      "inputLocation")
                                     (output-location :target-type s3location
                                      :required common-lisp:t :member-name
                                      "outputLocation")
                                     (transformer-id :target-type
                                      transformer-id :required common-lisp:t
                                      :member-name "transformerId"))
                                    (:shape-name "EdiConfiguration"))

(smithy/sdk/shapes:define-union edi-type common-lisp:nil
                                ((x12details :target-type x12details
                                  :member-name "x12Details"))
                                (:shape-name "EdiType"))

(smithy/sdk/shapes:define-type email smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type error-message smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum file-format
    common-lisp:nil
  (:xml "XML")
  (:json "JSON")
  (:not-used "NOT_USED"))

(smithy/sdk/shapes:define-type file-location smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-union format-options common-lisp:nil
                                ((x12 :target-type x12details :member-name
                                  "x12"))
                                (:shape-name "FormatOptions"))

(smithy/sdk/shapes:define-enum from-format
    common-lisp:nil
  (:x12 "X12"))

(smithy/sdk/shapes:define-type generate-mapping-input-file-content
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type generate-mapping-output-file-content
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input generate-mapping-request common-lisp:nil
                                ((input-file-content :target-type
                                  generate-mapping-input-file-content :required
                                  common-lisp:t :member-name
                                  "inputFileContent")
                                 (output-file-content :target-type
                                  generate-mapping-output-file-content
                                  :required common-lisp:t :member-name
                                  "outputFileContent")
                                 (mapping-type :target-type mapping-type
                                  :required common-lisp:t :member-name
                                  "mappingType"))
                                (:shape-name "GenerateMappingRequest"))

(smithy/sdk/shapes:define-output generate-mapping-response common-lisp:nil
                                 ((mapping-template :target-type
                                   smithy/sdk/smithy-types:string :required
                                   common-lisp:t :member-name
                                   "mappingTemplate")
                                  (mapping-accuracy :target-type
                                   smithy/sdk/smithy-types:float :member-name
                                   "mappingAccuracy"))
                                 (:shape-name "GenerateMappingResponse"))

(smithy/sdk/shapes:define-input get-capability-request common-lisp:nil
                                ((capability-id :target-type capability-id
                                  :required common-lisp:t :member-name
                                  "capabilityId" :http-label common-lisp:t))
                                (:shape-name "GetCapabilityRequest"))

(smithy/sdk/shapes:define-output get-capability-response common-lisp:nil
                                 ((capability-id :target-type capability-id
                                   :required common-lisp:t :member-name
                                   "capabilityId")
                                  (capability-arn :target-type resource-arn
                                   :required common-lisp:t :member-name
                                   "capabilityArn")
                                  (name :target-type capability-name :required
                                   common-lisp:t :member-name "name")
                                  (type :target-type capability-type :required
                                   common-lisp:t :member-name "type")
                                  (configuration :target-type
                                   capability-configuration :required
                                   common-lisp:t :member-name "configuration")
                                  (instructions-documents :target-type
                                   instructions-documents :member-name
                                   "instructionsDocuments")
                                  (created-at :target-type created-date
                                   :required common-lisp:t :member-name
                                   "createdAt")
                                  (modified-at :target-type modified-date
                                   :member-name "modifiedAt"))
                                 (:shape-name "GetCapabilityResponse"))

(smithy/sdk/shapes:define-input get-partnership-request common-lisp:nil
                                ((partnership-id :target-type partnership-id
                                  :required common-lisp:t :member-name
                                  "partnershipId" :http-label common-lisp:t))
                                (:shape-name "GetPartnershipRequest"))

(smithy/sdk/shapes:define-output get-partnership-response common-lisp:nil
                                 ((profile-id :target-type profile-id :required
                                   common-lisp:t :member-name "profileId")
                                  (partnership-id :target-type partnership-id
                                   :required common-lisp:t :member-name
                                   "partnershipId")
                                  (partnership-arn :target-type resource-arn
                                   :required common-lisp:t :member-name
                                   "partnershipArn")
                                  (name :target-type partner-name :member-name
                                   "name")
                                  (email :target-type email :member-name
                                   "email")
                                  (phone :target-type phone :member-name
                                   "phone")
                                  (capabilities :target-type
                                   partnership-capabilities :member-name
                                   "capabilities")
                                  (capability-options :target-type
                                   capability-options :member-name
                                   "capabilityOptions")
                                  (trading-partner-id :target-type
                                   trading-partner-id :member-name
                                   "tradingPartnerId")
                                  (created-at :target-type created-date
                                   :required common-lisp:t :member-name
                                   "createdAt")
                                  (modified-at :target-type modified-date
                                   :member-name "modifiedAt"))
                                 (:shape-name "GetPartnershipResponse"))

(smithy/sdk/shapes:define-input get-profile-request common-lisp:nil
                                ((profile-id :target-type profile-id :required
                                  common-lisp:t :member-name "profileId"
                                  :http-label common-lisp:t))
                                (:shape-name "GetProfileRequest"))

(smithy/sdk/shapes:define-output get-profile-response common-lisp:nil
                                 ((profile-id :target-type profile-id :required
                                   common-lisp:t :member-name "profileId")
                                  (profile-arn :target-type resource-arn
                                   :required common-lisp:t :member-name
                                   "profileArn")
                                  (name :target-type profile-name :required
                                   common-lisp:t :member-name "name")
                                  (email :target-type email :member-name
                                   "email")
                                  (phone :target-type phone :required
                                   common-lisp:t :member-name "phone")
                                  (business-name :target-type business-name
                                   :required common-lisp:t :member-name
                                   "businessName")
                                  (logging :target-type logging :member-name
                                   "logging")
                                  (log-group-name :target-type log-group-name
                                   :member-name "logGroupName")
                                  (created-at :target-type created-date
                                   :required common-lisp:t :member-name
                                   "createdAt")
                                  (modified-at :target-type modified-date
                                   :member-name "modifiedAt"))
                                 (:shape-name "GetProfileResponse"))

(smithy/sdk/shapes:define-input get-transformer-job-request common-lisp:nil
                                ((transformer-job-id :target-type
                                  transformer-job-id :required common-lisp:t
                                  :member-name "transformerJobId" :http-label
                                  common-lisp:t)
                                 (transformer-id :target-type transformer-id
                                  :required common-lisp:t :member-name
                                  "transformerId" :http-query "transformerId"))
                                (:shape-name "GetTransformerJobRequest"))

(smithy/sdk/shapes:define-output get-transformer-job-response common-lisp:nil
                                 ((status :target-type transformer-job-status
                                   :required common-lisp:t :member-name
                                   "status")
                                  (output-files :target-type s3location-list
                                   :member-name "outputFiles")
                                  (message :target-type
                                   smithy/sdk/smithy-types:string :member-name
                                   "message"))
                                 (:shape-name "GetTransformerJobResponse"))

(smithy/sdk/shapes:define-input get-transformer-request common-lisp:nil
                                ((transformer-id :target-type transformer-id
                                  :required common-lisp:t :member-name
                                  "transformerId" :http-label common-lisp:t))
                                (:shape-name "GetTransformerRequest"))

(smithy/sdk/shapes:define-output get-transformer-response common-lisp:nil
                                 ((transformer-id :target-type transformer-id
                                   :required common-lisp:t :member-name
                                   "transformerId")
                                  (transformer-arn :target-type resource-arn
                                   :required common-lisp:t :member-name
                                   "transformerArn")
                                  (name :target-type transformer-name :required
                                   common-lisp:t :member-name "name")
                                  (status :target-type transformer-status
                                   :required common-lisp:t :member-name
                                   "status")
                                  (created-at :target-type created-date
                                   :required common-lisp:t :member-name
                                   "createdAt")
                                  (modified-at :target-type modified-date
                                   :member-name "modifiedAt")
                                  (file-format :target-type file-format
                                   :member-name "fileFormat")
                                  (mapping-template :target-type
                                   mapping-template :member-name
                                   "mappingTemplate")
                                  (edi-type :target-type edi-type :member-name
                                   "ediType")
                                  (sample-document :target-type file-location
                                   :member-name "sampleDocument")
                                  (input-conversion :target-type
                                   input-conversion :member-name
                                   "inputConversion")
                                  (mapping :target-type mapping :member-name
                                   "mapping")
                                  (output-conversion :target-type
                                   output-conversion :member-name
                                   "outputConversion")
                                  (sample-documents :target-type
                                   sample-documents :member-name
                                   "sampleDocuments"))
                                 (:shape-name "GetTransformerResponse"))

(smithy/sdk/shapes:define-structure inbound-edi-options common-lisp:nil
                                    ((x12 :target-type x12inbound-edi-options
                                      :member-name "x12"))
                                    (:shape-name "InboundEdiOptions"))

(smithy/sdk/shapes:define-structure input-conversion common-lisp:nil
                                    ((from-format :target-type from-format
                                      :required common-lisp:t :member-name
                                      "fromFormat")
                                     (format-options :target-type
                                      format-options :member-name
                                      "formatOptions")
                                     (advanced-options :target-type
                                      advanced-options :member-name
                                      "advancedOptions"))
                                    (:shape-name "InputConversion"))

(smithy/sdk/shapes:define-union input-file-source common-lisp:nil
                                ((file-content :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "fileContent"))
                                (:shape-name "InputFileSource"))

(smithy/sdk/shapes:define-list instructions-documents :member s3location)

(smithy/sdk/shapes:define-error internal-server-exception common-lisp:nil
                                ((message :target-type error-message :required
                                  common-lisp:t :member-name "message")
                                 (retry-after-seconds :target-type
                                  smithy/sdk/smithy-types:integer :member-name
                                  "retryAfterSeconds" :http-header
                                  "Retry-After"))
                                (:shape-name "InternalServerException")
                                (:error-code 500))

(smithy/sdk/shapes:define-list key-list :member sample-document-keys)

(smithy/sdk/shapes:define-type line-length smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-enum line-terminator
    common-lisp:nil
  (:crlf "CRLF")
  (:lf "LF")
  (:cr "CR"))

(smithy/sdk/shapes:define-input list-capabilities-request common-lisp:nil
                                ((next-token :target-type page-token
                                  :member-name "nextToken" :http-query
                                  "nextToken")
                                 (max-results :target-type max-results
                                  :member-name "maxResults" :http-query
                                  "maxResults"))
                                (:shape-name "ListCapabilitiesRequest"))

(smithy/sdk/shapes:define-output list-capabilities-response common-lisp:nil
                                 ((capabilities :target-type capability-list
                                   :required common-lisp:t :member-name
                                   "capabilities")
                                  (next-token :target-type page-token
                                   :member-name "nextToken"))
                                 (:shape-name "ListCapabilitiesResponse"))

(smithy/sdk/shapes:define-input list-partnerships-request common-lisp:nil
                                ((profile-id :target-type profile-id
                                  :member-name "profileId" :http-query
                                  "profileId")
                                 (next-token :target-type page-token
                                  :member-name "nextToken" :http-query
                                  "nextToken")
                                 (max-results :target-type max-results
                                  :member-name "maxResults" :http-query
                                  "maxResults"))
                                (:shape-name "ListPartnershipsRequest"))

(smithy/sdk/shapes:define-output list-partnerships-response common-lisp:nil
                                 ((partnerships :target-type partnership-list
                                   :required common-lisp:t :member-name
                                   "partnerships")
                                  (next-token :target-type page-token
                                   :member-name "nextToken"))
                                 (:shape-name "ListPartnershipsResponse"))

(smithy/sdk/shapes:define-input list-profiles-request common-lisp:nil
                                ((next-token :target-type page-token
                                  :member-name "nextToken" :http-query
                                  "nextToken")
                                 (max-results :target-type max-results
                                  :member-name "maxResults" :http-query
                                  "maxResults"))
                                (:shape-name "ListProfilesRequest"))

(smithy/sdk/shapes:define-output list-profiles-response common-lisp:nil
                                 ((profiles :target-type profile-list :required
                                   common-lisp:t :member-name "profiles")
                                  (next-token :target-type page-token
                                   :member-name "nextToken"))
                                 (:shape-name "ListProfilesResponse"))

(smithy/sdk/shapes:define-input list-tags-for-resource-request common-lisp:nil
                                ((resource-arn :target-type
                                  amazon-resource-name :required common-lisp:t
                                  :member-name "ResourceARN" :http-label
                                  common-lisp:t))
                                (:shape-name "ListTagsForResourceRequest"))

(smithy/sdk/shapes:define-output list-tags-for-resource-response
                                 common-lisp:nil
                                 ((tags :target-type tag-list :member-name
                                   "Tags"))
                                 (:shape-name "ListTagsForResourceResponse"))

(smithy/sdk/shapes:define-input list-transformers-request common-lisp:nil
                                ((next-token :target-type page-token
                                  :member-name "nextToken" :http-query
                                  "nextToken")
                                 (max-results :target-type max-results
                                  :member-name "maxResults" :http-query
                                  "maxResults"))
                                (:shape-name "ListTransformersRequest"))

(smithy/sdk/shapes:define-output list-transformers-response common-lisp:nil
                                 ((transformers :target-type transformer-list
                                   :required common-lisp:t :member-name
                                   "transformers")
                                  (next-token :target-type page-token
                                   :member-name "nextToken"))
                                 (:shape-name "ListTransformersResponse"))

(smithy/sdk/shapes:define-type log-group-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum logging
    common-lisp:nil
  (:enabled "ENABLED")
  (:disabled "DISABLED"))

(smithy/sdk/shapes:define-structure mapping common-lisp:nil
                                    ((template-language :target-type
                                      mapping-template-language :required
                                      common-lisp:t :member-name
                                      "templateLanguage")
                                     (template :target-type mapping-template
                                      :member-name "template"))
                                    (:shape-name "Mapping"))

(smithy/sdk/shapes:define-type mapping-template smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum mapping-template-language
    common-lisp:nil
  (:xslt "XSLT")
  (:jsonata "JSONATA"))

(smithy/sdk/shapes:define-enum mapping-type
    common-lisp:nil
  (:jsonata "JSONATA")
  (:xslt "XSLT"))

(smithy/sdk/shapes:define-type max-results smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type modified-date smithy/sdk/smithy-types:timestamp
                               :timestamp-format "date-time")

(smithy/sdk/shapes:define-union outbound-edi-options common-lisp:nil
                                ((x12 :target-type x12envelope :member-name
                                  "x12"))
                                (:shape-name "OutboundEdiOptions"))

(smithy/sdk/shapes:define-structure output-conversion common-lisp:nil
                                    ((to-format :target-type to-format
                                      :required common-lisp:t :member-name
                                      "toFormat")
                                     (format-options :target-type
                                      format-options :member-name
                                      "formatOptions"))
                                    (:shape-name "OutputConversion"))

(smithy/sdk/shapes:define-union output-sample-file-source common-lisp:nil
                                ((file-location :target-type s3location
                                  :member-name "fileLocation"))
                                (:shape-name "OutputSampleFileSource"))

(smithy/sdk/shapes:define-type page-token smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list parsed-split-file-contents-list :member
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type partner-name smithy/sdk/smithy-types:string)

common-lisp:nil

(smithy/sdk/shapes:define-list partnership-capabilities :member capability-id)

(smithy/sdk/shapes:define-type partnership-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list partnership-list :member partnership-summary)

(smithy/sdk/shapes:define-structure partnership-summary common-lisp:nil
                                    ((profile-id :target-type profile-id
                                      :required common-lisp:t :member-name
                                      "profileId")
                                     (partnership-id :target-type
                                      partnership-id :required common-lisp:t
                                      :member-name "partnershipId")
                                     (name :target-type partner-name
                                      :member-name "name")
                                     (capabilities :target-type
                                      partnership-capabilities :member-name
                                      "capabilities")
                                     (capability-options :target-type
                                      capability-options :member-name
                                      "capabilityOptions")
                                     (trading-partner-id :target-type
                                      trading-partner-id :member-name
                                      "tradingPartnerId")
                                     (created-at :target-type created-date
                                      :required common-lisp:t :member-name
                                      "createdAt")
                                     (modified-at :target-type modified-date
                                      :member-name "modifiedAt"))
                                    (:shape-name "PartnershipSummary"))

(smithy/sdk/shapes:define-type phone smithy/sdk/smithy-types:string)

common-lisp:nil

(smithy/sdk/shapes:define-type profile-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list profile-list :member profile-summary)

(smithy/sdk/shapes:define-type profile-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure profile-summary common-lisp:nil
                                    ((profile-id :target-type profile-id
                                      :required common-lisp:t :member-name
                                      "profileId")
                                     (name :target-type profile-name :required
                                      common-lisp:t :member-name "name")
                                     (business-name :target-type business-name
                                      :required common-lisp:t :member-name
                                      "businessName")
                                     (logging :target-type logging :member-name
                                      "logging")
                                     (log-group-name :target-type
                                      log-group-name :member-name
                                      "logGroupName")
                                     (created-at :target-type created-date
                                      :required common-lisp:t :member-name
                                      "createdAt")
                                     (modified-at :target-type modified-date
                                      :member-name "modifiedAt"))
                                    (:shape-name "ProfileSummary"))

(smithy/sdk/shapes:define-type resource-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error resource-not-found-exception common-lisp:nil
                                ((message :target-type error-message :required
                                  common-lisp:t :member-name "message"))
                                (:shape-name "ResourceNotFoundException")
                                (:error-code 404))

(smithy/sdk/shapes:define-type s3key smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure s3location common-lisp:nil
                                    ((bucket-name :target-type bucket-name
                                      :member-name "bucketName")
                                     (key :target-type s3key :member-name
                                      "key"))
                                    (:shape-name "S3Location"))

(smithy/sdk/shapes:define-list s3location-list :member s3location)

(smithy/sdk/shapes:define-structure sample-document-keys common-lisp:nil
                                    ((input :target-type s3key :member-name
                                      "input")
                                     (output :target-type s3key :member-name
                                      "output"))
                                    (:shape-name "SampleDocumentKeys"))

(smithy/sdk/shapes:define-structure sample-documents common-lisp:nil
                                    ((bucket-name :target-type bucket-name
                                      :required common-lisp:t :member-name
                                      "bucketName")
                                     (keys :target-type key-list :required
                                      common-lisp:t :member-name "keys"))
                                    (:shape-name "SampleDocuments"))

(smithy/sdk/shapes:define-error service-quota-exceeded-exception
                                common-lisp:nil
                                ((message :target-type error-message :required
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
                                (:error-code 402))

(smithy/sdk/shapes:define-input start-transformer-job-request common-lisp:nil
                                ((input-file :target-type s3location :required
                                  common-lisp:t :member-name "inputFile")
                                 (output-location :target-type s3location
                                  :required common-lisp:t :member-name
                                  "outputLocation")
                                 (transformer-id :target-type transformer-id
                                  :required common-lisp:t :member-name
                                  "transformerId")
                                 (client-token :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "clientToken"))
                                (:shape-name "StartTransformerJobRequest"))

(smithy/sdk/shapes:define-output start-transformer-job-response common-lisp:nil
                                 ((transformer-job-id :target-type
                                   transformer-job-id :required common-lisp:t
                                   :member-name "transformerJobId"))
                                 (:shape-name "StartTransformerJobResponse"))

(smithy/sdk/shapes:define-type starting-functional-group-control-number
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type starting-interchange-control-number
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type starting-transaction-set-control-number
                               smithy/sdk/smithy-types:integer)

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
                                ((resource-arn :target-type
                                  amazon-resource-name :required common-lisp:t
                                  :member-name "ResourceARN" :http-label
                                  common-lisp:t)
                                 (tags :target-type tag-list :required
                                  common-lisp:t :member-name "Tags"))
                                (:shape-name "TagResourceRequest"))

(smithy/sdk/shapes:define-type tag-value smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-union template-details common-lisp:nil
                                ((x12 :target-type x12details :member-name
                                  "x12"))
                                (:shape-name "TemplateDetails"))

(smithy/sdk/shapes:define-input test-conversion-request common-lisp:nil
                                ((source :target-type conversion-source
                                  :required common-lisp:t :member-name
                                  "source")
                                 (target :target-type conversion-target
                                  :required common-lisp:t :member-name
                                  "target"))
                                (:shape-name "TestConversionRequest"))

(smithy/sdk/shapes:define-output test-conversion-response common-lisp:nil
                                 ((converted-file-content :target-type
                                   smithy/sdk/smithy-types:string :required
                                   common-lisp:t :member-name
                                   "convertedFileContent")
                                  (validation-messages :target-type
                                   validation-messages :member-name
                                   "validationMessages"))
                                 (:shape-name "TestConversionResponse"))

(smithy/sdk/shapes:define-type test-mapping-input-file-content
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input test-mapping-request common-lisp:nil
                                ((input-file-content :target-type
                                  test-mapping-input-file-content :required
                                  common-lisp:t :member-name
                                  "inputFileContent")
                                 (mapping-template :target-type
                                  mapping-template :required common-lisp:t
                                  :member-name "mappingTemplate")
                                 (file-format :target-type file-format
                                  :required common-lisp:t :member-name
                                  "fileFormat"))
                                (:shape-name "TestMappingRequest"))

(smithy/sdk/shapes:define-output test-mapping-response common-lisp:nil
                                 ((mapped-file-content :target-type
                                   smithy/sdk/smithy-types:string :required
                                   common-lisp:t :member-name
                                   "mappedFileContent"))
                                 (:shape-name "TestMappingResponse"))

(smithy/sdk/shapes:define-input test-parsing-request common-lisp:nil
                                ((input-file :target-type s3location :required
                                  common-lisp:t :member-name "inputFile")
                                 (file-format :target-type file-format
                                  :required common-lisp:t :member-name
                                  "fileFormat")
                                 (edi-type :target-type edi-type :required
                                  common-lisp:t :member-name "ediType")
                                 (advanced-options :target-type
                                  advanced-options :member-name
                                  "advancedOptions"))
                                (:shape-name "TestParsingRequest"))

(smithy/sdk/shapes:define-output test-parsing-response common-lisp:nil
                                 ((parsed-file-content :target-type
                                   smithy/sdk/smithy-types:string :required
                                   common-lisp:t :member-name
                                   "parsedFileContent")
                                  (parsed-split-file-contents :target-type
                                   parsed-split-file-contents-list :member-name
                                   "parsedSplitFileContents"))
                                 (:shape-name "TestParsingResponse"))

(smithy/sdk/shapes:define-error throttling-exception common-lisp:nil
                                ((message :target-type error-message :required
                                  common-lisp:t :member-name "message")
                                 (retry-after-seconds :target-type
                                  smithy/sdk/smithy-types:integer :member-name
                                  "retryAfterSeconds" :http-header
                                  "Retry-After"))
                                (:shape-name "ThrottlingException")
                                (:error-code 429))

(smithy/sdk/shapes:define-enum to-format
    common-lisp:nil
  (:x12 "X12"))

(smithy/sdk/shapes:define-type trading-partner-id
                               smithy/sdk/smithy-types:string)

common-lisp:nil

(smithy/sdk/shapes:define-type transformer-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type transformer-job-id
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum transformer-job-status
    common-lisp:nil
  (:running "running")
  (:succeeded "succeeded")
  (:failed "failed"))

(smithy/sdk/shapes:define-list transformer-list :member transformer-summary)

(smithy/sdk/shapes:define-type transformer-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum transformer-status
    common-lisp:nil
  (:active "active")
  (:inactive "inactive"))

(smithy/sdk/shapes:define-structure transformer-summary common-lisp:nil
                                    ((transformer-id :target-type
                                      transformer-id :required common-lisp:t
                                      :member-name "transformerId")
                                     (name :target-type transformer-name
                                      :required common-lisp:t :member-name
                                      "name")
                                     (status :target-type transformer-status
                                      :required common-lisp:t :member-name
                                      "status")
                                     (created-at :target-type created-date
                                      :required common-lisp:t :member-name
                                      "createdAt")
                                     (modified-at :target-type modified-date
                                      :member-name "modifiedAt")
                                     (file-format :target-type file-format
                                      :member-name "fileFormat")
                                     (mapping-template :target-type
                                      mapping-template :member-name
                                      "mappingTemplate")
                                     (edi-type :target-type edi-type
                                      :member-name "ediType")
                                     (sample-document :target-type
                                      file-location :member-name
                                      "sampleDocument")
                                     (input-conversion :target-type
                                      input-conversion :member-name
                                      "inputConversion")
                                     (mapping :target-type mapping :member-name
                                      "mapping")
                                     (output-conversion :target-type
                                      output-conversion :member-name
                                      "outputConversion")
                                     (sample-documents :target-type
                                      sample-documents :member-name
                                      "sampleDocuments"))
                                    (:shape-name "TransformerSummary"))

(smithy/sdk/shapes:define-input untag-resource-request common-lisp:nil
                                ((resource-arn :target-type
                                  amazon-resource-name :required common-lisp:t
                                  :member-name "ResourceARN" :http-label
                                  common-lisp:t)
                                 (tag-keys :target-type tag-key-list :required
                                  common-lisp:t :member-name "TagKeys"
                                  :http-query "TagKeys"))
                                (:shape-name "UntagResourceRequest"))

(smithy/sdk/shapes:define-input update-capability-request common-lisp:nil
                                ((capability-id :target-type capability-id
                                  :required common-lisp:t :member-name
                                  "capabilityId" :http-label common-lisp:t)
                                 (name :target-type capability-name
                                  :member-name "name")
                                 (configuration :target-type
                                  capability-configuration :member-name
                                  "configuration")
                                 (instructions-documents :target-type
                                  instructions-documents :member-name
                                  "instructionsDocuments"))
                                (:shape-name "UpdateCapabilityRequest"))

(smithy/sdk/shapes:define-output update-capability-response common-lisp:nil
                                 ((capability-id :target-type capability-id
                                   :required common-lisp:t :member-name
                                   "capabilityId")
                                  (capability-arn :target-type resource-arn
                                   :required common-lisp:t :member-name
                                   "capabilityArn")
                                  (name :target-type capability-name :required
                                   common-lisp:t :member-name "name")
                                  (type :target-type capability-type :required
                                   common-lisp:t :member-name "type")
                                  (configuration :target-type
                                   capability-configuration :required
                                   common-lisp:t :member-name "configuration")
                                  (instructions-documents :target-type
                                   instructions-documents :member-name
                                   "instructionsDocuments")
                                  (created-at :target-type created-date
                                   :required common-lisp:t :member-name
                                   "createdAt")
                                  (modified-at :target-type modified-date
                                   :member-name "modifiedAt"))
                                 (:shape-name "UpdateCapabilityResponse"))

(smithy/sdk/shapes:define-input update-partnership-request common-lisp:nil
                                ((partnership-id :target-type partnership-id
                                  :required common-lisp:t :member-name
                                  "partnershipId" :http-label common-lisp:t)
                                 (name :target-type partner-name :member-name
                                  "name")
                                 (capabilities :target-type
                                  partnership-capabilities :member-name
                                  "capabilities")
                                 (capability-options :target-type
                                  capability-options :member-name
                                  "capabilityOptions"))
                                (:shape-name "UpdatePartnershipRequest"))

(smithy/sdk/shapes:define-output update-partnership-response common-lisp:nil
                                 ((profile-id :target-type profile-id :required
                                   common-lisp:t :member-name "profileId")
                                  (partnership-id :target-type partnership-id
                                   :required common-lisp:t :member-name
                                   "partnershipId")
                                  (partnership-arn :target-type resource-arn
                                   :required common-lisp:t :member-name
                                   "partnershipArn")
                                  (name :target-type partner-name :member-name
                                   "name")
                                  (email :target-type email :member-name
                                   "email")
                                  (phone :target-type phone :member-name
                                   "phone")
                                  (capabilities :target-type
                                   partnership-capabilities :member-name
                                   "capabilities")
                                  (capability-options :target-type
                                   capability-options :member-name
                                   "capabilityOptions")
                                  (trading-partner-id :target-type
                                   trading-partner-id :member-name
                                   "tradingPartnerId")
                                  (created-at :target-type created-date
                                   :required common-lisp:t :member-name
                                   "createdAt")
                                  (modified-at :target-type modified-date
                                   :member-name "modifiedAt"))
                                 (:shape-name "UpdatePartnershipResponse"))

(smithy/sdk/shapes:define-input update-profile-request common-lisp:nil
                                ((profile-id :target-type profile-id :required
                                  common-lisp:t :member-name "profileId"
                                  :http-label common-lisp:t)
                                 (name :target-type profile-name :member-name
                                  "name")
                                 (email :target-type email :member-name
                                  "email")
                                 (phone :target-type phone :member-name
                                  "phone")
                                 (business-name :target-type business-name
                                  :member-name "businessName"))
                                (:shape-name "UpdateProfileRequest"))

(smithy/sdk/shapes:define-output update-profile-response common-lisp:nil
                                 ((profile-id :target-type profile-id :required
                                   common-lisp:t :member-name "profileId")
                                  (profile-arn :target-type resource-arn
                                   :required common-lisp:t :member-name
                                   "profileArn")
                                  (name :target-type profile-name :required
                                   common-lisp:t :member-name "name")
                                  (email :target-type email :member-name
                                   "email")
                                  (phone :target-type phone :required
                                   common-lisp:t :member-name "phone")
                                  (business-name :target-type business-name
                                   :required common-lisp:t :member-name
                                   "businessName")
                                  (logging :target-type logging :member-name
                                   "logging")
                                  (log-group-name :target-type log-group-name
                                   :member-name "logGroupName")
                                  (created-at :target-type created-date
                                   :required common-lisp:t :member-name
                                   "createdAt")
                                  (modified-at :target-type modified-date
                                   :member-name "modifiedAt"))
                                 (:shape-name "UpdateProfileResponse"))

(smithy/sdk/shapes:define-input update-transformer-request common-lisp:nil
                                ((transformer-id :target-type transformer-id
                                  :required common-lisp:t :member-name
                                  "transformerId" :http-label common-lisp:t)
                                 (name :target-type transformer-name
                                  :member-name "name")
                                 (status :target-type transformer-status
                                  :member-name "status")
                                 (file-format :target-type file-format
                                  :member-name "fileFormat")
                                 (mapping-template :target-type
                                  mapping-template :member-name
                                  "mappingTemplate")
                                 (edi-type :target-type edi-type :member-name
                                  "ediType")
                                 (sample-document :target-type file-location
                                  :member-name "sampleDocument")
                                 (input-conversion :target-type
                                  input-conversion :member-name
                                  "inputConversion")
                                 (mapping :target-type mapping :member-name
                                  "mapping")
                                 (output-conversion :target-type
                                  output-conversion :member-name
                                  "outputConversion")
                                 (sample-documents :target-type
                                  sample-documents :member-name
                                  "sampleDocuments"))
                                (:shape-name "UpdateTransformerRequest"))

(smithy/sdk/shapes:define-output update-transformer-response common-lisp:nil
                                 ((transformer-id :target-type transformer-id
                                   :required common-lisp:t :member-name
                                   "transformerId")
                                  (transformer-arn :target-type resource-arn
                                   :required common-lisp:t :member-name
                                   "transformerArn")
                                  (name :target-type transformer-name :required
                                   common-lisp:t :member-name "name")
                                  (status :target-type transformer-status
                                   :required common-lisp:t :member-name
                                   "status")
                                  (created-at :target-type created-date
                                   :required common-lisp:t :member-name
                                   "createdAt")
                                  (modified-at :target-type modified-date
                                   :required common-lisp:t :member-name
                                   "modifiedAt")
                                  (file-format :target-type file-format
                                   :member-name "fileFormat")
                                  (mapping-template :target-type
                                   mapping-template :member-name
                                   "mappingTemplate")
                                  (edi-type :target-type edi-type :member-name
                                   "ediType")
                                  (sample-document :target-type file-location
                                   :member-name "sampleDocument")
                                  (input-conversion :target-type
                                   input-conversion :member-name
                                   "inputConversion")
                                  (mapping :target-type mapping :member-name
                                   "mapping")
                                  (output-conversion :target-type
                                   output-conversion :member-name
                                   "outputConversion")
                                  (sample-documents :target-type
                                   sample-documents :member-name
                                   "sampleDocuments"))
                                 (:shape-name "UpdateTransformerResponse"))

(smithy/sdk/shapes:define-error validation-exception common-lisp:nil
                                ((message :target-type error-message :required
                                  common-lisp:t :member-name "Message"))
                                (:shape-name "ValidationException")
                                (:error-code 400))

(smithy/sdk/shapes:define-list validation-messages :member
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum wrap-format
    common-lisp:nil
  (:segment "SEGMENT")
  (:one-line "ONE_LINE")
  (:line-length "LINE_LENGTH"))

(smithy/sdk/shapes:define-structure wrap-options common-lisp:nil
                                    ((wrap-by :target-type wrap-format
                                      :required common-lisp:t :member-name
                                      "wrapBy")
                                     (line-terminator :target-type
                                      line-terminator :member-name
                                      "lineTerminator")
                                     (line-length :target-type line-length
                                      :member-name "lineLength"))
                                    (:shape-name "WrapOptions"))

(smithy/sdk/shapes:define-structure x12acknowledgment-options common-lisp:nil
                                    ((functional-acknowledgment :target-type
                                      x12functional-acknowledgment :required
                                      common-lisp:t :member-name
                                      "functionalAcknowledgment")
                                     (technical-acknowledgment :target-type
                                      x12technical-acknowledgment :required
                                      common-lisp:t :member-name
                                      "technicalAcknowledgment"))
                                    (:shape-name "X12AcknowledgmentOptions"))

(smithy/sdk/shapes:define-type x12acknowledgment-requested-code
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure x12advanced-options common-lisp:nil
                                    ((split-options :target-type
                                      x12split-options :member-name
                                      "splitOptions"))
                                    (:shape-name "X12AdvancedOptions"))

(smithy/sdk/shapes:define-type x12application-receiver-code
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type x12application-sender-code
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type x12component-separator
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure x12control-numbers common-lisp:nil
                                    ((starting-interchange-control-number
                                      :target-type
                                      starting-interchange-control-number
                                      :member-name
                                      "startingInterchangeControlNumber")
                                     (starting-functional-group-control-number
                                      :target-type
                                      starting-functional-group-control-number
                                      :member-name
                                      "startingFunctionalGroupControlNumber")
                                     (starting-transaction-set-control-number
                                      :target-type
                                      starting-transaction-set-control-number
                                      :member-name
                                      "startingTransactionSetControlNumber"))
                                    (:shape-name "X12ControlNumbers"))

(smithy/sdk/shapes:define-type x12data-element-separator
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure x12delimiters common-lisp:nil
                                    ((component-separator :target-type
                                      x12component-separator :member-name
                                      "componentSeparator")
                                     (data-element-separator :target-type
                                      x12data-element-separator :member-name
                                      "dataElementSeparator")
                                     (segment-terminator :target-type
                                      x12segment-terminator :member-name
                                      "segmentTerminator"))
                                    (:shape-name "X12Delimiters"))

(smithy/sdk/shapes:define-structure x12details common-lisp:nil
                                    ((transaction-set :target-type
                                      x12transaction-set :member-name
                                      "transactionSet")
                                     (version :target-type x12version
                                      :member-name "version"))
                                    (:shape-name "X12Details"))

(smithy/sdk/shapes:define-structure x12envelope common-lisp:nil
                                    ((common :target-type
                                      x12outbound-edi-headers :member-name
                                      "common")
                                     (wrap-options :target-type wrap-options
                                      :member-name "wrapOptions"))
                                    (:shape-name "X12Envelope"))

(smithy/sdk/shapes:define-enum x12functional-acknowledgment
    common-lisp:nil
  (:do-not-generate "DO_NOT_GENERATE")
  (:generate-all-segments "GENERATE_ALL_SEGMENTS")
  (:generate-without-transaction-set-response-loop
   "GENERATE_WITHOUT_TRANSACTION_SET_RESPONSE_LOOP"))

(smithy/sdk/shapes:define-structure x12functional-group-headers common-lisp:nil
                                    ((application-sender-code :target-type
                                      x12application-sender-code :member-name
                                      "applicationSenderCode")
                                     (application-receiver-code :target-type
                                      x12application-receiver-code :member-name
                                      "applicationReceiverCode")
                                     (responsible-agency-code :target-type
                                      x12responsible-agency-code :member-name
                                      "responsibleAgencyCode"))
                                    (:shape-name "X12FunctionalGroupHeaders"))

(smithy/sdk/shapes:define-enum x12gs05time-format
    common-lisp:nil
  (:hhmm "HHMM")
  (:hhmmss "HHMMSS")
  (:hhmmssdd "HHMMSSDD"))

(smithy/sdk/shapes:define-type x12id-qualifier smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure x12inbound-edi-options common-lisp:nil
                                    ((acknowledgment-options :target-type
                                      x12acknowledgment-options :member-name
                                      "acknowledgmentOptions"))
                                    (:shape-name "X12InboundEdiOptions"))

(smithy/sdk/shapes:define-structure x12interchange-control-headers
                                    common-lisp:nil
                                    ((sender-id-qualifier :target-type
                                      x12id-qualifier :member-name
                                      "senderIdQualifier")
                                     (sender-id :target-type x12sender-id
                                      :member-name "senderId")
                                     (receiver-id-qualifier :target-type
                                      x12id-qualifier :member-name
                                      "receiverIdQualifier")
                                     (receiver-id :target-type x12receiver-id
                                      :member-name "receiverId")
                                     (repetition-separator :target-type
                                      x12repetition-separator :member-name
                                      "repetitionSeparator")
                                     (acknowledgment-requested-code
                                      :target-type
                                      x12acknowledgment-requested-code
                                      :member-name
                                      "acknowledgmentRequestedCode")
                                     (usage-indicator-code :target-type
                                      x12usage-indicator-code :member-name
                                      "usageIndicatorCode"))
                                    (:shape-name
                                     "X12InterchangeControlHeaders"))

(smithy/sdk/shapes:define-structure x12outbound-edi-headers common-lisp:nil
                                    ((interchange-control-headers :target-type
                                      x12interchange-control-headers
                                      :member-name "interchangeControlHeaders")
                                     (functional-group-headers :target-type
                                      x12functional-group-headers :member-name
                                      "functionalGroupHeaders")
                                     (delimiters :target-type x12delimiters
                                      :member-name "delimiters")
                                     (validate-edi :target-type x12validate-edi
                                      :member-name "validateEdi")
                                     (control-numbers :target-type
                                      x12control-numbers :member-name
                                      "controlNumbers")
                                     (gs05time-format :target-type
                                      x12gs05time-format :member-name
                                      "gs05TimeFormat"))
                                    (:shape-name "X12OutboundEdiHeaders"))

(smithy/sdk/shapes:define-type x12receiver-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type x12repetition-separator
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type x12responsible-agency-code
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type x12segment-terminator
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type x12sender-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum x12split-by
    common-lisp:nil
  (:none "NONE")
  (:transaction "TRANSACTION"))

(smithy/sdk/shapes:define-structure x12split-options common-lisp:nil
                                    ((split-by :target-type x12split-by
                                      :required common-lisp:t :member-name
                                      "splitBy"))
                                    (:shape-name "X12SplitOptions"))

(smithy/sdk/shapes:define-enum x12technical-acknowledgment
    common-lisp:nil
  (:do-not-generate "DO_NOT_GENERATE")
  (:generate-all-segments "GENERATE_ALL_SEGMENTS"))

(smithy/sdk/shapes:define-enum x12transaction-set
    common-lisp:nil
  (:x12-100 "X12_100")
  (:x12-101 "X12_101")
  (:x12-102 "X12_102")
  (:x12-103 "X12_103")
  (:x12-104 "X12_104")
  (:x12-105 "X12_105")
  (:x12-106 "X12_106")
  (:x12-107 "X12_107")
  (:x12-108 "X12_108")
  (:x12-109 "X12_109")
  (:x12-110 "X12_110")
  (:x12-111 "X12_111")
  (:x12-112 "X12_112")
  (:x12-113 "X12_113")
  (:x12-120 "X12_120")
  (:x12-121 "X12_121")
  (:x12-124 "X12_124")
  (:x12-125 "X12_125")
  (:x12-126 "X12_126")
  (:x12-127 "X12_127")
  (:x12-128 "X12_128")
  (:x12-129 "X12_129")
  (:x12-130 "X12_130")
  (:x12-131 "X12_131")
  (:x12-132 "X12_132")
  (:x12-133 "X12_133")
  (:x12-135 "X12_135")
  (:x12-138 "X12_138")
  (:x12-139 "X12_139")
  (:x12-140 "X12_140")
  (:x12-141 "X12_141")
  (:x12-142 "X12_142")
  (:x12-143 "X12_143")
  (:x12-144 "X12_144")
  (:x12-146 "X12_146")
  (:x12-147 "X12_147")
  (:x12-148 "X12_148")
  (:x12-149 "X12_149")
  (:x12-150 "X12_150")
  (:x12-151 "X12_151")
  (:x12-152 "X12_152")
  (:x12-153 "X12_153")
  (:x12-154 "X12_154")
  (:x12-155 "X12_155")
  (:x12-157 "X12_157")
  (:x12-158 "X12_158")
  (:x12-159 "X12_159")
  (:x12-160 "X12_160")
  (:x12-161 "X12_161")
  (:x12-163 "X12_163")
  (:x12-170 "X12_170")
  (:x12-175 "X12_175")
  (:x12-176 "X12_176")
  (:x12-179 "X12_179")
  (:x12-180 "X12_180")
  (:x12-185 "X12_185")
  (:x12-186 "X12_186")
  (:x12-187 "X12_187")
  (:x12-188 "X12_188")
  (:x12-189 "X12_189")
  (:x12-190 "X12_190")
  (:x12-191 "X12_191")
  (:x12-194 "X12_194")
  (:x12-195 "X12_195")
  (:x12-196 "X12_196")
  (:x12-197 "X12_197")
  (:x12-198 "X12_198")
  (:x12-199 "X12_199")
  (:x12-200 "X12_200")
  (:x12-201 "X12_201")
  (:x12-202 "X12_202")
  (:x12-203 "X12_203")
  (:x12-204 "X12_204")
  (:x12-205 "X12_205")
  (:x12-206 "X12_206")
  (:x12-210 "X12_210")
  (:x12-211 "X12_211")
  (:x12-212 "X12_212")
  (:x12-213 "X12_213")
  (:x12-214 "X12_214")
  (:x12-215 "X12_215")
  (:x12-216 "X12_216")
  (:x12-217 "X12_217")
  (:x12-218 "X12_218")
  (:x12-219 "X12_219")
  (:x12-220 "X12_220")
  (:x12-222 "X12_222")
  (:x12-223 "X12_223")
  (:x12-224 "X12_224")
  (:x12-225 "X12_225")
  (:x12-227 "X12_227")
  (:x12-228 "X12_228")
  (:x12-240 "X12_240")
  (:x12-242 "X12_242")
  (:x12-244 "X12_244")
  (:x12-245 "X12_245")
  (:x12-248 "X12_248")
  (:x12-249 "X12_249")
  (:x12-250 "X12_250")
  (:x12-251 "X12_251")
  (:x12-252 "X12_252")
  (:x12-255 "X12_255")
  (:x12-256 "X12_256")
  (:x12-259 "X12_259")
  (:x12-260 "X12_260")
  (:x12-261 "X12_261")
  (:x12-262 "X12_262")
  (:x12-263 "X12_263")
  (:x12-264 "X12_264")
  (:x12-265 "X12_265")
  (:x12-266 "X12_266")
  (:x12-267 "X12_267")
  (:x12-268 "X12_268")
  (:x12-269 "X12_269")
  (:x12-270 "X12_270")
  (:x12-271 "X12_271")
  (:x12-272 "X12_272")
  (:x12-273 "X12_273")
  (:x12-274 "X12_274")
  (:x12-275 "X12_275")
  (:x12-276 "X12_276")
  (:x12-277 "X12_277")
  (:x12-278 "X12_278")
  (:x12-280 "X12_280")
  (:x12-283 "X12_283")
  (:x12-284 "X12_284")
  (:x12-285 "X12_285")
  (:x12-286 "X12_286")
  (:x12-288 "X12_288")
  (:x12-290 "X12_290")
  (:x12-300 "X12_300")
  (:x12-301 "X12_301")
  (:x12-303 "X12_303")
  (:x12-304 "X12_304")
  (:x12-309 "X12_309")
  (:x12-310 "X12_310")
  (:x12-311 "X12_311")
  (:x12-312 "X12_312")
  (:x12-313 "X12_313")
  (:x12-315 "X12_315")
  (:x12-317 "X12_317")
  (:x12-319 "X12_319")
  (:x12-322 "X12_322")
  (:x12-323 "X12_323")
  (:x12-324 "X12_324")
  (:x12-325 "X12_325")
  (:x12-326 "X12_326")
  (:x12-350 "X12_350")
  (:x12-352 "X12_352")
  (:x12-353 "X12_353")
  (:x12-354 "X12_354")
  (:x12-355 "X12_355")
  (:x12-356 "X12_356")
  (:x12-357 "X12_357")
  (:x12-358 "X12_358")
  (:x12-361 "X12_361")
  (:x12-362 "X12_362")
  (:x12-404 "X12_404")
  (:x12-410 "X12_410")
  (:x12-412 "X12_412")
  (:x12-414 "X12_414")
  (:x12-417 "X12_417")
  (:x12-418 "X12_418")
  (:x12-419 "X12_419")
  (:x12-420 "X12_420")
  (:x12-421 "X12_421")
  (:x12-422 "X12_422")
  (:x12-423 "X12_423")
  (:x12-424 "X12_424")
  (:x12-425 "X12_425")
  (:x12-426 "X12_426")
  (:x12-429 "X12_429")
  (:x12-431 "X12_431")
  (:x12-432 "X12_432")
  (:x12-433 "X12_433")
  (:x12-434 "X12_434")
  (:x12-435 "X12_435")
  (:x12-436 "X12_436")
  (:x12-437 "X12_437")
  (:x12-440 "X12_440")
  (:x12-451 "X12_451")
  (:x12-452 "X12_452")
  (:x12-453 "X12_453")
  (:x12-455 "X12_455")
  (:x12-456 "X12_456")
  (:x12-460 "X12_460")
  (:x12-463 "X12_463")
  (:x12-466 "X12_466")
  (:x12-468 "X12_468")
  (:x12-470 "X12_470")
  (:x12-475 "X12_475")
  (:x12-485 "X12_485")
  (:x12-486 "X12_486")
  (:x12-490 "X12_490")
  (:x12-492 "X12_492")
  (:x12-494 "X12_494")
  (:x12-500 "X12_500")
  (:x12-501 "X12_501")
  (:x12-503 "X12_503")
  (:x12-504 "X12_504")
  (:x12-511 "X12_511")
  (:x12-517 "X12_517")
  (:x12-521 "X12_521")
  (:x12-527 "X12_527")
  (:x12-536 "X12_536")
  (:x12-540 "X12_540")
  (:x12-561 "X12_561")
  (:x12-567 "X12_567")
  (:x12-568 "X12_568")
  (:x12-601 "X12_601")
  (:x12-602 "X12_602")
  (:x12-620 "X12_620")
  (:x12-625 "X12_625")
  (:x12-650 "X12_650")
  (:x12-715 "X12_715")
  (:x12-753 "X12_753")
  (:x12-754 "X12_754")
  (:x12-805 "X12_805")
  (:x12-806 "X12_806")
  (:x12-810 "X12_810")
  (:x12-811 "X12_811")
  (:x12-812 "X12_812")
  (:x12-813 "X12_813")
  (:x12-814 "X12_814")
  (:x12-815 "X12_815")
  (:x12-816 "X12_816")
  (:x12-818 "X12_818")
  (:x12-819 "X12_819")
  (:x12-820 "X12_820")
  (:x12-821 "X12_821")
  (:x12-822 "X12_822")
  (:x12-823 "X12_823")
  (:x12-824 "X12_824")
  (:x12-826 "X12_826")
  (:x12-827 "X12_827")
  (:x12-828 "X12_828")
  (:x12-829 "X12_829")
  (:x12-830 "X12_830")
  (:x12-831 "X12_831")
  (:x12-832 "X12_832")
  (:x12-833 "X12_833")
  (:x12-834 "X12_834")
  (:x12-835 "X12_835")
  (:x12-836 "X12_836")
  (:x12-837 "X12_837")
  (:x12-838 "X12_838")
  (:x12-839 "X12_839")
  (:x12-840 "X12_840")
  (:x12-841 "X12_841")
  (:x12-842 "X12_842")
  (:x12-843 "X12_843")
  (:x12-844 "X12_844")
  (:x12-845 "X12_845")
  (:x12-846 "X12_846")
  (:x12-847 "X12_847")
  (:x12-848 "X12_848")
  (:x12-849 "X12_849")
  (:x12-850 "X12_850")
  (:x12-851 "X12_851")
  (:x12-852 "X12_852")
  (:x12-853 "X12_853")
  (:x12-854 "X12_854")
  (:x12-855 "X12_855")
  (:x12-856 "X12_856")
  (:x12-857 "X12_857")
  (:x12-858 "X12_858")
  (:x12-859 "X12_859")
  (:x12-860 "X12_860")
  (:x12-861 "X12_861")
  (:x12-862 "X12_862")
  (:x12-863 "X12_863")
  (:x12-864 "X12_864")
  (:x12-865 "X12_865")
  (:x12-866 "X12_866")
  (:x12-867 "X12_867")
  (:x12-868 "X12_868")
  (:x12-869 "X12_869")
  (:x12-870 "X12_870")
  (:x12-871 "X12_871")
  (:x12-872 "X12_872")
  (:x12-873 "X12_873")
  (:x12-874 "X12_874")
  (:x12-875 "X12_875")
  (:x12-876 "X12_876")
  (:x12-877 "X12_877")
  (:x12-878 "X12_878")
  (:x12-879 "X12_879")
  (:x12-880 "X12_880")
  (:x12-881 "X12_881")
  (:x12-882 "X12_882")
  (:x12-883 "X12_883")
  (:x12-884 "X12_884")
  (:x12-885 "X12_885")
  (:x12-886 "X12_886")
  (:x12-887 "X12_887")
  (:x12-888 "X12_888")
  (:x12-889 "X12_889")
  (:x12-891 "X12_891")
  (:x12-893 "X12_893")
  (:x12-894 "X12_894")
  (:x12-895 "X12_895")
  (:x12-896 "X12_896")
  (:x12-920 "X12_920")
  (:x12-924 "X12_924")
  (:x12-925 "X12_925")
  (:x12-926 "X12_926")
  (:x12-928 "X12_928")
  (:x12-940 "X12_940")
  (:x12-943 "X12_943")
  (:x12-944 "X12_944")
  (:x12-945 "X12_945")
  (:x12-947 "X12_947")
  (:x12-980 "X12_980")
  (:x12-990 "X12_990")
  (:x12-993 "X12_993")
  (:x12-996 "X12_996")
  (:x12-997 "X12_997")
  (:x12-998 "X12_998")
  (:x12-999 "X12_999")
  (:x12-270-x279 "X12_270_X279")
  (:x12-271-x279 "X12_271_X279")
  (:x12-275-x210 "X12_275_X210")
  (:x12-275-x211 "X12_275_X211")
  (:x12-276-x212 "X12_276_X212")
  (:x12-277-x212 "X12_277_X212")
  (:x12-277-x214 "X12_277_X214")
  (:x12-277-x364 "X12_277_X364")
  (:x12-278-x217 "X12_278_X217")
  (:x12-820-x218 "X12_820_X218")
  (:x12-820-x306 "X12_820_X306")
  (:x12-824-x186 "X12_824_X186")
  (:x12-834-x220 "X12_834_X220")
  (:x12-834-x307 "X12_834_X307")
  (:x12-834-x318 "X12_834_X318")
  (:x12-835-x221 "X12_835_X221")
  (:x12-837-x222 "X12_837_X222")
  (:x12-837-x223 "X12_837_X223")
  (:x12-837-x224 "X12_837_X224")
  (:x12-837-x291 "X12_837_X291")
  (:x12-837-x292 "X12_837_X292")
  (:x12-837-x298 "X12_837_X298")
  (:x12-999-x231 "X12_999_X231"))

(smithy/sdk/shapes:define-type x12usage-indicator-code
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type x12validate-edi smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-enum x12version
    common-lisp:nil
  (:version-4010 "VERSION_4010")
  (:version-4030 "VERSION_4030")
  (:version-4050 "VERSION_4050")
  (:version-4060 "VERSION_4060")
  (:version-5010 "VERSION_5010")
  (:version-5010-hipaa "VERSION_5010_HIPAA"))

(smithy/sdk/operation:define-operation create-capability :shape-name
                                       "CreateCapability" :input
                                       create-capability-request :output
                                       create-capability-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri "/capabilities"
                                       :code 201)

(smithy/sdk/operation:define-operation create-partnership :shape-name
                                       "CreatePartnership" :input
                                       create-partnership-request :output
                                       create-partnership-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri "/partnerships"
                                       :code 201)

(smithy/sdk/operation:define-operation create-profile :shape-name
                                       "CreateProfile" :input
                                       create-profile-request :output
                                       create-profile-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri "/profiles" :code
                                       201)

(smithy/sdk/operation:define-operation create-starter-mapping-template
                                       :shape-name
                                       "CreateStarterMappingTemplate" :input
                                       create-starter-mapping-template-request
                                       :output
                                       create-starter-mapping-template-response
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/createmappingstarttemplate" :code 200)

(smithy/sdk/operation:define-operation create-transformer :shape-name
                                       "CreateTransformer" :input
                                       create-transformer-request :output
                                       create-transformer-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri "/transformers"
                                       :code 201)

(smithy/sdk/operation:define-operation delete-capability :shape-name
                                       "DeleteCapability" :input
                                       delete-capability-request :output
                                       common-lisp:null :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "DELETE" :uri
                                       "/capabilities/{capabilityId}" :code 200)

(smithy/sdk/operation:define-operation delete-partnership :shape-name
                                       "DeletePartnership" :input
                                       delete-partnership-request :output
                                       common-lisp:null :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "DELETE" :uri
                                       "/partnerships/{partnershipId}" :code
                                       200)

(smithy/sdk/operation:define-operation delete-profile :shape-name
                                       "DeleteProfile" :input
                                       delete-profile-request :output
                                       common-lisp:null :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "DELETE" :uri
                                       "/profiles/{profileId}" :code 200)

(smithy/sdk/operation:define-operation delete-transformer :shape-name
                                       "DeleteTransformer" :input
                                       delete-transformer-request :output
                                       common-lisp:null :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "DELETE" :uri
                                       "/transformers/{transformerId}" :code
                                       200)

(smithy/sdk/operation:define-operation generate-mapping :shape-name
                                       "GenerateMapping" :input
                                       generate-mapping-request :output
                                       generate-mapping-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri "/generate-mapping")

(smithy/sdk/operation:define-operation get-capability :shape-name
                                       "GetCapability" :input
                                       get-capability-request :output
                                       get-capability-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/capabilities/{capabilityId}" :code 200)

(smithy/sdk/operation:define-operation get-partnership :shape-name
                                       "GetPartnership" :input
                                       get-partnership-request :output
                                       get-partnership-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/partnerships/{partnershipId}" :code
                                       200)

(smithy/sdk/operation:define-operation get-profile :shape-name "GetProfile"
                                       :input get-profile-request :output
                                       get-profile-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/profiles/{profileId}" :code 200)

(smithy/sdk/operation:define-operation get-transformer :shape-name
                                       "GetTransformer" :input
                                       get-transformer-request :output
                                       get-transformer-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/transformers/{transformerId}" :code
                                       200)

(smithy/sdk/operation:define-operation get-transformer-job :shape-name
                                       "GetTransformerJob" :input
                                       get-transformer-job-request :output
                                       get-transformer-job-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/transformer-jobs/{transformerJobId}")

(smithy/sdk/operation:define-operation list-capabilities :shape-name
                                       "ListCapabilities" :input
                                       list-capabilities-request :output
                                       list-capabilities-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri "/capabilities" :code
                                       200)

(smithy/sdk/operation:define-operation list-partnerships :shape-name
                                       "ListPartnerships" :input
                                       list-partnerships-request :output
                                       list-partnerships-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri "/partnerships" :code
                                       200)

(smithy/sdk/operation:define-operation list-profiles :shape-name "ListProfiles"
                                       :input list-profiles-request :output
                                       list-profiles-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri "/profiles" :code 200)

(smithy/sdk/operation:define-operation list-tags-for-resource :shape-name
                                       "ListTagsForResource" :input
                                       list-tags-for-resource-request :output
                                       list-tags-for-resource-response :errors
                                       (internal-server-exception
                                        resource-not-found-exception
                                        validation-exception)
                                       :method "GET" :uri "/tags/{ResourceARN}"
                                       :code 200)

(smithy/sdk/operation:define-operation list-transformers :shape-name
                                       "ListTransformers" :input
                                       list-transformers-request :output
                                       list-transformers-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri "/transformers" :code
                                       200)

(smithy/sdk/operation:define-operation start-transformer-job :shape-name
                                       "StartTransformerJob" :input
                                       start-transformer-job-request :output
                                       start-transformer-job-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri "/transformer-jobs")

(smithy/sdk/operation:define-operation tag-resource :shape-name "TagResource"
                                       :input tag-resource-request :output
                                       common-lisp:null :errors
                                       (internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/tags/{ResourceARN}" :code 200)

(smithy/sdk/operation:define-operation test-conversion :shape-name
                                       "TestConversion" :input
                                       test-conversion-request :output
                                       test-conversion-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri "/testconversion"
                                       :code 200)

(smithy/sdk/operation:define-operation test-mapping :shape-name "TestMapping"
                                       :input test-mapping-request :output
                                       test-mapping-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri "/testmapping" :code
                                       201)

(smithy/sdk/operation:define-operation test-parsing :shape-name "TestParsing"
                                       :input test-parsing-request :output
                                       test-parsing-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri "/testparsing" :code
                                       201)

(smithy/sdk/operation:define-operation untag-resource :shape-name
                                       "UntagResource" :input
                                       untag-resource-request :output
                                       common-lisp:null :errors
                                       (internal-server-exception
                                        resource-not-found-exception
                                        validation-exception)
                                       :method "DELETE" :uri
                                       "/tags/{ResourceARN}" :code 200)

(smithy/sdk/operation:define-operation update-capability :shape-name
                                       "UpdateCapability" :input
                                       update-capability-request :output
                                       update-capability-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "PATCH" :uri
                                       "/capabilities/{capabilityId}" :code 200)

(smithy/sdk/operation:define-operation update-partnership :shape-name
                                       "UpdatePartnership" :input
                                       update-partnership-request :output
                                       update-partnership-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "PATCH" :uri
                                       "/partnerships/{partnershipId}" :code
                                       200)

(smithy/sdk/operation:define-operation update-profile :shape-name
                                       "UpdateProfile" :input
                                       update-profile-request :output
                                       update-profile-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "PATCH" :uri
                                       "/profiles/{profileId}" :code 200)

(smithy/sdk/operation:define-operation update-transformer :shape-name
                                       "UpdateTransformer" :input
                                       update-transformer-request :output
                                       update-transformer-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "PATCH" :uri
                                       "/transformers/{transformerId}" :code
                                       200)
