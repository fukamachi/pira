(uiop/package:define-package #:pira/controlcatalog (:use)
                             (:export #:associated-domain-summary
                              #:associated-objective-summary
                              #:common-control-arn
                              #:common-control-arn-filter-list
                              #:common-control-filter
                              #:common-control-mapping-details
                              #:common-control-resource
                              #:common-control-summary
                              #:common-control-summary-list #:control-alias
                              #:control-aliases #:control-arn
                              #:control-arn-filter-list #:control-behavior
                              #:control-catalog #:control-filter
                              #:control-mapping #:control-mapping-filter
                              #:control-mappings #:control-parameter
                              #:control-parameters #:control-resource
                              #:control-scope #:control-severity
                              #:control-summary #:controls #:deployable-regions
                              #:domain-arn #:domain-resource
                              #:domain-resource-filter
                              #:domain-resource-filter-list #:domain-summary
                              #:domain-summary-list #:framework-item
                              #:framework-mapping-details #:framework-name
                              #:get-control #:governed-resource
                              #:governed-resources #:implementation-details
                              #:implementation-filter
                              #:implementation-identifier
                              #:implementation-identifier-filter-list
                              #:implementation-summary #:implementation-type
                              #:implementation-type-filter-list
                              #:list-common-controls #:list-control-mappings
                              #:list-controls #:list-domains #:list-objectives
                              #:mapping #:mapping-type
                              #:mapping-type-filter-list
                              #:max-list-common-controls-results
                              #:max-list-control-mappings-results
                              #:max-list-controls-results
                              #:max-list-domains-results
                              #:max-list-objectives-results #:objective-arn
                              #:objective-filter #:objective-resource
                              #:objective-resource-filter
                              #:objective-resource-filter-list
                              #:objective-summary #:objective-summary-list
                              #:pagination-token #:region-code
                              #:region-configuration))
(common-lisp:in-package #:pira/controlcatalog)

(smithy/sdk/service:define-service control-catalog :shape-name "ControlCatalog"
                                   :version "2018-05-10" :title
                                   "AWS Control Catalog" :operations
                                   '(list-control-mappings) :traits
                                   '(("aws.api#service"
                                      ("sdkId" . "ControlCatalog")
                                      ("arnNamespace" . "controlcatalog")
                                      ("cloudTrailEventSource"
                                       . "controlcatalog.amazonaws.com"))
                                     ("aws.auth#sigv4"
                                      ("name" . "controlcatalog"))
                                     ("aws.iam#supportedPrincipalTypes"
                                      . #("Root" "IAMUser" "IAMRole"
                                          "FederatedUser"))
                                     ("aws.protocols#restJson1")))

(smithy/sdk/shapes:define-error access-denied-exception common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "Message"))
                                (:shape-name "AccessDeniedException")
                                (:error-code 403))

(smithy/sdk/shapes:define-structure associated-domain-summary common-lisp:nil
                                    ((arn :target-type domain-arn :member-name
                                      "Arn")
                                     (name :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "Name"))
                                    (:shape-name "AssociatedDomainSummary"))

(smithy/sdk/shapes:define-structure associated-objective-summary
                                    common-lisp:nil
                                    ((arn :target-type objective-arn
                                      :member-name "Arn")
                                     (name :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "Name"))
                                    (:shape-name "AssociatedObjectiveSummary"))

(smithy/sdk/shapes:define-type common-control-arn
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list common-control-arn-filter-list :member
                               common-control-arn)

(smithy/sdk/shapes:define-structure common-control-filter common-lisp:nil
                                    ((objectives :target-type
                                      objective-resource-filter-list
                                      :member-name "Objectives"))
                                    (:shape-name "CommonControlFilter"))

(smithy/sdk/shapes:define-structure common-control-mapping-details
                                    common-lisp:nil
                                    ((common-control-arn :target-type
                                      common-control-arn :required
                                      common-lisp:t :member-name
                                      "CommonControlArn"))
                                    (:shape-name "CommonControlMappingDetails"))

common-lisp:nil

(smithy/sdk/shapes:define-structure common-control-summary common-lisp:nil
                                    ((arn :target-type common-control-arn
                                      :required common-lisp:t :member-name
                                      "Arn")
                                     (name :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "Name")
                                     (description :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "Description")
                                     (domain :target-type
                                      associated-domain-summary :required
                                      common-lisp:t :member-name "Domain")
                                     (objective :target-type
                                      associated-objective-summary :required
                                      common-lisp:t :member-name "Objective")
                                     (create-time :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :required common-lisp:t :member-name
                                      "CreateTime")
                                     (last-update-time :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :required common-lisp:t :member-name
                                      "LastUpdateTime"))
                                    (:shape-name "CommonControlSummary"))

(smithy/sdk/shapes:define-list common-control-summary-list :member
                               common-control-summary)

(smithy/sdk/shapes:define-type control-alias smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list control-aliases :member control-alias)

(smithy/sdk/shapes:define-type control-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list control-arn-filter-list :member control-arn)

(smithy/sdk/shapes:define-enum control-behavior
    common-lisp:nil
  (:preventive "PREVENTIVE")
  (:proactive "PROACTIVE")
  (:detective "DETECTIVE"))

(smithy/sdk/shapes:define-structure control-filter common-lisp:nil
                                    ((implementations :target-type
                                      implementation-filter :member-name
                                      "Implementations"))
                                    (:shape-name "ControlFilter"))

(smithy/sdk/shapes:define-structure control-mapping common-lisp:nil
                                    ((control-arn :target-type control-arn
                                      :required common-lisp:t :member-name
                                      "ControlArn")
                                     (mapping-type :target-type mapping-type
                                      :required common-lisp:t :member-name
                                      "MappingType")
                                     (mapping :target-type mapping :required
                                      common-lisp:t :member-name "Mapping"))
                                    (:shape-name "ControlMapping"))

(smithy/sdk/shapes:define-structure control-mapping-filter common-lisp:nil
                                    ((control-arns :target-type
                                      control-arn-filter-list :member-name
                                      "ControlArns")
                                     (common-control-arns :target-type
                                      common-control-arn-filter-list
                                      :member-name "CommonControlArns")
                                     (mapping-types :target-type
                                      mapping-type-filter-list :member-name
                                      "MappingTypes"))
                                    (:shape-name "ControlMappingFilter"))

(smithy/sdk/shapes:define-list control-mappings :member control-mapping)

(smithy/sdk/shapes:define-structure control-parameter common-lisp:nil
                                    ((name :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "Name"))
                                    (:shape-name "ControlParameter"))

(smithy/sdk/shapes:define-list control-parameters :member control-parameter)

common-lisp:nil

(smithy/sdk/shapes:define-enum control-scope
    common-lisp:nil
  (:global "GLOBAL")
  (:regional "REGIONAL"))

(smithy/sdk/shapes:define-enum control-severity
    common-lisp:nil
  (:low "LOW")
  (:medium "MEDIUM")
  (:high "HIGH")
  (:critical "CRITICAL"))

(smithy/sdk/shapes:define-structure control-summary common-lisp:nil
                                    ((arn :target-type control-arn :required
                                      common-lisp:t :member-name "Arn")
                                     (aliases :target-type control-aliases
                                      :member-name "Aliases")
                                     (name :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "Name")
                                     (description :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "Description")
                                     (behavior :target-type control-behavior
                                      :member-name "Behavior")
                                     (severity :target-type control-severity
                                      :member-name "Severity")
                                     (implementation :target-type
                                      implementation-summary :member-name
                                      "Implementation")
                                     (create-time :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :member-name "CreateTime")
                                     (governed-resources :target-type
                                      governed-resources :member-name
                                      "GovernedResources"))
                                    (:shape-name "ControlSummary"))

(smithy/sdk/shapes:define-list controls :member control-summary)

(smithy/sdk/shapes:define-list deployable-regions :member region-code)

(smithy/sdk/shapes:define-type domain-arn smithy/sdk/smithy-types:string)

common-lisp:nil

(smithy/sdk/shapes:define-structure domain-resource-filter common-lisp:nil
                                    ((arn :target-type domain-arn :member-name
                                      "Arn"))
                                    (:shape-name "DomainResourceFilter"))

(smithy/sdk/shapes:define-list domain-resource-filter-list :member
                               domain-resource-filter)

(smithy/sdk/shapes:define-structure domain-summary common-lisp:nil
                                    ((arn :target-type domain-arn :required
                                      common-lisp:t :member-name "Arn")
                                     (name :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "Name")
                                     (description :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "Description")
                                     (create-time :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :required common-lisp:t :member-name
                                      "CreateTime")
                                     (last-update-time :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :required common-lisp:t :member-name
                                      "LastUpdateTime"))
                                    (:shape-name "DomainSummary"))

(smithy/sdk/shapes:define-list domain-summary-list :member domain-summary)

(smithy/sdk/shapes:define-type framework-item smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure framework-mapping-details common-lisp:nil
                                    ((name :target-type framework-name
                                      :required common-lisp:t :member-name
                                      "Name")
                                     (item :target-type framework-item
                                      :required common-lisp:t :member-name
                                      "Item"))
                                    (:shape-name "FrameworkMappingDetails"))

(smithy/sdk/shapes:define-type framework-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input get-control-request common-lisp:nil
                                ((control-arn :target-type control-arn
                                  :required common-lisp:t :member-name
                                  "ControlArn"))
                                (:shape-name "GetControlRequest"))

(smithy/sdk/shapes:define-output get-control-response common-lisp:nil
                                 ((arn :target-type control-arn :required
                                   common-lisp:t :member-name "Arn")
                                  (aliases :target-type control-aliases
                                   :member-name "Aliases")
                                  (name :target-type
                                   smithy/sdk/smithy-types:string :required
                                   common-lisp:t :member-name "Name")
                                  (description :target-type
                                   smithy/sdk/smithy-types:string :required
                                   common-lisp:t :member-name "Description")
                                  (behavior :target-type control-behavior
                                   :required common-lisp:t :member-name
                                   "Behavior")
                                  (severity :target-type control-severity
                                   :member-name "Severity")
                                  (region-configuration :target-type
                                   region-configuration :required common-lisp:t
                                   :member-name "RegionConfiguration")
                                  (implementation :target-type
                                   implementation-details :member-name
                                   "Implementation")
                                  (parameters :target-type control-parameters
                                   :member-name "Parameters")
                                  (create-time :target-type
                                   smithy/sdk/smithy-types:timestamp
                                   :member-name "CreateTime")
                                  (governed-resources :target-type
                                   governed-resources :member-name
                                   "GovernedResources"))
                                 (:shape-name "GetControlResponse"))

(smithy/sdk/shapes:define-type governed-resource smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list governed-resources :member governed-resource)

(smithy/sdk/shapes:define-structure implementation-details common-lisp:nil
                                    ((type :target-type implementation-type
                                      :required common-lisp:t :member-name
                                      "Type")
                                     (identifier :target-type
                                      implementation-identifier :member-name
                                      "Identifier"))
                                    (:shape-name "ImplementationDetails"))

(smithy/sdk/shapes:define-structure implementation-filter common-lisp:nil
                                    ((types :target-type
                                      implementation-type-filter-list
                                      :member-name "Types")
                                     (identifiers :target-type
                                      implementation-identifier-filter-list
                                      :member-name "Identifiers"))
                                    (:shape-name "ImplementationFilter"))

(smithy/sdk/shapes:define-type implementation-identifier
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list implementation-identifier-filter-list :member
                               implementation-identifier)

(smithy/sdk/shapes:define-structure implementation-summary common-lisp:nil
                                    ((type :target-type implementation-type
                                      :required common-lisp:t :member-name
                                      "Type")
                                     (identifier :target-type
                                      implementation-identifier :member-name
                                      "Identifier"))
                                    (:shape-name "ImplementationSummary"))

(smithy/sdk/shapes:define-type implementation-type
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list implementation-type-filter-list :member
                               implementation-type)

(smithy/sdk/shapes:define-error internal-server-exception common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "Message"))
                                (:shape-name "InternalServerException")
                                (:error-code 500))

(smithy/sdk/shapes:define-input list-common-controls-request common-lisp:nil
                                ((max-results :target-type
                                  max-list-common-controls-results :member-name
                                  "MaxResults" :http-query "maxResults")
                                 (next-token :target-type pagination-token
                                  :member-name "NextToken" :http-query
                                  "nextToken")
                                 (common-control-filter :target-type
                                  common-control-filter :member-name
                                  "CommonControlFilter"))
                                (:shape-name "ListCommonControlsRequest"))

(smithy/sdk/shapes:define-output list-common-controls-response common-lisp:nil
                                 ((common-controls :target-type
                                   common-control-summary-list :required
                                   common-lisp:t :member-name "CommonControls")
                                  (next-token :target-type pagination-token
                                   :member-name "NextToken"))
                                 (:shape-name "ListCommonControlsResponse"))

(smithy/sdk/shapes:define-input list-control-mappings-request common-lisp:nil
                                ((next-token :target-type pagination-token
                                  :member-name "NextToken" :http-query
                                  "nextToken")
                                 (max-results :target-type
                                  max-list-control-mappings-results
                                  :member-name "MaxResults" :http-query
                                  "maxResults")
                                 (filter :target-type control-mapping-filter
                                  :member-name "Filter"))
                                (:shape-name "ListControlMappingsRequest"))

(smithy/sdk/shapes:define-output list-control-mappings-response common-lisp:nil
                                 ((control-mappings :target-type
                                   control-mappings :required common-lisp:t
                                   :member-name "ControlMappings")
                                  (next-token :target-type pagination-token
                                   :member-name "NextToken"))
                                 (:shape-name "ListControlMappingsResponse"))

(smithy/sdk/shapes:define-input list-controls-request common-lisp:nil
                                ((next-token :target-type pagination-token
                                  :member-name "NextToken" :http-query
                                  "nextToken")
                                 (max-results :target-type
                                  max-list-controls-results :member-name
                                  "MaxResults" :http-query "maxResults")
                                 (filter :target-type control-filter
                                  :member-name "Filter"))
                                (:shape-name "ListControlsRequest"))

(smithy/sdk/shapes:define-output list-controls-response common-lisp:nil
                                 ((controls :target-type controls :required
                                   common-lisp:t :member-name "Controls")
                                  (next-token :target-type pagination-token
                                   :member-name "NextToken"))
                                 (:shape-name "ListControlsResponse"))

(smithy/sdk/shapes:define-input list-domains-request common-lisp:nil
                                ((max-results :target-type
                                  max-list-domains-results :member-name
                                  "MaxResults" :http-query "maxResults")
                                 (next-token :target-type pagination-token
                                  :member-name "NextToken" :http-query
                                  "nextToken"))
                                (:shape-name "ListDomainsRequest"))

(smithy/sdk/shapes:define-output list-domains-response common-lisp:nil
                                 ((domains :target-type domain-summary-list
                                   :required common-lisp:t :member-name
                                   "Domains")
                                  (next-token :target-type pagination-token
                                   :member-name "NextToken"))
                                 (:shape-name "ListDomainsResponse"))

(smithy/sdk/shapes:define-input list-objectives-request common-lisp:nil
                                ((max-results :target-type
                                  max-list-objectives-results :member-name
                                  "MaxResults" :http-query "maxResults")
                                 (next-token :target-type pagination-token
                                  :member-name "NextToken" :http-query
                                  "nextToken")
                                 (objective-filter :target-type
                                  objective-filter :member-name
                                  "ObjectiveFilter"))
                                (:shape-name "ListObjectivesRequest"))

(smithy/sdk/shapes:define-output list-objectives-response common-lisp:nil
                                 ((objectives :target-type
                                   objective-summary-list :required
                                   common-lisp:t :member-name "Objectives")
                                  (next-token :target-type pagination-token
                                   :member-name "NextToken"))
                                 (:shape-name "ListObjectivesResponse"))

(smithy/sdk/shapes:define-union mapping common-lisp:nil
                                ((framework :target-type
                                  framework-mapping-details :member-name
                                  "Framework")
                                 (common-control :target-type
                                  common-control-mapping-details :member-name
                                  "CommonControl"))
                                (:shape-name "Mapping"))

(smithy/sdk/shapes:define-enum mapping-type
    common-lisp:nil
  (:framework "FRAMEWORK")
  (:common-control "COMMON_CONTROL"))

(smithy/sdk/shapes:define-list mapping-type-filter-list :member mapping-type)

(smithy/sdk/shapes:define-type max-list-common-controls-results
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type max-list-control-mappings-results
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type max-list-controls-results
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type max-list-domains-results
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type max-list-objectives-results
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type objective-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure objective-filter common-lisp:nil
                                    ((domains :target-type
                                      domain-resource-filter-list :member-name
                                      "Domains"))
                                    (:shape-name "ObjectiveFilter"))

common-lisp:nil

(smithy/sdk/shapes:define-structure objective-resource-filter common-lisp:nil
                                    ((arn :target-type objective-arn
                                      :member-name "Arn"))
                                    (:shape-name "ObjectiveResourceFilter"))

(smithy/sdk/shapes:define-list objective-resource-filter-list :member
                               objective-resource-filter)

(smithy/sdk/shapes:define-structure objective-summary common-lisp:nil
                                    ((arn :target-type objective-arn :required
                                      common-lisp:t :member-name "Arn")
                                     (name :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "Name")
                                     (description :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "Description")
                                     (domain :target-type
                                      associated-domain-summary :required
                                      common-lisp:t :member-name "Domain")
                                     (create-time :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :required common-lisp:t :member-name
                                      "CreateTime")
                                     (last-update-time :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :required common-lisp:t :member-name
                                      "LastUpdateTime"))
                                    (:shape-name "ObjectiveSummary"))

(smithy/sdk/shapes:define-list objective-summary-list :member objective-summary)

(smithy/sdk/shapes:define-type pagination-token smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type region-code smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure region-configuration common-lisp:nil
                                    ((scope :target-type control-scope
                                      :required common-lisp:t :member-name
                                      "Scope")
                                     (deployable-regions :target-type
                                      deployable-regions :member-name
                                      "DeployableRegions"))
                                    (:shape-name "RegionConfiguration"))

(smithy/sdk/shapes:define-error resource-not-found-exception common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "Message"))
                                (:shape-name "ResourceNotFoundException")
                                (:error-code 404))

(smithy/sdk/shapes:define-error throttling-exception common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "Message"))
                                (:shape-name "ThrottlingException")
                                (:error-code 429))

(smithy/sdk/shapes:define-error validation-exception common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "Message"))
                                (:shape-name "ValidationException")
                                (:error-code 400))

(smithy/sdk/operation:define-operation get-control :shape-name "GetControl"
                                       :input get-control-request :output
                                       get-control-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri "/get-control" :code
                                       200)

(smithy/sdk/operation:define-operation list-common-controls :shape-name
                                       "ListCommonControls" :input
                                       list-common-controls-request :output
                                       list-common-controls-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri "/common-controls"
                                       :code 200)

(smithy/sdk/operation:define-operation list-control-mappings :shape-name
                                       "ListControlMappings" :input
                                       list-control-mappings-request :output
                                       list-control-mappings-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/list-control-mappings" :code 200)

(smithy/sdk/operation:define-operation list-controls :shape-name "ListControls"
                                       :input list-controls-request :output
                                       list-controls-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri "/list-controls"
                                       :code 200)

(smithy/sdk/operation:define-operation list-domains :shape-name "ListDomains"
                                       :input list-domains-request :output
                                       list-domains-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri "/domains" :code 200)

(smithy/sdk/operation:define-operation list-objectives :shape-name
                                       "ListObjectives" :input
                                       list-objectives-request :output
                                       list-objectives-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri "/objectives" :code
                                       200)
