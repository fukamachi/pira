(uiop/package:define-package #:pira/comprehendmedical (:use)
                             (:export #:any-length-string #:attribute
                              #:attribute-list #:attribute-name
                              #:bounded-length-string #:characters
                              #:client-request-token-string
                              #:comprehend-medical-async-job-filter
                              #:comprehend-medical-async-job-properties
                              #:comprehend-medical-async-job-properties-list
                              #:comprehend-medical-20181030
                              #:describe-entities-detection-v2job
                              #:describe-icd10cminference-job
                              #:describe-phidetection-job
                              #:describe-rx-norm-inference-job
                              #:describe-snomedctinference-job
                              #:detect-entities #:detect-entities-v2
                              #:detect-phi #:entity #:entity-list
                              #:entity-sub-type #:entity-type #:float
                              #:icd10cmattribute #:icd10cmattribute-list
                              #:icd10cmattribute-type #:icd10cmconcept
                              #:icd10cmconcept-list #:icd10cmentity
                              #:icd10cmentity-category #:icd10cmentity-list
                              #:icd10cmentity-type #:icd10cmrelationship-type
                              #:icd10cmtrait #:icd10cmtrait-list
                              #:icd10cmtrait-name #:iam-role-arn
                              #:infer-icd10cm #:infer-rx-norm #:infer-snomedct
                              #:input-data-config #:integer #:job-id #:job-name
                              #:job-status #:kmskey #:language-code
                              #:list-entities-detection-v2jobs
                              #:list-icd10cminference-jobs
                              #:list-phidetection-jobs
                              #:list-rx-norm-inference-jobs
                              #:list-snomedctinference-jobs
                              #:manifest-file-path #:max-results-integer
                              #:model-version
                              #:ontology-linking-bounded-length-string
                              #:output-data-config #:relationship-type
                              #:rx-norm-attribute #:rx-norm-attribute-list
                              #:rx-norm-attribute-type #:rx-norm-concept
                              #:rx-norm-concept-list #:rx-norm-entity
                              #:rx-norm-entity-category #:rx-norm-entity-list
                              #:rx-norm-entity-type #:rx-norm-trait
                              #:rx-norm-trait-list #:rx-norm-trait-name
                              #:s3bucket #:s3key #:snomedctattribute
                              #:snomedctattribute-list #:snomedctattribute-type
                              #:snomedctconcept #:snomedctconcept-list
                              #:snomedctdetails #:snomedctentity
                              #:snomedctentity-category #:snomedctentity-list
                              #:snomedctentity-type #:snomedctrelationship-type
                              #:snomedcttrait #:snomedcttrait-list
                              #:snomedcttrait-name
                              #:start-entities-detection-v2job
                              #:start-icd10cminference-job
                              #:start-phidetection-job
                              #:start-rx-norm-inference-job
                              #:start-snomedctinference-job
                              #:stop-entities-detection-v2job
                              #:stop-icd10cminference-job
                              #:stop-phidetection-job
                              #:stop-rx-norm-inference-job
                              #:stop-snomedctinference-job #:string #:timestamp
                              #:trait #:trait-list #:unmapped-attribute
                              #:unmapped-attribute-list))
(common-lisp:in-package #:pira/comprehendmedical)

(smithy/sdk/service:define-service comprehend-medical-20181030 :shape-name
                                   "ComprehendMedical_20181030" :version
                                   "2018-10-30" :title "AWS Comprehend Medical"
                                   :traits
                                   '(("aws.api#service"
                                      ("sdkId" . "ComprehendMedical")
                                      ("arnNamespace" . "comprehendmedical")
                                      ("cloudFormationName"
                                       . "ComprehendMedical")
                                      ("cloudTrailEventSource"
                                       . "comprehendmedical.amazonaws.com")
                                      ("endpointPrefix" . "comprehendmedical"))
                                     ("aws.auth#sigv4"
                                      ("name" . "comprehendmedical"))
                                     ("aws.protocols#awsJson1_1")))

(smithy/sdk/shapes:define-type any-length-string smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure attribute common-lisp:nil
                                    ((type :target-type entity-sub-type
                                      :member-name "Type")
                                     (score :target-type float :member-name
                                      "Score")
                                     (relationship-score :target-type float
                                      :member-name "RelationshipScore")
                                     (relationship-type :target-type
                                      relationship-type :member-name
                                      "RelationshipType")
                                     (id :target-type integer :member-name
                                      "Id")
                                     (begin-offset :target-type integer
                                      :member-name "BeginOffset")
                                     (end-offset :target-type integer
                                      :member-name "EndOffset")
                                     (text :target-type string :member-name
                                      "Text")
                                     (category :target-type entity-type
                                      :member-name "Category")
                                     (traits :target-type trait-list
                                      :member-name "Traits"))
                                    (:shape-name "Attribute"))

(smithy/sdk/shapes:define-list attribute-list :member attribute)

(smithy/sdk/shapes:define-enum attribute-name
    common-lisp:nil
  (:sign "SIGN")
  (:symptom "SYMPTOM")
  (:diagnosis "DIAGNOSIS")
  (:negation "NEGATION")
  (:pertains-to-family "PERTAINS_TO_FAMILY")
  (:hypothetical "HYPOTHETICAL")
  (:low-confidence "LOW_CONFIDENCE")
  (:past-history "PAST_HISTORY")
  (:future "FUTURE"))

(smithy/sdk/shapes:define-type bounded-length-string
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure characters common-lisp:nil
                                    ((original-text-characters :target-type
                                      integer :member-name
                                      "OriginalTextCharacters"))
                                    (:shape-name "Characters"))

(smithy/sdk/shapes:define-type client-request-token-string
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure comprehend-medical-async-job-filter
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
                                     "ComprehendMedicalAsyncJobFilter"))

(smithy/sdk/shapes:define-structure comprehend-medical-async-job-properties
                                    common-lisp:nil
                                    ((job-id :target-type job-id :member-name
                                      "JobId")
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
                                     (expiration-time :target-type timestamp
                                      :member-name "ExpirationTime")
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
                                     (manifest-file-path :target-type
                                      manifest-file-path :member-name
                                      "ManifestFilePath")
                                     (kmskey :target-type kmskey :member-name
                                      "KMSKey")
                                     (model-version :target-type model-version
                                      :member-name "ModelVersion"))
                                    (:shape-name
                                     "ComprehendMedicalAsyncJobProperties"))

(smithy/sdk/shapes:define-list comprehend-medical-async-job-properties-list
                               :member comprehend-medical-async-job-properties)

(smithy/sdk/shapes:define-input describe-entities-detection-v2job-request
                                common-lisp:nil
                                ((job-id :target-type job-id :required
                                  common-lisp:t :member-name "JobId"))
                                (:shape-name
                                 "DescribeEntitiesDetectionV2JobRequest"))

(smithy/sdk/shapes:define-output describe-entities-detection-v2job-response
                                 common-lisp:nil
                                 ((comprehend-medical-async-job-properties
                                   :target-type
                                   comprehend-medical-async-job-properties
                                   :member-name
                                   "ComprehendMedicalAsyncJobProperties"))
                                 (:shape-name
                                  "DescribeEntitiesDetectionV2JobResponse"))

(smithy/sdk/shapes:define-input describe-icd10cminference-job-request
                                common-lisp:nil
                                ((job-id :target-type job-id :required
                                  common-lisp:t :member-name "JobId"))
                                (:shape-name
                                 "DescribeICD10CMInferenceJobRequest"))

(smithy/sdk/shapes:define-output describe-icd10cminference-job-response
                                 common-lisp:nil
                                 ((comprehend-medical-async-job-properties
                                   :target-type
                                   comprehend-medical-async-job-properties
                                   :member-name
                                   "ComprehendMedicalAsyncJobProperties"))
                                 (:shape-name
                                  "DescribeICD10CMInferenceJobResponse"))

(smithy/sdk/shapes:define-input describe-phidetection-job-request
                                common-lisp:nil
                                ((job-id :target-type job-id :required
                                  common-lisp:t :member-name "JobId"))
                                (:shape-name "DescribePHIDetectionJobRequest"))

(smithy/sdk/shapes:define-output describe-phidetection-job-response
                                 common-lisp:nil
                                 ((comprehend-medical-async-job-properties
                                   :target-type
                                   comprehend-medical-async-job-properties
                                   :member-name
                                   "ComprehendMedicalAsyncJobProperties"))
                                 (:shape-name
                                  "DescribePHIDetectionJobResponse"))

(smithy/sdk/shapes:define-input describe-rx-norm-inference-job-request
                                common-lisp:nil
                                ((job-id :target-type job-id :required
                                  common-lisp:t :member-name "JobId"))
                                (:shape-name
                                 "DescribeRxNormInferenceJobRequest"))

(smithy/sdk/shapes:define-output describe-rx-norm-inference-job-response
                                 common-lisp:nil
                                 ((comprehend-medical-async-job-properties
                                   :target-type
                                   comprehend-medical-async-job-properties
                                   :member-name
                                   "ComprehendMedicalAsyncJobProperties"))
                                 (:shape-name
                                  "DescribeRxNormInferenceJobResponse"))

(smithy/sdk/shapes:define-input describe-snomedctinference-job-request
                                common-lisp:nil
                                ((job-id :target-type job-id :required
                                  common-lisp:t :member-name "JobId"))
                                (:shape-name
                                 "DescribeSNOMEDCTInferenceJobRequest"))

(smithy/sdk/shapes:define-output describe-snomedctinference-job-response
                                 common-lisp:nil
                                 ((comprehend-medical-async-job-properties
                                   :target-type
                                   comprehend-medical-async-job-properties
                                   :member-name
                                   "ComprehendMedicalAsyncJobProperties"))
                                 (:shape-name
                                  "DescribeSNOMEDCTInferenceJobResponse"))

(smithy/sdk/shapes:define-input detect-entities-request common-lisp:nil
                                ((text :target-type bounded-length-string
                                  :required common-lisp:t :member-name "Text"))
                                (:shape-name "DetectEntitiesRequest"))

(smithy/sdk/shapes:define-output detect-entities-response common-lisp:nil
                                 ((entities :target-type entity-list :required
                                   common-lisp:t :member-name "Entities")
                                  (unmapped-attributes :target-type
                                   unmapped-attribute-list :member-name
                                   "UnmappedAttributes")
                                  (pagination-token :target-type string
                                   :member-name "PaginationToken")
                                  (model-version :target-type string :required
                                   common-lisp:t :member-name "ModelVersion"))
                                 (:shape-name "DetectEntitiesResponse"))

(smithy/sdk/shapes:define-input detect-entities-v2request common-lisp:nil
                                ((text :target-type bounded-length-string
                                  :required common-lisp:t :member-name "Text"))
                                (:shape-name "DetectEntitiesV2Request"))

(smithy/sdk/shapes:define-output detect-entities-v2response common-lisp:nil
                                 ((entities :target-type entity-list :required
                                   common-lisp:t :member-name "Entities")
                                  (unmapped-attributes :target-type
                                   unmapped-attribute-list :member-name
                                   "UnmappedAttributes")
                                  (pagination-token :target-type string
                                   :member-name "PaginationToken")
                                  (model-version :target-type string :required
                                   common-lisp:t :member-name "ModelVersion"))
                                 (:shape-name "DetectEntitiesV2Response"))

(smithy/sdk/shapes:define-input detect-phirequest common-lisp:nil
                                ((text :target-type bounded-length-string
                                  :required common-lisp:t :member-name "Text"))
                                (:shape-name "DetectPHIRequest"))

(smithy/sdk/shapes:define-output detect-phiresponse common-lisp:nil
                                 ((entities :target-type entity-list :required
                                   common-lisp:t :member-name "Entities")
                                  (pagination-token :target-type string
                                   :member-name "PaginationToken")
                                  (model-version :target-type string :required
                                   common-lisp:t :member-name "ModelVersion"))
                                 (:shape-name "DetectPHIResponse"))

(smithy/sdk/shapes:define-structure entity common-lisp:nil
                                    ((id :target-type integer :member-name
                                      "Id")
                                     (begin-offset :target-type integer
                                      :member-name "BeginOffset")
                                     (end-offset :target-type integer
                                      :member-name "EndOffset")
                                     (score :target-type float :member-name
                                      "Score")
                                     (text :target-type string :member-name
                                      "Text")
                                     (category :target-type entity-type
                                      :member-name "Category")
                                     (type :target-type entity-sub-type
                                      :member-name "Type")
                                     (traits :target-type trait-list
                                      :member-name "Traits")
                                     (attributes :target-type attribute-list
                                      :member-name "Attributes"))
                                    (:shape-name "Entity"))

(smithy/sdk/shapes:define-list entity-list :member entity)

(smithy/sdk/shapes:define-enum entity-sub-type
    common-lisp:nil
  (:name "NAME")
  (:dx-name "DX_NAME")
  (:dosage "DOSAGE")
  (:route-or-mode "ROUTE_OR_MODE")
  (:form "FORM")
  (:frequency "FREQUENCY")
  (:duration "DURATION")
  (:generic-name "GENERIC_NAME")
  (:brand-name "BRAND_NAME")
  (:strength "STRENGTH")
  (:rate "RATE")
  (:acuity "ACUITY")
  (:test-name "TEST_NAME")
  (:test-value "TEST_VALUE")
  (:test-units "TEST_UNITS")
  (:test-unit "TEST_UNIT")
  (:procedure-name "PROCEDURE_NAME")
  (:treatment-name "TREATMENT_NAME")
  (:date "DATE")
  (:age "AGE")
  (:contact-point "CONTACT_POINT")
  (:phone-or-fax "PHONE_OR_FAX")
  (:email "EMAIL")
  (:identifier "IDENTIFIER")
  (:id "ID")
  (:url "URL")
  (:address "ADDRESS")
  (:profession "PROFESSION")
  (:system-organ-site "SYSTEM_ORGAN_SITE")
  (:direction "DIRECTION")
  (:quality "QUALITY")
  (:quantity "QUANTITY")
  (:time-expression "TIME_EXPRESSION")
  (:time-to-medication-name "TIME_TO_MEDICATION_NAME")
  (:time-to-dx-name "TIME_TO_DX_NAME")
  (:time-to-test-name "TIME_TO_TEST_NAME")
  (:time-to-procedure-name "TIME_TO_PROCEDURE_NAME")
  (:time-to-treatment-name "TIME_TO_TREATMENT_NAME")
  (:amount "AMOUNT")
  (:gender "GENDER")
  (:race-ethnicity "RACE_ETHNICITY")
  (:allergies "ALLERGIES")
  (:tobacco-use "TOBACCO_USE")
  (:alcohol-consumption "ALCOHOL_CONSUMPTION")
  (:rec-drug-use "REC_DRUG_USE"))

(smithy/sdk/shapes:define-enum entity-type
    common-lisp:nil
  (:medication "MEDICATION")
  (:medical-condition "MEDICAL_CONDITION")
  (:protected-health-information "PROTECTED_HEALTH_INFORMATION")
  (:test-treatment-procedure "TEST_TREATMENT_PROCEDURE")
  (:anatomy "ANATOMY")
  (:time-expression "TIME_EXPRESSION")
  (:behavioral-environmental-social "BEHAVIORAL_ENVIRONMENTAL_SOCIAL"))

(smithy/sdk/shapes:define-type float smithy/sdk/smithy-types:float)

(smithy/sdk/shapes:define-structure icd10cmattribute common-lisp:nil
                                    ((type :target-type icd10cmattribute-type
                                      :member-name "Type")
                                     (score :target-type float :member-name
                                      "Score")
                                     (relationship-score :target-type float
                                      :member-name "RelationshipScore")
                                     (id :target-type integer :member-name
                                      "Id")
                                     (begin-offset :target-type integer
                                      :member-name "BeginOffset")
                                     (end-offset :target-type integer
                                      :member-name "EndOffset")
                                     (text :target-type string :member-name
                                      "Text")
                                     (traits :target-type icd10cmtrait-list
                                      :member-name "Traits")
                                     (category :target-type icd10cmentity-type
                                      :member-name "Category")
                                     (relationship-type :target-type
                                      icd10cmrelationship-type :member-name
                                      "RelationshipType"))
                                    (:shape-name "ICD10CMAttribute"))

(smithy/sdk/shapes:define-list icd10cmattribute-list :member icd10cmattribute)

(smithy/sdk/shapes:define-enum icd10cmattribute-type
    common-lisp:nil
  (:acuity "ACUITY")
  (:direction "DIRECTION")
  (:system-organ-site "SYSTEM_ORGAN_SITE")
  (:quality "QUALITY")
  (:quantity "QUANTITY")
  (:time-to-dx-name "TIME_TO_DX_NAME")
  (:time-expression "TIME_EXPRESSION"))

(smithy/sdk/shapes:define-structure icd10cmconcept common-lisp:nil
                                    ((description :target-type string
                                      :member-name "Description")
                                     (code :target-type string :member-name
                                      "Code")
                                     (score :target-type float :member-name
                                      "Score"))
                                    (:shape-name "ICD10CMConcept"))

(smithy/sdk/shapes:define-list icd10cmconcept-list :member icd10cmconcept)

(smithy/sdk/shapes:define-structure icd10cmentity common-lisp:nil
                                    ((id :target-type integer :member-name
                                      "Id")
                                     (text :target-type
                                      ontology-linking-bounded-length-string
                                      :member-name "Text")
                                     (category :target-type
                                      icd10cmentity-category :member-name
                                      "Category")
                                     (type :target-type icd10cmentity-type
                                      :member-name "Type")
                                     (score :target-type float :member-name
                                      "Score")
                                     (begin-offset :target-type integer
                                      :member-name "BeginOffset")
                                     (end-offset :target-type integer
                                      :member-name "EndOffset")
                                     (attributes :target-type
                                      icd10cmattribute-list :member-name
                                      "Attributes")
                                     (traits :target-type icd10cmtrait-list
                                      :member-name "Traits")
                                     (icd10cmconcepts :target-type
                                      icd10cmconcept-list :member-name
                                      "ICD10CMConcepts"))
                                    (:shape-name "ICD10CMEntity"))

(smithy/sdk/shapes:define-enum icd10cmentity-category
    common-lisp:nil
  (:medical-condition "MEDICAL_CONDITION"))

(smithy/sdk/shapes:define-list icd10cmentity-list :member icd10cmentity)

(smithy/sdk/shapes:define-enum icd10cmentity-type
    common-lisp:nil
  (:dx-name "DX_NAME")
  (:time-expression "TIME_EXPRESSION"))

(smithy/sdk/shapes:define-enum icd10cmrelationship-type
    common-lisp:nil
  (:overlap "OVERLAP")
  (:system-organ-site "SYSTEM_ORGAN_SITE")
  (:quality "QUALITY"))

(smithy/sdk/shapes:define-structure icd10cmtrait common-lisp:nil
                                    ((name :target-type icd10cmtrait-name
                                      :member-name "Name")
                                     (score :target-type float :member-name
                                      "Score"))
                                    (:shape-name "ICD10CMTrait"))

(smithy/sdk/shapes:define-list icd10cmtrait-list :member icd10cmtrait)

(smithy/sdk/shapes:define-enum icd10cmtrait-name
    common-lisp:nil
  (:negation "NEGATION")
  (:diagnosis "DIAGNOSIS")
  (:sign "SIGN")
  (:symptom "SYMPTOM")
  (:pertains-to-family "PERTAINS_TO_FAMILY")
  (:hypothetical "HYPOTHETICAL")
  (:low-confidence "LOW_CONFIDENCE"))

(smithy/sdk/shapes:define-type iam-role-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input infer-icd10cmrequest common-lisp:nil
                                ((text :target-type
                                  ontology-linking-bounded-length-string
                                  :required common-lisp:t :member-name "Text"))
                                (:shape-name "InferICD10CMRequest"))

(smithy/sdk/shapes:define-output infer-icd10cmresponse common-lisp:nil
                                 ((entities :target-type icd10cmentity-list
                                   :required common-lisp:t :member-name
                                   "Entities")
                                  (pagination-token :target-type string
                                   :member-name "PaginationToken")
                                  (model-version :target-type string
                                   :member-name "ModelVersion"))
                                 (:shape-name "InferICD10CMResponse"))

(smithy/sdk/shapes:define-input infer-rx-norm-request common-lisp:nil
                                ((text :target-type
                                  ontology-linking-bounded-length-string
                                  :required common-lisp:t :member-name "Text"))
                                (:shape-name "InferRxNormRequest"))

(smithy/sdk/shapes:define-output infer-rx-norm-response common-lisp:nil
                                 ((entities :target-type rx-norm-entity-list
                                   :required common-lisp:t :member-name
                                   "Entities")
                                  (pagination-token :target-type string
                                   :member-name "PaginationToken")
                                  (model-version :target-type string
                                   :member-name "ModelVersion"))
                                 (:shape-name "InferRxNormResponse"))

(smithy/sdk/shapes:define-input infer-snomedctrequest common-lisp:nil
                                ((text :target-type
                                  ontology-linking-bounded-length-string
                                  :required common-lisp:t :member-name "Text"))
                                (:shape-name "InferSNOMEDCTRequest"))

(smithy/sdk/shapes:define-output infer-snomedctresponse common-lisp:nil
                                 ((entities :target-type snomedctentity-list
                                   :required common-lisp:t :member-name
                                   "Entities")
                                  (pagination-token :target-type string
                                   :member-name "PaginationToken")
                                  (model-version :target-type string
                                   :member-name "ModelVersion")
                                  (snomedctdetails :target-type snomedctdetails
                                   :member-name "SNOMEDCTDetails")
                                  (characters :target-type characters
                                   :member-name "Characters"))
                                 (:shape-name "InferSNOMEDCTResponse"))

(smithy/sdk/shapes:define-structure input-data-config common-lisp:nil
                                    ((s3bucket :target-type s3bucket :required
                                      common-lisp:t :member-name "S3Bucket")
                                     (s3key :target-type s3key :member-name
                                      "S3Key"))
                                    (:shape-name "InputDataConfig"))

(smithy/sdk/shapes:define-type integer smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-error internal-server-exception common-lisp:nil
                                ((message :target-type string :member-name
                                  "Message"))
                                (:shape-name "InternalServerException")
                                (:error-code 500))

(smithy/sdk/shapes:define-error invalid-encoding-exception common-lisp:nil
                                ((message :target-type string :member-name
                                  "Message"))
                                (:shape-name "InvalidEncodingException")
                                (:error-code 400))

(smithy/sdk/shapes:define-error invalid-request-exception common-lisp:nil
                                ((message :target-type string :member-name
                                  "Message"))
                                (:shape-name "InvalidRequestException")
                                (:error-code 400))

(smithy/sdk/shapes:define-type job-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type job-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum job-status
    common-lisp:nil
  (:submitted "SUBMITTED")
  (:in-progress "IN_PROGRESS")
  (:completed "COMPLETED")
  (:partial-success "PARTIAL_SUCCESS")
  (:failed "FAILED")
  (:stop-requested "STOP_REQUESTED")
  (:stopped "STOPPED"))

(smithy/sdk/shapes:define-type kmskey smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum language-code
    common-lisp:nil
  (:en "en"))

(smithy/sdk/shapes:define-input list-entities-detection-v2jobs-request
                                common-lisp:nil
                                ((filter :target-type
                                  comprehend-medical-async-job-filter
                                  :member-name "Filter")
                                 (next-token :target-type string :member-name
                                  "NextToken")
                                 (max-results :target-type max-results-integer
                                  :member-name "MaxResults"))
                                (:shape-name
                                 "ListEntitiesDetectionV2JobsRequest"))

(smithy/sdk/shapes:define-output list-entities-detection-v2jobs-response
                                 common-lisp:nil
                                 ((comprehend-medical-async-job-properties-list
                                   :target-type
                                   comprehend-medical-async-job-properties-list
                                   :member-name
                                   "ComprehendMedicalAsyncJobPropertiesList")
                                  (next-token :target-type string :member-name
                                   "NextToken"))
                                 (:shape-name
                                  "ListEntitiesDetectionV2JobsResponse"))

(smithy/sdk/shapes:define-input list-icd10cminference-jobs-request
                                common-lisp:nil
                                ((filter :target-type
                                  comprehend-medical-async-job-filter
                                  :member-name "Filter")
                                 (next-token :target-type string :member-name
                                  "NextToken")
                                 (max-results :target-type max-results-integer
                                  :member-name "MaxResults"))
                                (:shape-name "ListICD10CMInferenceJobsRequest"))

(smithy/sdk/shapes:define-output list-icd10cminference-jobs-response
                                 common-lisp:nil
                                 ((comprehend-medical-async-job-properties-list
                                   :target-type
                                   comprehend-medical-async-job-properties-list
                                   :member-name
                                   "ComprehendMedicalAsyncJobPropertiesList")
                                  (next-token :target-type string :member-name
                                   "NextToken"))
                                 (:shape-name
                                  "ListICD10CMInferenceJobsResponse"))

(smithy/sdk/shapes:define-input list-phidetection-jobs-request common-lisp:nil
                                ((filter :target-type
                                  comprehend-medical-async-job-filter
                                  :member-name "Filter")
                                 (next-token :target-type string :member-name
                                  "NextToken")
                                 (max-results :target-type max-results-integer
                                  :member-name "MaxResults"))
                                (:shape-name "ListPHIDetectionJobsRequest"))

(smithy/sdk/shapes:define-output list-phidetection-jobs-response
                                 common-lisp:nil
                                 ((comprehend-medical-async-job-properties-list
                                   :target-type
                                   comprehend-medical-async-job-properties-list
                                   :member-name
                                   "ComprehendMedicalAsyncJobPropertiesList")
                                  (next-token :target-type string :member-name
                                   "NextToken"))
                                 (:shape-name "ListPHIDetectionJobsResponse"))

(smithy/sdk/shapes:define-input list-rx-norm-inference-jobs-request
                                common-lisp:nil
                                ((filter :target-type
                                  comprehend-medical-async-job-filter
                                  :member-name "Filter")
                                 (next-token :target-type string :member-name
                                  "NextToken")
                                 (max-results :target-type max-results-integer
                                  :member-name "MaxResults"))
                                (:shape-name "ListRxNormInferenceJobsRequest"))

(smithy/sdk/shapes:define-output list-rx-norm-inference-jobs-response
                                 common-lisp:nil
                                 ((comprehend-medical-async-job-properties-list
                                   :target-type
                                   comprehend-medical-async-job-properties-list
                                   :member-name
                                   "ComprehendMedicalAsyncJobPropertiesList")
                                  (next-token :target-type string :member-name
                                   "NextToken"))
                                 (:shape-name
                                  "ListRxNormInferenceJobsResponse"))

(smithy/sdk/shapes:define-input list-snomedctinference-jobs-request
                                common-lisp:nil
                                ((filter :target-type
                                  comprehend-medical-async-job-filter
                                  :member-name "Filter")
                                 (next-token :target-type string :member-name
                                  "NextToken")
                                 (max-results :target-type max-results-integer
                                  :member-name "MaxResults"))
                                (:shape-name
                                 "ListSNOMEDCTInferenceJobsRequest"))

(smithy/sdk/shapes:define-output list-snomedctinference-jobs-response
                                 common-lisp:nil
                                 ((comprehend-medical-async-job-properties-list
                                   :target-type
                                   comprehend-medical-async-job-properties-list
                                   :member-name
                                   "ComprehendMedicalAsyncJobPropertiesList")
                                  (next-token :target-type string :member-name
                                   "NextToken"))
                                 (:shape-name
                                  "ListSNOMEDCTInferenceJobsResponse"))

(smithy/sdk/shapes:define-type manifest-file-path
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type max-results-integer
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type model-version smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type ontology-linking-bounded-length-string
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure output-data-config common-lisp:nil
                                    ((s3bucket :target-type s3bucket :required
                                      common-lisp:t :member-name "S3Bucket")
                                     (s3key :target-type s3key :member-name
                                      "S3Key"))
                                    (:shape-name "OutputDataConfig"))

(smithy/sdk/shapes:define-enum relationship-type
    common-lisp:nil
  (:every "EVERY")
  (:with-dosage "WITH_DOSAGE")
  (:administered-via "ADMINISTERED_VIA")
  (:for "FOR")
  (:negative "NEGATIVE")
  (:overlap "OVERLAP")
  (:dosage "DOSAGE")
  (:route-or-mode "ROUTE_OR_MODE")
  (:form "FORM")
  (:frequency "FREQUENCY")
  (:duration "DURATION")
  (:strength "STRENGTH")
  (:rate "RATE")
  (:acuity "ACUITY")
  (:test-value "TEST_VALUE")
  (:test-units "TEST_UNITS")
  (:test-unit "TEST_UNIT")
  (:direction "DIRECTION")
  (:system-organ-site "SYSTEM_ORGAN_SITE")
  (:amount "AMOUNT")
  (:usage "USAGE")
  (:quality "QUALITY"))

(smithy/sdk/shapes:define-error resource-not-found-exception common-lisp:nil
                                ((message :target-type string :member-name
                                  "Message"))
                                (:shape-name "ResourceNotFoundException")
                                (:error-code 404))

(smithy/sdk/shapes:define-structure rx-norm-attribute common-lisp:nil
                                    ((type :target-type rx-norm-attribute-type
                                      :member-name "Type")
                                     (score :target-type float :member-name
                                      "Score")
                                     (relationship-score :target-type float
                                      :member-name "RelationshipScore")
                                     (id :target-type integer :member-name
                                      "Id")
                                     (begin-offset :target-type integer
                                      :member-name "BeginOffset")
                                     (end-offset :target-type integer
                                      :member-name "EndOffset")
                                     (text :target-type string :member-name
                                      "Text")
                                     (traits :target-type rx-norm-trait-list
                                      :member-name "Traits"))
                                    (:shape-name "RxNormAttribute"))

(smithy/sdk/shapes:define-list rx-norm-attribute-list :member rx-norm-attribute)

(smithy/sdk/shapes:define-enum rx-norm-attribute-type
    common-lisp:nil
  (:dosage "DOSAGE")
  (:duration "DURATION")
  (:form "FORM")
  (:frequency "FREQUENCY")
  (:rate "RATE")
  (:route-or-mode "ROUTE_OR_MODE")
  (:strength "STRENGTH"))

(smithy/sdk/shapes:define-structure rx-norm-concept common-lisp:nil
                                    ((description :target-type string
                                      :member-name "Description")
                                     (code :target-type string :member-name
                                      "Code")
                                     (score :target-type float :member-name
                                      "Score"))
                                    (:shape-name "RxNormConcept"))

(smithy/sdk/shapes:define-list rx-norm-concept-list :member rx-norm-concept)

(smithy/sdk/shapes:define-structure rx-norm-entity common-lisp:nil
                                    ((id :target-type integer :member-name
                                      "Id")
                                     (text :target-type
                                      ontology-linking-bounded-length-string
                                      :member-name "Text")
                                     (category :target-type
                                      rx-norm-entity-category :member-name
                                      "Category")
                                     (type :target-type rx-norm-entity-type
                                      :member-name "Type")
                                     (score :target-type float :member-name
                                      "Score")
                                     (begin-offset :target-type integer
                                      :member-name "BeginOffset")
                                     (end-offset :target-type integer
                                      :member-name "EndOffset")
                                     (attributes :target-type
                                      rx-norm-attribute-list :member-name
                                      "Attributes")
                                     (traits :target-type rx-norm-trait-list
                                      :member-name "Traits")
                                     (rx-norm-concepts :target-type
                                      rx-norm-concept-list :member-name
                                      "RxNormConcepts"))
                                    (:shape-name "RxNormEntity"))

(smithy/sdk/shapes:define-enum rx-norm-entity-category
    common-lisp:nil
  (:medication "MEDICATION"))

(smithy/sdk/shapes:define-list rx-norm-entity-list :member rx-norm-entity)

(smithy/sdk/shapes:define-enum rx-norm-entity-type
    common-lisp:nil
  (:brand-name "BRAND_NAME")
  (:generic-name "GENERIC_NAME"))

(smithy/sdk/shapes:define-structure rx-norm-trait common-lisp:nil
                                    ((name :target-type rx-norm-trait-name
                                      :member-name "Name")
                                     (score :target-type float :member-name
                                      "Score"))
                                    (:shape-name "RxNormTrait"))

(smithy/sdk/shapes:define-list rx-norm-trait-list :member rx-norm-trait)

(smithy/sdk/shapes:define-enum rx-norm-trait-name
    common-lisp:nil
  (:negation "NEGATION")
  (:past-history "PAST_HISTORY"))

(smithy/sdk/shapes:define-type s3bucket smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type s3key smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure snomedctattribute common-lisp:nil
                                    ((category :target-type
                                      snomedctentity-category :member-name
                                      "Category")
                                     (type :target-type snomedctattribute-type
                                      :member-name "Type")
                                     (score :target-type float :member-name
                                      "Score")
                                     (relationship-score :target-type float
                                      :member-name "RelationshipScore")
                                     (relationship-type :target-type
                                      snomedctrelationship-type :member-name
                                      "RelationshipType")
                                     (id :target-type integer :member-name
                                      "Id")
                                     (begin-offset :target-type integer
                                      :member-name "BeginOffset")
                                     (end-offset :target-type integer
                                      :member-name "EndOffset")
                                     (text :target-type string :member-name
                                      "Text")
                                     (traits :target-type snomedcttrait-list
                                      :member-name "Traits")
                                     (snomedctconcepts :target-type
                                      snomedctconcept-list :member-name
                                      "SNOMEDCTConcepts"))
                                    (:shape-name "SNOMEDCTAttribute"))

(smithy/sdk/shapes:define-list snomedctattribute-list :member snomedctattribute)

(smithy/sdk/shapes:define-enum snomedctattribute-type
    common-lisp:nil
  (:acuity "ACUITY")
  (:quality "QUALITY")
  (:direction "DIRECTION")
  (:system-organ-site "SYSTEM_ORGAN_SITE")
  (:test-value "TEST_VALUE")
  (:test-unit "TEST_UNIT"))

(smithy/sdk/shapes:define-structure snomedctconcept common-lisp:nil
                                    ((description :target-type string
                                      :member-name "Description")
                                     (code :target-type string :member-name
                                      "Code")
                                     (score :target-type float :member-name
                                      "Score"))
                                    (:shape-name "SNOMEDCTConcept"))

(smithy/sdk/shapes:define-list snomedctconcept-list :member snomedctconcept)

(smithy/sdk/shapes:define-structure snomedctdetails common-lisp:nil
                                    ((edition :target-type string :member-name
                                      "Edition")
                                     (language :target-type string :member-name
                                      "Language")
                                     (version-date :target-type string
                                      :member-name "VersionDate"))
                                    (:shape-name "SNOMEDCTDetails"))

(smithy/sdk/shapes:define-structure snomedctentity common-lisp:nil
                                    ((id :target-type integer :member-name
                                      "Id")
                                     (text :target-type
                                      ontology-linking-bounded-length-string
                                      :member-name "Text")
                                     (category :target-type
                                      snomedctentity-category :member-name
                                      "Category")
                                     (type :target-type snomedctentity-type
                                      :member-name "Type")
                                     (score :target-type float :member-name
                                      "Score")
                                     (begin-offset :target-type integer
                                      :member-name "BeginOffset")
                                     (end-offset :target-type integer
                                      :member-name "EndOffset")
                                     (attributes :target-type
                                      snomedctattribute-list :member-name
                                      "Attributes")
                                     (traits :target-type snomedcttrait-list
                                      :member-name "Traits")
                                     (snomedctconcepts :target-type
                                      snomedctconcept-list :member-name
                                      "SNOMEDCTConcepts"))
                                    (:shape-name "SNOMEDCTEntity"))

(smithy/sdk/shapes:define-enum snomedctentity-category
    common-lisp:nil
  (:medical-condition "MEDICAL_CONDITION")
  (:anatomy "ANATOMY")
  (:test-treatment-procedure "TEST_TREATMENT_PROCEDURE"))

(smithy/sdk/shapes:define-list snomedctentity-list :member snomedctentity)

(smithy/sdk/shapes:define-enum snomedctentity-type
    common-lisp:nil
  (:dx-name "DX_NAME")
  (:test-name "TEST_NAME")
  (:procedure-name "PROCEDURE_NAME")
  (:treatment-name "TREATMENT_NAME"))

(smithy/sdk/shapes:define-enum snomedctrelationship-type
    common-lisp:nil
  (:acuity "ACUITY")
  (:quality "QUALITY")
  (:test-value "TEST_VALUE")
  (:test-units "TEST_UNITS")
  (:direction "DIRECTION")
  (:system-organ-site "SYSTEM_ORGAN_SITE")
  (:test-unit "TEST_UNIT"))

(smithy/sdk/shapes:define-structure snomedcttrait common-lisp:nil
                                    ((name :target-type snomedcttrait-name
                                      :member-name "Name")
                                     (score :target-type float :member-name
                                      "Score"))
                                    (:shape-name "SNOMEDCTTrait"))

(smithy/sdk/shapes:define-list snomedcttrait-list :member snomedcttrait)

(smithy/sdk/shapes:define-enum snomedcttrait-name
    common-lisp:nil
  (:negation "NEGATION")
  (:diagnosis "DIAGNOSIS")
  (:sign "SIGN")
  (:symptom "SYMPTOM")
  (:pertains-to-family "PERTAINS_TO_FAMILY")
  (:hypothetical "HYPOTHETICAL")
  (:low-confidence "LOW_CONFIDENCE")
  (:past-history "PAST_HISTORY")
  (:future "FUTURE"))

(smithy/sdk/shapes:define-error service-unavailable-exception common-lisp:nil
                                ((message :target-type string :member-name
                                  "Message"))
                                (:shape-name "ServiceUnavailableException")
                                (:error-code 503))

(smithy/sdk/shapes:define-input start-entities-detection-v2job-request
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
                                 (kmskey :target-type kmskey :member-name
                                  "KMSKey")
                                 (language-code :target-type language-code
                                  :required common-lisp:t :member-name
                                  "LanguageCode"))
                                (:shape-name
                                 "StartEntitiesDetectionV2JobRequest"))

(smithy/sdk/shapes:define-output start-entities-detection-v2job-response
                                 common-lisp:nil
                                 ((job-id :target-type job-id :member-name
                                   "JobId"))
                                 (:shape-name
                                  "StartEntitiesDetectionV2JobResponse"))

(smithy/sdk/shapes:define-input start-icd10cminference-job-request
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
                                 (kmskey :target-type kmskey :member-name
                                  "KMSKey")
                                 (language-code :target-type language-code
                                  :required common-lisp:t :member-name
                                  "LanguageCode"))
                                (:shape-name "StartICD10CMInferenceJobRequest"))

(smithy/sdk/shapes:define-output start-icd10cminference-job-response
                                 common-lisp:nil
                                 ((job-id :target-type job-id :member-name
                                   "JobId"))
                                 (:shape-name
                                  "StartICD10CMInferenceJobResponse"))

(smithy/sdk/shapes:define-input start-phidetection-job-request common-lisp:nil
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
                                 (kmskey :target-type kmskey :member-name
                                  "KMSKey")
                                 (language-code :target-type language-code
                                  :required common-lisp:t :member-name
                                  "LanguageCode"))
                                (:shape-name "StartPHIDetectionJobRequest"))

(smithy/sdk/shapes:define-output start-phidetection-job-response
                                 common-lisp:nil
                                 ((job-id :target-type job-id :member-name
                                   "JobId"))
                                 (:shape-name "StartPHIDetectionJobResponse"))

(smithy/sdk/shapes:define-input start-rx-norm-inference-job-request
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
                                 (kmskey :target-type kmskey :member-name
                                  "KMSKey")
                                 (language-code :target-type language-code
                                  :required common-lisp:t :member-name
                                  "LanguageCode"))
                                (:shape-name "StartRxNormInferenceJobRequest"))

(smithy/sdk/shapes:define-output start-rx-norm-inference-job-response
                                 common-lisp:nil
                                 ((job-id :target-type job-id :member-name
                                   "JobId"))
                                 (:shape-name
                                  "StartRxNormInferenceJobResponse"))

(smithy/sdk/shapes:define-input start-snomedctinference-job-request
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
                                 (kmskey :target-type kmskey :member-name
                                  "KMSKey")
                                 (language-code :target-type language-code
                                  :required common-lisp:t :member-name
                                  "LanguageCode"))
                                (:shape-name
                                 "StartSNOMEDCTInferenceJobRequest"))

(smithy/sdk/shapes:define-output start-snomedctinference-job-response
                                 common-lisp:nil
                                 ((job-id :target-type job-id :member-name
                                   "JobId"))
                                 (:shape-name
                                  "StartSNOMEDCTInferenceJobResponse"))

(smithy/sdk/shapes:define-input stop-entities-detection-v2job-request
                                common-lisp:nil
                                ((job-id :target-type job-id :required
                                  common-lisp:t :member-name "JobId"))
                                (:shape-name
                                 "StopEntitiesDetectionV2JobRequest"))

(smithy/sdk/shapes:define-output stop-entities-detection-v2job-response
                                 common-lisp:nil
                                 ((job-id :target-type job-id :member-name
                                   "JobId"))
                                 (:shape-name
                                  "StopEntitiesDetectionV2JobResponse"))

(smithy/sdk/shapes:define-input stop-icd10cminference-job-request
                                common-lisp:nil
                                ((job-id :target-type job-id :required
                                  common-lisp:t :member-name "JobId"))
                                (:shape-name "StopICD10CMInferenceJobRequest"))

(smithy/sdk/shapes:define-output stop-icd10cminference-job-response
                                 common-lisp:nil
                                 ((job-id :target-type job-id :member-name
                                   "JobId"))
                                 (:shape-name
                                  "StopICD10CMInferenceJobResponse"))

(smithy/sdk/shapes:define-input stop-phidetection-job-request common-lisp:nil
                                ((job-id :target-type job-id :required
                                  common-lisp:t :member-name "JobId"))
                                (:shape-name "StopPHIDetectionJobRequest"))

(smithy/sdk/shapes:define-output stop-phidetection-job-response common-lisp:nil
                                 ((job-id :target-type job-id :member-name
                                   "JobId"))
                                 (:shape-name "StopPHIDetectionJobResponse"))

(smithy/sdk/shapes:define-input stop-rx-norm-inference-job-request
                                common-lisp:nil
                                ((job-id :target-type job-id :required
                                  common-lisp:t :member-name "JobId"))
                                (:shape-name "StopRxNormInferenceJobRequest"))

(smithy/sdk/shapes:define-output stop-rx-norm-inference-job-response
                                 common-lisp:nil
                                 ((job-id :target-type job-id :member-name
                                   "JobId"))
                                 (:shape-name "StopRxNormInferenceJobResponse"))

(smithy/sdk/shapes:define-input stop-snomedctinference-job-request
                                common-lisp:nil
                                ((job-id :target-type job-id :required
                                  common-lisp:t :member-name "JobId"))
                                (:shape-name "StopSNOMEDCTInferenceJobRequest"))

(smithy/sdk/shapes:define-output stop-snomedctinference-job-response
                                 common-lisp:nil
                                 ((job-id :target-type job-id :member-name
                                   "JobId"))
                                 (:shape-name
                                  "StopSNOMEDCTInferenceJobResponse"))

(smithy/sdk/shapes:define-type string smithy/sdk/smithy-types:string)

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

(smithy/sdk/shapes:define-structure trait common-lisp:nil
                                    ((name :target-type attribute-name
                                      :member-name "Name")
                                     (score :target-type float :member-name
                                      "Score"))
                                    (:shape-name "Trait"))

(smithy/sdk/shapes:define-list trait-list :member trait)

(smithy/sdk/shapes:define-structure unmapped-attribute common-lisp:nil
                                    ((type :target-type entity-type
                                      :member-name "Type")
                                     (attribute :target-type attribute
                                      :member-name "Attribute"))
                                    (:shape-name "UnmappedAttribute"))

(smithy/sdk/shapes:define-list unmapped-attribute-list :member
                               unmapped-attribute)

(smithy/sdk/shapes:define-error validation-exception common-lisp:nil
                                ((message :target-type string :member-name
                                  "Message"))
                                (:shape-name "ValidationException")
                                (:error-code 400))

(smithy/sdk/operation:define-operation describe-entities-detection-v2job
                                       :shape-name
                                       "DescribeEntitiesDetectionV2Job" :input
                                       describe-entities-detection-v2job-request
                                       :output
                                       describe-entities-detection-v2job-response
                                       :errors
                                       (internal-server-exception
                                        invalid-request-exception
                                        resource-not-found-exception
                                        too-many-requests-exception))

(smithy/sdk/operation:define-operation describe-icd10cminference-job
                                       :shape-name
                                       "DescribeICD10CMInferenceJob" :input
                                       describe-icd10cminference-job-request
                                       :output
                                       describe-icd10cminference-job-response
                                       :errors
                                       (internal-server-exception
                                        invalid-request-exception
                                        resource-not-found-exception
                                        too-many-requests-exception))

(smithy/sdk/operation:define-operation describe-phidetection-job :shape-name
                                       "DescribePHIDetectionJob" :input
                                       describe-phidetection-job-request
                                       :output
                                       describe-phidetection-job-response
                                       :errors
                                       (internal-server-exception
                                        invalid-request-exception
                                        resource-not-found-exception
                                        too-many-requests-exception))

(smithy/sdk/operation:define-operation describe-rx-norm-inference-job
                                       :shape-name "DescribeRxNormInferenceJob"
                                       :input
                                       describe-rx-norm-inference-job-request
                                       :output
                                       describe-rx-norm-inference-job-response
                                       :errors
                                       (internal-server-exception
                                        invalid-request-exception
                                        resource-not-found-exception
                                        too-many-requests-exception))

(smithy/sdk/operation:define-operation describe-snomedctinference-job
                                       :shape-name
                                       "DescribeSNOMEDCTInferenceJob" :input
                                       describe-snomedctinference-job-request
                                       :output
                                       describe-snomedctinference-job-response
                                       :errors
                                       (internal-server-exception
                                        invalid-request-exception
                                        resource-not-found-exception
                                        too-many-requests-exception))

(smithy/sdk/operation:define-operation detect-entities :shape-name
                                       "DetectEntities" :input
                                       detect-entities-request :output
                                       detect-entities-response :errors
                                       (internal-server-exception
                                        invalid-encoding-exception
                                        invalid-request-exception
                                        service-unavailable-exception
                                        text-size-limit-exceeded-exception
                                        too-many-requests-exception))

(smithy/sdk/operation:define-operation detect-entities-v2 :shape-name
                                       "DetectEntitiesV2" :input
                                       detect-entities-v2request :output
                                       detect-entities-v2response :errors
                                       (internal-server-exception
                                        invalid-encoding-exception
                                        invalid-request-exception
                                        service-unavailable-exception
                                        text-size-limit-exceeded-exception
                                        too-many-requests-exception))

(smithy/sdk/operation:define-operation detect-phi :shape-name "DetectPHI"
                                       :input detect-phirequest :output
                                       detect-phiresponse :errors
                                       (internal-server-exception
                                        invalid-encoding-exception
                                        invalid-request-exception
                                        service-unavailable-exception
                                        text-size-limit-exceeded-exception
                                        too-many-requests-exception))

(smithy/sdk/operation:define-operation infer-icd10cm :shape-name "InferICD10CM"
                                       :input infer-icd10cmrequest :output
                                       infer-icd10cmresponse :errors
                                       (internal-server-exception
                                        invalid-encoding-exception
                                        invalid-request-exception
                                        service-unavailable-exception
                                        text-size-limit-exceeded-exception
                                        too-many-requests-exception))

(smithy/sdk/operation:define-operation infer-rx-norm :shape-name "InferRxNorm"
                                       :input infer-rx-norm-request :output
                                       infer-rx-norm-response :errors
                                       (internal-server-exception
                                        invalid-encoding-exception
                                        invalid-request-exception
                                        service-unavailable-exception
                                        text-size-limit-exceeded-exception
                                        too-many-requests-exception))

(smithy/sdk/operation:define-operation infer-snomedct :shape-name
                                       "InferSNOMEDCT" :input
                                       infer-snomedctrequest :output
                                       infer-snomedctresponse :errors
                                       (internal-server-exception
                                        invalid-encoding-exception
                                        invalid-request-exception
                                        service-unavailable-exception
                                        text-size-limit-exceeded-exception
                                        too-many-requests-exception))

(smithy/sdk/operation:define-operation list-entities-detection-v2jobs
                                       :shape-name
                                       "ListEntitiesDetectionV2Jobs" :input
                                       list-entities-detection-v2jobs-request
                                       :output
                                       list-entities-detection-v2jobs-response
                                       :errors
                                       (internal-server-exception
                                        invalid-request-exception
                                        too-many-requests-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation list-icd10cminference-jobs :shape-name
                                       "ListICD10CMInferenceJobs" :input
                                       list-icd10cminference-jobs-request
                                       :output
                                       list-icd10cminference-jobs-response
                                       :errors
                                       (internal-server-exception
                                        invalid-request-exception
                                        too-many-requests-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation list-phidetection-jobs :shape-name
                                       "ListPHIDetectionJobs" :input
                                       list-phidetection-jobs-request :output
                                       list-phidetection-jobs-response :errors
                                       (internal-server-exception
                                        invalid-request-exception
                                        too-many-requests-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation list-rx-norm-inference-jobs :shape-name
                                       "ListRxNormInferenceJobs" :input
                                       list-rx-norm-inference-jobs-request
                                       :output
                                       list-rx-norm-inference-jobs-response
                                       :errors
                                       (internal-server-exception
                                        invalid-request-exception
                                        too-many-requests-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation list-snomedctinference-jobs :shape-name
                                       "ListSNOMEDCTInferenceJobs" :input
                                       list-snomedctinference-jobs-request
                                       :output
                                       list-snomedctinference-jobs-response
                                       :errors
                                       (internal-server-exception
                                        invalid-request-exception
                                        too-many-requests-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation start-entities-detection-v2job
                                       :shape-name
                                       "StartEntitiesDetectionV2Job" :input
                                       start-entities-detection-v2job-request
                                       :output
                                       start-entities-detection-v2job-response
                                       :errors
                                       (internal-server-exception
                                        invalid-request-exception
                                        resource-not-found-exception
                                        too-many-requests-exception))

(smithy/sdk/operation:define-operation start-icd10cminference-job :shape-name
                                       "StartICD10CMInferenceJob" :input
                                       start-icd10cminference-job-request
                                       :output
                                       start-icd10cminference-job-response
                                       :errors
                                       (internal-server-exception
                                        invalid-request-exception
                                        resource-not-found-exception
                                        too-many-requests-exception))

(smithy/sdk/operation:define-operation start-phidetection-job :shape-name
                                       "StartPHIDetectionJob" :input
                                       start-phidetection-job-request :output
                                       start-phidetection-job-response :errors
                                       (internal-server-exception
                                        invalid-request-exception
                                        resource-not-found-exception
                                        too-many-requests-exception))

(smithy/sdk/operation:define-operation start-rx-norm-inference-job :shape-name
                                       "StartRxNormInferenceJob" :input
                                       start-rx-norm-inference-job-request
                                       :output
                                       start-rx-norm-inference-job-response
                                       :errors
                                       (internal-server-exception
                                        invalid-request-exception
                                        resource-not-found-exception
                                        too-many-requests-exception))

(smithy/sdk/operation:define-operation start-snomedctinference-job :shape-name
                                       "StartSNOMEDCTInferenceJob" :input
                                       start-snomedctinference-job-request
                                       :output
                                       start-snomedctinference-job-response
                                       :errors
                                       (internal-server-exception
                                        invalid-request-exception
                                        resource-not-found-exception
                                        too-many-requests-exception))

(smithy/sdk/operation:define-operation stop-entities-detection-v2job
                                       :shape-name "StopEntitiesDetectionV2Job"
                                       :input
                                       stop-entities-detection-v2job-request
                                       :output
                                       stop-entities-detection-v2job-response
                                       :errors
                                       (internal-server-exception
                                        invalid-request-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation stop-icd10cminference-job :shape-name
                                       "StopICD10CMInferenceJob" :input
                                       stop-icd10cminference-job-request
                                       :output
                                       stop-icd10cminference-job-response
                                       :errors
                                       (internal-server-exception
                                        invalid-request-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation stop-phidetection-job :shape-name
                                       "StopPHIDetectionJob" :input
                                       stop-phidetection-job-request :output
                                       stop-phidetection-job-response :errors
                                       (internal-server-exception
                                        invalid-request-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation stop-rx-norm-inference-job :shape-name
                                       "StopRxNormInferenceJob" :input
                                       stop-rx-norm-inference-job-request
                                       :output
                                       stop-rx-norm-inference-job-response
                                       :errors
                                       (internal-server-exception
                                        invalid-request-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation stop-snomedctinference-job :shape-name
                                       "StopSNOMEDCTInferenceJob" :input
                                       stop-snomedctinference-job-request
                                       :output
                                       stop-snomedctinference-job-response
                                       :errors
                                       (internal-server-exception
                                        invalid-request-exception
                                        resource-not-found-exception
                                        too-many-requests-exception))
