(uiop/package:define-package #:pira/cloudsearch (:use)
                             (:export #:a9search-cloud-config-service2013
                              #:apiversion #:arn #:access-policies-status
                              #:algorithmic-stemming #:analysis-options
                              #:analysis-scheme #:analysis-scheme-language
                              #:analysis-scheme-status
                              #:analysis-scheme-status-list
                              #:availability-options-status #:boolean
                              #:build-suggesters #:create-domain
                              #:date-array-options #:date-options
                              #:define-analysis-scheme #:define-expression
                              #:define-index-field #:define-suggester
                              #:delete-analysis-scheme #:delete-domain
                              #:delete-expression #:delete-index-field
                              #:delete-suggester #:describe-analysis-schemes
                              #:describe-availability-options
                              #:describe-domain-endpoint-options
                              #:describe-domains #:describe-expressions
                              #:describe-index-fields
                              #:describe-scaling-parameters
                              #:describe-service-access-policies
                              #:describe-suggesters
                              #:document-suggester-options
                              #:domain-endpoint-options
                              #:domain-endpoint-options-status #:domain-id
                              #:domain-name #:domain-name-list
                              #:domain-name-map #:domain-status
                              #:domain-status-list #:double
                              #:double-array-options #:double-options
                              #:dynamic-field-name #:dynamic-field-name-list
                              #:error-code #:error-message #:expression
                              #:expression-status #:expression-status-list
                              #:expression-value #:field-name
                              #:field-name-comma-list #:field-name-list
                              #:field-value #:index-documents #:index-field
                              #:index-field-status #:index-field-status-list
                              #:index-field-type #:instance-count
                              #:int-array-options #:int-options
                              #:lat-lon-options #:limits #:list-domain-names
                              #:literal-array-options #:literal-options #:long
                              #:maximum-partition-count
                              #:maximum-replication-count #:multi-az
                              #:option-state #:option-status #:partition-count
                              #:partition-instance-type #:policy-document
                              #:scaling-parameters #:scaling-parameters-status
                              #:search-instance-type #:service-endpoint
                              #:service-url #:standard-name
                              #:standard-name-list #:string #:suggester
                              #:suggester-fuzzy-matching #:suggester-status
                              #:suggester-status-list #:tlssecurity-policy
                              #:text-array-options #:text-options #:uint-value
                              #:update-availability-options
                              #:update-domain-endpoint-options
                              #:update-scaling-parameters
                              #:update-service-access-policies
                              #:update-timestamp #:word))
(common-lisp:in-package #:pira/cloudsearch)

(smithy/sdk/service:define-service a9search-cloud-config-service2013
                                   :shape-name "A9SearchCloudConfigService2013"
                                   :version "2013-01-01" :title
                                   "Amazon CloudSearch" :operations
                                   '(build-suggesters create-domain
                                     define-analysis-scheme define-expression
                                     define-index-field define-suggester
                                     delete-analysis-scheme delete-domain
                                     delete-expression delete-index-field
                                     delete-suggester describe-analysis-schemes
                                     describe-availability-options
                                     describe-domain-endpoint-options
                                     describe-domains describe-expressions
                                     describe-index-fields
                                     describe-scaling-parameters
                                     describe-service-access-policies
                                     describe-suggesters index-documents
                                     list-domain-names
                                     update-availability-options
                                     update-domain-endpoint-options
                                     update-scaling-parameters
                                     update-service-access-policies)
                                   :xml-namespace
                                   (:uri
                                    "http://cloudsearch.amazonaws.com/doc/2013-01-01/"
                                    :prefix common-lisp:nil)
                                   :traits
                                   '(("aws.api#service"
                                      ("sdkId" . "CloudSearch")
                                      ("arnNamespace" . "cloudsearch")
                                      ("cloudFormationName" . "CloudSearch")
                                      ("cloudTrailEventSource"
                                       . "cloudsearch.amazonaws.com")
                                      ("endpointPrefix" . "cloudsearch"))
                                     ("aws.auth#sigv4"
                                      ("name" . "cloudsearch"))
                                     ("aws.protocols#awsQuery")))

(smithy/sdk/shapes:define-type apiversion smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure access-policies-status common-lisp:nil
                                    ((options :target-type policy-document
                                      :required common-lisp:t :member-name
                                      "Options")
                                     (status :target-type option-status
                                      :required common-lisp:t :member-name
                                      "Status"))
                                    (:shape-name "AccessPoliciesStatus"))

(smithy/sdk/shapes:define-enum algorithmic-stemming
    common-lisp:nil
  (:none "none")
  (:minimal "minimal")
  (:light "light")
  (:full "full"))

(smithy/sdk/shapes:define-structure analysis-options common-lisp:nil
                                    ((synonyms :target-type string :member-name
                                      "Synonyms")
                                     (stopwords :target-type string
                                      :member-name "Stopwords")
                                     (stemming-dictionary :target-type string
                                      :member-name "StemmingDictionary")
                                     (japanese-tokenization-dictionary
                                      :target-type string :member-name
                                      "JapaneseTokenizationDictionary")
                                     (algorithmic-stemming :target-type
                                      algorithmic-stemming :member-name
                                      "AlgorithmicStemming"))
                                    (:shape-name "AnalysisOptions"))

(smithy/sdk/shapes:define-structure analysis-scheme common-lisp:nil
                                    ((analysis-scheme-name :target-type
                                      standard-name :required common-lisp:t
                                      :member-name "AnalysisSchemeName")
                                     (analysis-scheme-language :target-type
                                      analysis-scheme-language :required
                                      common-lisp:t :member-name
                                      "AnalysisSchemeLanguage")
                                     (analysis-options :target-type
                                      analysis-options :member-name
                                      "AnalysisOptions"))
                                    (:shape-name "AnalysisScheme"))

(smithy/sdk/shapes:define-enum analysis-scheme-language
    common-lisp:nil
  (:ar "ar")
  (:bg "bg")
  (:ca "ca")
  (:cs "cs")
  (:da "da")
  (:de "de")
  (:el "el")
  (:en "en")
  (:es "es")
  (:eu "eu")
  (:fa "fa")
  (:fi "fi")
  (:fr "fr")
  (:ga "ga")
  (:gl "gl")
  (:he "he")
  (:hi "hi")
  (:hu "hu")
  (:hy "hy")
  (:id "id")
  (:it "it")
  (:ja "ja")
  (:ko "ko")
  (:lv "lv")
  (:mul "mul")
  (:nl "nl")
  (:no "no")
  (:pt "pt")
  (:ro "ro")
  (:ru "ru")
  (:sv "sv")
  (:th "th")
  (:tr "tr")
  (:zh-hans "zh-Hans")
  (:zh-hant "zh-Hant"))

(smithy/sdk/shapes:define-structure analysis-scheme-status common-lisp:nil
                                    ((options :target-type analysis-scheme
                                      :required common-lisp:t :member-name
                                      "Options")
                                     (status :target-type option-status
                                      :required common-lisp:t :member-name
                                      "Status"))
                                    (:shape-name "AnalysisSchemeStatus"))

(smithy/sdk/shapes:define-list analysis-scheme-status-list :member
                               analysis-scheme-status)

(smithy/sdk/shapes:define-structure availability-options-status common-lisp:nil
                                    ((options :target-type multi-az :required
                                      common-lisp:t :member-name "Options")
                                     (status :target-type option-status
                                      :required common-lisp:t :member-name
                                      "Status"))
                                    (:shape-name "AvailabilityOptionsStatus"))

(smithy/sdk/shapes:define-error base-exception common-lisp:nil
                                ((code :target-type error-code :member-name
                                  "Code")
                                 (message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name "BaseException") (:error-code 400))

(smithy/sdk/shapes:define-type boolean smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-input build-suggesters-request common-lisp:nil
                                ((domain-name :target-type domain-name
                                  :required common-lisp:t :member-name
                                  "DomainName"))
                                (:shape-name "BuildSuggestersRequest"))

(smithy/sdk/shapes:define-output build-suggesters-response common-lisp:nil
                                 ((field-names :target-type field-name-list
                                   :member-name "FieldNames"))
                                 (:shape-name "BuildSuggestersResponse"))

(smithy/sdk/shapes:define-input create-domain-request common-lisp:nil
                                ((domain-name :target-type domain-name
                                  :required common-lisp:t :member-name
                                  "DomainName"))
                                (:shape-name "CreateDomainRequest"))

(smithy/sdk/shapes:define-output create-domain-response common-lisp:nil
                                 ((domain-status :target-type domain-status
                                   :member-name "DomainStatus"))
                                 (:shape-name "CreateDomainResponse"))

(smithy/sdk/shapes:define-structure date-array-options common-lisp:nil
                                    ((default-value :target-type field-value
                                      :member-name "DefaultValue")
                                     (source-fields :target-type
                                      field-name-comma-list :member-name
                                      "SourceFields")
                                     (facet-enabled :target-type boolean
                                      :member-name "FacetEnabled")
                                     (search-enabled :target-type boolean
                                      :member-name "SearchEnabled")
                                     (return-enabled :target-type boolean
                                      :member-name "ReturnEnabled"))
                                    (:shape-name "DateArrayOptions"))

(smithy/sdk/shapes:define-structure date-options common-lisp:nil
                                    ((default-value :target-type field-value
                                      :member-name "DefaultValue")
                                     (source-field :target-type field-name
                                      :member-name "SourceField")
                                     (facet-enabled :target-type boolean
                                      :member-name "FacetEnabled")
                                     (search-enabled :target-type boolean
                                      :member-name "SearchEnabled")
                                     (return-enabled :target-type boolean
                                      :member-name "ReturnEnabled")
                                     (sort-enabled :target-type boolean
                                      :member-name "SortEnabled"))
                                    (:shape-name "DateOptions"))

(smithy/sdk/shapes:define-input define-analysis-scheme-request common-lisp:nil
                                ((domain-name :target-type domain-name
                                  :required common-lisp:t :member-name
                                  "DomainName")
                                 (analysis-scheme :target-type analysis-scheme
                                  :required common-lisp:t :member-name
                                  "AnalysisScheme"))
                                (:shape-name "DefineAnalysisSchemeRequest"))

(smithy/sdk/shapes:define-output define-analysis-scheme-response
                                 common-lisp:nil
                                 ((analysis-scheme :target-type
                                   analysis-scheme-status :required
                                   common-lisp:t :member-name
                                   "AnalysisScheme"))
                                 (:shape-name "DefineAnalysisSchemeResponse"))

(smithy/sdk/shapes:define-input define-expression-request common-lisp:nil
                                ((domain-name :target-type domain-name
                                  :required common-lisp:t :member-name
                                  "DomainName")
                                 (expression :target-type expression :required
                                  common-lisp:t :member-name "Expression"))
                                (:shape-name "DefineExpressionRequest"))

(smithy/sdk/shapes:define-output define-expression-response common-lisp:nil
                                 ((expression :target-type expression-status
                                   :required common-lisp:t :member-name
                                   "Expression"))
                                 (:shape-name "DefineExpressionResponse"))

(smithy/sdk/shapes:define-input define-index-field-request common-lisp:nil
                                ((domain-name :target-type domain-name
                                  :required common-lisp:t :member-name
                                  "DomainName")
                                 (index-field :target-type index-field
                                  :required common-lisp:t :member-name
                                  "IndexField"))
                                (:shape-name "DefineIndexFieldRequest"))

(smithy/sdk/shapes:define-output define-index-field-response common-lisp:nil
                                 ((index-field :target-type index-field-status
                                   :required common-lisp:t :member-name
                                   "IndexField"))
                                 (:shape-name "DefineIndexFieldResponse"))

(smithy/sdk/shapes:define-input define-suggester-request common-lisp:nil
                                ((domain-name :target-type domain-name
                                  :required common-lisp:t :member-name
                                  "DomainName")
                                 (suggester :target-type suggester :required
                                  common-lisp:t :member-name "Suggester"))
                                (:shape-name "DefineSuggesterRequest"))

(smithy/sdk/shapes:define-output define-suggester-response common-lisp:nil
                                 ((suggester :target-type suggester-status
                                   :required common-lisp:t :member-name
                                   "Suggester"))
                                 (:shape-name "DefineSuggesterResponse"))

(smithy/sdk/shapes:define-input delete-analysis-scheme-request common-lisp:nil
                                ((domain-name :target-type domain-name
                                  :required common-lisp:t :member-name
                                  "DomainName")
                                 (analysis-scheme-name :target-type
                                  standard-name :required common-lisp:t
                                  :member-name "AnalysisSchemeName"))
                                (:shape-name "DeleteAnalysisSchemeRequest"))

(smithy/sdk/shapes:define-output delete-analysis-scheme-response
                                 common-lisp:nil
                                 ((analysis-scheme :target-type
                                   analysis-scheme-status :required
                                   common-lisp:t :member-name
                                   "AnalysisScheme"))
                                 (:shape-name "DeleteAnalysisSchemeResponse"))

(smithy/sdk/shapes:define-input delete-domain-request common-lisp:nil
                                ((domain-name :target-type domain-name
                                  :required common-lisp:t :member-name
                                  "DomainName"))
                                (:shape-name "DeleteDomainRequest"))

(smithy/sdk/shapes:define-output delete-domain-response common-lisp:nil
                                 ((domain-status :target-type domain-status
                                   :member-name "DomainStatus"))
                                 (:shape-name "DeleteDomainResponse"))

(smithy/sdk/shapes:define-input delete-expression-request common-lisp:nil
                                ((domain-name :target-type domain-name
                                  :required common-lisp:t :member-name
                                  "DomainName")
                                 (expression-name :target-type standard-name
                                  :required common-lisp:t :member-name
                                  "ExpressionName"))
                                (:shape-name "DeleteExpressionRequest"))

(smithy/sdk/shapes:define-output delete-expression-response common-lisp:nil
                                 ((expression :target-type expression-status
                                   :required common-lisp:t :member-name
                                   "Expression"))
                                 (:shape-name "DeleteExpressionResponse"))

(smithy/sdk/shapes:define-input delete-index-field-request common-lisp:nil
                                ((domain-name :target-type domain-name
                                  :required common-lisp:t :member-name
                                  "DomainName")
                                 (index-field-name :target-type
                                  dynamic-field-name :required common-lisp:t
                                  :member-name "IndexFieldName"))
                                (:shape-name "DeleteIndexFieldRequest"))

(smithy/sdk/shapes:define-output delete-index-field-response common-lisp:nil
                                 ((index-field :target-type index-field-status
                                   :required common-lisp:t :member-name
                                   "IndexField"))
                                 (:shape-name "DeleteIndexFieldResponse"))

(smithy/sdk/shapes:define-input delete-suggester-request common-lisp:nil
                                ((domain-name :target-type domain-name
                                  :required common-lisp:t :member-name
                                  "DomainName")
                                 (suggester-name :target-type standard-name
                                  :required common-lisp:t :member-name
                                  "SuggesterName"))
                                (:shape-name "DeleteSuggesterRequest"))

(smithy/sdk/shapes:define-output delete-suggester-response common-lisp:nil
                                 ((suggester :target-type suggester-status
                                   :required common-lisp:t :member-name
                                   "Suggester"))
                                 (:shape-name "DeleteSuggesterResponse"))

(smithy/sdk/shapes:define-input describe-analysis-schemes-request
                                common-lisp:nil
                                ((domain-name :target-type domain-name
                                  :required common-lisp:t :member-name
                                  "DomainName")
                                 (analysis-scheme-names :target-type
                                  standard-name-list :member-name
                                  "AnalysisSchemeNames")
                                 (deployed :target-type boolean :member-name
                                  "Deployed"))
                                (:shape-name "DescribeAnalysisSchemesRequest"))

(smithy/sdk/shapes:define-output describe-analysis-schemes-response
                                 common-lisp:nil
                                 ((analysis-schemes :target-type
                                   analysis-scheme-status-list :required
                                   common-lisp:t :member-name
                                   "AnalysisSchemes"))
                                 (:shape-name
                                  "DescribeAnalysisSchemesResponse"))

(smithy/sdk/shapes:define-input describe-availability-options-request
                                common-lisp:nil
                                ((domain-name :target-type domain-name
                                  :required common-lisp:t :member-name
                                  "DomainName")
                                 (deployed :target-type boolean :member-name
                                  "Deployed"))
                                (:shape-name
                                 "DescribeAvailabilityOptionsRequest"))

(smithy/sdk/shapes:define-output describe-availability-options-response
                                 common-lisp:nil
                                 ((availability-options :target-type
                                   availability-options-status :member-name
                                   "AvailabilityOptions"))
                                 (:shape-name
                                  "DescribeAvailabilityOptionsResponse"))

(smithy/sdk/shapes:define-input describe-domain-endpoint-options-request
                                common-lisp:nil
                                ((domain-name :target-type domain-name
                                  :required common-lisp:t :member-name
                                  "DomainName")
                                 (deployed :target-type boolean :member-name
                                  "Deployed"))
                                (:shape-name
                                 "DescribeDomainEndpointOptionsRequest"))

(smithy/sdk/shapes:define-output describe-domain-endpoint-options-response
                                 common-lisp:nil
                                 ((domain-endpoint-options :target-type
                                   domain-endpoint-options-status :member-name
                                   "DomainEndpointOptions"))
                                 (:shape-name
                                  "DescribeDomainEndpointOptionsResponse"))

(smithy/sdk/shapes:define-input describe-domains-request common-lisp:nil
                                ((domain-names :target-type domain-name-list
                                  :member-name "DomainNames"))
                                (:shape-name "DescribeDomainsRequest"))

(smithy/sdk/shapes:define-output describe-domains-response common-lisp:nil
                                 ((domain-status-list :target-type
                                   domain-status-list :required common-lisp:t
                                   :member-name "DomainStatusList"))
                                 (:shape-name "DescribeDomainsResponse"))

(smithy/sdk/shapes:define-input describe-expressions-request common-lisp:nil
                                ((domain-name :target-type domain-name
                                  :required common-lisp:t :member-name
                                  "DomainName")
                                 (expression-names :target-type
                                  standard-name-list :member-name
                                  "ExpressionNames")
                                 (deployed :target-type boolean :member-name
                                  "Deployed"))
                                (:shape-name "DescribeExpressionsRequest"))

(smithy/sdk/shapes:define-output describe-expressions-response common-lisp:nil
                                 ((expressions :target-type
                                   expression-status-list :required
                                   common-lisp:t :member-name "Expressions"))
                                 (:shape-name "DescribeExpressionsResponse"))

(smithy/sdk/shapes:define-input describe-index-fields-request common-lisp:nil
                                ((domain-name :target-type domain-name
                                  :required common-lisp:t :member-name
                                  "DomainName")
                                 (field-names :target-type
                                  dynamic-field-name-list :member-name
                                  "FieldNames")
                                 (deployed :target-type boolean :member-name
                                  "Deployed"))
                                (:shape-name "DescribeIndexFieldsRequest"))

(smithy/sdk/shapes:define-output describe-index-fields-response common-lisp:nil
                                 ((index-fields :target-type
                                   index-field-status-list :required
                                   common-lisp:t :member-name "IndexFields"))
                                 (:shape-name "DescribeIndexFieldsResponse"))

(smithy/sdk/shapes:define-input describe-scaling-parameters-request
                                common-lisp:nil
                                ((domain-name :target-type domain-name
                                  :required common-lisp:t :member-name
                                  "DomainName"))
                                (:shape-name
                                 "DescribeScalingParametersRequest"))

(smithy/sdk/shapes:define-output describe-scaling-parameters-response
                                 common-lisp:nil
                                 ((scaling-parameters :target-type
                                   scaling-parameters-status :required
                                   common-lisp:t :member-name
                                   "ScalingParameters"))
                                 (:shape-name
                                  "DescribeScalingParametersResponse"))

(smithy/sdk/shapes:define-input describe-service-access-policies-request
                                common-lisp:nil
                                ((domain-name :target-type domain-name
                                  :required common-lisp:t :member-name
                                  "DomainName")
                                 (deployed :target-type boolean :member-name
                                  "Deployed"))
                                (:shape-name
                                 "DescribeServiceAccessPoliciesRequest"))

(smithy/sdk/shapes:define-output describe-service-access-policies-response
                                 common-lisp:nil
                                 ((access-policies :target-type
                                   access-policies-status :required
                                   common-lisp:t :member-name
                                   "AccessPolicies"))
                                 (:shape-name
                                  "DescribeServiceAccessPoliciesResponse"))

(smithy/sdk/shapes:define-input describe-suggesters-request common-lisp:nil
                                ((domain-name :target-type domain-name
                                  :required common-lisp:t :member-name
                                  "DomainName")
                                 (suggester-names :target-type
                                  standard-name-list :member-name
                                  "SuggesterNames")
                                 (deployed :target-type boolean :member-name
                                  "Deployed"))
                                (:shape-name "DescribeSuggestersRequest"))

(smithy/sdk/shapes:define-output describe-suggesters-response common-lisp:nil
                                 ((suggesters :target-type
                                   suggester-status-list :required
                                   common-lisp:t :member-name "Suggesters"))
                                 (:shape-name "DescribeSuggestersResponse"))

(smithy/sdk/shapes:define-error disabled-operation-exception common-lisp:nil
                                ((code :target-type error-code :member-name
                                  "Code")
                                 (message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name "DisabledOperationException")
                                (:error-name "DisabledAction")
                                (:error-code 409))

(smithy/sdk/shapes:define-structure document-suggester-options common-lisp:nil
                                    ((source-field :target-type field-name
                                      :required common-lisp:t :member-name
                                      "SourceField")
                                     (fuzzy-matching :target-type
                                      suggester-fuzzy-matching :member-name
                                      "FuzzyMatching")
                                     (sort-expression :target-type string
                                      :member-name "SortExpression"))
                                    (:shape-name "DocumentSuggesterOptions"))

(smithy/sdk/shapes:define-structure domain-endpoint-options common-lisp:nil
                                    ((enforce-https :target-type boolean
                                      :member-name "EnforceHTTPS")
                                     (tlssecurity-policy :target-type
                                      tlssecurity-policy :member-name
                                      "TLSSecurityPolicy"))
                                    (:shape-name "DomainEndpointOptions"))

(smithy/sdk/shapes:define-structure domain-endpoint-options-status
                                    common-lisp:nil
                                    ((options :target-type
                                      domain-endpoint-options :required
                                      common-lisp:t :member-name "Options")
                                     (status :target-type option-status
                                      :required common-lisp:t :member-name
                                      "Status"))
                                    (:shape-name "DomainEndpointOptionsStatus"))

(smithy/sdk/shapes:define-type domain-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type domain-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list domain-name-list :member domain-name)

(smithy/sdk/shapes:define-map domain-name-map :key domain-name :value
                              apiversion)

(smithy/sdk/shapes:define-structure domain-status common-lisp:nil
                                    ((domain-id :target-type domain-id
                                      :required common-lisp:t :member-name
                                      "DomainId")
                                     (domain-name :target-type domain-name
                                      :required common-lisp:t :member-name
                                      "DomainName")
                                     (arn :target-type arn :member-name "ARN")
                                     (created :target-type boolean :member-name
                                      "Created")
                                     (deleted :target-type boolean :member-name
                                      "Deleted")
                                     (doc-service :target-type service-endpoint
                                      :member-name "DocService")
                                     (search-service :target-type
                                      service-endpoint :member-name
                                      "SearchService")
                                     (requires-index-documents :target-type
                                      boolean :required common-lisp:t
                                      :member-name "RequiresIndexDocuments")
                                     (processing :target-type boolean
                                      :member-name "Processing")
                                     (search-instance-type :target-type
                                      search-instance-type :member-name
                                      "SearchInstanceType")
                                     (search-partition-count :target-type
                                      partition-count :member-name
                                      "SearchPartitionCount")
                                     (search-instance-count :target-type
                                      instance-count :member-name
                                      "SearchInstanceCount")
                                     (limits :target-type limits :member-name
                                      "Limits"))
                                    (:shape-name "DomainStatus"))

(smithy/sdk/shapes:define-list domain-status-list :member domain-status)

(smithy/sdk/shapes:define-type double smithy/sdk/smithy-types:double)

(smithy/sdk/shapes:define-structure double-array-options common-lisp:nil
                                    ((default-value :target-type double
                                      :member-name "DefaultValue")
                                     (source-fields :target-type
                                      field-name-comma-list :member-name
                                      "SourceFields")
                                     (facet-enabled :target-type boolean
                                      :member-name "FacetEnabled")
                                     (search-enabled :target-type boolean
                                      :member-name "SearchEnabled")
                                     (return-enabled :target-type boolean
                                      :member-name "ReturnEnabled"))
                                    (:shape-name "DoubleArrayOptions"))

(smithy/sdk/shapes:define-structure double-options common-lisp:nil
                                    ((default-value :target-type double
                                      :member-name "DefaultValue")
                                     (source-field :target-type field-name
                                      :member-name "SourceField")
                                     (facet-enabled :target-type boolean
                                      :member-name "FacetEnabled")
                                     (search-enabled :target-type boolean
                                      :member-name "SearchEnabled")
                                     (return-enabled :target-type boolean
                                      :member-name "ReturnEnabled")
                                     (sort-enabled :target-type boolean
                                      :member-name "SortEnabled"))
                                    (:shape-name "DoubleOptions"))

(smithy/sdk/shapes:define-type dynamic-field-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list dynamic-field-name-list :member
                               dynamic-field-name)

(smithy/sdk/shapes:define-type error-code smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type error-message smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure expression common-lisp:nil
                                    ((expression-name :target-type
                                      standard-name :required common-lisp:t
                                      :member-name "ExpressionName")
                                     (expression-value :target-type
                                      expression-value :required common-lisp:t
                                      :member-name "ExpressionValue"))
                                    (:shape-name "Expression"))

(smithy/sdk/shapes:define-structure expression-status common-lisp:nil
                                    ((options :target-type expression :required
                                      common-lisp:t :member-name "Options")
                                     (status :target-type option-status
                                      :required common-lisp:t :member-name
                                      "Status"))
                                    (:shape-name "ExpressionStatus"))

(smithy/sdk/shapes:define-list expression-status-list :member expression-status)

(smithy/sdk/shapes:define-type expression-value smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type field-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type field-name-comma-list
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list field-name-list :member field-name)

(smithy/sdk/shapes:define-type field-value smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input index-documents-request common-lisp:nil
                                ((domain-name :target-type domain-name
                                  :required common-lisp:t :member-name
                                  "DomainName"))
                                (:shape-name "IndexDocumentsRequest"))

(smithy/sdk/shapes:define-output index-documents-response common-lisp:nil
                                 ((field-names :target-type field-name-list
                                   :member-name "FieldNames"))
                                 (:shape-name "IndexDocumentsResponse"))

(smithy/sdk/shapes:define-structure index-field common-lisp:nil
                                    ((index-field-name :target-type
                                      dynamic-field-name :required
                                      common-lisp:t :member-name
                                      "IndexFieldName")
                                     (index-field-type :target-type
                                      index-field-type :required common-lisp:t
                                      :member-name "IndexFieldType")
                                     (int-options :target-type int-options
                                      :member-name "IntOptions")
                                     (double-options :target-type
                                      double-options :member-name
                                      "DoubleOptions")
                                     (literal-options :target-type
                                      literal-options :member-name
                                      "LiteralOptions")
                                     (text-options :target-type text-options
                                      :member-name "TextOptions")
                                     (date-options :target-type date-options
                                      :member-name "DateOptions")
                                     (lat-lon-options :target-type
                                      lat-lon-options :member-name
                                      "LatLonOptions")
                                     (int-array-options :target-type
                                      int-array-options :member-name
                                      "IntArrayOptions")
                                     (double-array-options :target-type
                                      double-array-options :member-name
                                      "DoubleArrayOptions")
                                     (literal-array-options :target-type
                                      literal-array-options :member-name
                                      "LiteralArrayOptions")
                                     (text-array-options :target-type
                                      text-array-options :member-name
                                      "TextArrayOptions")
                                     (date-array-options :target-type
                                      date-array-options :member-name
                                      "DateArrayOptions"))
                                    (:shape-name "IndexField"))

(smithy/sdk/shapes:define-structure index-field-status common-lisp:nil
                                    ((options :target-type index-field
                                      :required common-lisp:t :member-name
                                      "Options")
                                     (status :target-type option-status
                                      :required common-lisp:t :member-name
                                      "Status"))
                                    (:shape-name "IndexFieldStatus"))

(smithy/sdk/shapes:define-list index-field-status-list :member
                               index-field-status)

(smithy/sdk/shapes:define-enum index-field-type
    common-lisp:nil
  (:int "int")
  (:double "double")
  (:literal "literal")
  (:text "text")
  (:date "date")
  (:latlon "latlon")
  (:int-array "int-array")
  (:double-array "double-array")
  (:literal-array "literal-array")
  (:text-array "text-array")
  (:date-array "date-array"))

(smithy/sdk/shapes:define-type instance-count smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-structure int-array-options common-lisp:nil
                                    ((default-value :target-type long
                                      :member-name "DefaultValue")
                                     (source-fields :target-type
                                      field-name-comma-list :member-name
                                      "SourceFields")
                                     (facet-enabled :target-type boolean
                                      :member-name "FacetEnabled")
                                     (search-enabled :target-type boolean
                                      :member-name "SearchEnabled")
                                     (return-enabled :target-type boolean
                                      :member-name "ReturnEnabled"))
                                    (:shape-name "IntArrayOptions"))

(smithy/sdk/shapes:define-structure int-options common-lisp:nil
                                    ((default-value :target-type long
                                      :member-name "DefaultValue")
                                     (source-field :target-type field-name
                                      :member-name "SourceField")
                                     (facet-enabled :target-type boolean
                                      :member-name "FacetEnabled")
                                     (search-enabled :target-type boolean
                                      :member-name "SearchEnabled")
                                     (return-enabled :target-type boolean
                                      :member-name "ReturnEnabled")
                                     (sort-enabled :target-type boolean
                                      :member-name "SortEnabled"))
                                    (:shape-name "IntOptions"))

(smithy/sdk/shapes:define-error internal-exception common-lisp:nil
                                ((code :target-type error-code :member-name
                                  "Code")
                                 (message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name "InternalException")
                                (:error-name "InternalException")
                                (:error-code 500))

(smithy/sdk/shapes:define-error invalid-type-exception common-lisp:nil
                                ((code :target-type error-code :member-name
                                  "Code")
                                 (message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name "InvalidTypeException")
                                (:error-name "InvalidType") (:error-code 409))

(smithy/sdk/shapes:define-structure lat-lon-options common-lisp:nil
                                    ((default-value :target-type field-value
                                      :member-name "DefaultValue")
                                     (source-field :target-type field-name
                                      :member-name "SourceField")
                                     (facet-enabled :target-type boolean
                                      :member-name "FacetEnabled")
                                     (search-enabled :target-type boolean
                                      :member-name "SearchEnabled")
                                     (return-enabled :target-type boolean
                                      :member-name "ReturnEnabled")
                                     (sort-enabled :target-type boolean
                                      :member-name "SortEnabled"))
                                    (:shape-name "LatLonOptions"))

(smithy/sdk/shapes:define-error limit-exceeded-exception common-lisp:nil
                                ((code :target-type error-code :member-name
                                  "Code")
                                 (message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name "LimitExceededException")
                                (:error-name "LimitExceeded") (:error-code 409))

(smithy/sdk/shapes:define-structure limits common-lisp:nil
                                    ((maximum-replication-count :target-type
                                      maximum-replication-count :required
                                      common-lisp:t :member-name
                                      "MaximumReplicationCount")
                                     (maximum-partition-count :target-type
                                      maximum-partition-count :required
                                      common-lisp:t :member-name
                                      "MaximumPartitionCount"))
                                    (:shape-name "Limits"))

(smithy/sdk/shapes:define-output list-domain-names-response common-lisp:nil
                                 ((domain-names :target-type domain-name-map
                                   :member-name "DomainNames"))
                                 (:shape-name "ListDomainNamesResponse"))

(smithy/sdk/shapes:define-structure literal-array-options common-lisp:nil
                                    ((default-value :target-type field-value
                                      :member-name "DefaultValue")
                                     (source-fields :target-type
                                      field-name-comma-list :member-name
                                      "SourceFields")
                                     (facet-enabled :target-type boolean
                                      :member-name "FacetEnabled")
                                     (search-enabled :target-type boolean
                                      :member-name "SearchEnabled")
                                     (return-enabled :target-type boolean
                                      :member-name "ReturnEnabled"))
                                    (:shape-name "LiteralArrayOptions"))

(smithy/sdk/shapes:define-structure literal-options common-lisp:nil
                                    ((default-value :target-type field-value
                                      :member-name "DefaultValue")
                                     (source-field :target-type field-name
                                      :member-name "SourceField")
                                     (facet-enabled :target-type boolean
                                      :member-name "FacetEnabled")
                                     (search-enabled :target-type boolean
                                      :member-name "SearchEnabled")
                                     (return-enabled :target-type boolean
                                      :member-name "ReturnEnabled")
                                     (sort-enabled :target-type boolean
                                      :member-name "SortEnabled"))
                                    (:shape-name "LiteralOptions"))

(smithy/sdk/shapes:define-type long smithy/sdk/smithy-types:long)

(smithy/sdk/shapes:define-type maximum-partition-count
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type maximum-replication-count
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type multi-az smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-enum option-state
    common-lisp:nil
  (:requires-index-documents "RequiresIndexDocuments")
  (:processing "Processing")
  (:active "Active")
  (:failed-to-validate "FailedToValidate"))

(smithy/sdk/shapes:define-structure option-status common-lisp:nil
                                    ((creation-date :target-type
                                      update-timestamp :required common-lisp:t
                                      :member-name "CreationDate")
                                     (update-date :target-type update-timestamp
                                      :required common-lisp:t :member-name
                                      "UpdateDate")
                                     (update-version :target-type uint-value
                                      :member-name "UpdateVersion")
                                     (state :target-type option-state :required
                                      common-lisp:t :member-name "State")
                                     (pending-deletion :target-type boolean
                                      :member-name "PendingDeletion"))
                                    (:shape-name "OptionStatus"))

(smithy/sdk/shapes:define-type partition-count smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-enum partition-instance-type
    common-lisp:nil
  (:search-m1-small "search.m1.small")
  (:search-m1-large "search.m1.large")
  (:search-m2-xlarge "search.m2.xlarge")
  (:search-m2-2xlarge "search.m2.2xlarge")
  (:search-m3-medium "search.m3.medium")
  (:search-m3-large "search.m3.large")
  (:search-m3-xlarge "search.m3.xlarge")
  (:search-m3-2xlarge "search.m3.2xlarge")
  (:search-small "search.small")
  (:search-medium "search.medium")
  (:search-large "search.large")
  (:search-xlarge "search.xlarge")
  (:search-2xlarge "search.2xlarge")
  (:search-previousgeneration-small "search.previousgeneration.small")
  (:search-previousgeneration-large "search.previousgeneration.large")
  (:search-previousgeneration-xlarge "search.previousgeneration.xlarge")
  (:search-previousgeneration-2xlarge "search.previousgeneration.2xlarge"))

(smithy/sdk/shapes:define-type policy-document smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error resource-already-exists-exception
                                common-lisp:nil
                                ((code :target-type error-code :member-name
                                  "Code")
                                 (message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name "ResourceAlreadyExistsException")
                                (:error-name "ResourceAlreadyExists")
                                (:error-code 409))

(smithy/sdk/shapes:define-error resource-not-found-exception common-lisp:nil
                                ((code :target-type error-code :member-name
                                  "Code")
                                 (message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name "ResourceNotFoundException")
                                (:error-name "ResourceNotFound")
                                (:error-code 409))

(smithy/sdk/shapes:define-structure scaling-parameters common-lisp:nil
                                    ((desired-instance-type :target-type
                                      partition-instance-type :member-name
                                      "DesiredInstanceType")
                                     (desired-replication-count :target-type
                                      uint-value :member-name
                                      "DesiredReplicationCount")
                                     (desired-partition-count :target-type
                                      uint-value :member-name
                                      "DesiredPartitionCount"))
                                    (:shape-name "ScalingParameters"))

(smithy/sdk/shapes:define-structure scaling-parameters-status common-lisp:nil
                                    ((options :target-type scaling-parameters
                                      :required common-lisp:t :member-name
                                      "Options")
                                     (status :target-type option-status
                                      :required common-lisp:t :member-name
                                      "Status"))
                                    (:shape-name "ScalingParametersStatus"))

(smithy/sdk/shapes:define-type search-instance-type
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure service-endpoint common-lisp:nil
                                    ((endpoint :target-type service-url
                                      :member-name "Endpoint"))
                                    (:shape-name "ServiceEndpoint"))

(smithy/sdk/shapes:define-type service-url smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type standard-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list standard-name-list :member standard-name)

(smithy/sdk/shapes:define-type string smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure suggester common-lisp:nil
                                    ((suggester-name :target-type standard-name
                                      :required common-lisp:t :member-name
                                      "SuggesterName")
                                     (document-suggester-options :target-type
                                      document-suggester-options :required
                                      common-lisp:t :member-name
                                      "DocumentSuggesterOptions"))
                                    (:shape-name "Suggester"))

(smithy/sdk/shapes:define-enum suggester-fuzzy-matching
    common-lisp:nil
  (:none "none")
  (:low "low")
  (:high "high"))

(smithy/sdk/shapes:define-structure suggester-status common-lisp:nil
                                    ((options :target-type suggester :required
                                      common-lisp:t :member-name "Options")
                                     (status :target-type option-status
                                      :required common-lisp:t :member-name
                                      "Status"))
                                    (:shape-name "SuggesterStatus"))

(smithy/sdk/shapes:define-list suggester-status-list :member suggester-status)

(smithy/sdk/shapes:define-enum tlssecurity-policy
    common-lisp:nil
  (:policy-min-tls-1-0-2019-07 "Policy-Min-TLS-1-0-2019-07")
  (:policy-min-tls-1-2-2019-07 "Policy-Min-TLS-1-2-2019-07"))

(smithy/sdk/shapes:define-structure text-array-options common-lisp:nil
                                    ((default-value :target-type field-value
                                      :member-name "DefaultValue")
                                     (source-fields :target-type
                                      field-name-comma-list :member-name
                                      "SourceFields")
                                     (return-enabled :target-type boolean
                                      :member-name "ReturnEnabled")
                                     (highlight-enabled :target-type boolean
                                      :member-name "HighlightEnabled")
                                     (analysis-scheme :target-type word
                                      :member-name "AnalysisScheme"))
                                    (:shape-name "TextArrayOptions"))

(smithy/sdk/shapes:define-structure text-options common-lisp:nil
                                    ((default-value :target-type field-value
                                      :member-name "DefaultValue")
                                     (source-field :target-type field-name
                                      :member-name "SourceField")
                                     (return-enabled :target-type boolean
                                      :member-name "ReturnEnabled")
                                     (sort-enabled :target-type boolean
                                      :member-name "SortEnabled")
                                     (highlight-enabled :target-type boolean
                                      :member-name "HighlightEnabled")
                                     (analysis-scheme :target-type word
                                      :member-name "AnalysisScheme"))
                                    (:shape-name "TextOptions"))

(smithy/sdk/shapes:define-type uint-value smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-input update-availability-options-request
                                common-lisp:nil
                                ((domain-name :target-type domain-name
                                  :required common-lisp:t :member-name
                                  "DomainName")
                                 (multi-az :target-type boolean :required
                                  common-lisp:t :member-name "MultiAZ"))
                                (:shape-name
                                 "UpdateAvailabilityOptionsRequest"))

(smithy/sdk/shapes:define-output update-availability-options-response
                                 common-lisp:nil
                                 ((availability-options :target-type
                                   availability-options-status :member-name
                                   "AvailabilityOptions"))
                                 (:shape-name
                                  "UpdateAvailabilityOptionsResponse"))

(smithy/sdk/shapes:define-input update-domain-endpoint-options-request
                                common-lisp:nil
                                ((domain-name :target-type domain-name
                                  :required common-lisp:t :member-name
                                  "DomainName")
                                 (domain-endpoint-options :target-type
                                  domain-endpoint-options :required
                                  common-lisp:t :member-name
                                  "DomainEndpointOptions"))
                                (:shape-name
                                 "UpdateDomainEndpointOptionsRequest"))

(smithy/sdk/shapes:define-output update-domain-endpoint-options-response
                                 common-lisp:nil
                                 ((domain-endpoint-options :target-type
                                   domain-endpoint-options-status :member-name
                                   "DomainEndpointOptions"))
                                 (:shape-name
                                  "UpdateDomainEndpointOptionsResponse"))

(smithy/sdk/shapes:define-input update-scaling-parameters-request
                                common-lisp:nil
                                ((domain-name :target-type domain-name
                                  :required common-lisp:t :member-name
                                  "DomainName")
                                 (scaling-parameters :target-type
                                  scaling-parameters :required common-lisp:t
                                  :member-name "ScalingParameters"))
                                (:shape-name "UpdateScalingParametersRequest"))

(smithy/sdk/shapes:define-output update-scaling-parameters-response
                                 common-lisp:nil
                                 ((scaling-parameters :target-type
                                   scaling-parameters-status :required
                                   common-lisp:t :member-name
                                   "ScalingParameters"))
                                 (:shape-name
                                  "UpdateScalingParametersResponse"))

(smithy/sdk/shapes:define-input update-service-access-policies-request
                                common-lisp:nil
                                ((domain-name :target-type domain-name
                                  :required common-lisp:t :member-name
                                  "DomainName")
                                 (access-policies :target-type policy-document
                                  :required common-lisp:t :member-name
                                  "AccessPolicies"))
                                (:shape-name
                                 "UpdateServiceAccessPoliciesRequest"))

(smithy/sdk/shapes:define-output update-service-access-policies-response
                                 common-lisp:nil
                                 ((access-policies :target-type
                                   access-policies-status :required
                                   common-lisp:t :member-name
                                   "AccessPolicies"))
                                 (:shape-name
                                  "UpdateServiceAccessPoliciesResponse"))

(smithy/sdk/shapes:define-type update-timestamp
                               smithy/sdk/smithy-types:timestamp)

(smithy/sdk/shapes:define-error validation-exception common-lisp:nil
                                ((code :target-type error-code :member-name
                                  "Code")
                                 (message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name "ValidationException")
                                (:error-code 400))

(smithy/sdk/shapes:define-type word smithy/sdk/smithy-types:string)

(smithy/sdk/operation:define-operation build-suggesters :shape-name
                                       "BuildSuggesters" :input
                                       build-suggesters-request :output
                                       build-suggesters-response :errors
                                       (base-exception internal-exception
                                        resource-not-found-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation create-domain :shape-name "CreateDomain"
                                       :input create-domain-request :output
                                       create-domain-response :errors
                                       (base-exception internal-exception
                                        limit-exceeded-exception
                                        resource-already-exists-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation define-analysis-scheme :shape-name
                                       "DefineAnalysisScheme" :input
                                       define-analysis-scheme-request :output
                                       define-analysis-scheme-response :errors
                                       (base-exception internal-exception
                                        invalid-type-exception
                                        limit-exceeded-exception
                                        resource-not-found-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation define-expression :shape-name
                                       "DefineExpression" :input
                                       define-expression-request :output
                                       define-expression-response :errors
                                       (base-exception internal-exception
                                        invalid-type-exception
                                        limit-exceeded-exception
                                        resource-not-found-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation define-index-field :shape-name
                                       "DefineIndexField" :input
                                       define-index-field-request :output
                                       define-index-field-response :errors
                                       (base-exception internal-exception
                                        invalid-type-exception
                                        limit-exceeded-exception
                                        resource-not-found-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation define-suggester :shape-name
                                       "DefineSuggester" :input
                                       define-suggester-request :output
                                       define-suggester-response :errors
                                       (base-exception internal-exception
                                        invalid-type-exception
                                        limit-exceeded-exception
                                        resource-not-found-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation delete-analysis-scheme :shape-name
                                       "DeleteAnalysisScheme" :input
                                       delete-analysis-scheme-request :output
                                       delete-analysis-scheme-response :errors
                                       (base-exception internal-exception
                                        invalid-type-exception
                                        resource-not-found-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation delete-domain :shape-name "DeleteDomain"
                                       :input delete-domain-request :output
                                       delete-domain-response :errors
                                       (base-exception internal-exception))

(smithy/sdk/operation:define-operation delete-expression :shape-name
                                       "DeleteExpression" :input
                                       delete-expression-request :output
                                       delete-expression-response :errors
                                       (base-exception internal-exception
                                        invalid-type-exception
                                        resource-not-found-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation delete-index-field :shape-name
                                       "DeleteIndexField" :input
                                       delete-index-field-request :output
                                       delete-index-field-response :errors
                                       (base-exception internal-exception
                                        invalid-type-exception
                                        resource-not-found-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation delete-suggester :shape-name
                                       "DeleteSuggester" :input
                                       delete-suggester-request :output
                                       delete-suggester-response :errors
                                       (base-exception internal-exception
                                        invalid-type-exception
                                        resource-not-found-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation describe-analysis-schemes :shape-name
                                       "DescribeAnalysisSchemes" :input
                                       describe-analysis-schemes-request
                                       :output
                                       describe-analysis-schemes-response
                                       :errors
                                       (base-exception internal-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation describe-availability-options
                                       :shape-name
                                       "DescribeAvailabilityOptions" :input
                                       describe-availability-options-request
                                       :output
                                       describe-availability-options-response
                                       :errors
                                       (base-exception
                                        disabled-operation-exception
                                        internal-exception
                                        invalid-type-exception
                                        limit-exceeded-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation describe-domain-endpoint-options
                                       :shape-name
                                       "DescribeDomainEndpointOptions" :input
                                       describe-domain-endpoint-options-request
                                       :output
                                       describe-domain-endpoint-options-response
                                       :errors
                                       (base-exception
                                        disabled-operation-exception
                                        internal-exception
                                        limit-exceeded-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation describe-domains :shape-name
                                       "DescribeDomains" :input
                                       describe-domains-request :output
                                       describe-domains-response :errors
                                       (base-exception internal-exception))

(smithy/sdk/operation:define-operation describe-expressions :shape-name
                                       "DescribeExpressions" :input
                                       describe-expressions-request :output
                                       describe-expressions-response :errors
                                       (base-exception internal-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation describe-index-fields :shape-name
                                       "DescribeIndexFields" :input
                                       describe-index-fields-request :output
                                       describe-index-fields-response :errors
                                       (base-exception internal-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation describe-scaling-parameters :shape-name
                                       "DescribeScalingParameters" :input
                                       describe-scaling-parameters-request
                                       :output
                                       describe-scaling-parameters-response
                                       :errors
                                       (base-exception internal-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation describe-service-access-policies
                                       :shape-name
                                       "DescribeServiceAccessPolicies" :input
                                       describe-service-access-policies-request
                                       :output
                                       describe-service-access-policies-response
                                       :errors
                                       (base-exception internal-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation describe-suggesters :shape-name
                                       "DescribeSuggesters" :input
                                       describe-suggesters-request :output
                                       describe-suggesters-response :errors
                                       (base-exception internal-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation index-documents :shape-name
                                       "IndexDocuments" :input
                                       index-documents-request :output
                                       index-documents-response :errors
                                       (base-exception internal-exception
                                        resource-not-found-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation list-domain-names :shape-name
                                       "ListDomainNames" :input
                                       common-lisp:null :output
                                       list-domain-names-response :errors
                                       (base-exception))

(smithy/sdk/operation:define-operation update-availability-options :shape-name
                                       "UpdateAvailabilityOptions" :input
                                       update-availability-options-request
                                       :output
                                       update-availability-options-response
                                       :errors
                                       (base-exception
                                        disabled-operation-exception
                                        internal-exception
                                        invalid-type-exception
                                        limit-exceeded-exception
                                        resource-not-found-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation update-domain-endpoint-options
                                       :shape-name
                                       "UpdateDomainEndpointOptions" :input
                                       update-domain-endpoint-options-request
                                       :output
                                       update-domain-endpoint-options-response
                                       :errors
                                       (base-exception
                                        disabled-operation-exception
                                        internal-exception
                                        invalid-type-exception
                                        limit-exceeded-exception
                                        resource-not-found-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation update-scaling-parameters :shape-name
                                       "UpdateScalingParameters" :input
                                       update-scaling-parameters-request
                                       :output
                                       update-scaling-parameters-response
                                       :errors
                                       (base-exception internal-exception
                                        invalid-type-exception
                                        limit-exceeded-exception
                                        resource-not-found-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation update-service-access-policies
                                       :shape-name
                                       "UpdateServiceAccessPolicies" :input
                                       update-service-access-policies-request
                                       :output
                                       update-service-access-policies-response
                                       :errors
                                       (base-exception internal-exception
                                        invalid-type-exception
                                        limit-exceeded-exception
                                        resource-not-found-exception
                                        validation-exception))
