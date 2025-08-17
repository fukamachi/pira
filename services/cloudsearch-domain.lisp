(uiop/package:define-package #:pira/cloudsearch-domain (:use)
                             (:export #:adds #:amazon-cloud-search2013 #:blob
                              #:bucket #:bucket-info #:bucket-list
                              #:content-type #:cursor #:deletes
                              #:document-service-warning
                              #:document-service-warnings #:double #:expr
                              #:exprs #:facet #:facets #:field-stats
                              #:field-value #:fields #:filter-query #:highlight
                              #:highlights #:hit #:hit-list #:hits #:long
                              #:partial #:query #:query-options #:query-parser
                              #:return #:search #:search-status #:size #:sort
                              #:start #:stat #:stats #:string #:suggest
                              #:suggest-model #:suggest-status #:suggester
                              #:suggestion-match #:suggestions
                              #:suggestions-size #:upload-documents))
(common-lisp:in-package #:pira/cloudsearch-domain)

(smithy/sdk/service:define-service amazon-cloud-search2013 :shape-name
                                   "AmazonCloudSearch2013" :version
                                   "2013-01-01" :title
                                   "Amazon CloudSearch Domain" :operations
                                   '(search suggest upload-documents)
                                   :xml-namespace
                                   (:uri
                                    "http://cloudsearch.amazonaws.com/doc/2013-01-01/"
                                    :prefix common-lisp:nil)
                                   :traits
                                   '(("aws.api#service"
                                      ("sdkId" . "CloudSearch Domain")
                                      ("arnNamespace" . "cloudsearch")
                                      ("cloudFormationName"
                                       . "CloudSearchDomain")
                                      ("cloudTrailEventSource"
                                       . "cloudsearchdomain.amazonaws.com")
                                      ("docId"
                                       . "cloudsearchdomain-2013-01-01")
                                      ("endpointPrefix" . "cloudsearchdomain"))
                                     ("aws.auth#sigv4"
                                      ("name" . "cloudsearch"))
                                     ("aws.protocols#restJson1")))

(smithy/sdk/shapes:define-type adds smithy/sdk/smithy-types:long)

(smithy/sdk/shapes:define-type blob smithy/sdk/smithy-types:blob :streaming
                               common-lisp:t)

(smithy/sdk/shapes:define-structure bucket common-lisp:nil
                                    ((value :target-type string :member-name
                                      "value")
                                     (count :target-type long :member-name
                                      "count"))
                                    (:shape-name "Bucket"))

(smithy/sdk/shapes:define-structure bucket-info common-lisp:nil
                                    ((buckets :target-type bucket-list
                                      :member-name "buckets"))
                                    (:shape-name "BucketInfo"))

(smithy/sdk/shapes:define-list bucket-list :member bucket)

(smithy/sdk/shapes:define-enum content-type
    common-lisp:nil
  (:application-json "application/json")
  (:application-xml "application/xml"))

(smithy/sdk/shapes:define-type cursor smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type deletes smithy/sdk/smithy-types:long)

(smithy/sdk/shapes:define-error document-service-exception common-lisp:nil
                                ((status :target-type string :member-name
                                  "status")
                                 (message :target-type string :member-name
                                  "message"))
                                (:shape-name "DocumentServiceException")
                                (:error-code 400))

(smithy/sdk/shapes:define-structure document-service-warning common-lisp:nil
                                    ((message :target-type string :member-name
                                      "message"))
                                    (:shape-name "DocumentServiceWarning"))

(smithy/sdk/shapes:define-list document-service-warnings :member
                               document-service-warning)

(smithy/sdk/shapes:define-type double smithy/sdk/smithy-types:double)

(smithy/sdk/shapes:define-type expr smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-map exprs :key string :value string)

(smithy/sdk/shapes:define-type facet smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-map facets :key string :value bucket-info)

(smithy/sdk/shapes:define-structure field-stats common-lisp:nil
                                    ((min :target-type string :member-name
                                      "min")
                                     (max :target-type string :member-name
                                      "max")
                                     (count :target-type long :member-name
                                      "count")
                                     (missing :target-type long :member-name
                                      "missing")
                                     (sum :target-type double :member-name
                                      "sum")
                                     (sum-of-squares :target-type double
                                      :member-name "sumOfSquares")
                                     (mean :target-type string :member-name
                                      "mean")
                                     (stddev :target-type double :member-name
                                      "stddev"))
                                    (:shape-name "FieldStats"))

(smithy/sdk/shapes:define-list field-value :member string)

(smithy/sdk/shapes:define-map fields :key string :value field-value)

(smithy/sdk/shapes:define-type filter-query smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type highlight smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-map highlights :key string :value string)

(smithy/sdk/shapes:define-structure hit common-lisp:nil
                                    ((id :target-type string :member-name "id")
                                     (fields :target-type fields :member-name
                                      "fields")
                                     (exprs :target-type exprs :member-name
                                      "exprs")
                                     (highlights :target-type highlights
                                      :member-name "highlights"))
                                    (:shape-name "Hit"))

(smithy/sdk/shapes:define-list hit-list :member hit)

(smithy/sdk/shapes:define-structure hits common-lisp:nil
                                    ((found :target-type long :member-name
                                      "found")
                                     (start :target-type long :member-name
                                      "start")
                                     (cursor :target-type string :member-name
                                      "cursor")
                                     (hit :target-type hit-list :member-name
                                      "hit"))
                                    (:shape-name "Hits"))

(smithy/sdk/shapes:define-type long smithy/sdk/smithy-types:long)

(smithy/sdk/shapes:define-type partial smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-type query smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type query-options smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum query-parser
    common-lisp:nil
  (:simple "simple")
  (:structured "structured")
  (:lucene "lucene")
  (:dismax "dismax"))

(smithy/sdk/shapes:define-type return smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error search-exception common-lisp:nil
                                ((message :target-type string :member-name
                                  "message"))
                                (:shape-name "SearchException")
                                (:error-code 400))

(smithy/sdk/shapes:define-input search-request common-lisp:nil
                                ((cursor :target-type cursor :member-name
                                  "cursor" :http-query "cursor")
                                 (expr :target-type expr :member-name "expr"
                                  :http-query "expr")
                                 (facet :target-type facet :member-name "facet"
                                  :http-query "facet")
                                 (filter-query :target-type filter-query
                                  :member-name "filterQuery" :http-query "fq")
                                 (highlight :target-type highlight :member-name
                                  "highlight" :http-query "highlight")
                                 (partial :target-type partial :member-name
                                  "partial" :http-query "partial")
                                 (query :target-type query :required
                                  common-lisp:t :member-name "query"
                                  :http-query "q")
                                 (query-options :target-type query-options
                                  :member-name "queryOptions" :http-query
                                  "q.options")
                                 (query-parser :target-type query-parser
                                  :member-name "queryParser" :http-query
                                  "q.parser")
                                 (return :target-type return :member-name
                                  "return" :http-query "return")
                                 (size :target-type size :member-name "size"
                                  :http-query "size")
                                 (sort :target-type sort :member-name "sort"
                                  :http-query "sort")
                                 (start :target-type start :member-name "start"
                                  :http-query "start")
                                 (stats :target-type stat :member-name "stats"
                                  :http-query "stats"))
                                (:shape-name "SearchRequest"))

(smithy/sdk/shapes:define-output search-response common-lisp:nil
                                 ((status :target-type search-status
                                   :member-name "status")
                                  (hits :target-type hits :member-name "hits")
                                  (facets :target-type facets :member-name
                                   "facets")
                                  (stats :target-type stats :member-name
                                   "stats"))
                                 (:shape-name "SearchResponse"))

(smithy/sdk/shapes:define-structure search-status common-lisp:nil
                                    ((timems :target-type long :member-name
                                      "timems")
                                     (rid :target-type string :member-name
                                      "rid"))
                                    (:shape-name "SearchStatus"))

(smithy/sdk/shapes:define-type size smithy/sdk/smithy-types:long)

(smithy/sdk/shapes:define-type sort smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type start smithy/sdk/smithy-types:long)

(smithy/sdk/shapes:define-type stat smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-map stats :key string :value field-stats)

(smithy/sdk/shapes:define-type string smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure suggest-model common-lisp:nil
                                    ((query :target-type string :member-name
                                      "query")
                                     (found :target-type long :member-name
                                      "found")
                                     (suggestions :target-type suggestions
                                      :member-name "suggestions"))
                                    (:shape-name "SuggestModel"))

(smithy/sdk/shapes:define-input suggest-request common-lisp:nil
                                ((query :target-type query :required
                                  common-lisp:t :member-name "query"
                                  :http-query "q")
                                 (suggester :target-type suggester :required
                                  common-lisp:t :member-name "suggester"
                                  :http-query "suggester")
                                 (size :target-type suggestions-size
                                  :member-name "size" :http-query "size"))
                                (:shape-name "SuggestRequest"))

(smithy/sdk/shapes:define-output suggest-response common-lisp:nil
                                 ((status :target-type suggest-status
                                   :member-name "status")
                                  (suggest :target-type suggest-model
                                   :member-name "suggest"))
                                 (:shape-name "SuggestResponse"))

(smithy/sdk/shapes:define-structure suggest-status common-lisp:nil
                                    ((timems :target-type long :member-name
                                      "timems")
                                     (rid :target-type string :member-name
                                      "rid"))
                                    (:shape-name "SuggestStatus"))

(smithy/sdk/shapes:define-type suggester smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure suggestion-match common-lisp:nil
                                    ((suggestion :target-type string
                                      :member-name "suggestion")
                                     (score :target-type long :member-name
                                      "score")
                                     (id :target-type string :member-name
                                      "id"))
                                    (:shape-name "SuggestionMatch"))

(smithy/sdk/shapes:define-list suggestions :member suggestion-match)

(smithy/sdk/shapes:define-type suggestions-size smithy/sdk/smithy-types:long)

(smithy/sdk/shapes:define-input upload-documents-request common-lisp:nil
                                ((documents :target-type blob :required
                                  common-lisp:t :member-name "documents"
                                  :http-payload common-lisp:t)
                                 (content-type :target-type content-type
                                  :required common-lisp:t :member-name
                                  "contentType" :http-header "Content-Type"))
                                (:shape-name "UploadDocumentsRequest"))

(smithy/sdk/shapes:define-output upload-documents-response common-lisp:nil
                                 ((status :target-type string :member-name
                                   "status")
                                  (adds :target-type adds :member-name "adds")
                                  (deletes :target-type deletes :member-name
                                   "deletes")
                                  (warnings :target-type
                                   document-service-warnings :member-name
                                   "warnings"))
                                 (:shape-name "UploadDocumentsResponse"))

(smithy/sdk/operation:define-operation search :shape-name "Search" :input
                                       search-request :output search-response
                                       :errors (search-exception) :method "GET"
                                       :uri
                                       "/2013-01-01/search?format=sdk&pretty=true"
                                       :code 200)

(smithy/sdk/operation:define-operation suggest :shape-name "Suggest" :input
                                       suggest-request :output suggest-response
                                       :errors (search-exception) :method "GET"
                                       :uri
                                       "/2013-01-01/suggest?format=sdk&pretty=true"
                                       :code 200)

(smithy/sdk/operation:define-operation upload-documents :shape-name
                                       "UploadDocuments" :input
                                       upload-documents-request :output
                                       upload-documents-response :errors
                                       (document-service-exception) :method
                                       "POST" :uri
                                       "/2013-01-01/documents/batch?format=sdk"
                                       :code 200)
