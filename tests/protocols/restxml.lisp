(uiop/package:define-package #:pira/tests/protocols/restxml (:use)
                             (:export #:all-query-string-types
                              #:all-query-string-types-input
                              #:body-with-xml-name
                              #:body-with-xml-name-input-output
                              #:complex-nested-error-data
                              #:constant-and-variable-query-string
                              #:constant-and-variable-query-string-input
                              #:constant-query-string
                              #:constant-query-string-input
                              #:content-type-parameters #:datetime-offsets
                              #:datetime-offsets-output
                              #:empty-input-and-empty-output
                              #:empty-input-and-empty-output-input
                              #:empty-input-and-empty-output-output
                              #:endpoint-operation
                              #:endpoint-with-host-label-header-operation
                              #:endpoint-with-host-label-operation
                              #:enum-payload-input #:flattened-xml-map
                              #:flattened-xml-map-with-xml-name
                              #:flattened-xml-map-with-xml-name-input-output-map
                              #:flattened-xml-map-with-xml-namespace
                              #:flattened-xml-map-with-xml-namespace-output
                              #:flattened-xml-map-with-xml-namespace-output-map
                              #:foo-prefix-headers #:fractional-seconds
                              #:fractional-seconds-output
                              #:greeting-with-errors
                              #:greeting-with-errors-output
                              #:host-label-header-input
                              #:http-empty-prefix-headers #:http-enum-payload
                              #:http-payload-traits
                              #:http-payload-traits-input-output
                              #:http-payload-traits-with-media-type
                              #:http-payload-traits-with-media-type-input-output
                              #:http-payload-with-member-xml-name
                              #:http-payload-with-member-xml-name-input-output
                              #:http-payload-with-structure
                              #:http-payload-with-structure-input-output
                              #:http-payload-with-union
                              #:http-payload-with-union-input-output
                              #:http-payload-with-xml-name
                              #:http-payload-with-xml-name-input-output
                              #:http-payload-with-xml-namespace
                              #:http-payload-with-xml-namespace-and-prefix
                              #:http-payload-with-xml-namespace-and-prefix-input-output
                              #:http-payload-with-xml-namespace-input-output
                              #:http-prefix-headers
                              #:http-prefix-headers-input-output
                              #:http-request-with-float-labels
                              #:http-request-with-float-labels-input
                              #:http-request-with-greedy-label-in-path
                              #:http-request-with-greedy-label-in-path-input
                              #:http-request-with-labels
                              #:http-request-with-labels-and-timestamp-format
                              #:http-request-with-labels-and-timestamp-format-input
                              #:http-request-with-labels-input
                              #:http-response-code #:http-response-code-output
                              #:http-string-payload
                              #:ignore-query-params-in-response
                              #:ignore-query-params-in-response-output
                              #:input-and-output-with-headers
                              #:input-and-output-with-headers-io
                              #:list-with-member-namespace
                              #:list-with-namespace #:nested-map
                              #:nested-payload #:nested-xml-map-with-xml-name
                              #:nested-xml-map-with-xml-name-inner-map
                              #:nested-xml-map-with-xml-name-input-output
                              #:nested-xml-map-with-xml-name-map
                              #:nested-xml-maps #:nested-xml-maps-input-output
                              #:no-input-and-no-output #:no-input-and-output
                              #:no-input-and-output-output
                              #:null-and-empty-headers-client
                              #:null-and-empty-headers-io
                              #:null-and-empty-headers-server
                              #:omits-null-serializes-empty-string
                              #:omits-null-serializes-empty-string-input
                              #:payload-with-xml-name
                              #:payload-with-xml-namespace
                              #:payload-with-xml-namespace-and-prefix
                              #:put-with-content-encoding
                              #:query-idempotency-token-auto-fill
                              #:query-idempotency-token-auto-fill-input
                              #:query-params-as-string-list-map
                              #:query-params-as-string-list-map-input
                              #:query-precedence #:query-precedence-input
                              #:recursive-shapes
                              #:recursive-shapes-input-output-nested1
                              #:recursive-shapes-input-output-nested2
                              #:renamed-list-members #:rest-xml
                              #:simple-scalar-properties
                              #:simple-scalar-properties-input-output
                              #:string-enum #:string-payload-input
                              #:structure-list #:structure-list-member
                              #:timestamp-format-headers
                              #:timestamp-format-headers-io #:union-payload
                              #:xml-attributes #:xml-attributes-input-output
                              #:xml-attributes-on-payload
                              #:xml-attributes-payload-request
                              #:xml-attributes-payload-response #:xml-blobs
                              #:xml-empty-blobs #:xml-empty-lists
                              #:xml-empty-maps #:xml-empty-strings #:xml-enums
                              #:xml-enums-input-output #:xml-int-enums
                              #:xml-int-enums-input-output #:xml-lists
                              #:xml-lists-input-output
                              #:xml-map-with-xml-namespace
                              #:xml-map-with-xml-namespace-input-output
                              #:xml-map-with-xml-namespace-input-output-map
                              #:xml-maps #:xml-maps-input-output-map
                              #:xml-maps-xml-name
                              #:xml-maps-xml-name-input-output-map
                              #:xml-namespace-nested #:xml-namespaced-list
                              #:xml-namespaces #:xml-namespaces-input-output
                              #:xml-nested-union-struct #:xml-timestamps
                              #:xml-timestamps-input-output #:xml-union-shape
                              #:xml-unions))
(common-lisp:in-package #:pira/tests/protocols/restxml)

(smithy/sdk/service:define-service rest-xml :shape-name "RestXml" :version
                                   "2019-12-16" :title
                                   "Sample Rest Xml Protocol Service"
                                   :operations
                                   '(all-query-string-types body-with-xml-name
                                     constant-and-variable-query-string
                                     constant-query-string
                                     content-type-parameters datetime-offsets
                                     empty-input-and-empty-output
                                     endpoint-operation
                                     endpoint-with-host-label-header-operation
                                     endpoint-with-host-label-operation
                                     flattened-xml-map
                                     flattened-xml-map-with-xml-name
                                     flattened-xml-map-with-xml-namespace
                                     fractional-seconds greeting-with-errors
                                     http-empty-prefix-headers
                                     http-enum-payload http-payload-traits
                                     http-payload-traits-with-media-type
                                     http-payload-with-member-xml-name
                                     http-payload-with-structure
                                     http-payload-with-union
                                     http-payload-with-xml-name
                                     http-payload-with-xml-namespace
                                     http-payload-with-xml-namespace-and-prefix
                                     http-prefix-headers
                                     http-request-with-float-labels
                                     http-request-with-greedy-label-in-path
                                     http-request-with-labels
                                     http-request-with-labels-and-timestamp-format
                                     http-response-code http-string-payload
                                     ignore-query-params-in-response
                                     input-and-output-with-headers
                                     nested-xml-maps
                                     nested-xml-map-with-xml-name
                                     no-input-and-no-output no-input-and-output
                                     null-and-empty-headers-client
                                     null-and-empty-headers-server
                                     omits-null-serializes-empty-string
                                     put-with-content-encoding
                                     query-idempotency-token-auto-fill
                                     query-params-as-string-list-map
                                     query-precedence recursive-shapes
                                     simple-scalar-properties
                                     timestamp-format-headers xml-attributes
                                     xml-attributes-on-payload xml-blobs
                                     xml-empty-blobs xml-empty-lists
                                     xml-empty-maps xml-empty-strings xml-enums
                                     xml-int-enums xml-lists xml-maps
                                     xml-maps-xml-name
                                     xml-map-with-xml-namespace xml-namespaces
                                     xml-timestamps xml-unions)
                                   :traits
                                   '(("aws.api#service"
                                      ("sdkId" . "Rest Xml Protocol"))
                                     ("aws.auth#sigv4" ("name" . "restxml"))
                                     ("aws.protocols#restXml")))

(smithy/sdk/shapes:define-input all-query-string-types-input common-lisp:nil
                                ((query-string :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "queryString" :http-query "String")
                                 (query-string-list :target-type string-list
                                  :member-name "queryStringList" :http-query
                                  "StringList")
                                 (query-string-set :target-type string-set
                                  :member-name "queryStringSet" :http-query
                                  "StringSet")
                                 (query-byte :target-type
                                  smithy/sdk/smithy-types:byte :member-name
                                  "queryByte" :http-query "Byte")
                                 (query-short :target-type
                                  smithy/sdk/smithy-types:short :member-name
                                  "queryShort" :http-query "Short")
                                 (query-integer :target-type
                                  smithy/sdk/smithy-types:integer :member-name
                                  "queryInteger" :http-query "Integer")
                                 (query-integer-list :target-type integer-list
                                  :member-name "queryIntegerList" :http-query
                                  "IntegerList")
                                 (query-integer-set :target-type integer-set
                                  :member-name "queryIntegerSet" :http-query
                                  "IntegerSet")
                                 (query-long :target-type
                                  smithy/sdk/smithy-types:long :member-name
                                  "queryLong" :http-query "Long")
                                 (query-float :target-type
                                  smithy/sdk/smithy-types:float :member-name
                                  "queryFloat" :http-query "Float")
                                 (query-double :target-type
                                  smithy/sdk/smithy-types:double :member-name
                                  "queryDouble" :http-query "Double")
                                 (query-double-list :target-type double-list
                                  :member-name "queryDoubleList" :http-query
                                  "DoubleList")
                                 (query-boolean :target-type
                                  smithy/sdk/smithy-types:boolean :member-name
                                  "queryBoolean" :http-query "Boolean")
                                 (query-boolean-list :target-type boolean-list
                                  :member-name "queryBooleanList" :http-query
                                  "BooleanList")
                                 (query-timestamp :target-type
                                  smithy/sdk/smithy-types:timestamp
                                  :member-name "queryTimestamp" :http-query
                                  "Timestamp")
                                 (query-timestamp-list :target-type
                                  timestamp-list :member-name
                                  "queryTimestampList" :http-query
                                  "TimestampList")
                                 (query-enum :target-type foo-enum :member-name
                                  "queryEnum" :http-query "Enum")
                                 (query-enum-list :target-type foo-enum-list
                                  :member-name "queryEnumList" :http-query
                                  "EnumList")
                                 (query-integer-enum :target-type integer-enum
                                  :member-name "queryIntegerEnum" :http-query
                                  "IntegerEnum")
                                 (query-integer-enum-list :target-type
                                  integer-enum-list :member-name
                                  "queryIntegerEnumList" :http-query
                                  "IntegerEnumList")
                                 (query-params-map-of-strings :target-type
                                  string-map :member-name
                                  "queryParamsMapOfStrings" :http-query-params
                                  common-lisp:t))
                                (:shape-name "AllQueryStringTypesInput"))

(smithy/sdk/shapes:define-structure body-with-xml-name-input-output
                                    common-lisp:nil
                                    ((nested :target-type payload-with-xml-name
                                      :member-name "nested"))
                                    (:shape-name "BodyWithXmlNameInputOutput")
                                    (:xml-name "Ahoy"))

(smithy/sdk/shapes:define-error complex-error common-lisp:nil
                                ((header :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "Header" :http-header "X-Header")
                                 (top-level :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "TopLevel")
                                 (nested :target-type complex-nested-error-data
                                  :member-name "Nested"))
                                (:shape-name "ComplexError") (:error-code 403))

(smithy/sdk/shapes:define-structure complex-nested-error-data common-lisp:nil
                                    ((foo :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "Foo"))
                                    (:shape-name "ComplexNestedErrorData"))

(smithy/sdk/shapes:define-input constant-and-variable-query-string-input
                                common-lisp:nil
                                ((baz :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "baz" :http-query "baz")
                                 (maybe-set :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "maybeSet" :http-query "maybeSet"))
                                (:shape-name
                                 "ConstantAndVariableQueryStringInput"))

(smithy/sdk/shapes:define-input constant-query-string-input common-lisp:nil
                                ((hello :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "hello"
                                  :http-label common-lisp:t))
                                (:shape-name "ConstantQueryStringInput"))

(smithy/sdk/shapes:define-input content-type-parameters-input common-lisp:nil
                                ((value :target-type
                                  smithy/sdk/smithy-types:integer :member-name
                                  "value"))
                                (:shape-name "ContentTypeParametersInput"))

(smithy/sdk/shapes:define-output content-type-parameters-output common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "ContentTypeParametersOutput"))

(smithy/sdk/shapes:define-structure datetime-offsets-output common-lisp:nil
                                    ((datetime :target-type date-time
                                      :member-name "datetime"))
                                    (:shape-name "DatetimeOffsetsOutput"))

(smithy/sdk/shapes:define-structure empty-input-and-empty-output-input
                                    common-lisp:nil common-lisp:nil
                                    (:shape-name
                                     "EmptyInputAndEmptyOutputInput"))

(smithy/sdk/shapes:define-structure empty-input-and-empty-output-output
                                    common-lisp:nil common-lisp:nil
                                    (:shape-name
                                     "EmptyInputAndEmptyOutputOutput"))

(smithy/sdk/shapes:define-input endpoint-with-host-label-operation-request
                                common-lisp:nil
                                ((label :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "label"
                                  :host-label common-lisp:t))
                                (:shape-name
                                 "EndpointWithHostLabelOperationRequest"))

(smithy/sdk/shapes:define-structure enum-payload-input common-lisp:nil
                                    ((payload :target-type string-enum
                                      :member-name "payload" :http-payload
                                      common-lisp:t))
                                    (:shape-name "EnumPayloadInput"))

(smithy/sdk/shapes:define-input flattened-xml-map-request common-lisp:nil
                                ((my-map :target-type foo-enum-map :member-name
                                  "myMap" :xml-flattened common-lisp:t))
                                (:shape-name "FlattenedXmlMapRequest"))

(smithy/sdk/shapes:define-output flattened-xml-map-response common-lisp:nil
                                 ((my-map :target-type foo-enum-map
                                   :member-name "myMap" :xml-flattened
                                   common-lisp:t))
                                 (:shape-name "FlattenedXmlMapResponse"))

(smithy/sdk/shapes:define-map flattened-xml-map-with-xml-name-input-output-map
                              :key
                              (smithy/sdk/smithy-types:string :xml-name "K")
                              :value
                              (smithy/sdk/smithy-types:string :xml-name "V"))

(smithy/sdk/shapes:define-input flattened-xml-map-with-xml-name-request
                                common-lisp:nil
                                ((my-map :target-type
                                  flattened-xml-map-with-xml-name-input-output-map
                                  :member-name "myMap" :xml-name "KVP"
                                  :xml-flattened common-lisp:t))
                                (:shape-name
                                 "FlattenedXmlMapWithXmlNameRequest"))

(smithy/sdk/shapes:define-output flattened-xml-map-with-xml-name-response
                                 common-lisp:nil
                                 ((my-map :target-type
                                   flattened-xml-map-with-xml-name-input-output-map
                                   :member-name "myMap" :xml-name "KVP"
                                   :xml-flattened common-lisp:t))
                                 (:shape-name
                                  "FlattenedXmlMapWithXmlNameResponse"))

(smithy/sdk/shapes:define-structure flattened-xml-map-with-xml-namespace-output
                                    common-lisp:nil
                                    ((my-map :target-type
                                      flattened-xml-map-with-xml-namespace-output-map
                                      :member-name "myMap" :xml-name "KVP"
                                      :xml-flattened common-lisp:t
                                      :xml-namespace
                                      (:uri "https://the-member.example.com"
                                       :prefix common-lisp:nil)))
                                    (:shape-name
                                     "FlattenedXmlMapWithXmlNamespaceOutput"))

(smithy/sdk/shapes:define-map flattened-xml-map-with-xml-namespace-output-map
                              :key
                              (smithy/sdk/smithy-types:string :xml-name "K")
                              :value
                              (smithy/sdk/smithy-types:string :xml-name "V"))

(smithy/sdk/shapes:define-map foo-prefix-headers :key
                              smithy/sdk/smithy-types:string :value
                              smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure fractional-seconds-output common-lisp:nil
                                    ((datetime :target-type date-time
                                      :member-name "datetime"))
                                    (:shape-name "FractionalSecondsOutput"))

(smithy/sdk/shapes:define-structure greeting-with-errors-output common-lisp:nil
                                    ((greeting :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "greeting" :http-header
                                      "X-Greeting"))
                                    (:shape-name "GreetingWithErrorsOutput"))

(smithy/sdk/shapes:define-input host-label-header-input common-lisp:nil
                                ((account-id :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "accountId"
                                  :host-label common-lisp:t :http-header
                                  "X-Amz-Account-Id"))
                                (:shape-name "HostLabelHeaderInput"))

(smithy/sdk/shapes:define-input http-empty-prefix-headers-input common-lisp:nil
                                ((prefix-headers :target-type string-map
                                  :member-name "prefixHeaders"
                                  :http-prefix-headers "")
                                 (specific-header :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "specificHeader" :http-header "hello"))
                                (:shape-name "HttpEmptyPrefixHeadersInput"))

(smithy/sdk/shapes:define-output http-empty-prefix-headers-output
                                 common-lisp:nil
                                 ((prefix-headers :target-type string-map
                                   :member-name "prefixHeaders"
                                   :http-prefix-headers "")
                                  (specific-header :target-type
                                   smithy/sdk/smithy-types:string :member-name
                                   "specificHeader" :http-header "hello"))
                                 (:shape-name "HttpEmptyPrefixHeadersOutput"))

(smithy/sdk/shapes:define-structure http-payload-traits-input-output
                                    common-lisp:nil
                                    ((foo :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "foo" :http-header "X-Foo")
                                     (blob :target-type
                                      smithy/sdk/smithy-types:blob :member-name
                                      "blob" :http-payload common-lisp:t))
                                    (:shape-name
                                     "HttpPayloadTraitsInputOutput"))

(smithy/sdk/shapes:define-structure
 http-payload-traits-with-media-type-input-output common-lisp:nil
 ((foo :target-type smithy/sdk/smithy-types:string :member-name "foo"
   :http-header "X-Foo")
  (blob :target-type text-plain-blob :member-name "blob" :http-payload
   common-lisp:t))
 (:shape-name "HttpPayloadTraitsWithMediaTypeInputOutput"))

(smithy/sdk/shapes:define-structure
 http-payload-with-member-xml-name-input-output common-lisp:nil
 ((nested :target-type payload-with-xml-name :member-name "nested"
   :http-payload common-lisp:t :xml-name "Hola"))
 (:shape-name "HttpPayloadWithMemberXmlNameInputOutput"))

(smithy/sdk/shapes:define-structure http-payload-with-structure-input-output
                                    common-lisp:nil
                                    ((nested :target-type nested-payload
                                      :member-name "nested" :http-payload
                                      common-lisp:t))
                                    (:shape-name
                                     "HttpPayloadWithStructureInputOutput"))

(smithy/sdk/shapes:define-structure http-payload-with-union-input-output
                                    common-lisp:nil
                                    ((nested :target-type union-payload
                                      :member-name "nested" :http-payload
                                      common-lisp:t))
                                    (:shape-name
                                     "HttpPayloadWithUnionInputOutput"))

(smithy/sdk/shapes:define-structure http-payload-with-xml-name-input-output
                                    common-lisp:nil
                                    ((nested :target-type payload-with-xml-name
                                      :member-name "nested" :http-payload
                                      common-lisp:t))
                                    (:shape-name
                                     "HttpPayloadWithXmlNameInputOutput"))

(smithy/sdk/shapes:define-structure
 http-payload-with-xml-namespace-and-prefix-input-output common-lisp:nil
 ((nested :target-type payload-with-xml-namespace-and-prefix :member-name
   "nested" :http-payload common-lisp:t))
 (:shape-name "HttpPayloadWithXmlNamespaceAndPrefixInputOutput"))

(smithy/sdk/shapes:define-structure
 http-payload-with-xml-namespace-input-output common-lisp:nil
 ((nested :target-type payload-with-xml-namespace :member-name "nested"
   :http-payload common-lisp:t))
 (:shape-name "HttpPayloadWithXmlNamespaceInputOutput"))

(smithy/sdk/shapes:define-structure http-prefix-headers-input-output
                                    common-lisp:nil
                                    ((foo :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "foo" :http-header "x-foo")
                                     (foo-map :target-type foo-prefix-headers
                                      :member-name "fooMap"
                                      :http-prefix-headers "x-foo-"))
                                    (:shape-name
                                     "HttpPrefixHeadersInputOutput"))

(smithy/sdk/shapes:define-input http-request-with-float-labels-input
                                common-lisp:nil
                                ((float :target-type
                                  smithy/sdk/smithy-types:float :required
                                  common-lisp:t :member-name "float"
                                  :http-label common-lisp:t)
                                 (double :target-type
                                  smithy/sdk/smithy-types:double :required
                                  common-lisp:t :member-name "double"
                                  :http-label common-lisp:t))
                                (:shape-name "HttpRequestWithFloatLabelsInput"))

(smithy/sdk/shapes:define-input http-request-with-greedy-label-in-path-input
                                common-lisp:nil
                                ((foo :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "foo" :http-label
                                  common-lisp:t)
                                 (baz :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "baz" :http-label
                                  common-lisp:t))
                                (:shape-name
                                 "HttpRequestWithGreedyLabelInPathInput"))

(smithy/sdk/shapes:define-input
 http-request-with-labels-and-timestamp-format-input common-lisp:nil
 ((member-epoch-seconds :target-type smithy/sdk/smithy-types:timestamp
   :required common-lisp:t :member-name "memberEpochSeconds" :http-label
   common-lisp:t :timestamp-format "epoch-seconds")
  (member-http-date :target-type smithy/sdk/smithy-types:timestamp :required
   common-lisp:t :member-name "memberHttpDate" :http-label common-lisp:t
   :timestamp-format "http-date")
  (member-date-time :target-type smithy/sdk/smithy-types:timestamp :required
   common-lisp:t :member-name "memberDateTime" :http-label common-lisp:t
   :timestamp-format "date-time")
  (default-format :target-type smithy/sdk/smithy-types:timestamp :required
   common-lisp:t :member-name "defaultFormat" :http-label common-lisp:t)
  (target-epoch-seconds :target-type epoch-seconds :required common-lisp:t
   :member-name "targetEpochSeconds" :http-label common-lisp:t)
  (target-http-date :target-type http-date :required common-lisp:t :member-name
   "targetHttpDate" :http-label common-lisp:t)
  (target-date-time :target-type date-time :required common-lisp:t :member-name
   "targetDateTime" :http-label common-lisp:t))
 (:shape-name "HttpRequestWithLabelsAndTimestampFormatInput"))

(smithy/sdk/shapes:define-input http-request-with-labels-input common-lisp:nil
                                ((string :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "string"
                                  :http-label common-lisp:t)
                                 (short :target-type
                                  smithy/sdk/smithy-types:short :required
                                  common-lisp:t :member-name "short"
                                  :http-label common-lisp:t)
                                 (integer :target-type
                                  smithy/sdk/smithy-types:integer :required
                                  common-lisp:t :member-name "integer"
                                  :http-label common-lisp:t)
                                 (long :target-type
                                  smithy/sdk/smithy-types:long :required
                                  common-lisp:t :member-name "long" :http-label
                                  common-lisp:t)
                                 (float :target-type
                                  smithy/sdk/smithy-types:float :required
                                  common-lisp:t :member-name "float"
                                  :http-label common-lisp:t)
                                 (double :target-type
                                  smithy/sdk/smithy-types:double :required
                                  common-lisp:t :member-name "double"
                                  :http-label common-lisp:t)
                                 (boolean :target-type
                                  smithy/sdk/smithy-types:boolean :required
                                  common-lisp:t :member-name "boolean"
                                  :http-label common-lisp:t)
                                 (timestamp :target-type
                                  smithy/sdk/smithy-types:timestamp :required
                                  common-lisp:t :member-name "timestamp"
                                  :http-label common-lisp:t))
                                (:shape-name "HttpRequestWithLabelsInput"))

(smithy/sdk/shapes:define-structure http-response-code-output common-lisp:nil
                                    ((status :target-type
                                      smithy/sdk/smithy-types:integer
                                      :member-name "Status"))
                                    (:shape-name "HttpResponseCodeOutput"))

(smithy/sdk/shapes:define-input ignore-query-params-in-response-output
                                common-lisp:nil
                                ((baz :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "baz" :http-query "baz"))
                                (:shape-name
                                 "IgnoreQueryParamsInResponseOutput"))

(smithy/sdk/shapes:define-structure input-and-output-with-headers-io
                                    common-lisp:nil
                                    ((header-string :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "headerString" :http-header
                                      "X-String")
                                     (header-byte :target-type
                                      smithy/sdk/smithy-types:byte :member-name
                                      "headerByte" :http-header "X-Byte")
                                     (header-short :target-type
                                      smithy/sdk/smithy-types:short
                                      :member-name "headerShort" :http-header
                                      "X-Short")
                                     (header-integer :target-type
                                      smithy/sdk/smithy-types:integer
                                      :member-name "headerInteger" :http-header
                                      "X-Integer")
                                     (header-long :target-type
                                      smithy/sdk/smithy-types:long :member-name
                                      "headerLong" :http-header "X-Long")
                                     (header-float :target-type
                                      smithy/sdk/smithy-types:float
                                      :member-name "headerFloat" :http-header
                                      "X-Float")
                                     (header-double :target-type
                                      smithy/sdk/smithy-types:double
                                      :member-name "headerDouble" :http-header
                                      "X-Double")
                                     (header-true-bool :target-type
                                      smithy/sdk/smithy-types:boolean
                                      :member-name "headerTrueBool"
                                      :http-header "X-Boolean1")
                                     (header-false-bool :target-type
                                      smithy/sdk/smithy-types:boolean
                                      :member-name "headerFalseBool"
                                      :http-header "X-Boolean2")
                                     (header-string-list :target-type
                                      string-list :member-name
                                      "headerStringList" :http-header
                                      "X-StringList")
                                     (header-string-set :target-type string-set
                                      :member-name "headerStringSet"
                                      :http-header "X-StringSet")
                                     (header-integer-list :target-type
                                      integer-list :member-name
                                      "headerIntegerList" :http-header
                                      "X-IntegerList")
                                     (header-boolean-list :target-type
                                      boolean-list :member-name
                                      "headerBooleanList" :http-header
                                      "X-BooleanList")
                                     (header-timestamp-list :target-type
                                      timestamp-list :member-name
                                      "headerTimestampList" :http-header
                                      "X-TimestampList")
                                     (header-enum :target-type foo-enum
                                      :member-name "headerEnum" :http-header
                                      "X-Enum")
                                     (header-enum-list :target-type
                                      foo-enum-list :member-name
                                      "headerEnumList" :http-header
                                      "X-EnumList"))
                                    (:shape-name "InputAndOutputWithHeadersIO"))

(smithy/sdk/shapes:define-error invalid-greeting common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "Message"))
                                (:shape-name "InvalidGreeting")
                                (:error-code 400))

(smithy/sdk/shapes:define-list list-with-member-namespace :member
                               smithy/sdk/smithy-types:string :xml-namespace
                               '(:uri "https://xml-list.example.com" :prefix
                                 common-lisp:nil))

(smithy/sdk/shapes:define-list list-with-namespace :member
                               smithy/sdk/smithy-types:string :xml-namespace
                               '(:uri "https://xml-list.example.com" :prefix
                                 common-lisp:nil))

(smithy/sdk/shapes:define-map nested-map :key smithy/sdk/smithy-types:string
                              :value foo-enum-map)

(smithy/sdk/shapes:define-structure nested-payload common-lisp:nil
                                    ((greeting :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "greeting")
                                     (name :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "name"))
                                    (:shape-name "NestedPayload"))

(smithy/sdk/shapes:define-map nested-xml-map-with-xml-name-inner-map :key
                              (smithy/sdk/smithy-types:string :xml-name
                               "InnerKey")
                              :value
                              (smithy/sdk/smithy-types:string :xml-name
                               "InnerValue"))

(smithy/sdk/shapes:define-structure nested-xml-map-with-xml-name-input-output
                                    common-lisp:nil
                                    ((nested-xml-map-with-xml-name-map
                                      :target-type
                                      nested-xml-map-with-xml-name-map
                                      :member-name
                                      "nestedXmlMapWithXmlNameMap"))
                                    (:shape-name
                                     "NestedXmlMapWithXmlNameInputOutput"))

(smithy/sdk/shapes:define-map nested-xml-map-with-xml-name-map :key
                              (smithy/sdk/smithy-types:string :xml-name
                               "OuterKey")
                              :value nested-xml-map-with-xml-name-inner-map)

(smithy/sdk/shapes:define-input nested-xml-map-with-xml-name-request
                                (nested-xml-map-with-xml-name-input-output)
                                common-lisp:nil
                                (:shape-name "NestedXmlMapWithXmlNameRequest"))

(smithy/sdk/shapes:define-output nested-xml-map-with-xml-name-response
                                 (nested-xml-map-with-xml-name-input-output)
                                 common-lisp:nil
                                 (:shape-name
                                  "NestedXmlMapWithXmlNameResponse"))

(smithy/sdk/shapes:define-structure nested-xml-maps-input-output
                                    common-lisp:nil
                                    ((nested-map :target-type nested-map
                                      :member-name "nestedMap")
                                     (flat-nested-map :target-type nested-map
                                      :member-name "flatNestedMap"
                                      :xml-flattened common-lisp:t))
                                    (:shape-name "NestedXmlMapsInputOutput"))

(smithy/sdk/shapes:define-input nested-xml-maps-request
                                (nested-xml-maps-input-output) common-lisp:nil
                                (:shape-name "NestedXmlMapsRequest"))

(smithy/sdk/shapes:define-output nested-xml-maps-response
                                 (nested-xml-maps-input-output) common-lisp:nil
                                 (:shape-name "NestedXmlMapsResponse"))

(smithy/sdk/shapes:define-structure no-input-and-output-output common-lisp:nil
                                    common-lisp:nil
                                    (:shape-name "NoInputAndOutputOutput"))

(smithy/sdk/shapes:define-structure null-and-empty-headers-io common-lisp:nil
                                    ((a :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "a" :http-header "X-A")
                                     (b :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "b" :http-header "X-B")
                                     (c :target-type string-list :member-name
                                      "c" :http-header "X-C"))
                                    (:shape-name "NullAndEmptyHeadersIO"))

(smithy/sdk/shapes:define-input omits-null-serializes-empty-string-input
                                common-lisp:nil
                                ((null-value :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "nullValue" :http-query "Null")
                                 (empty-string :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "emptyString" :http-query "Empty"))
                                (:shape-name
                                 "OmitsNullSerializesEmptyStringInput"))

(smithy/sdk/shapes:define-structure payload-with-xml-name common-lisp:nil
                                    ((name :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "name"))
                                    (:shape-name "PayloadWithXmlName")
                                    (:xml-name "Hello"))

(smithy/sdk/shapes:define-structure payload-with-xml-namespace common-lisp:nil
                                    ((name :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "name"))
                                    (:shape-name "PayloadWithXmlNamespace")
                                    (:xml-namespace
                                     (:uri "http://foo.com" :prefix
                                      common-lisp:nil)))

(smithy/sdk/shapes:define-structure payload-with-xml-namespace-and-prefix
                                    common-lisp:nil
                                    ((name :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "name"))
                                    (:shape-name
                                     "PayloadWithXmlNamespaceAndPrefix")
                                    (:xml-namespace
                                     (:uri "http://foo.com" :prefix "baz")))

(smithy/sdk/shapes:define-input put-with-content-encoding-input common-lisp:nil
                                ((encoding :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "encoding" :http-header "Content-Encoding")
                                 (data :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "data"))
                                (:shape-name "PutWithContentEncodingInput"))

(smithy/sdk/shapes:define-input query-idempotency-token-auto-fill-input
                                common-lisp:nil
                                ((token :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "token" :http-query "token"))
                                (:shape-name
                                 "QueryIdempotencyTokenAutoFillInput"))

(smithy/sdk/shapes:define-input query-params-as-string-list-map-input
                                common-lisp:nil
                                ((qux :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "qux" :http-query "corge")
                                 (foo :target-type string-list-map :member-name
                                  "foo" :http-query-params common-lisp:t))
                                (:shape-name "QueryParamsAsStringListMapInput"))

(smithy/sdk/shapes:define-input query-precedence-input common-lisp:nil
                                ((foo :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "foo" :http-query "bar")
                                 (baz :target-type string-map :member-name
                                  "baz" :http-query-params common-lisp:t))
                                (:shape-name "QueryPrecedenceInput"))

(smithy/sdk/shapes:define-structure recursive-shapes-input-output-nested1
                                    common-lisp:nil
                                    ((foo :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "foo")
                                     (nested :target-type
                                      recursive-shapes-input-output-nested2
                                      :member-name "nested"))
                                    (:shape-name
                                     "RecursiveShapesInputOutputNested1"))

(smithy/sdk/shapes:define-structure recursive-shapes-input-output-nested2
                                    common-lisp:nil
                                    ((bar :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "bar")
                                     (recursive-member :target-type
                                      recursive-shapes-input-output-nested1
                                      :member-name "recursiveMember"))
                                    (:shape-name
                                     "RecursiveShapesInputOutputNested2"))

(smithy/sdk/shapes:define-input recursive-shapes-request common-lisp:nil
                                ((nested :target-type
                                  recursive-shapes-input-output-nested1
                                  :member-name "nested"))
                                (:shape-name "RecursiveShapesRequest"))

(smithy/sdk/shapes:define-output recursive-shapes-response common-lisp:nil
                                 ((nested :target-type
                                   recursive-shapes-input-output-nested1
                                   :member-name "nested"))
                                 (:shape-name "RecursiveShapesResponse"))

(smithy/sdk/shapes:define-list renamed-list-members :member
                               (smithy/sdk/smithy-types:string :xml-name
                                "item"))

(smithy/sdk/shapes:define-structure simple-scalar-properties-input-output
                                    common-lisp:nil
                                    ((foo :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "foo" :http-header "X-Foo")
                                     (string-value :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "stringValue")
                                     (true-boolean-value :target-type
                                      smithy/sdk/smithy-types:boolean
                                      :member-name "trueBooleanValue")
                                     (false-boolean-value :target-type
                                      smithy/sdk/smithy-types:boolean
                                      :member-name "falseBooleanValue")
                                     (byte-value :target-type
                                      smithy/sdk/smithy-types:byte :member-name
                                      "byteValue")
                                     (short-value :target-type
                                      smithy/sdk/smithy-types:short
                                      :member-name "shortValue")
                                     (integer-value :target-type
                                      smithy/sdk/smithy-types:integer
                                      :member-name "integerValue")
                                     (long-value :target-type
                                      smithy/sdk/smithy-types:long :member-name
                                      "longValue")
                                     (float-value :target-type
                                      smithy/sdk/smithy-types:float
                                      :member-name "floatValue")
                                     (double-value :target-type
                                      smithy/sdk/smithy-types:double
                                      :member-name "doubleValue" :xml-name
                                      "DoubleDribble"))
                                    (:shape-name
                                     "SimpleScalarPropertiesInputOutput"))

(smithy/sdk/shapes:define-input simple-scalar-properties-request
                                (simple-scalar-properties-input-output)
                                common-lisp:nil
                                (:shape-name "SimpleScalarPropertiesRequest"))

(smithy/sdk/shapes:define-output simple-scalar-properties-response
                                 (simple-scalar-properties-input-output)
                                 common-lisp:nil
                                 (:shape-name "SimpleScalarPropertiesResponse"))

(smithy/sdk/shapes:define-enum string-enum
    common-lisp:nil
  (:v "enumvalue"))

(smithy/sdk/shapes:define-structure string-payload-input common-lisp:nil
                                    ((payload :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "payload" :http-payload
                                      common-lisp:t))
                                    (:shape-name "StringPayloadInput"))

(smithy/sdk/shapes:define-list structure-list :member
                               (structure-list-member :xml-name "item"))

(smithy/sdk/shapes:define-structure structure-list-member common-lisp:nil
                                    ((a :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "a" :xml-name "value")
                                     (b :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "b" :xml-name "other"))
                                    (:shape-name "StructureListMember"))

(smithy/sdk/shapes:define-structure timestamp-format-headers-io common-lisp:nil
                                    ((member-epoch-seconds :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :member-name "memberEpochSeconds"
                                      :http-header "X-memberEpochSeconds"
                                      :timestamp-format "epoch-seconds")
                                     (member-http-date :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :member-name "memberHttpDate"
                                      :http-header "X-memberHttpDate"
                                      :timestamp-format "http-date")
                                     (member-date-time :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :member-name "memberDateTime"
                                      :http-header "X-memberDateTime"
                                      :timestamp-format "date-time")
                                     (default-format :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :member-name "defaultFormat" :http-header
                                      "X-defaultFormat")
                                     (target-epoch-seconds :target-type
                                      epoch-seconds :member-name
                                      "targetEpochSeconds" :http-header
                                      "X-targetEpochSeconds")
                                     (target-http-date :target-type http-date
                                      :member-name "targetHttpDate"
                                      :http-header "X-targetHttpDate")
                                     (target-date-time :target-type date-time
                                      :member-name "targetDateTime"
                                      :http-header "X-targetDateTime"))
                                    (:shape-name "TimestampFormatHeadersIO"))

(smithy/sdk/shapes:define-union union-payload common-lisp:nil
                                ((greeting :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "greeting"))
                                (:shape-name "UnionPayload"))

(smithy/sdk/shapes:define-structure xml-attributes-input-output common-lisp:nil
                                    ((foo :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "foo")
                                     (attr :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "attr" :xml-name "test"
                                      :xml-attribute common-lisp:t))
                                    (:shape-name "XmlAttributesInputOutput"))

(smithy/sdk/shapes:define-input xml-attributes-on-payload-request
                                common-lisp:nil
                                ((payload :target-type
                                  xml-attributes-payload-request :member-name
                                  "payload" :http-payload common-lisp:t))
                                (:shape-name "XmlAttributesOnPayloadRequest"))

(smithy/sdk/shapes:define-output xml-attributes-on-payload-response
                                 common-lisp:nil
                                 ((payload :target-type
                                   xml-attributes-payload-response :member-name
                                   "payload" :http-payload common-lisp:t))
                                 (:shape-name "XmlAttributesOnPayloadResponse"))

(smithy/sdk/shapes:define-structure xml-attributes-payload-request
                                    (xml-attributes-input-output)
                                    common-lisp:nil
                                    (:shape-name "XmlAttributesPayloadRequest"))

(smithy/sdk/shapes:define-structure xml-attributes-payload-response
                                    (xml-attributes-input-output)
                                    common-lisp:nil
                                    (:shape-name
                                     "XmlAttributesPayloadResponse"))

(smithy/sdk/shapes:define-input xml-attributes-request
                                (xml-attributes-input-output) common-lisp:nil
                                (:shape-name "XmlAttributesRequest"))

(smithy/sdk/shapes:define-output xml-attributes-response
                                 (xml-attributes-input-output) common-lisp:nil
                                 (:shape-name "XmlAttributesResponse"))

(smithy/sdk/shapes:define-input xml-blobs-request common-lisp:nil
                                ((data :target-type
                                  smithy/sdk/smithy-types:blob :member-name
                                  "data"))
                                (:shape-name "XmlBlobsRequest"))

(smithy/sdk/shapes:define-output xml-blobs-response common-lisp:nil
                                 ((data :target-type
                                   smithy/sdk/smithy-types:blob :member-name
                                   "data"))
                                 (:shape-name "XmlBlobsResponse"))

(smithy/sdk/shapes:define-input xml-empty-blobs-request common-lisp:nil
                                ((data :target-type
                                  smithy/sdk/smithy-types:blob :member-name
                                  "data"))
                                (:shape-name "XmlEmptyBlobsRequest"))

(smithy/sdk/shapes:define-output xml-empty-blobs-response common-lisp:nil
                                 ((data :target-type
                                   smithy/sdk/smithy-types:blob :member-name
                                   "data"))
                                 (:shape-name "XmlEmptyBlobsResponse"))

(smithy/sdk/shapes:define-input xml-empty-lists-request
                                (xml-lists-input-output) common-lisp:nil
                                (:shape-name "XmlEmptyListsRequest"))

(smithy/sdk/shapes:define-output xml-empty-lists-response
                                 (xml-lists-input-output) common-lisp:nil
                                 (:shape-name "XmlEmptyListsResponse"))

(smithy/sdk/shapes:define-input xml-empty-maps-request common-lisp:nil
                                ((my-map :target-type xml-maps-input-output-map
                                  :member-name "myMap"))
                                (:shape-name "XmlEmptyMapsRequest"))

(smithy/sdk/shapes:define-output xml-empty-maps-response common-lisp:nil
                                 ((my-map :target-type
                                   xml-maps-input-output-map :member-name
                                   "myMap"))
                                 (:shape-name "XmlEmptyMapsResponse"))

(smithy/sdk/shapes:define-input xml-empty-strings-request common-lisp:nil
                                ((empty-string :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "emptyString"))
                                (:shape-name "XmlEmptyStringsRequest"))

(smithy/sdk/shapes:define-output xml-empty-strings-response common-lisp:nil
                                 ((empty-string :target-type
                                   smithy/sdk/smithy-types:string :member-name
                                   "emptyString"))
                                 (:shape-name "XmlEmptyStringsResponse"))

(smithy/sdk/shapes:define-structure xml-enums-input-output common-lisp:nil
                                    ((foo-enum1 :target-type foo-enum
                                      :member-name "fooEnum1")
                                     (foo-enum2 :target-type foo-enum
                                      :member-name "fooEnum2")
                                     (foo-enum3 :target-type foo-enum
                                      :member-name "fooEnum3")
                                     (foo-enum-list :target-type foo-enum-list
                                      :member-name "fooEnumList")
                                     (foo-enum-set :target-type foo-enum-set
                                      :member-name "fooEnumSet")
                                     (foo-enum-map :target-type foo-enum-map
                                      :member-name "fooEnumMap"))
                                    (:shape-name "XmlEnumsInputOutput"))

(smithy/sdk/shapes:define-input xml-enums-request (xml-enums-input-output)
                                common-lisp:nil (:shape-name "XmlEnumsRequest"))

(smithy/sdk/shapes:define-output xml-enums-response (xml-enums-input-output)
                                 common-lisp:nil
                                 (:shape-name "XmlEnumsResponse"))

(smithy/sdk/shapes:define-structure xml-int-enums-input-output common-lisp:nil
                                    ((int-enum1 :target-type integer-enum
                                      :member-name "intEnum1")
                                     (int-enum2 :target-type integer-enum
                                      :member-name "intEnum2")
                                     (int-enum3 :target-type integer-enum
                                      :member-name "intEnum3")
                                     (int-enum-list :target-type
                                      integer-enum-list :member-name
                                      "intEnumList")
                                     (int-enum-set :target-type
                                      integer-enum-set :member-name
                                      "intEnumSet")
                                     (int-enum-map :target-type
                                      integer-enum-map :member-name
                                      "intEnumMap"))
                                    (:shape-name "XmlIntEnumsInputOutput"))

(smithy/sdk/shapes:define-input xml-int-enums-request
                                (xml-int-enums-input-output) common-lisp:nil
                                (:shape-name "XmlIntEnumsRequest"))

(smithy/sdk/shapes:define-output xml-int-enums-response
                                 (xml-int-enums-input-output) common-lisp:nil
                                 (:shape-name "XmlIntEnumsResponse"))

(smithy/sdk/shapes:define-structure xml-lists-input-output common-lisp:nil
                                    ((string-list :target-type string-list
                                      :member-name "stringList")
                                     (string-set :target-type string-set
                                      :member-name "stringSet")
                                     (integer-list :target-type integer-list
                                      :member-name "integerList")
                                     (boolean-list :target-type boolean-list
                                      :member-name "booleanList")
                                     (timestamp-list :target-type
                                      timestamp-list :member-name
                                      "timestampList")
                                     (enum-list :target-type foo-enum-list
                                      :member-name "enumList")
                                     (int-enum-list :target-type
                                      integer-enum-list :member-name
                                      "intEnumList")
                                     (nested-string-list :target-type
                                      nested-string-list :member-name
                                      "nestedStringList")
                                     (renamed-list-members :target-type
                                      renamed-list-members :member-name
                                      "renamedListMembers" :xml-name "renamed")
                                     (flattened-list :target-type
                                      renamed-list-members :member-name
                                      "flattenedList" :xml-flattened
                                      common-lisp:t)
                                     (flattened-list2 :target-type
                                      renamed-list-members :member-name
                                      "flattenedList2" :xml-name "customName"
                                      :xml-flattened common-lisp:t)
                                     (flattened-list-with-member-namespace
                                      :target-type list-with-member-namespace
                                      :member-name
                                      "flattenedListWithMemberNamespace"
                                      :xml-flattened common-lisp:t)
                                     (flattened-list-with-namespace
                                      :target-type list-with-namespace
                                      :member-name "flattenedListWithNamespace"
                                      :xml-flattened common-lisp:t)
                                     (structure-list :target-type
                                      structure-list :member-name
                                      "structureList" :xml-name
                                      "myStructureList")
                                     (flattened-structure-list :target-type
                                      structure-list :member-name
                                      "flattenedStructureList" :xml-flattened
                                      common-lisp:t))
                                    (:shape-name "XmlListsInputOutput"))

(smithy/sdk/shapes:define-input xml-lists-request (xml-lists-input-output)
                                common-lisp:nil (:shape-name "XmlListsRequest"))

(smithy/sdk/shapes:define-output xml-lists-response (xml-lists-input-output)
                                 common-lisp:nil
                                 (:shape-name "XmlListsResponse"))

(smithy/sdk/shapes:define-structure xml-map-with-xml-namespace-input-output
                                    common-lisp:nil
                                    ((my-map :target-type
                                      xml-map-with-xml-namespace-input-output-map
                                      :member-name "myMap" :xml-name "KVP"
                                      :xml-namespace
                                      (:uri "https://the-member.example.com"
                                       :prefix common-lisp:nil)))
                                    (:shape-name
                                     "XmlMapWithXmlNamespaceInputOutput"))

(smithy/sdk/shapes:define-map xml-map-with-xml-namespace-input-output-map :key
                              (smithy/sdk/smithy-types:string :xml-name "K")
                              :value
                              (smithy/sdk/smithy-types:string :xml-name "V"))

(smithy/sdk/shapes:define-input xml-map-with-xml-namespace-request
                                (xml-map-with-xml-namespace-input-output)
                                common-lisp:nil
                                (:shape-name "XmlMapWithXmlNamespaceRequest"))

(smithy/sdk/shapes:define-output xml-map-with-xml-namespace-response
                                 (xml-map-with-xml-namespace-input-output)
                                 common-lisp:nil
                                 (:shape-name "XmlMapWithXmlNamespaceResponse"))

(smithy/sdk/shapes:define-map xml-maps-input-output-map :key
                              smithy/sdk/smithy-types:string :value
                              greeting-struct)

(smithy/sdk/shapes:define-input xml-maps-request common-lisp:nil
                                ((my-map :target-type xml-maps-input-output-map
                                  :member-name "myMap"))
                                (:shape-name "XmlMapsRequest"))

(smithy/sdk/shapes:define-output xml-maps-response common-lisp:nil
                                 ((my-map :target-type
                                   xml-maps-input-output-map :member-name
                                   "myMap"))
                                 (:shape-name "XmlMapsResponse"))

(smithy/sdk/shapes:define-map xml-maps-xml-name-input-output-map :key
                              (smithy/sdk/smithy-types:string :xml-name
                               "Attribute")
                              :value (greeting-struct :xml-name "Setting"))

(smithy/sdk/shapes:define-input xml-maps-xml-name-request common-lisp:nil
                                ((my-map :target-type
                                  xml-maps-xml-name-input-output-map
                                  :member-name "myMap"))
                                (:shape-name "XmlMapsXmlNameRequest"))

(smithy/sdk/shapes:define-output xml-maps-xml-name-response common-lisp:nil
                                 ((my-map :target-type
                                   xml-maps-xml-name-input-output-map
                                   :member-name "myMap"))
                                 (:shape-name "XmlMapsXmlNameResponse"))

(smithy/sdk/shapes:define-structure xml-namespace-nested common-lisp:nil
                                    ((foo :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "foo" :xml-namespace
                                      (:uri "http://baz.com" :prefix "baz"))
                                     (values :target-type xml-namespaced-list
                                      :member-name "values" :xml-namespace
                                      (:uri "http://qux.com" :prefix
                                       common-lisp:nil)))
                                    (:shape-name "XmlNamespaceNested")
                                    (:xml-namespace
                                     (:uri "http://foo.com" :prefix
                                      common-lisp:nil)))

(smithy/sdk/shapes:define-list xml-namespaced-list :member
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure xml-namespaces-input-output common-lisp:nil
                                    ((nested :target-type xml-namespace-nested
                                      :member-name "nested"))
                                    (:shape-name "XmlNamespacesInputOutput")
                                    (:xml-namespace
                                     (:uri "http://foo.com" :prefix
                                      common-lisp:nil)))

(smithy/sdk/shapes:define-input xml-namespaces-request
                                (xml-namespaces-input-output) common-lisp:nil
                                (:shape-name "XmlNamespacesRequest"))

(smithy/sdk/shapes:define-output xml-namespaces-response
                                 (xml-namespaces-input-output) common-lisp:nil
                                 (:shape-name "XmlNamespacesResponse"))

(smithy/sdk/shapes:define-structure xml-nested-union-struct common-lisp:nil
                                    ((string-value :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "stringValue")
                                     (boolean-value :target-type
                                      smithy/sdk/smithy-types:boolean
                                      :member-name "booleanValue")
                                     (byte-value :target-type
                                      smithy/sdk/smithy-types:byte :member-name
                                      "byteValue")
                                     (short-value :target-type
                                      smithy/sdk/smithy-types:short
                                      :member-name "shortValue")
                                     (integer-value :target-type
                                      smithy/sdk/smithy-types:integer
                                      :member-name "integerValue")
                                     (long-value :target-type
                                      smithy/sdk/smithy-types:long :member-name
                                      "longValue")
                                     (float-value :target-type
                                      smithy/sdk/smithy-types:float
                                      :member-name "floatValue")
                                     (double-value :target-type
                                      smithy/sdk/smithy-types:double
                                      :member-name "doubleValue"))
                                    (:shape-name "XmlNestedUnionStruct"))

(smithy/sdk/shapes:define-structure xml-timestamps-input-output common-lisp:nil
                                    ((normal :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :member-name "normal")
                                     (date-time :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :member-name "dateTime" :timestamp-format
                                      "date-time")
                                     (date-time-on-target :target-type
                                      date-time :member-name
                                      "dateTimeOnTarget")
                                     (epoch-seconds :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :member-name "epochSeconds"
                                      :timestamp-format "epoch-seconds")
                                     (epoch-seconds-on-target :target-type
                                      epoch-seconds :member-name
                                      "epochSecondsOnTarget")
                                     (http-date :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :member-name "httpDate" :timestamp-format
                                      "http-date")
                                     (http-date-on-target :target-type
                                      http-date :member-name
                                      "httpDateOnTarget"))
                                    (:shape-name "XmlTimestampsInputOutput"))

(smithy/sdk/shapes:define-input xml-timestamps-request
                                (xml-timestamps-input-output) common-lisp:nil
                                (:shape-name "XmlTimestampsRequest"))

(smithy/sdk/shapes:define-output xml-timestamps-response
                                 (xml-timestamps-input-output) common-lisp:nil
                                 (:shape-name "XmlTimestampsResponse"))

(smithy/sdk/shapes:define-union xml-union-shape common-lisp:nil
                                ((string-value :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "stringValue")
                                 (boolean-value :target-type
                                  smithy/sdk/smithy-types:boolean :member-name
                                  "booleanValue")
                                 (byte-value :target-type
                                  smithy/sdk/smithy-types:byte :member-name
                                  "byteValue")
                                 (short-value :target-type
                                  smithy/sdk/smithy-types:short :member-name
                                  "shortValue")
                                 (integer-value :target-type
                                  smithy/sdk/smithy-types:integer :member-name
                                  "integerValue")
                                 (long-value :target-type
                                  smithy/sdk/smithy-types:long :member-name
                                  "longValue")
                                 (float-value :target-type
                                  smithy/sdk/smithy-types:float :member-name
                                  "floatValue")
                                 (double-value :target-type
                                  smithy/sdk/smithy-types:double :member-name
                                  "doubleValue")
                                 (union-value :target-type xml-union-shape
                                  :member-name "unionValue")
                                 (struct-value :target-type
                                  xml-nested-union-struct :member-name
                                  "structValue"))
                                (:shape-name "XmlUnionShape"))

(smithy/sdk/shapes:define-input xml-unions-request common-lisp:nil
                                ((union-value :target-type xml-union-shape
                                  :member-name "unionValue"))
                                (:shape-name "XmlUnionsRequest"))

(smithy/sdk/shapes:define-output xml-unions-response common-lisp:nil
                                 ((union-value :target-type xml-union-shape
                                   :member-name "unionValue"))
                                 (:shape-name "XmlUnionsResponse"))

(smithy/sdk/operation:define-operation all-query-string-types :shape-name
                                       "AllQueryStringTypes" :input
                                       all-query-string-types-input :output
                                       common-lisp:null :errors common-lisp:nil
                                       :method "GET" :uri
                                       "/AllQueryStringTypesInput"
                                       :request-tests
                                       ((:id "AllQueryStringTypes" :protocol
                                         "aws.protocols#restXml" :method "GET"
                                         :uri "/AllQueryStringTypesInput"
                                         :query-params
                                         #("String=Hello%20there"
                                           "StringList=a" "StringList=b"
                                           "StringList=c" "StringSet=a"
                                           "StringSet=b" "StringSet=c" "Byte=1"
                                           "Short=2" "Integer=3"
                                           "IntegerList=1" "IntegerList=2"
                                           "IntegerList=3" "IntegerSet=1"
                                           "IntegerSet=2" "IntegerSet=3"
                                           "Long=4" "Float=1.1" "Double=1.1"
                                           "DoubleList=1.1" "DoubleList=2.1"
                                           "DoubleList=3.1" "Boolean=true"
                                           "BooleanList=true"
                                           "BooleanList=false"
                                           "BooleanList=true"
                                           "Timestamp=1970-01-01T00%3A00%3A01Z"
                                           "TimestampList=1970-01-01T00%3A00%3A01Z"
                                           "TimestampList=1970-01-01T00%3A00%3A02Z"
                                           "TimestampList=1970-01-01T00%3A00%3A03Z"
                                           "Enum=Foo" "EnumList=Foo"
                                           "EnumList=Baz" "EnumList=Bar"
                                           "IntegerEnum=1" "IntegerEnumList=1"
                                           "IntegerEnumList=2")
                                         :body "" :params
                                         (("queryString" . "Hello there")
                                          ("queryStringList" . #("a" "b" "c"))
                                          ("queryStringSet" . #("a" "b" "c"))
                                          ("queryByte" . 1) ("queryShort" . 2)
                                          ("queryInteger" . 3)
                                          ("queryIntegerList" . #(1 2 3))
                                          ("queryIntegerSet" . #(1 2 3))
                                          ("queryLong" . 4)
                                          ("queryFloat" . 1.1d0)
                                          ("queryDouble" . 1.1d0)
                                          ("queryDoubleList"
                                           . #(1.1d0 2.1d0 3.1d0))
                                          ("queryBoolean" . common-lisp:t)
                                          ("queryBooleanList"
                                           . #(common-lisp:t common-lisp:nil
                                               common-lisp:t))
                                          ("queryTimestamp" . 1)
                                          ("queryTimestampList" . #(1 2 3))
                                          ("queryEnum" . "Foo")
                                          ("queryEnumList"
                                           . #("Foo" "Baz" "Bar"))
                                          ("queryIntegerEnum" . 1)
                                          ("queryIntegerEnumList" . #(1 2)))
                                         :documentation
                                         "Serializes query string parameters with all supported types")
                                        (:id "RestXmlQueryStringMap" :protocol
                                         "aws.protocols#restXml" :method "GET"
                                         :uri "/AllQueryStringTypesInput"
                                         :query-params
                                         #("QueryParamsStringKeyA=Foo"
                                           "QueryParamsStringKeyB=Bar")
                                         :body "" :params
                                         (("queryParamsMapOfStrings"
                                           ("QueryParamsStringKeyA" . "Foo")
                                           ("QueryParamsStringKeyB" . "Bar")))
                                         :documentation
                                         "Handles query string maps")
                                        (:id "RestXmlQueryStringEscaping"
                                         :protocol "aws.protocols#restXml"
                                         :method "GET" :uri
                                         "/AllQueryStringTypesInput"
                                         :query-params
                                         #("String=%20%25%3A%2F%3F%23%5B%5D%40%21%24%26%27%28%29%2A%2B%2C%3B%3D%F0%9F%98%B9")
                                         :body "" :params
                                         (("queryString"
                                           . " %:/?#[]@!$&'()*+,;=😹"))
                                         :documentation
                                         "Handles escaping all required characters in the query string.")
                                        (:id
                                         "RestXmlSupportsNaNFloatQueryValues"
                                         :protocol "aws.protocols#restXml"
                                         :method "GET" :uri
                                         "/AllQueryStringTypesInput"
                                         :query-params
                                         #("Float=NaN" "Double=NaN") :body ""
                                         :params
                                         (("queryFloat" . "NaN")
                                          ("queryDouble" . "NaN"))
                                         :documentation
                                         "Supports handling NaN float query values.")
                                        (:id
                                         "RestXmlSupportsInfinityFloatQueryValues"
                                         :protocol "aws.protocols#restXml"
                                         :method "GET" :uri
                                         "/AllQueryStringTypesInput"
                                         :query-params
                                         #("Float=Infinity" "Double=Infinity")
                                         :body "" :params
                                         (("queryFloat" . "Infinity")
                                          ("queryDouble" . "Infinity"))
                                         :documentation
                                         "Supports handling Infinity float query values.")
                                        (:id
                                         "RestXmlSupportsNegativeInfinityFloatQueryValues"
                                         :protocol "aws.protocols#restXml"
                                         :method "GET" :uri
                                         "/AllQueryStringTypesInput"
                                         :query-params
                                         #("Float=-Infinity"
                                           "Double=-Infinity")
                                         :body "" :params
                                         (("queryFloat" . "-Infinity")
                                          ("queryDouble" . "-Infinity"))
                                         :documentation
                                         "Supports handling -Infinity float query values.")
                                        (:id "RestXmlZeroAndFalseQueryValues"
                                         :protocol "aws.protocols#restXml"
                                         :method "GET" :uri
                                         "/AllQueryStringTypesInput"
                                         :query-params
                                         #("Integer=0" "Boolean=false") :body
                                         "" :params
                                         (("queryInteger" . 0)
                                          ("queryBoolean"))
                                         :documentation
                                         "Query values of 0 and false are serialized")))

(smithy/sdk/operation:define-operation body-with-xml-name :shape-name
                                       "BodyWithXmlName" :input
                                       body-with-xml-name-input-output :output
                                       body-with-xml-name-input-output :errors
                                       common-lisp:nil :method "PUT" :uri
                                       "/BodyWithXmlName" :request-tests
                                       ((:id "BodyWithXmlName" :protocol
                                         "aws.protocols#restXml" :method "PUT"
                                         :uri "/BodyWithXmlName" :headers
                                         (("Content-Type" . "application/xml"))
                                         :require-headers #("Content-Length")
                                         :body
                                         "<Ahoy><nested><name>Phreddy</name></nested></Ahoy>"
                                         :body-media-type "application/xml"
                                         :params
                                         (("nested" ("name" . "Phreddy")))
                                         :documentation
                                         "Serializes a payload using a wrapper name based on the xmlName"))
                                       :response-tests
                                       ((:id "BodyWithXmlName" :protocol
                                         "aws.protocols#restXml" :code 200
                                         :headers
                                         (("Content-Type" . "application/xml"))
                                         :body
                                         "<Ahoy><nested><name>Phreddy</name></nested></Ahoy>"
                                         :body-media-type "application/xml"
                                         :params
                                         (("nested" ("name" . "Phreddy")))
                                         :documentation
                                         "Serializes a payload using a wrapper name based on the xmlName")))

(smithy/sdk/operation:define-operation constant-and-variable-query-string
                                       :shape-name
                                       "ConstantAndVariableQueryString" :input
                                       constant-and-variable-query-string-input
                                       :output common-lisp:null :errors
                                       common-lisp:nil :method "GET" :uri
                                       "/ConstantAndVariableQueryString?foo=bar"
                                       :request-tests
                                       ((:id
                                         "ConstantAndVariableQueryStringMissingOneValue"
                                         :protocol "aws.protocols#restXml"
                                         :method "GET" :uri
                                         "/ConstantAndVariableQueryString"
                                         :query-params #("foo=bar" "baz=bam")
                                         :forbid-query-params #("maybeSet")
                                         :body "" :params (("baz" . "bam"))
                                         :documentation
                                         "Mixes constant and variable query string parameters")
                                        (:id
                                         "ConstantAndVariableQueryStringAllValues"
                                         :protocol "aws.protocols#restXml"
                                         :method "GET" :uri
                                         "/ConstantAndVariableQueryString"
                                         :query-params
                                         #("foo=bar" "baz=bam" "maybeSet=yes")
                                         :body "" :params
                                         (("baz" . "bam") ("maybeSet" . "yes"))
                                         :documentation
                                         "Mixes constant and variable query string parameters")))

(smithy/sdk/operation:define-operation constant-query-string :shape-name
                                       "ConstantQueryString" :input
                                       constant-query-string-input :output
                                       common-lisp:null :errors common-lisp:nil
                                       :method "GET" :uri
                                       "/ConstantQueryString/{hello}?foo=bar&hello"
                                       :request-tests
                                       ((:id "ConstantQueryString" :protocol
                                         "aws.protocols#restXml" :method "GET"
                                         :uri "/ConstantQueryString/hi"
                                         :query-params #("foo=bar" "hello")
                                         :body "" :params (("hello" . "hi"))
                                         :documentation
                                         "Includes constant query string parameters")))

(smithy/sdk/operation:define-operation content-type-parameters :shape-name
                                       "ContentTypeParameters" :input
                                       content-type-parameters-input :output
                                       content-type-parameters-output :errors
                                       common-lisp:nil :method "PUT" :uri
                                       "/ContentTypeParameters" :request-tests
                                       ((:id
                                         "RestXmlMustSupportParametersInContentType"
                                         :protocol "aws.protocols#restXml"
                                         :method "PUT" :uri
                                         "/ContentTypeParameters" :headers
                                         (("Content-Type"
                                           . "application/xml; charset=utf-8"))
                                         :body
                                         "<ContentTypeParametersInput><value>5</value></ContentTypeParametersInput>"
                                         :body-media-type "application/xml"
                                         :params (("value" . 5)) :documentation
                                         "A server should ignore parameters added to the content type"
                                         :applies-to "server")))

(smithy/sdk/operation:define-operation datetime-offsets :shape-name
                                       "DatetimeOffsets" :input
                                       common-lisp:null :output
                                       datetime-offsets-output :errors
                                       common-lisp:nil :method "POST" :uri
                                       "/DatetimeOffsets" :response-tests
                                       ((:id
                                         "RestXmlDateTimeWithNegativeOffset"
                                         :protocol "aws.protocols#restXml"
                                         :code 200 :headers
                                         (("Content-Type" . "application/xml"))
                                         :body "<DatetimeOffsetsOutput>
    <datetime>2019-12-16T22:48:18-01:00</datetime>
</DatetimeOffsetsOutput>
"
                                         :body-media-type "application/xml"
                                         :params (("datetime" . 1576540098))
                                         :documentation
                                         "Ensures that clients can correctly parse datetime (timestamps) with offsets")
                                        (:id
                                         "RestXmlDateTimeWithPositiveOffset"
                                         :protocol "aws.protocols#restXml"
                                         :code 200 :headers
                                         (("Content-Type" . "application/xml"))
                                         :body "<DatetimeOffsetsOutput>
    <datetime>2019-12-17T00:48:18+01:00</datetime>
</DatetimeOffsetsOutput>
"
                                         :body-media-type "application/xml"
                                         :params (("datetime" . 1576540098))
                                         :documentation
                                         "Ensures that clients can correctly parse datetime (timestamps) with offsets")))

(smithy/sdk/operation:define-operation empty-input-and-empty-output :shape-name
                                       "EmptyInputAndEmptyOutput" :input
                                       empty-input-and-empty-output-input
                                       :output
                                       empty-input-and-empty-output-output
                                       :errors common-lisp:nil :method "POST"
                                       :uri "/EmptyInputAndEmptyOutput"
                                       :request-tests
                                       ((:id "EmptyInputAndEmptyOutput"
                                         :protocol "aws.protocols#restXml"
                                         :method "POST" :uri
                                         "/EmptyInputAndEmptyOutput" :body ""
                                         :documentation
                                         "Empty input serializes no payload"))
                                       :response-tests
                                       ((:id "EmptyInputAndEmptyOutput"
                                         :protocol "aws.protocols#restXml"
                                         :code 200 :body "" :documentation
                                         "Empty output serializes no payload")))

(smithy/sdk/operation:define-operation endpoint-operation :shape-name
                                       "EndpointOperation" :input
                                       common-lisp:null :output
                                       common-lisp:null :errors common-lisp:nil
                                       :method "POST" :uri "/EndpointOperation"
                                       :endpoint-host-prefix "foo."
                                       :request-tests
                                       ((:id "RestXmlEndpointTrait" :protocol
                                         "aws.protocols#restXml" :method "POST"
                                         :uri "/EndpointOperation" :host
                                         "example.com" :resolved-host
                                         "foo.example.com" :body ""
                                         :documentation
                                         "Operations can prepend to the given host if they define the
endpoint trait.")))

(smithy/sdk/operation:define-operation
 endpoint-with-host-label-header-operation :shape-name
 "EndpointWithHostLabelHeaderOperation" :input host-label-header-input :output
 common-lisp:null :errors common-lisp:nil :method "POST" :uri
 "/EndpointWithHostLabelHeaderOperation" :endpoint-host-prefix "{accountId}."
 :request-tests
 ((:id "RestXmlEndpointTraitWithHostLabelAndHttpBinding" :protocol
   "aws.protocols#restXml" :method "POST" :uri
   "/EndpointWithHostLabelHeaderOperation" :host "example.com" :resolved-host
   "bar.example.com" :headers (("X-Amz-Account-Id" . "bar")) :body ""
   :body-media-type "application/xml" :params (("accountId" . "bar"))
   :documentation "Operations can prepend to the given host if they define the
endpoint trait, and can use the host label trait to define
further customization based on user input. The label must also
be serialized in into any other location it is bound to, such
as the body or in this case an http header.")))

(smithy/sdk/operation:define-operation endpoint-with-host-label-operation
                                       :shape-name
                                       "EndpointWithHostLabelOperation" :input
                                       endpoint-with-host-label-operation-request
                                       :output common-lisp:null :errors
                                       common-lisp:nil :method "POST" :uri
                                       "/EndpointWithHostLabelOperation"
                                       :endpoint-host-prefix "foo.{label}."
                                       :request-tests
                                       ((:id
                                         "RestXmlEndpointTraitWithHostLabel"
                                         :protocol "aws.protocols#restXml"
                                         :method "POST" :uri
                                         "/EndpointWithHostLabelOperation"
                                         :host "example.com" :resolved-host
                                         "foo.bar.example.com" :body
                                         "<EndpointWithHostLabelOperationRequest>
    <label>bar</label>
</EndpointWithHostLabelOperationRequest>
"
                                         :body-media-type "application/xml"
                                         :params (("label" . "bar"))
                                         :documentation
                                         "Operations can prepend to the given host if they define the
endpoint trait, and can use the host label trait to define
further customization based on user input.")))

(smithy/sdk/operation:define-operation flattened-xml-map :shape-name
                                       "FlattenedXmlMap" :input
                                       flattened-xml-map-request :output
                                       flattened-xml-map-response :errors
                                       common-lisp:nil :method "POST" :uri
                                       "/FlattenedXmlMap" :request-tests
                                       ((:id "FlattenedXmlMap" :protocol
                                         "aws.protocols#restXml" :method "POST"
                                         :uri "/FlattenedXmlMap" :headers
                                         (("Content-Type" . "application/xml"))
                                         :body "<FlattenedXmlMapRequest>
    <myMap>
        <key>foo</key>
        <value>Foo</value>
    </myMap>
    <myMap>
        <key>baz</key>
        <value>Baz</value>
    </myMap>
</FlattenedXmlMapRequest>"
                                         :body-media-type "application/xml"
                                         :params
                                         (("myMap" ("foo" . "Foo")
                                           ("baz" . "Baz")))
                                         :documentation
                                         "Serializes flattened XML maps in requests"))
                                       :response-tests
                                       ((:id "FlattenedXmlMap" :protocol
                                         "aws.protocols#restXml" :code 200
                                         :headers
                                         (("Content-Type" . "application/xml"))
                                         :body "<FlattenedXmlMapResponse>
    <myMap>
        <key>foo</key>
        <value>Foo</value>
    </myMap>
    <myMap>
        <key>baz</key>
        <value>Baz</value>
    </myMap>
</FlattenedXmlMapResponse>"
                                         :body-media-type "application/xml"
                                         :params
                                         (("myMap" ("foo" . "Foo")
                                           ("baz" . "Baz")))
                                         :documentation
                                         "Serializes flattened XML maps in responses")))

(smithy/sdk/operation:define-operation flattened-xml-map-with-xml-name
                                       :shape-name "FlattenedXmlMapWithXmlName"
                                       :input
                                       flattened-xml-map-with-xml-name-request
                                       :output
                                       flattened-xml-map-with-xml-name-response
                                       :errors common-lisp:nil :method "POST"
                                       :uri "/FlattenedXmlMapWithXmlName"
                                       :request-tests
                                       ((:id "FlattenedXmlMapWithXmlName"
                                         :protocol "aws.protocols#restXml"
                                         :method "POST" :uri
                                         "/FlattenedXmlMapWithXmlName" :headers
                                         (("Content-Type" . "application/xml"))
                                         :body
                                         "<FlattenedXmlMapWithXmlNameRequest>
    <KVP>
        <K>a</K>
        <V>A</V>
    </KVP>
    <KVP>
        <K>b</K>
        <V>B</V>
    </KVP>
</FlattenedXmlMapWithXmlNameRequest>"
                                         :body-media-type "application/xml"
                                         :params
                                         (("myMap" ("a" . "A") ("b" . "B")))
                                         :documentation
                                         "Serializes flattened XML maps in requests that have xmlName on members"))
                                       :response-tests
                                       ((:id "FlattenedXmlMapWithXmlName"
                                         :protocol "aws.protocols#restXml"
                                         :code 200 :headers
                                         (("Content-Type" . "application/xml"))
                                         :body
                                         "<FlattenedXmlMapWithXmlNameResponse>
    <KVP>
        <K>a</K>
        <V>A</V>
    </KVP>
    <KVP>
        <K>b</K>
        <V>B</V>
    </KVP>
</FlattenedXmlMapWithXmlNameResponse>"
                                         :body-media-type "application/xml"
                                         :params
                                         (("myMap" ("a" . "A") ("b" . "B")))
                                         :documentation
                                         "Serializes flattened XML maps in responses that have xmlName on members")))

(smithy/sdk/operation:define-operation flattened-xml-map-with-xml-namespace
                                       :shape-name
                                       "FlattenedXmlMapWithXmlNamespace" :input
                                       common-lisp:null :output
                                       flattened-xml-map-with-xml-namespace-output
                                       :errors common-lisp:nil :method "POST"
                                       :uri "/FlattenedXmlMapWithXmlNamespace"
                                       :response-tests
                                       ((:id
                                         "RestXmlFlattenedXmlMapWithXmlNamespace"
                                         :protocol "aws.protocols#restXml"
                                         :code 200 :headers
                                         (("Content-Type" . "application/xml"))
                                         :body
                                         "<FlattenedXmlMapWithXmlNamespaceOutput>
    <KVP xmlns=\"https://the-member.example.com\">
        <K xmlns=\"https://the-key.example.com\">a</K>
        <V xmlns=\"https://the-value.example.com\">A</V>
    </KVP>
    <KVP xmlns=\"https://the-member.example.com\">
        <K xmlns=\"https://the-key.example.com\">b</K>
        <V xmlns=\"https://the-value.example.com\">B</V>
    </KVP>
</FlattenedXmlMapWithXmlNamespaceOutput>"
                                         :body-media-type "application/xml"
                                         :params
                                         (("myMap" ("a" . "A") ("b" . "B")))
                                         :documentation
                                         "Serializes flattened XML maps in responses that have xmlNamespace and xmlName on members")))

(smithy/sdk/operation:define-operation fractional-seconds :shape-name
                                       "FractionalSeconds" :input
                                       common-lisp:null :output
                                       fractional-seconds-output :errors
                                       common-lisp:nil :method "POST" :uri
                                       "/FractionalSeconds" :response-tests
                                       ((:id
                                         "RestXmlDateTimeWithFractionalSeconds"
                                         :protocol "aws.protocols#restXml"
                                         :code 200 :headers
                                         (("Content-Type" . "application/xml"))
                                         :body "<FractionalSecondsOutput>
    <datetime>2000-01-02T20:34:56.123Z</datetime>
</FractionalSecondsOutput>
"
                                         :body-media-type "application/xml"
                                         :params
                                         (("datetime" . 9.46845296123d8))
                                         :documentation
                                         "Ensures that clients can correctly parse datetime timestamps with fractional seconds")))

(smithy/sdk/operation:define-operation greeting-with-errors :shape-name
                                       "GreetingWithErrors" :input
                                       common-lisp:null :output
                                       greeting-with-errors-output :errors
                                       (complex-error invalid-greeting) :method
                                       "PUT" :uri "/GreetingWithErrors"
                                       :response-tests
                                       ((:id "GreetingWithErrors" :protocol
                                         "aws.protocols#restXml" :code 200
                                         :headers (("X-Greeting" . "Hello"))
                                         :body "" :params
                                         (("greeting" . "Hello"))
                                         :documentation
                                         "Ensures that operations with errors successfully know how to deserialize the successful response")))

(smithy/sdk/operation:define-operation http-empty-prefix-headers :shape-name
                                       "HttpEmptyPrefixHeaders" :input
                                       http-empty-prefix-headers-input :output
                                       http-empty-prefix-headers-output :errors
                                       common-lisp:nil :method "GET" :uri
                                       "/HttpEmptyPrefixHeaders" :request-tests
                                       ((:id
                                         "HttpEmptyPrefixHeadersRequestClient"
                                         :protocol "aws.protocols#restXml"
                                         :method "GET" :uri
                                         "/HttpEmptyPrefixHeaders" :headers
                                         (("x-foo" . "Foo")
                                          ("hello" . "There"))
                                         :body "" :params
                                         (("prefixHeaders" ("x-foo" . "Foo")
                                           ("hello" . "Hello"))
                                          ("specificHeader" . "There"))
                                         :documentation
                                         "Serializes all request headers, using specific when present"
                                         :applies-to "client")
                                        (:id
                                         "HttpEmptyPrefixHeadersRequestServer"
                                         :protocol "aws.protocols#restXml"
                                         :method "GET" :uri
                                         "/HttpEmptyPrefixHeaders" :headers
                                         (("x-foo" . "Foo")
                                          ("hello" . "There"))
                                         :body "" :params
                                         (("prefixHeaders" ("x-foo" . "Foo")
                                           ("hello" . "There"))
                                          ("specificHeader" . "There"))
                                         :documentation
                                         "Deserializes all request headers with the same for prefix and specific"
                                         :applies-to "server"))
                                       :response-tests
                                       ((:id
                                         "HttpEmptyPrefixHeadersResponseClient"
                                         :protocol "aws.protocols#restXml"
                                         :code 200 :headers
                                         (("x-foo" . "Foo")
                                          ("hello" . "There"))
                                         :params
                                         (("prefixHeaders" ("x-foo" . "Foo")
                                           ("hello" . "There"))
                                          ("specificHeader" . "There"))
                                         :documentation
                                         "Deserializes all response headers with the same for prefix and specific"
                                         :applies-to "client")
                                        (:id
                                         "HttpEmptyPrefixHeadersResponseServer"
                                         :protocol "aws.protocols#restXml"
                                         :code 200 :headers
                                         (("x-foo" . "Foo")
                                          ("hello" . "There"))
                                         :params
                                         (("prefixHeaders" ("x-foo" . "Foo")
                                           ("hello" . "Hello"))
                                          ("specificHeader" . "There"))
                                         :documentation
                                         "Serializes all response headers, using specific when present"
                                         :applies-to "server")))

(smithy/sdk/operation:define-operation http-enum-payload :shape-name
                                       "HttpEnumPayload" :input
                                       enum-payload-input :output
                                       enum-payload-input :errors
                                       common-lisp:nil :method "POST" :uri
                                       "/EnumPayload" :request-tests
                                       ((:id "RestXmlEnumPayloadRequest"
                                         :protocol "aws.protocols#restXml"
                                         :method "POST" :uri "/EnumPayload"
                                         :headers
                                         (("Content-Type" . "text/plain"))
                                         :body "enumvalue" :params
                                         (("payload" . "enumvalue"))))
                                       :response-tests
                                       ((:id "RestXmlEnumPayloadResponse"
                                         :protocol "aws.protocols#restXml"
                                         :code 200 :headers
                                         (("Content-Type" . "text/plain"))
                                         :body "enumvalue" :params
                                         (("payload" . "enumvalue")))))

(smithy/sdk/operation:define-operation http-payload-traits :shape-name
                                       "HttpPayloadTraits" :input
                                       http-payload-traits-input-output :output
                                       http-payload-traits-input-output :errors
                                       common-lisp:nil :method "POST" :uri
                                       "/HttpPayloadTraits" :request-tests
                                       ((:id "HttpPayloadTraitsWithBlob"
                                         :protocol "aws.protocols#restXml"
                                         :method "POST" :uri
                                         "/HttpPayloadTraits" :headers
                                         (("X-Foo" . "Foo")) :require-headers
                                         #("Content-Length") :body
                                         "blobby blob blob" :params
                                         (("foo" . "Foo")
                                          ("blob" . "blobby blob blob"))
                                         :documentation
                                         "Serializes a blob in the HTTP payload")
                                        (:id "HttpPayloadTraitsWithNoBlobBody"
                                         :protocol "aws.protocols#restXml"
                                         :method "POST" :uri
                                         "/HttpPayloadTraits" :headers
                                         (("X-Foo" . "Foo")) :body "" :params
                                         (("foo" . "Foo")) :documentation
                                         "Serializes an empty blob in the HTTP payload"))
                                       :response-tests
                                       ((:id "HttpPayloadTraitsWithBlob"
                                         :protocol "aws.protocols#restXml"
                                         :code 200 :headers (("X-Foo" . "Foo"))
                                         :body "blobby blob blob" :params
                                         (("foo" . "Foo")
                                          ("blob" . "blobby blob blob"))
                                         :documentation
                                         "Serializes a blob in the HTTP payload")
                                        (:id "HttpPayloadTraitsWithNoBlobBody"
                                         :protocol "aws.protocols#restXml"
                                         :code 200 :headers (("X-Foo" . "Foo"))
                                         :body "" :params (("foo" . "Foo"))
                                         :documentation
                                         "Serializes an empty blob in the HTTP payload")))

(smithy/sdk/operation:define-operation http-payload-traits-with-media-type
                                       :shape-name
                                       "HttpPayloadTraitsWithMediaType" :input
                                       http-payload-traits-with-media-type-input-output
                                       :output
                                       http-payload-traits-with-media-type-input-output
                                       :errors common-lisp:nil :method "POST"
                                       :uri "/HttpPayloadTraitsWithMediaType"
                                       :request-tests
                                       ((:id
                                         "HttpPayloadTraitsWithMediaTypeWithBlob"
                                         :protocol "aws.protocols#restXml"
                                         :method "POST" :uri
                                         "/HttpPayloadTraitsWithMediaType"
                                         :headers
                                         (("X-Foo" . "Foo")
                                          ("Content-Type" . "text/plain"))
                                         :require-headers #("Content-Length")
                                         :body "blobby blob blob" :params
                                         (("foo" . "Foo")
                                          ("blob" . "blobby blob blob"))
                                         :documentation
                                         "Serializes a blob in the HTTP payload with a content-type"))
                                       :response-tests
                                       ((:id
                                         "HttpPayloadTraitsWithMediaTypeWithBlob"
                                         :protocol "aws.protocols#restXml"
                                         :code 200 :headers
                                         (("X-Foo" . "Foo")
                                          ("Content-Type" . "text/plain"))
                                         :body "blobby blob blob" :params
                                         (("foo" . "Foo")
                                          ("blob" . "blobby blob blob"))
                                         :documentation
                                         "Serializes a blob in the HTTP payload with a content-type")))

(smithy/sdk/operation:define-operation http-payload-with-member-xml-name
                                       :shape-name
                                       "HttpPayloadWithMemberXmlName" :input
                                       http-payload-with-member-xml-name-input-output
                                       :output
                                       http-payload-with-member-xml-name-input-output
                                       :errors common-lisp:nil :method "PUT"
                                       :uri "/HttpPayloadWithMemberXmlName"
                                       :request-tests
                                       ((:id "HttpPayloadWithMemberXmlName"
                                         :protocol "aws.protocols#restXml"
                                         :method "PUT" :uri
                                         "/HttpPayloadWithMemberXmlName"
                                         :headers
                                         (("Content-Type" . "application/xml"))
                                         :require-headers #("Content-Length")
                                         :body
                                         "<Hola><name>Phreddy</name></Hola>"
                                         :body-media-type "application/xml"
                                         :params
                                         (("nested" ("name" . "Phreddy")))
                                         :documentation
                                         "Serializes a structure in the payload using a wrapper name based on member xmlName"))
                                       :response-tests
                                       ((:id "HttpPayloadWithMemberXmlName"
                                         :protocol "aws.protocols#restXml"
                                         :code 200 :headers
                                         (("Content-Type" . "application/xml"))
                                         :body
                                         "<Hola><name>Phreddy</name></Hola>"
                                         :body-media-type "application/xml"
                                         :params
                                         (("nested" ("name" . "Phreddy")))
                                         :documentation
                                         "Serializes a structure in the payload using a wrapper name based on member xmlName")))

(smithy/sdk/operation:define-operation http-payload-with-structure :shape-name
                                       "HttpPayloadWithStructure" :input
                                       http-payload-with-structure-input-output
                                       :output
                                       http-payload-with-structure-input-output
                                       :errors common-lisp:nil :method "PUT"
                                       :uri "/HttpPayloadWithStructure"
                                       :request-tests
                                       ((:id "HttpPayloadWithStructure"
                                         :protocol "aws.protocols#restXml"
                                         :method "PUT" :uri
                                         "/HttpPayloadWithStructure" :headers
                                         (("Content-Type" . "application/xml"))
                                         :require-headers #("Content-Length")
                                         :body "<NestedPayload>
    <greeting>hello</greeting>
    <name>Phreddy</name>
</NestedPayload>
"
                                         :body-media-type "application/xml"
                                         :params
                                         (("nested" ("greeting" . "hello")
                                           ("name" . "Phreddy")))
                                         :documentation
                                         "Serializes a structure in the payload"))
                                       :response-tests
                                       ((:id "HttpPayloadWithStructure"
                                         :protocol "aws.protocols#restXml"
                                         :code 200 :headers
                                         (("Content-Type" . "application/xml"))
                                         :body "<NestedPayload>
    <greeting>hello</greeting>
    <name>Phreddy</name>
</NestedPayload>
"
                                         :body-media-type "application/xml"
                                         :params
                                         (("nested" ("greeting" . "hello")
                                           ("name" . "Phreddy")))
                                         :documentation
                                         "Serializes a structure in the payload")))

(smithy/sdk/operation:define-operation http-payload-with-union :shape-name
                                       "HttpPayloadWithUnion" :input
                                       http-payload-with-union-input-output
                                       :output
                                       http-payload-with-union-input-output
                                       :errors common-lisp:nil :method "PUT"
                                       :uri "/HttpPayloadWithUnion"
                                       :request-tests
                                       ((:id "RestXmlHttpPayloadWithUnion"
                                         :protocol "aws.protocols#restXml"
                                         :method "PUT" :uri
                                         "/HttpPayloadWithUnion" :headers
                                         (("Content-Type" . "application/xml"))
                                         :require-headers #("Content-Length")
                                         :body "<UnionPayload>
    <greeting>hello</greeting>
</UnionPayload>"
                                         :body-media-type "application/xml"
                                         :params
                                         (("nested" ("greeting" . "hello")))
                                         :documentation
                                         "Serializes a union in the payload.")
                                        (:id "RestXmlHttpPayloadWithUnsetUnion"
                                         :protocol "aws.protocols#restXml"
                                         :method "PUT" :uri
                                         "/HttpPayloadWithUnion" :body ""
                                         :documentation
                                         "No payload is sent if the union has no value."))
                                       :response-tests
                                       ((:id "RestXmlHttpPayloadWithUnion"
                                         :protocol "aws.protocols#restXml"
                                         :code 200 :headers
                                         (("Content-Type" . "application/xml"))
                                         :body "<UnionPayload>
    <greeting>hello</greeting>
</UnionPayload>"
                                         :body-media-type "application/xml"
                                         :params
                                         (("nested" ("greeting" . "hello")))
                                         :documentation
                                         "Serializes a union in the payload.")
                                        (:id "RestXmlHttpPayloadWithUnsetUnion"
                                         :protocol "aws.protocols#restXml"
                                         :code 200 :headers
                                         (("Content-Length" . "0")) :body ""
                                         :documentation
                                         "No payload is sent if the union has no value.")))

(smithy/sdk/operation:define-operation http-payload-with-xml-name :shape-name
                                       "HttpPayloadWithXmlName" :input
                                       http-payload-with-xml-name-input-output
                                       :output
                                       http-payload-with-xml-name-input-output
                                       :errors common-lisp:nil :method "PUT"
                                       :uri "/HttpPayloadWithXmlName"
                                       :request-tests
                                       ((:id "HttpPayloadWithXmlName" :protocol
                                         "aws.protocols#restXml" :method "PUT"
                                         :uri "/HttpPayloadWithXmlName"
                                         :headers
                                         (("Content-Type" . "application/xml"))
                                         :require-headers #("Content-Length")
                                         :body
                                         "<Hello><name>Phreddy</name></Hello>"
                                         :body-media-type "application/xml"
                                         :params
                                         (("nested" ("name" . "Phreddy")))
                                         :documentation
                                         "Serializes a structure in the payload using a wrapper name based on xmlName"))
                                       :response-tests
                                       ((:id "HttpPayloadWithXmlName" :protocol
                                         "aws.protocols#restXml" :code 200
                                         :headers
                                         (("Content-Type" . "application/xml"))
                                         :body
                                         "<Hello><name>Phreddy</name></Hello>"
                                         :body-media-type "application/xml"
                                         :params
                                         (("nested" ("name" . "Phreddy")))
                                         :documentation
                                         "Serializes a structure in the payload using a wrapper name based on xmlName")))

(smithy/sdk/operation:define-operation http-payload-with-xml-namespace
                                       :shape-name
                                       "HttpPayloadWithXmlNamespace" :input
                                       http-payload-with-xml-namespace-input-output
                                       :output
                                       http-payload-with-xml-namespace-input-output
                                       :errors common-lisp:nil :method "PUT"
                                       :uri "/HttpPayloadWithXmlNamespace"
                                       :request-tests
                                       ((:id "HttpPayloadWithXmlNamespace"
                                         :protocol "aws.protocols#restXml"
                                         :method "PUT" :uri
                                         "/HttpPayloadWithXmlNamespace"
                                         :headers
                                         (("Content-Type" . "application/xml"))
                                         :require-headers #("Content-Length")
                                         :body
                                         "<PayloadWithXmlNamespace xmlns=\"http://foo.com\">
    <name>Phreddy</name>
</PayloadWithXmlNamespace>"
                                         :body-media-type "application/xml"
                                         :params
                                         (("nested" ("name" . "Phreddy")))
                                         :documentation
                                         "Serializes a structure in the payload using a wrapper with an XML namespace"))
                                       :response-tests
                                       ((:id "HttpPayloadWithXmlNamespace"
                                         :protocol "aws.protocols#restXml"
                                         :code 200 :headers
                                         (("Content-Type" . "application/xml"))
                                         :body
                                         "<PayloadWithXmlNamespace xmlns=\"http://foo.com\">
    <name>Phreddy</name>
</PayloadWithXmlNamespace>"
                                         :body-media-type "application/xml"
                                         :params
                                         (("nested" ("name" . "Phreddy")))
                                         :documentation
                                         "Serializes a structure in the payload using a wrapper with an XML namespace")))

(smithy/sdk/operation:define-operation
 http-payload-with-xml-namespace-and-prefix :shape-name
 "HttpPayloadWithXmlNamespaceAndPrefix" :input
 http-payload-with-xml-namespace-and-prefix-input-output :output
 http-payload-with-xml-namespace-and-prefix-input-output :errors
 common-lisp:nil :method "PUT" :uri "/HttpPayloadWithXmlNamespaceAndPrefix"
 :request-tests
 ((:id "HttpPayloadWithXmlNamespaceAndPrefix" :protocol "aws.protocols#restXml"
   :method "PUT" :uri "/HttpPayloadWithXmlNamespaceAndPrefix" :headers
   (("Content-Type" . "application/xml")) :require-headers #("Content-Length")
   :body "<PayloadWithXmlNamespaceAndPrefix xmlns:baz=\"http://foo.com\">
    <name>Phreddy</name>
</PayloadWithXmlNamespaceAndPrefix>"
   :body-media-type "application/xml" :params (("nested" ("name" . "Phreddy")))
   :documentation
   "Serializes a structure in the payload using a wrapper with an XML namespace"))
 :response-tests
 ((:id "HttpPayloadWithXmlNamespaceAndPrefix" :protocol "aws.protocols#restXml"
   :code 200 :headers (("Content-Type" . "application/xml")) :body
   "<PayloadWithXmlNamespaceAndPrefix xmlns:baz=\"http://foo.com\">
    <name>Phreddy</name>
</PayloadWithXmlNamespaceAndPrefix>"
   :body-media-type "application/xml" :params (("nested" ("name" . "Phreddy")))
   :documentation
   "Serializes a structure in the payload using a wrapper with an XML namespace")))

(smithy/sdk/operation:define-operation http-prefix-headers :shape-name
                                       "HttpPrefixHeaders" :input
                                       http-prefix-headers-input-output :output
                                       http-prefix-headers-input-output :errors
                                       common-lisp:nil :method "GET" :uri
                                       "/HttpPrefixHeaders" :request-tests
                                       ((:id "HttpPrefixHeadersArePresent"
                                         :protocol "aws.protocols#restXml"
                                         :method "GET" :uri
                                         "/HttpPrefixHeaders" :headers
                                         (("x-foo" . "Foo")
                                          ("x-foo-abc" . "Abc value")
                                          ("x-foo-def" . "Def value"))
                                         :body "" :params
                                         (("foo" . "Foo")
                                          ("fooMap" ("abc" . "Abc value")
                                           ("def" . "Def value")))
                                         :documentation
                                         "Adds headers by prefix")
                                        (:id "HttpPrefixHeadersAreNotPresent"
                                         :protocol "aws.protocols#restXml"
                                         :method "GET" :uri
                                         "/HttpPrefixHeaders" :headers
                                         (("x-foo" . "Foo")) :body "" :params
                                         (("foo" . "Foo") ("fooMap"))
                                         :documentation
                                         "No prefix headers are serialized because the value is not present"
                                         :applies-to "client")
                                        (:id "HttpPrefixEmptyHeaders" :protocol
                                         "aws.protocols#restXml" :method "GET"
                                         :uri "/HttpPrefixHeaders" :headers
                                         (("x-foo-abc" . "")) :body "" :params
                                         (("fooMap" ("abc" . "")))
                                         :documentation
                                         "Serialize prefix headers were the value is present but empty"
                                         :applies-to "client"))
                                       :response-tests
                                       ((:id "HttpPrefixHeadersArePresent"
                                         :protocol "aws.protocols#restXml"
                                         :code 200 :headers
                                         (("x-foo" . "Foo")
                                          ("x-foo-abc" . "Abc value")
                                          ("x-foo-def" . "Def value"))
                                         :body "" :params
                                         (("foo" . "Foo")
                                          ("fooMap" ("abc" . "Abc value")
                                           ("def" . "Def value")))
                                         :documentation
                                         "Adds headers by prefix")
                                        (:id "HttpPrefixHeadersAreNotPresent"
                                         :protocol "aws.protocols#restXml"
                                         :code 200 :headers (("x-foo" . "Foo"))
                                         :body "" :params
                                         (("foo" . "Foo") ("fooMap"))
                                         :documentation
                                         "No prefix headers are serialized because the value is empty")))

(smithy/sdk/operation:define-operation http-request-with-float-labels
                                       :shape-name "HttpRequestWithFloatLabels"
                                       :input
                                       http-request-with-float-labels-input
                                       :output common-lisp:null :errors
                                       common-lisp:nil :method "GET" :uri
                                       "/FloatHttpLabels/{float}/{double}"
                                       :request-tests
                                       ((:id "RestXmlSupportsNaNFloatLabels"
                                         :protocol "aws.protocols#restXml"
                                         :method "GET" :uri
                                         "/FloatHttpLabels/NaN/NaN" :body ""
                                         :params
                                         (("float" . "NaN") ("double" . "NaN"))
                                         :documentation
                                         "Supports handling NaN float label values.")
                                        (:id
                                         "RestXmlSupportsInfinityFloatLabels"
                                         :protocol "aws.protocols#restXml"
                                         :method "GET" :uri
                                         "/FloatHttpLabels/Infinity/Infinity"
                                         :body "" :params
                                         (("float" . "Infinity")
                                          ("double" . "Infinity"))
                                         :documentation
                                         "Supports handling Infinity float label values.")
                                        (:id
                                         "RestXmlSupportsNegativeInfinityFloatLabels"
                                         :protocol "aws.protocols#restXml"
                                         :method "GET" :uri
                                         "/FloatHttpLabels/-Infinity/-Infinity"
                                         :body "" :params
                                         (("float" . "-Infinity")
                                          ("double" . "-Infinity"))
                                         :documentation
                                         "Supports handling -Infinity float label values.")))

(smithy/sdk/operation:define-operation http-request-with-greedy-label-in-path
                                       :shape-name
                                       "HttpRequestWithGreedyLabelInPath"
                                       :input
                                       http-request-with-greedy-label-in-path-input
                                       :output common-lisp:null :errors
                                       common-lisp:nil :method "GET" :uri
                                       "/HttpRequestWithGreedyLabelInPath/foo/{foo}/baz/{baz+}"
                                       :request-tests
                                       ((:id "HttpRequestWithGreedyLabelInPath"
                                         :protocol "aws.protocols#restXml"
                                         :method "GET" :uri
                                         "/HttpRequestWithGreedyLabelInPath/foo/hello/baz/there/guy"
                                         :body "" :params
                                         (("foo" . "hello")
                                          ("baz" . "there/guy"))
                                         :documentation
                                         "Serializes greedy labels and normal labels")))

(smithy/sdk/operation:define-operation http-request-with-labels :shape-name
                                       "HttpRequestWithLabels" :input
                                       http-request-with-labels-input :output
                                       common-lisp:null :errors common-lisp:nil
                                       :method "GET" :uri
                                       "/HttpRequestWithLabels/{string}/{short}/{integer}/{long}/{float}/{double}/{boolean}/{timestamp}"
                                       :request-tests
                                       ((:id "InputWithHeadersAndAllParams"
                                         :protocol "aws.protocols#restXml"
                                         :method "GET" :uri
                                         "/HttpRequestWithLabels/string/1/2/3/4.1/5.1/true/2019-12-16T23%3A48%3A18Z"
                                         :body "" :params
                                         (("string" . "string") ("short" . 1)
                                          ("integer" . 2) ("long" . 3)
                                          ("float" . 4.1d0) ("double" . 5.1d0)
                                          ("boolean" . common-lisp:t)
                                          ("timestamp" . 1576540098))
                                         :documentation
                                         "Sends a GET request that uses URI label bindings")
                                        (:id "HttpRequestLabelEscaping"
                                         :protocol "aws.protocols#restXml"
                                         :method "GET" :uri
                                         "/HttpRequestWithLabels/%20%25%3A%2F%3F%23%5B%5D%40%21%24%26%27%28%29%2A%2B%2C%3B%3D%F0%9F%98%B9/1/2/3/4.1/5.1/true/2019-12-16T23%3A48%3A18Z"
                                         :body "" :params
                                         (("string" . " %:/?#[]@!$&'()*+,;=😹")
                                          ("short" . 1) ("integer" . 2)
                                          ("long" . 3) ("float" . 4.1d0)
                                          ("double" . 5.1d0)
                                          ("boolean" . common-lisp:t)
                                          ("timestamp" . 1576540098))
                                         :documentation
                                         "Sends a GET request that uses URI label bindings")))

(smithy/sdk/operation:define-operation
 http-request-with-labels-and-timestamp-format :shape-name
 "HttpRequestWithLabelsAndTimestampFormat" :input
 http-request-with-labels-and-timestamp-format-input :output common-lisp:null
 :errors common-lisp:nil :method "GET" :uri
 "/HttpRequestWithLabelsAndTimestampFormat/{memberEpochSeconds}/{memberHttpDate}/{memberDateTime}/{defaultFormat}/{targetEpochSeconds}/{targetHttpDate}/{targetDateTime}"
 :request-tests
 ((:id "HttpRequestWithLabelsAndTimestampFormat" :protocol
   "aws.protocols#restXml" :method "GET" :uri
   "/HttpRequestWithLabelsAndTimestampFormat/1576540098/Mon%2C%2016%20Dec%202019%2023%3A48%3A18%20GMT/2019-12-16T23%3A48%3A18Z/2019-12-16T23%3A48%3A18Z/1576540098/Mon%2C%2016%20Dec%202019%2023%3A48%3A18%20GMT/2019-12-16T23%3A48%3A18Z"
   :body "" :params
   (("memberEpochSeconds" . 1576540098) ("memberHttpDate" . 1576540098)
    ("memberDateTime" . 1576540098) ("defaultFormat" . 1576540098)
    ("targetEpochSeconds" . 1576540098) ("targetHttpDate" . 1576540098)
    ("targetDateTime" . 1576540098))
   :documentation "Serializes different timestamp formats in URI labels")))

(smithy/sdk/operation:define-operation http-response-code :shape-name
                                       "HttpResponseCode" :input
                                       common-lisp:null :output
                                       http-response-code-output :errors
                                       common-lisp:nil :method "PUT" :uri
                                       "/HttpResponseCode" :response-tests
                                       ((:id "RestXmlHttpResponseCode"
                                         :protocol "aws.protocols#restXml"
                                         :code 201 :headers
                                         (("Content-Type" . "application/xml"))
                                         :body "" :body-media-type
                                         "application/xml" :params
                                         (("Status" . 201)) :documentation
                                         "Binds the http response code to an output structure.")))

(smithy/sdk/operation:define-operation http-string-payload :shape-name
                                       "HttpStringPayload" :input
                                       string-payload-input :output
                                       string-payload-input :errors
                                       common-lisp:nil :method "POST" :uri
                                       "/StringPayload" :request-tests
                                       ((:id "RestXmlStringPayloadRequest"
                                         :protocol "aws.protocols#restXml"
                                         :method "POST" :uri "/StringPayload"
                                         :headers
                                         (("Content-Type" . "text/plain"))
                                         :body "rawstring" :params
                                         (("payload" . "rawstring"))))
                                       :response-tests
                                       ((:id "RestXmlStringPayloadResponse"
                                         :protocol "aws.protocols#restXml"
                                         :code 200 :headers
                                         (("Content-Type" . "text/plain"))
                                         :body "rawstring" :params
                                         (("payload" . "rawstring")))))

(smithy/sdk/operation:define-operation ignore-query-params-in-response
                                       :shape-name
                                       "IgnoreQueryParamsInResponse" :input
                                       common-lisp:null :output
                                       ignore-query-params-in-response-output
                                       :errors common-lisp:nil :method "GET"
                                       :uri "/IgnoreQueryParamsInResponse"
                                       :response-tests
                                       ((:id "IgnoreQueryParamsInResponse"
                                         :protocol "aws.protocols#restXml"
                                         :code 200 :headers
                                         (("Content-Type" . "application/xml"))
                                         :body
                                         "<IgnoreQueryParamsInResponseOutput><baz>bam</baz></IgnoreQueryParamsInResponseOutput>"
                                         :body-media-type "application/xml"
                                         :params (("baz" . "bam"))
                                         :documentation
                                         "Query parameters must be ignored when serializing the output of an operation")))

(smithy/sdk/operation:define-operation input-and-output-with-headers
                                       :shape-name "InputAndOutputWithHeaders"
                                       :input input-and-output-with-headers-io
                                       :output input-and-output-with-headers-io
                                       :errors common-lisp:nil :method "POST"
                                       :uri "/InputAndOutputWithHeaders"
                                       :request-tests
                                       ((:id "InputAndOutputWithStringHeaders"
                                         :protocol "aws.protocols#restXml"
                                         :method "POST" :uri
                                         "/InputAndOutputWithHeaders" :headers
                                         (("X-String" . "Hello")
                                          ("X-StringList" . "a, b, c")
                                          ("X-StringSet" . "a, b, c"))
                                         :body "" :params
                                         (("headerString" . "Hello")
                                          ("headerStringList" . #("a" "b" "c"))
                                          ("headerStringSet" . #("a" "b" "c")))
                                         :documentation
                                         "Tests requests with string header bindings")
                                        (:id "InputAndOutputWithNumericHeaders"
                                         :protocol "aws.protocols#restXml"
                                         :method "POST" :uri
                                         "/InputAndOutputWithHeaders" :headers
                                         (("X-Byte" . "1") ("X-Short" . "123")
                                          ("X-Integer" . "123")
                                          ("X-Long" . "123")
                                          ("X-Float" . "1.1")
                                          ("X-Double" . "1.1")
                                          ("X-IntegerList" . "1, 2, 3"))
                                         :body "" :params
                                         (("headerByte" . 1)
                                          ("headerShort" . 123)
                                          ("headerInteger" . 123)
                                          ("headerLong" . 123)
                                          ("headerFloat" . 1.1d0)
                                          ("headerDouble" . 1.1d0)
                                          ("headerIntegerList" . #(1 2 3)))
                                         :documentation
                                         "Tests requests with numeric header bindings")
                                        (:id "InputAndOutputWithBooleanHeaders"
                                         :protocol "aws.protocols#restXml"
                                         :method "POST" :uri
                                         "/InputAndOutputWithHeaders" :headers
                                         (("X-Boolean1" . "true")
                                          ("X-Boolean2" . "false")
                                          ("X-BooleanList"
                                           . "true, false, true"))
                                         :body "" :params
                                         (("headerTrueBool" . common-lisp:t)
                                          ("headerFalseBool")
                                          ("headerBooleanList"
                                           . #(common-lisp:t common-lisp:nil
                                               common-lisp:t)))
                                         :documentation
                                         "Tests requests with boolean header bindings")
                                        (:id
                                         "InputAndOutputWithTimestampHeaders"
                                         :protocol "aws.protocols#restXml"
                                         :method "POST" :uri
                                         "/InputAndOutputWithHeaders" :headers
                                         (("X-TimestampList"
                                           . "Mon, 16 Dec 2019 23:48:18 GMT, Mon, 16 Dec 2019 23:48:18 GMT"))
                                         :body "" :params
                                         (("headerTimestampList"
                                           . #(1576540098 1576540098)))
                                         :documentation
                                         "Tests requests with timestamp header bindings")
                                        (:id "InputAndOutputWithEnumHeaders"
                                         :protocol "aws.protocols#restXml"
                                         :method "POST" :uri
                                         "/InputAndOutputWithHeaders" :headers
                                         (("X-Enum" . "Foo")
                                          ("X-EnumList" . "Foo, Bar, Baz"))
                                         :body "" :params
                                         (("headerEnum" . "Foo")
                                          ("headerEnumList"
                                           . #("Foo" "Bar" "Baz")))
                                         :documentation
                                         "Tests requests with enum header bindings")
                                        (:id
                                         "RestXmlSupportsNaNFloatHeaderInputs"
                                         :protocol "aws.protocols#restXml"
                                         :method "POST" :uri
                                         "/InputAndOutputWithHeaders" :headers
                                         (("X-Float" . "NaN")
                                          ("X-Double" . "NaN"))
                                         :body "" :params
                                         (("headerFloat" . "NaN")
                                          ("headerDouble" . "NaN"))
                                         :documentation
                                         "Supports handling NaN float header values.")
                                        (:id
                                         "RestXmlSupportsInfinityFloatHeaderInputs"
                                         :protocol "aws.protocols#restXml"
                                         :method "POST" :uri
                                         "/InputAndOutputWithHeaders" :headers
                                         (("X-Float" . "Infinity")
                                          ("X-Double" . "Infinity"))
                                         :body "" :params
                                         (("headerFloat" . "Infinity")
                                          ("headerDouble" . "Infinity"))
                                         :documentation
                                         "Supports handling Infinity float header values.")
                                        (:id
                                         "RestXmlSupportsNegativeInfinityFloatHeaderInputs"
                                         :protocol "aws.protocols#restXml"
                                         :method "POST" :uri
                                         "/InputAndOutputWithHeaders" :headers
                                         (("X-Float" . "-Infinity")
                                          ("X-Double" . "-Infinity"))
                                         :body "" :params
                                         (("headerFloat" . "-Infinity")
                                          ("headerDouble" . "-Infinity"))
                                         :documentation
                                         "Supports handling -Infinity float header values."))
                                       :response-tests
                                       ((:id "InputAndOutputWithStringHeaders"
                                         :protocol "aws.protocols#restXml"
                                         :code 200 :headers
                                         (("X-String" . "Hello")
                                          ("X-StringList" . "a, b, c")
                                          ("X-StringSet" . "a, b, c"))
                                         :body "" :params
                                         (("headerString" . "Hello")
                                          ("headerStringList" . #("a" "b" "c"))
                                          ("headerStringSet" . #("a" "b" "c")))
                                         :documentation
                                         "Tests responses with string header bindings")
                                        (:id "InputAndOutputWithNumericHeaders"
                                         :protocol "aws.protocols#restXml"
                                         :code 200 :headers
                                         (("X-Byte" . "1") ("X-Short" . "123")
                                          ("X-Integer" . "123")
                                          ("X-Long" . "123")
                                          ("X-Float" . "1.1")
                                          ("X-Double" . "1.1")
                                          ("X-IntegerList" . "1, 2, 3"))
                                         :body "" :params
                                         (("headerByte" . 1)
                                          ("headerShort" . 123)
                                          ("headerInteger" . 123)
                                          ("headerLong" . 123)
                                          ("headerFloat" . 1.1d0)
                                          ("headerDouble" . 1.1d0)
                                          ("headerIntegerList" . #(1 2 3)))
                                         :documentation
                                         "Tests responses with numeric header bindings")
                                        (:id "InputAndOutputWithBooleanHeaders"
                                         :protocol "aws.protocols#restXml"
                                         :code 200 :headers
                                         (("X-Boolean1" . "true")
                                          ("X-Boolean2" . "false")
                                          ("X-BooleanList"
                                           . "true, false, true"))
                                         :body "" :params
                                         (("headerTrueBool" . common-lisp:t)
                                          ("headerFalseBool")
                                          ("headerBooleanList"
                                           . #(common-lisp:t common-lisp:nil
                                               common-lisp:t)))
                                         :documentation
                                         "Tests responses with boolean header bindings")
                                        (:id
                                         "InputAndOutputWithTimestampHeaders"
                                         :protocol "aws.protocols#restXml"
                                         :code 200 :headers
                                         (("X-TimestampList"
                                           . "Mon, 16 Dec 2019 23:48:18 GMT, Mon, 16 Dec 2019 23:48:18 GMT"))
                                         :body "" :params
                                         (("headerTimestampList"
                                           . #(1576540098 1576540098)))
                                         :documentation
                                         "Tests responses with timestamp header bindings")
                                        (:id "InputAndOutputWithEnumHeaders"
                                         :protocol "aws.protocols#restXml"
                                         :code 200 :headers
                                         (("X-Enum" . "Foo")
                                          ("X-EnumList" . "Foo, Bar, Baz"))
                                         :body "" :params
                                         (("headerEnum" . "Foo")
                                          ("headerEnumList"
                                           . #("Foo" "Bar" "Baz")))
                                         :documentation
                                         "Tests responses with enum header bindings")
                                        (:id
                                         "RestXmlSupportsNaNFloatHeaderOutputs"
                                         :protocol "aws.protocols#restXml"
                                         :code 200 :headers
                                         (("X-Float" . "NaN")
                                          ("X-Double" . "NaN"))
                                         :body "" :params
                                         (("headerFloat" . "NaN")
                                          ("headerDouble" . "NaN"))
                                         :documentation
                                         "Supports handling NaN float header values.")
                                        (:id
                                         "RestXmlSupportsInfinityFloatHeaderOutputs"
                                         :protocol "aws.protocols#restXml"
                                         :code 200 :headers
                                         (("X-Float" . "Infinity")
                                          ("X-Double" . "Infinity"))
                                         :body "" :params
                                         (("headerFloat" . "Infinity")
                                          ("headerDouble" . "Infinity"))
                                         :documentation
                                         "Supports handling Infinity float header values.")
                                        (:id
                                         "RestXmlSupportsNegativeInfinityFloatHeaderOutputs"
                                         :protocol "aws.protocols#restXml"
                                         :code 200 :headers
                                         (("X-Float" . "-Infinity")
                                          ("X-Double" . "-Infinity"))
                                         :body "" :params
                                         (("headerFloat" . "-Infinity")
                                          ("headerDouble" . "-Infinity"))
                                         :documentation
                                         "Supports handling -Infinity float header values.")))

(smithy/sdk/operation:define-operation nested-xml-map-with-xml-name :shape-name
                                       "NestedXmlMapWithXmlName" :input
                                       nested-xml-map-with-xml-name-request
                                       :output
                                       nested-xml-map-with-xml-name-response
                                       :errors common-lisp:nil :method "POST"
                                       :uri "/NestedXmlMapWithXmlName"
                                       :request-tests
                                       ((:id
                                         "NestedXmlMapWithXmlNameSerializes"
                                         :protocol "aws.protocols#restXml"
                                         :method "POST" :uri
                                         "/NestedXmlMapWithXmlName" :headers
                                         (("Content-Type" . "application/xml"))
                                         :body
                                         "    <NestedXmlMapWithXmlNameRequest>
        <nestedXmlMapWithXmlNameMap>
            <entry>
                <OuterKey>foo</OuterKey>
                <value>
                    <entry>
                        <InnerKey>bar</InnerKey>
                        <InnerValue>Baz</InnerValue>
                    </entry>
                    <entry>
                        <InnerKey>fizz</InnerKey>
                        <InnerValue>Buzz</InnerValue>
                    </entry>
                </value>
            </entry>
            <entry>
                <OuterKey>qux</OuterKey>
                <value>
                    <entry>
                        <InnerKey>foobar</InnerKey>
                        <InnerValue>Bar</InnerValue>
                    </entry>
                    <entry>
                        <InnerKey>fizzbuzz</InnerKey>
                        <InnerValue>Buzz</InnerValue>
                    </entry>
                </value>
            </entry>
        </nestedXmlMapWithXmlNameMap>
    </NestedXmlMapWithXmlNameRequest>
"
                                         :body-media-type "application/xml"
                                         :params
                                         (("nestedXmlMapWithXmlNameMap"
                                           ("foo" ("bar" . "Baz")
                                            ("fizz" . "Buzz"))
                                           ("qux" ("foobar" . "Bar")
                                            ("fizzbuzz" . "Buzz"))))
                                         :documentation
                                         "Serializes nested XML Maps in requests that have xmlName on members"))
                                       :response-tests
                                       ((:id
                                         "NestedXmlMapWithXmlNameDeserializes"
                                         :protocol "aws.protocols#restXml"
                                         :code 200 :headers
                                         (("Content-Type" . "application/xml"))
                                         :body
                                         "    <NestedXmlMapWithXmlNameResponse>
        <nestedXmlMapWithXmlNameMap>
            <entry>
                <OuterKey>foo</OuterKey>
                <value>
                    <entry>
                        <InnerKey>bar</InnerKey>
                        <InnerValue>Baz</InnerValue>
                    </entry>
                    <entry>
                        <InnerKey>fizz</InnerKey>
                        <InnerValue>Buzz</InnerValue>
                    </entry>
                </value>
            </entry>
            <entry>
                <OuterKey>qux</OuterKey>
                <value>
                    <entry>
                        <InnerKey>foobar</InnerKey>
                        <InnerValue>Bar</InnerValue>
                    </entry>
                    <entry>
                        <InnerKey>fizzbuzz</InnerKey>
                        <InnerValue>Buzz</InnerValue>
                    </entry>
                </value>
            </entry>
        </nestedXmlMapWithXmlNameMap>
    </NestedXmlMapWithXmlNameResponse>
"
                                         :body-media-type "application/xml"
                                         :params
                                         (("nestedXmlMapWithXmlNameMap"
                                           ("foo" ("bar" . "Baz")
                                            ("fizz" . "Buzz"))
                                           ("qux" ("foobar" . "Bar")
                                            ("fizzbuzz" . "Buzz"))))
                                         :documentation
                                         "Serializes nested XML maps in responses that have xmlName on members")))

(smithy/sdk/operation:define-operation nested-xml-maps :shape-name
                                       "NestedXmlMaps" :input
                                       nested-xml-maps-request :output
                                       nested-xml-maps-response :errors
                                       common-lisp:nil :method "POST" :uri
                                       "/NestedXmlMaps" :request-tests
                                       ((:id "NestedXmlMapRequest" :protocol
                                         "aws.protocols#restXml" :method "POST"
                                         :uri "/NestedXmlMaps" :headers
                                         (("Content-Type" . "application/xml"))
                                         :body "<NestedXmlMapsRequest>
    <nestedMap>
        <entry>
            <key>foo</key>
            <value>
                <entry>
                    <key>bar</key>
                    <value>Bar</value>
                </entry>
            </value>
        </entry>
    </nestedMap>
</NestedXmlMapsRequest>"
                                         :body-media-type "application/xml"
                                         :params
                                         (("nestedMap"
                                           ("foo" ("bar" . "Bar"))))
                                         :documentation
                                         "Tests requests with nested maps.")
                                        (:id "FlatNestedXmlMapRequest"
                                         :protocol "aws.protocols#restXml"
                                         :method "POST" :uri "/NestedXmlMaps"
                                         :headers
                                         (("Content-Type" . "application/xml"))
                                         :body "<NestedXmlMapsRequest>
    <flatNestedMap>
        <key>foo</key>
        <value>
            <entry>
                <key>bar</key>
                <value>Bar</value>
            </entry>
        </value>
    </flatNestedMap>
</NestedXmlMapsRequest>"
                                         :body-media-type "application/xml"
                                         :params
                                         (("flatNestedMap"
                                           ("foo" ("bar" . "Bar"))))
                                         :documentation
                                         "Tests requests with nested flat maps. Since maps can only be
flattened when they're structure members, only the outer map is flat."))
                                       :response-tests
                                       ((:id "NestedXmlMapResponse" :protocol
                                         "aws.protocols#restXml" :code 200
                                         :headers
                                         (("Content-Type" . "application/xml"))
                                         :body "<NestedXmlMapsResponse>
    <nestedMap>
        <entry>
            <key>foo</key>
            <value>
                <entry>
                    <key>bar</key>
                    <value>Bar</value>
                </entry>
            </value>
        </entry>
    </nestedMap>
</NestedXmlMapsResponse>"
                                         :body-media-type "application/xml"
                                         :params
                                         (("nestedMap"
                                           ("foo" ("bar" . "Bar"))))
                                         :documentation
                                         "Tests responses with nested maps.")
                                        (:id "FlatNestedXmlMapResponse"
                                         :protocol "aws.protocols#restXml"
                                         :code 200 :headers
                                         (("Content-Type" . "application/xml"))
                                         :body "<NestedXmlMapsResponse>
    <flatNestedMap>
        <key>foo</key>
        <value>
            <entry>
                <key>bar</key>
                <value>Bar</value>
            </entry>
        </value>
    </flatNestedMap>
</NestedXmlMapsResponse>"
                                         :body-media-type "application/xml"
                                         :params
                                         (("flatNestedMap"
                                           ("foo" ("bar" . "Bar"))))
                                         :documentation
                                         "Tests responses with nested flat maps. Since maps can only be
flattened when they're structure members, only the outer map is flat.")))

(smithy/sdk/operation:define-operation no-input-and-no-output :shape-name
                                       "NoInputAndNoOutput" :input
                                       common-lisp:null :output
                                       common-lisp:null :errors common-lisp:nil
                                       :method "POST" :uri
                                       "/NoInputAndNoOutput" :request-tests
                                       ((:id "NoInputAndNoOutput" :protocol
                                         "aws.protocols#restXml" :method "POST"
                                         :uri "/NoInputAndNoOutput" :body ""
                                         :documentation
                                         "No input serializes no payload"))
                                       :response-tests
                                       ((:id "NoInputAndNoOutput" :protocol
                                         "aws.protocols#restXml" :code 200
                                         :body "" :documentation
                                         "No output serializes no payload")))

(smithy/sdk/operation:define-operation no-input-and-output :shape-name
                                       "NoInputAndOutput" :input
                                       common-lisp:null :output
                                       no-input-and-output-output :errors
                                       common-lisp:nil :method "POST" :uri
                                       "/NoInputAndOutputOutput" :request-tests
                                       ((:id "NoInputAndOutput" :protocol
                                         "aws.protocols#restXml" :method "POST"
                                         :uri "/NoInputAndOutputOutput" :body
                                         "" :documentation
                                         "No input serializes no payload"))
                                       :response-tests
                                       ((:id "NoInputAndOutput" :protocol
                                         "aws.protocols#restXml" :code 200
                                         :body "" :documentation
                                         "Empty output serializes no payload")))

(smithy/sdk/operation:define-operation null-and-empty-headers-client
                                       :shape-name "NullAndEmptyHeadersClient"
                                       :input null-and-empty-headers-io :output
                                       null-and-empty-headers-io :errors
                                       common-lisp:nil :method "GET" :uri
                                       "/NullAndEmptyHeadersClient"
                                       :request-tests
                                       ((:id "NullAndEmptyHeaders" :protocol
                                         "aws.protocols#restXml" :method "GET"
                                         :uri "/NullAndEmptyHeadersClient"
                                         :headers (("X-B" . "") ("X-C" . ""))
                                         :forbid-headers #("X-A") :body ""
                                         :params (("a") ("b" . "") ("c" . #()))
                                         :documentation
                                         "Do not send null values, but do send empty strings and empty lists over the wire in headers"
                                         :applies-to "client")))

(smithy/sdk/operation:define-operation null-and-empty-headers-server
                                       :shape-name "NullAndEmptyHeadersServer"
                                       :input null-and-empty-headers-io :output
                                       null-and-empty-headers-io :errors
                                       common-lisp:nil :method "GET" :uri
                                       "/NullAndEmptyHeadersServer"
                                       :response-tests
                                       ((:id "NullAndEmptyHeaders" :protocol
                                         "aws.protocols#restXml" :code 200
                                         :headers (("X-B" . "") ("X-C" . ""))
                                         :forbid-headers #("X-A") :body ""
                                         :params (("a") ("b" . "") ("c" . #()))
                                         :documentation
                                         "Do not send null values, but do send empty strings and empty lists over the wire in headers"
                                         :applies-to "server")))

(smithy/sdk/operation:define-operation omits-null-serializes-empty-string
                                       :shape-name
                                       "OmitsNullSerializesEmptyString" :input
                                       omits-null-serializes-empty-string-input
                                       :output common-lisp:null :errors
                                       common-lisp:nil :method "GET" :uri
                                       "/OmitsNullSerializesEmptyString"
                                       :request-tests
                                       ((:id "RestXmlOmitsNullQuery" :protocol
                                         "aws.protocols#restXml" :method "GET"
                                         :uri "/OmitsNullSerializesEmptyString"
                                         :body "" :params (("nullValue"))
                                         :documentation
                                         "Omits null query values" :applies-to
                                         "client")
                                        (:id "RestXmlSerializesEmptyString"
                                         :protocol "aws.protocols#restXml"
                                         :method "GET" :uri
                                         "/OmitsNullSerializesEmptyString"
                                         :query-params #("Empty=") :body ""
                                         :params (("emptyString" . ""))
                                         :documentation
                                         "Serializes empty query strings")))

(smithy/sdk/operation:define-operation put-with-content-encoding :shape-name
                                       "PutWithContentEncoding" :input
                                       put-with-content-encoding-input :output
                                       common-lisp:null :errors common-lisp:nil
                                       :method "POST" :uri
                                       "/requestcompression/putcontentwithencoding"
                                       :request-tests
                                       ((:id
                                         "SDKAppliedContentEncoding_restXml"
                                         :protocol "aws.protocols#restXml"
                                         :method "POST" :uri
                                         "/requestcompression/putcontentwithencoding"
                                         :headers
                                         (("Content-Encoding" . "gzip"))
                                         :params
                                         (("data"
                                           . "RjCEL3kBwqPivZUXGiyA5JCujtWgJAkKRlnTEsNYfBRGOS0f7LT6R3bCSOXeJ4auSHzQ4BEZZTklUyj5
1HEojihShQC2jkQJrNdGOZNSW49yRO0XbnGmeczUHbZqZRelLFKW4xjru9uTuB8lFCtwoGgciFsgqTF8
5HYcoqINTRxuAwGuRUMoNO473QT0BtCQoKUkAyVaypG0hBZdGNoJhunBfW0d3HWTYlzz9pXElyZhq3C1
2PDB17GEoOYXmTxDecysmPOdo5z6T0HFhujfeJFIQQ8dirmXcG4F3v0bZdf6AZ3jsiVh6RnEXIPxPbOi
gIXDWTMUr4Pg3f2LdYCM01eAb2qTdgsEN0MUDhEIfn68I2tnWvcozyUFpg1ez6pyWP8ssWVfFrckREIM
Mb0cTUVqSVSM8bnFiF9SoXM6ZoGMKfX1mT708OYk7SqZ1JlCTkecDJDoR5ED2q2MWKUGR6jjnEV0GtD8
WJO6AcF0DptY9Hk16Bav3z6c5FeBvrGDrxTFVgRUk8SychzjrcqJ4qskwN8rL3zslC0oqobQRnLFOvwJ
prSzBIwdH2yAuxokXAdVRa1u9NGNRvfWJfKkwbbVz8yV76RUF9KNhAUmwyYDrLnxNj8ROl8B7dv8Gans
7Bit52wcdiJyjBW1pAodB7zqqVwtBx5RaSpF7kEMXexYXp9N0J1jlXzdeg5Wgg4pO7TJNr2joiPVAiFf
efwMMCNBkYx2z7cRxVxCJZMXXzxSKMGgdTN24bJ5UgE0TxyV52RC0wGWG49S1x5jGrvmxKCIgYPs0w3Z
0I3XcdB0WEj4x4xRztB9Cx2Mc4qFYQdzS9kOioAgNBti1rBySZ8lFZM2zqxvBsJTTJsmcKPr1crqiXjM
oVWdM4ObOO6QA7Pu4c1hT68CrTmbcecjFcxHkgsqdixnFtN6keMGL9Z2YMjZOjYYzbUEwLJqUVWalkIB
BkgBRqZpzxx5nB5t0qDH35KjsfKM5cinQaFoRq9y9Z82xdCoKZOsUbxZkk1kVmy1jPDCBhkhixkc5PKS
FoSKTbeK7kuCEZCtR9OfF2k2MqbygGFsFu2sgb1Zn2YdDbaRwRGeaLhswta09UNSMUo8aTixgoYVHxwy
vraLB6olPSPegeLOnmBeWyKmEfPdbpdGm4ev4vA2AUFuLIeFz0LkCSN0NgQMrr8ALEm1UNpJLReg1ZAX
zZh7gtQTZUaBVdMJokaJpLk6FPxSA6zkwB5TegSqhrFIsmvpY3VNWmTUq7H0iADdh3dRQ8Is97bTsbwu
vAEOjh4FQ9wPSFzEtcSJeYQft5GfWYPisDImjjvHVFshFFkNy2nN18pJmhVPoJc456tgbdfEIdGhIADC
6UPcSSzE1FxlPpILqZrp3i4NvvKoiOa4a8tnALd2XRHHmsvALn2Wmfu07b86gZlu4yOyuUFNoWI6tFvd
bHnqSJYNQlFESv13gJw609DBzNnrIgBGYBAcDRrIGAnflRKwVDUnDFrUQmE8xNG6jRlyb1p2Y2RrfBtG
cKqhuGNiT2DfxpY89ektZ98waPhJrFEPJToNH8EADzBorh3T0h4YP1IeLmaI7SOxeuVrk1kjRqMK0rUB
lUJgJNtCE35jCyoHMwPQlyi78ZaVv8COVQ24zcGpw0MTy6JUsDzAC3jLNY6xCb40SZV9XzG7nWvXA5Ej
YC1gTXxF4AtFexIdDZ4RJbtYMyXt8LsEJerwwpkfqvDwsiFuqYC6vIn9RoZO5kI0F35XtUITDQYKZ4eq
WBV0itxTyyR5Rp6g30pZEmEqOusDaIh96CEmHpOBYAQZ7u1QTfzRdysIGMpzbx5gj9Dxm2PO1glWzY7P
lVqQiBlXSGDOkBkrB6SkiAxknt9zsPdTTsf3r3nid4hdiPrZmGWNgjOO1khSxZSzBdltrCESNnQmlnP5
ZOHA0eSYXwy8j4od5ZmjA3IpFOEPW2MutMbxIbJpg5dIx2x7WxespftenRLgl3CxcpPDcnb9w8LCHBg7
SEjrEer6Y8wVLFWsQiv6nTdCPZz9cGqwgtCaiHRy8lTWFgdfWd397vw9rduGld3uUFeFRGjYrphqEmHi
hiG0GhE6wRFVUsGJtvOCYkVREvbEdxPFeJvlAvOcs9HKbtptlTusvYB86vR2bNcIY4f5JZu2X6sGa354
7LRk0ps2zqYjat3hMR7XDC8KiKceBteFsXoDjfVxTYKelpedTxqWAafrKhaoAVuNM98PSnkuIWGzjSUC
NsDJTt6vt1D1afBVPWVmnQ7ZQdtEtLIEwAWYjemAztreELIr1E9fPEILm1Ke4KctP9I0I72Dh4eylNZD
0DEr2Hg7cWFckuZ0Av5d0IPRARXikEGDHl8uh12TXL9v2Uh0ZVSJMEYvxGSbZvkWz8TjWSk3hKA2a7GL
Jm3Ho7e1C34gE1XRGcEthxvURxt4OKBqN3ZNaMIuDTWinoQAutMcUqtm4MoL7RGPiCHUrvTwQPSirsmA
QmOEu8nOpnP77Fivh9jLGx5ta7nL6jrsWUsBqiN1lzpdPYLRR4mUIAj6sNWiDEk4pkbHSMEcqbWw6Zl7
psEyPDHalCNhWMA3RSK3skURzQDZ0oBV5W7vjVIZ4d3uCKsk6zrzEI9u5mx7p9RdNKodXfzqYt0ULdtc
3RW0hIfw2KvrO3BD2QrtgAkfrFBGVvlJSUoh0MvLz8DeXxfuiuq9Ttu7wvsqVI4Piah6WNEXtHHGPJO3
Ghc75Bnv2To4VS2v8rmyKAPIIVTuYBHZN6sZ4FhFzbrslCIdk0eadaU60naqiNWU3CsxplIYGyeThmJ7
9u4h6Y2OmiPZjFPS2bAzwgAozYTVefII9aEaWZ0hxHZeu1FW7r79dkdO73ZqRfas9u8Z7LLBPCw5pV0F
5I0pHDgNb6MogoxF4NZJfVtIX1vCHhhVLrXjrYNJU2fD9Fw8kT8Ie2HDBJnqAvYKmryQ1r9ulo3Me3rH
q9s2Y5uCDxu9iQNhnpwIm57WYGFeqd2fnQeY2IziD3Jgx0KSrmOH0jgi0RwJyfGXaORPq3bQQqljuACo
kO6io9t5VI8PbNxSHTRbtYiPciUslbT0g7SpCLrRPOBRJ4DDk56pjghpeoUagJ5xJ4wjBzBuXnAGkNnP
Tfpiuz2r3oSBAi8sB9wiYK2z9sp4gZyQsqdVNzAEgKatOxBRBmJCBYpjO98ZQrF83XApPpfFg0ujB2PW
1iYF9NkgwIKB5oB6KVTOmSKJk11mVermPgeugHbzdd2zUP6fP8fWbhseqk2t8ahGvqjs2CDHFIWXl5jc
fCknbykE3ANt7lnAfJQ2ddduLGiqrX4HWx6jcWw08Es6BkleO0IDbaWrb95d5isvFlzJsf0TyDIXF4uq
bBDCi0XPWqtRJ2iqmnJa2GbBe9GmAOWMkBFSilMyC4sR395WSDpD56fx0NGoU6cHrRu9xF2Bgh7RGSfl
ch2GXEeE02fDpSHFNvJBlOEqqfkIX6oCa6KY9NThqeIjYsT184XR2ZI7akXRaw1gMOGpk4FmUxk6WIuX
4ei1SLQgSdl7OEdRtJklZ76eFrMbkJQ2TDhu8f7mVuiy53GUMIvCrP9xYGZGmCIDm2e4U2BDi3F7C5xK
3bDZXwlQp6z4BSqTy2OVEWxXUJfjPMOL5Mc7AvDeKtxAS73pVIv0HgHIa4NBAdC7uLG0zXuu1FF6z2XY
yUhk03fMZhYe7vVxsul3WE7U01fuN8z2y0eKwBW1RFBE1eKIaR9Y01sIWQWbSrfHfDrdZiElhmhHehfs
0EfrR4sLYdQshJuvhTeKGJDaEhtPQwwJ9mUYGtuCL9RozWx1XI4bHNlzBTW0BVokYiJGlPe7wdxNzJD7
JgS7Lwv6jGKngVf86imGZyzqwiteWFPdNUoWdTvUPSMO5xIUK9mo5QpwbBOAmyYzVq42o3Qs90N9khEV
U36LB99fw8PtGHH5wsCHshfauwnNPj0blGXzke0kQ4JNCVH7Jtn0Y0aeejkSxFtwtxoYs6zHl1Lxxpsd
sw5vBy49CEtoltDW367lVAwDjWdx20msGB7qJCkEDrzu7EXSO22782QX9NBRcN9ppX0C25I0FMA4Wnhz
9zIpiXRrsTH35jzM8Cjt4EVLGNU3O0HuEvAer3cENnMJtngdrT86ox3fihMQbiuy4Bh4DEcP5in2VjbT
3qbnoCNvOi8Fmmf7KlGlWAOceL5OHVE5lljjQEMzEQOCEgrk5mDKgwSBJQBNauIDSC1a5iEQjB8Xxp4C
qeKyyWY9IOntNrtU5ny4lNprHJd36dKFeBLKcGCOvgHBXdOZloMF0YTRExw7hreEO9IoTGVHJ4teWsNr
HdtagUHjkeZkdMMfnUGNv5aBNtFMqhcZH6EitEa9lGPkKBbJpoom3u8D8EHSIF1H5EZqqx9TLY5hWAIG
PwJ4qwkpCGw5rCLVrjw7ARKukIFzNULANqjHUMcJ002TlUosJM4xJ4aAgckpLVGOGuPDhGAAexEcQmbg
UsZdmqQrtuVUyyLteLbLbqtR6CTlcAIwY3xyMCmPgyefE0FEUODBoxQtRUuYTL9RC5o1sYb2PvcxUQfb
iJFi2CAl99pAzcckU2qVCxniARslIxM5pmMRGsQX9ZzYAfZrbg6ce6S74I8UMlgRQ2QVyvUjKKOE6IrJ
Lng370emHfe5m6LZULD5YiZutkD5ipjL2Bz77DvTE5kNPUhuoKBcTJcUgytfXAKUTWOcRKNlq0GImrxM
Jfr7AWbLFFNKGLeTrVDBwpcokJCv0zcOKWe8fd2xkeXkZTdmM66IgM27cyYmtQ6YF26Kd0qrWJeVZJV9
3fyLYYvKN5csbRY2BHoYE5ERARRW65IrpkXMf48OrCXMtDIP0Z7wxI9DiTeKKeH4uuguhCJnwzR3WxLA
VU6eBJEd7ZjS6JA83w7decq8uDI7LGKjcz1FySp3B7fE9DkHRGXxbsL7Fjar6vW2mAv8CuvI20B6jctp
2yLDs24sPfB3sSxrrlhbuT1m6DZqiN0dl6umKx7NGZhmOTVGr20jfcxhqPQwTJfd7kel4rvxip4BqkvT
7STy8knJ2BXGyJeNgwo1PXUZRDVy0LCTsSF1RFuRZe8cktHl9lgw8ntdPn1pVFL0MwJkJfdXBNUp5gNv
50FTkrpo1t6wq4CVbcfj2XOrOzvBUzNH26sXGABI1gGxCdp2jEZrHgqQaWIaTJVTuguZhxqDvdYsrwFW
YN58uuNcKHIrGdRSigyZInwQDYk0pjcqdSeU0WVU3Y9htzZBR7XRaCJr5YTZvq7fwermb5tuwb37lPLq
B2IGg0iftkVbXaSyfCwVaRbfLBb88so0QqpmJGirFu8FcDiXOV1zTr8yW9XLdYQuUjh43xrXLdgsuYff
CagInUk1eU1aLjVZoJRsNmStmOEpAqlYMwTvx7w6j2f421Cxr5cNZBIVlAxlXN2QiDqJ9v3sHhHkTanc
lQuH8ptUyX8qncpBuXXBn7cSez9N0EoxCBl1GHUagbjstgJo4gzLvTmVIY6MiWYOBitzNUHfyqKwtKUr
VoSCdZcGeA9lHUPA7PUprRRaT3m1hGKPyshtVS2ikG48w3oVerln1N1qGdtz46gZCrndw3LZ1B362RfW
zDPuXbpsyLsRMTt1Rz1oKHRXp3iE41hkhQH6pxlvyCW2INnHt5XU8zRamOB3oW0udOhMpQFDjRkOcy06
b4t0QTHvoRqmBna3WXzIMZyeK3GChF5eF8oDXRbjhk7BB6YKCgqwWUzEJ5K47HMSlhFkBUjaPRjdGM0z
zOMwhW6b1NvSwP7XM1P5yi1oPvOspts1vr29SXqrMMrBhVogeodWyd69NqrO4jkyBxKmlXifoTowpfiY
2cUCE0XMZqxUN39LCP09JqZifaEcBEo3mgtm1tWu5QR2GNq7UyQf4RIPSDOpDCAtwoPhRgdT1lJdcj4U
lnH0wrJ8Uwu7c08L7ErnIrDATqCrOjpSbzGP1xHENABYONC4TknFPrJ8pe40A8fzGT0qBw9mAM1SKcHO
foiLcMC9AjHTqJzDG3xplSLPG9or2rMeq7Fzp9r0y7uJRMxgg51EbjfvYlH466A3ggvL2WQlDXjJqPW3
BJGWAWDNN9LK8f46bADKPxakpkx23S9O47rGSXfDhVSIZsDympxWX1UOzWwMZRHkofVeKqizgbKkGgUT
WykE9gRoRAOd9wfHZDYKa9i0LaPDiaUMvnU1gdBIqIoiVsdJ9swX47oxvMtOxtcS0zlD6llDkBuIiU5g
PwRCYmtkkb25c8iRJXwGFPjI1wJ34I1z1ENicPdosPiUe9ZC2jnXIKzEdv01x2ER7DNDF3yxOwOhxNxI
GqsmC92j25UQQFu9ZstOZ28AoCkuOYs0Uycm5u8jR1T39dMBwrko09rC65ENLnsxM8oebmyFCPiGJ1ED
5Xqc9qZ237f1OnETAoEOwqUSvrdPTv56U7hV91EMTyC812MLQpr2710E3VVpsUCUMNhIxdt7UXZ1UNFb
jgzpZLXnf4DHrv6B7kq6UI50KMxcw1HZE2GpODfUTzNFLaqdrvzxKe5eUWdcojBaRbD4fFdVYJTElYDH
NNVh6ofkoeWcs9CWGFmSBe0T4K8phFeygQg0prKMELNEy6qENzVtG9ZDcqj3a7L6ZLtvq50anWp7fAVu
fwz55g4iM2Z2fA0pnwHDL7tt67zTxGITvsnJsZSpeq1EQsZcwtkBV9liu7Rl7jiVT1IIRtchB8TsTiaA
wVHIQQ9RIOTiPQdKNqi1kC9iGlUqWK93gblNWlBw1eYB9Wk8FQogutwTf0caNMx8D4nPbANcmOOlskIy
zALh15OlTrWnhP95rf08AN2J026zDE2DUF9k0eCevYBQIDjqKNW4XCZnjbHoIcKzbY5VzPbMs3ZyMz8K
SucBmgPg6wrSK5ykbkapS5vuqvXc9GbjQJ8bPNzoxoWGyjbZvDs2OBrIqBmcQb2DLJ8v38McQ4mC4UsS
jf4PyfSCtpk274QZjvLCZbLiCBxQegk7jUU0NmTFJAcYCxd9xMWdlFkiszcltT2YzwuFFz7iA6aa4n5L
HpBNfUA01GcAi1aCMYhmooS4zSlYcSOZkovMz36U3Fd9WtqIEOJLi7HMgHQDgNMdK6DTzAdHQtxerxVF
HJnPrfNVG7270r3bp0bPnLNYLhObbAn6zqSAUeLtI2Y4KJDjBKCAh2vvYGbu0e2REYJWRj7MkGevsSSy
b1kCXLt6tKGWAb7lt5c0xyJgUIJW7pdtnwgT0ZCa24BecCAwNnG5U2EwQbcjZGsFxqNGfaemd3oFEhES
BaE0Fxms9UKTnMafu8wvZ2xymMrUduuRzOjDeX7oD5YsLC88V8CGMLxbbxIpt94KGykbr6e7L0R4oZl1
tKMgFwQ2p9Txdbp0Y293LcsJymKizqI0F2xEp7y4SmWOJqHZtsbz80wVV9nv41CvtfxuSoGZJ5cNB7pI
BgzNcQCeH3Jt0RaGGwboxxpuFbzilmkMFXxJm87tD4WNgu01nHfGCKeQcySEBZpVfJgi6sDFJ8uWnvKm
9mPLHurtWzEfKqUEa1iC71bXjw5wrvhv9BYW8JSUELHmDquftQyKdq0DZXhULMHGQLf4e95WIaoA14LL
bThz77kuhKULPTu2MNrBUKGorurhGugo5gs4ZUezSsUOe3KxYdrFMdGgny1GgTxMSMTp2RAZytKjv4kQ
Vx7XgzvpQLIbDjUPAkJv6lScwIRq1W3Ne0Rh0V6Bmn6U5uIuWnJjULmbaQiSODj3z0mAZvak0mSWIGwT
TX83HztcC4W7e1f6a1thmcc5K61Icehla2hBELWPpixTkyC4eEVmk9Rq0m0ZXtx0JX2ZQXqXDEyePyMe
J70sdSzXk72zusqhY4yuOMGgbYNHqxOToK6NxujR7e4dV3Wk5JnSUthym8scjcPeCiKDNY4cHfTMnDXJ
9zLVy01LtNKYpJ1s8FxVxigmxQNKEbIamxhx6yqwGC4aiISVOOUEjvNOdaUfXfUsE6jEwtwxyGxjlRK1
cLyxXttq4QWN6PehgHv7jXykzPjInbEysebFvvPOOMdunmJvcCNMSvjUda8fL6xfGo0FDrLg8XZipd6S
oPVdYtyIM1Dg40KbBA3JuumPYtXuJaHrZnjZmdnM5OVo4ZNxktfCVT0c6bnD4bAeyn4bYt1ZPaX6hQHh
JtvNYfpD0ONYlmqKuToQAMlz52Fh6bj45EbX89L5eLlSpWeyBlGotzriB0EPlclrGi5l2B5oPb1aB1ag
yyYuu44l0F1oOVYnBIZsxIsHVITxi9lEuVPFkWASOUNuVQXfM4n5hxWR9qtuKnIcPsvbJsv1U10XlKh3
KisqPhHU15xrCLr5gwFxPUKiNTLUBrkzgBOHXPVsHcLCiSD0YU56TRGfvEom43TWUKPPfl9Z54tgVQuT
jCRlaljAzeniQIcbbHZnn3f0HxbDG3DFYqWSxNrXabHhRsIOhhUHSPENyhGSTVO5t0XX5CdMspJPCd02
3Oqv32ccbUK4O3YH6LEvp0WO3kSl5n50odVkI9B0i0iq4UPFGMkM8bEQJbgJoOH71P10vtdevJFQE4g2
yhimiM53ZJRWgSZveHtENZc0Gjo0F9eioak9BnPpY1QxAFPC817svuhEstcU69bLCA4D1rO5R8AuIIBq
yQJcifFLvbpAEYTLKJqysZrU8EEl3TSdC13A9hZvk4NC8VGEDAxcNrKw313dZp17kZPO5HSd1y6sljAW
A9M1d6FMYV5SlBWf3WZNCUPS7qKNlda2YBsC6IUVB363f5RLGQOQHwbaijBSRCkrVoRxBHtc0Bd5J9V9
P5uMTXkpZOxRcCQvImGgcmGuxxLb5zTqfS2xu7v3Sf3IIesSt9tVzcEcdbEvLGVJkLk4mb3G30DbIbri
PZ09JkweDvMaQ3bxT2nfkz3Ilihkw9jqikkCCCz7E8h6z6KbhQErEW9VzJZzMCgJsyPjFam6iNwpe07S
hyOvNVw2t9wpzL5xM11DvVzQwDaWEytNRHzDBs4KwEtpI2IpjUyVZHSwA0UGqqkzoCgrJFlNOvPlXqcS
IcREouUIBmuttkrhPWJtSxOOgpsdvBR3kTOzAXNzSKxoaBAb0c5SDMUc6FIyGA8x5wg5DkUgjFUUodEt
OYaB2VHVePW9mxHeBTdKWLzJow4ZZvjnoBuVigXljKCNh137ckV2y3Yg3Xi4UzJEI2V5Rw9AfnMs7xUw
VHOFCg189maD3bmZAe7b4eaGZhyy4HVKjqCXmIH7vsEjRvbnfB0SQxxpuqBDJbHNCtW4vM643ZQQBVPP
a7oXSQIq9w2dHp0A7dtkocCZdQp9FKR9XdJAFIbVSHzIF1ZogeZlc0pXuNE0tagvD57xwDRFkAuoQyMu
YDdZasXrpSmEE5UjHVkyYsISn8QsfXurzDybX468aoRoks654jjmRY5zi1oB8TcMdC2c3sicNaqfeuhd
H1nPX7l4RpdqWMR7gGx9slXtG8S3KxpOi4qCD7yg3saD66nun4dzksQURoTUdXyrJR5UpHsfIlTF1aJa
MdXyQtQnrkl00TeghQd00rRFZsCnhi0qrCSKiBfB2EVrd9RPpbgwJGZHuIQecdBmNetc2ylSEClqVBPR
GOPPIxrnswEZjmnS0jxKW9VSM1QVxSPJnPFswCqT95SoKD6CP4xdX28WIUGiNaIKodXXJHEIsXBCxLsr
PwWPCtoplC6hhpKmW5dQo92iCTyY2KioKzO8XR6FKm6qonMKVEwQNtlYE9c97KMtEnp25VOdMP46SQXS
YsSVp7vm8LP87VYI8SOKcW3s2oedYFtt45rvDzoTF0GmS6wELQ9uo98HhjQAI1Dt91cgjJOwygNmLoZE
X5K2zQiNA163uMCl5xzaBqY4YTL0wgALg3IFdYSp0RFYLWdt6IxoGI1tnoxcjlUEPo5eGIc3mS3SmaLn
OdumfUQQ4Jgmgaa5anUVQsfBDrlAN5oaX7O0JO71SSPSWiHBsT9WIPy2J1Cace9ZZLRxblFPSXcvsuHh
hvnhWQltEDAe7MgvkFQ8lGVFa8jhzijoF9kLmMhMILSzYnfXnZPNP7TlAAwlLHK1RqlpHskJqb6CPpGP
QvOAhEMsM3zJ2KejZx0esxkjxA0ZufVvGAMN3vTUMplQaF4RiQkp9fzBXf3CMk01dWjOMMIEXTeKzIQe
EcffzjixWU9FpAyGp2rVl4ETRgqljOGw4UgK31r0ZIEGnH0xGz1FtbW1OcQM008JVujRqulCucEMmntr
"))
                                         :documentation
                                         "Compression algorithm encoding is appended to the Content-Encoding header.")
                                        (:id
                                         "SDKAppendedGzipAfterProvidedEncoding_restXml"
                                         :protocol "aws.protocols#restXml"
                                         :method "POST" :uri
                                         "/requestcompression/putcontentwithencoding"
                                         :headers
                                         (("Content-Encoding"
                                           . "custom, gzip"))
                                         :params
                                         (("encoding" . "custom")
                                          ("data"
                                           . "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
"))
                                         :documentation
                                         "Compression algorithm encoding is appended to the Content-Encoding header, and the
user-provided content-encoding is in the Content-Encoding header before the
request compression encoding from the HTTP binding.
")))

(smithy/sdk/operation:define-operation query-idempotency-token-auto-fill
                                       :shape-name
                                       "QueryIdempotencyTokenAutoFill" :input
                                       query-idempotency-token-auto-fill-input
                                       :output common-lisp:null :errors
                                       common-lisp:nil :method "POST" :uri
                                       "/QueryIdempotencyTokenAutoFill"
                                       :request-tests
                                       ((:id "QueryIdempotencyTokenAutoFill"
                                         :protocol "aws.protocols#restXml"
                                         :method "POST" :uri
                                         "/QueryIdempotencyTokenAutoFill"
                                         :query-params
                                         #("token=00000000-0000-4000-8000-000000000000")
                                         :body "" :documentation
                                         "Automatically adds idempotency token when not set"
                                         :applies-to "client")
                                        (:id
                                         "QueryIdempotencyTokenAutoFillIsSet"
                                         :protocol "aws.protocols#restXml"
                                         :method "POST" :uri
                                         "/QueryIdempotencyTokenAutoFill"
                                         :query-params
                                         #("token=00000000-0000-4000-8000-000000000000")
                                         :body "" :params
                                         (("token"
                                           . "00000000-0000-4000-8000-000000000000"))
                                         :documentation
                                         "Uses the given idempotency token as-is"
                                         :applies-to "client")))

(smithy/sdk/operation:define-operation query-params-as-string-list-map
                                       :shape-name "QueryParamsAsStringListMap"
                                       :input
                                       query-params-as-string-list-map-input
                                       :output common-lisp:null :errors
                                       common-lisp:nil :method "POST" :uri
                                       "/StringListMap" :request-tests
                                       ((:id "RestXmlQueryParamsStringListMap"
                                         :protocol "aws.protocols#restXml"
                                         :method "POST" :uri "/StringListMap"
                                         :query-params
                                         #("corge=named" "baz=bar" "baz=qux")
                                         :body "" :params
                                         (("qux" . "named")
                                          ("foo" ("baz" . #("bar" "qux"))))
                                         :documentation
                                         "Serialize query params from map of list strings"
                                         :applies-to "client")
                                        (:id
                                         "RestXmlServersQueryParamsStringListMap"
                                         :protocol "aws.protocols#restXml"
                                         :method "POST" :uri "/StringListMap"
                                         :query-params
                                         #("corge=named" "baz=bar" "baz=qux")
                                         :body "" :params
                                         (("qux" . "named")
                                          ("foo" ("corge" . #("named"))
                                           ("baz" . #("bar" "qux"))))
                                         :documentation
                                         "Servers put all query params in map"
                                         :applies-to "server")))

(smithy/sdk/operation:define-operation query-precedence :shape-name
                                       "QueryPrecedence" :input
                                       query-precedence-input :output
                                       common-lisp:null :errors common-lisp:nil
                                       :method "POST" :uri "/Precedence"
                                       :request-tests
                                       ((:id "RestXmlQueryPrecedence" :protocol
                                         "aws.protocols#restXml" :method "POST"
                                         :uri "/Precedence" :query-params
                                         #("bar=named" "qux=alsoFromMap") :body
                                         "" :params
                                         (("foo" . "named")
                                          ("baz" ("bar" . "fromMap")
                                           ("qux" . "alsoFromMap")))
                                         :documentation
                                         "Prefer named query parameters when serializing"
                                         :applies-to "client")
                                        (:id
                                         "RestXmlServersPutAllQueryParamsInMap"
                                         :protocol "aws.protocols#restXml"
                                         :method "POST" :uri "/Precedence"
                                         :query-params
                                         #("bar=named" "qux=fromMap") :body ""
                                         :params
                                         (("foo" . "named")
                                          ("baz" ("bar" . "named")
                                           ("qux" . "fromMap")))
                                         :documentation
                                         "Servers put all query params in map"
                                         :applies-to "server")))

(smithy/sdk/operation:define-operation recursive-shapes :shape-name
                                       "RecursiveShapes" :input
                                       recursive-shapes-request :output
                                       recursive-shapes-response :errors
                                       common-lisp:nil :method "PUT" :uri
                                       "/RecursiveShapes" :request-tests
                                       ((:id "RecursiveShapes" :protocol
                                         "aws.protocols#restXml" :method "PUT"
                                         :uri "/RecursiveShapes" :headers
                                         (("Content-Type" . "application/xml"))
                                         :body "<RecursiveShapesRequest>
    <nested>
        <foo>Foo1</foo>
        <nested>
            <bar>Bar1</bar>
            <recursiveMember>
                <foo>Foo2</foo>
                <nested>
                    <bar>Bar2</bar>
                </nested>
            </recursiveMember>
        </nested>
    </nested>
</RecursiveShapesRequest>
"
                                         :body-media-type "application/xml"
                                         :params
                                         (("nested" ("foo" . "Foo1")
                                           ("nested" ("bar" . "Bar1")
                                            ("recursiveMember" ("foo" . "Foo2")
                                             ("nested" ("bar" . "Bar2"))))))
                                         :documentation
                                         "Serializes recursive structures"))
                                       :response-tests
                                       ((:id "RecursiveShapes" :protocol
                                         "aws.protocols#restXml" :code 200
                                         :headers
                                         (("Content-Type" . "application/xml"))
                                         :body "<RecursiveShapesResponse>
    <nested>
        <foo>Foo1</foo>
        <nested>
            <bar>Bar1</bar>
            <recursiveMember>
                <foo>Foo2</foo>
                <nested>
                    <bar>Bar2</bar>
                </nested>
            </recursiveMember>
        </nested>
    </nested>
</RecursiveShapesResponse>
"
                                         :body-media-type "application/xml"
                                         :params
                                         (("nested" ("foo" . "Foo1")
                                           ("nested" ("bar" . "Bar1")
                                            ("recursiveMember" ("foo" . "Foo2")
                                             ("nested" ("bar" . "Bar2"))))))
                                         :documentation
                                         "Serializes recursive structures")))

(smithy/sdk/operation:define-operation simple-scalar-properties :shape-name
                                       "SimpleScalarProperties" :input
                                       simple-scalar-properties-request :output
                                       simple-scalar-properties-response
                                       :errors common-lisp:nil :method "PUT"
                                       :uri "/SimpleScalarProperties"
                                       :request-tests
                                       ((:id "SimpleScalarProperties" :protocol
                                         "aws.protocols#restXml" :method "PUT"
                                         :uri "/SimpleScalarProperties"
                                         :headers
                                         (("Content-Type" . "application/xml")
                                          ("X-Foo" . "Foo"))
                                         :body "<SimpleScalarPropertiesRequest>
    <stringValue>string</stringValue>
    <trueBooleanValue>true</trueBooleanValue>
    <falseBooleanValue>false</falseBooleanValue>
    <byteValue>1</byteValue>
    <shortValue>2</shortValue>
    <integerValue>3</integerValue>
    <longValue>4</longValue>
    <floatValue>5.5</floatValue>
    <DoubleDribble>6.5</DoubleDribble>
</SimpleScalarPropertiesRequest>
"
                                         :body-media-type "application/xml"
                                         :params
                                         (("foo" . "Foo")
                                          ("stringValue" . "string")
                                          ("trueBooleanValue" . common-lisp:t)
                                          ("falseBooleanValue")
                                          ("byteValue" . 1) ("shortValue" . 2)
                                          ("integerValue" . 3)
                                          ("longValue" . 4)
                                          ("floatValue" . 5.5d0)
                                          ("doubleValue" . 6.5d0))
                                         :documentation
                                         "Serializes simple scalar properties")
                                        (:id
                                         "SimpleScalarPropertiesWithEscapedCharacter"
                                         :protocol "aws.protocols#restXml"
                                         :method "PUT" :uri
                                         "/SimpleScalarProperties" :headers
                                         (("Content-Type" . "application/xml")
                                          ("X-Foo" . "Foo"))
                                         :body "<SimpleScalarPropertiesRequest>
    <stringValue>&lt;string&gt;</stringValue>
</SimpleScalarPropertiesRequest>
"
                                         :body-media-type "application/xml"
                                         :params
                                         (("foo" . "Foo")
                                          ("stringValue" . "<string>"))
                                         :documentation
                                         "Serializes string with escaping")
                                        (:id
                                         "SimpleScalarPropertiesWithWhiteSpace"
                                         :protocol "aws.protocols#restXml"
                                         :method "PUT" :uri
                                         "/SimpleScalarProperties" :headers
                                         (("Content-Type" . "application/xml")
                                          ("X-Foo" . "Foo"))
                                         :body "<SimpleScalarPropertiesRequest>
    <stringValue>  string with white    space  </stringValue>
</SimpleScalarPropertiesRequest>
"
                                         :body-media-type "application/xml"
                                         :params
                                         (("foo" . "Foo")
                                          ("stringValue"
                                           . "  string with white    space  "))
                                         :documentation
                                         "Serializes string containing white space")
                                        (:id
                                         "SimpleScalarPropertiesPureWhiteSpace"
                                         :protocol "aws.protocols#restXml"
                                         :method "PUT" :uri
                                         "/SimpleScalarProperties" :headers
                                         (("Content-Type" . "application/xml")
                                          ("X-Foo" . "Foo"))
                                         :body "<SimpleScalarPropertiesRequest>
    <stringValue>   </stringValue>
</SimpleScalarPropertiesRequest>
"
                                         :body-media-type "application/xml"
                                         :params
                                         (("foo" . "Foo")
                                          ("stringValue" . "   "))
                                         :documentation
                                         "Serializes string containing exclusively whitespace")
                                        (:id "RestXmlSupportsNaNFloatInputs"
                                         :protocol "aws.protocols#restXml"
                                         :method "PUT" :uri
                                         "/SimpleScalarProperties" :headers
                                         (("Content-Type" . "application/xml"))
                                         :body "<SimpleScalarPropertiesRequest>
    <floatValue>NaN</floatValue>
    <DoubleDribble>NaN</DoubleDribble>
</SimpleScalarPropertiesRequest>
"
                                         :body-media-type "application/xml"
                                         :params
                                         (("floatValue" . "NaN")
                                          ("doubleValue" . "NaN"))
                                         :documentation
                                         "Supports handling NaN float values.")
                                        (:id
                                         "RestXmlSupportsInfinityFloatInputs"
                                         :protocol "aws.protocols#restXml"
                                         :method "PUT" :uri
                                         "/SimpleScalarProperties" :headers
                                         (("Content-Type" . "application/xml"))
                                         :body "<SimpleScalarPropertiesRequest>
    <floatValue>Infinity</floatValue>
    <DoubleDribble>Infinity</DoubleDribble>
</SimpleScalarPropertiesRequest>
"
                                         :body-media-type "application/xml"
                                         :params
                                         (("floatValue" . "Infinity")
                                          ("doubleValue" . "Infinity"))
                                         :documentation
                                         "Supports handling Infinity float values.")
                                        (:id
                                         "RestXmlSupportsNegativeInfinityFloatInputs"
                                         :protocol "aws.protocols#restXml"
                                         :method "PUT" :uri
                                         "/SimpleScalarProperties" :headers
                                         (("Content-Type" . "application/xml"))
                                         :body "<SimpleScalarPropertiesRequest>
    <floatValue>-Infinity</floatValue>
    <DoubleDribble>-Infinity</DoubleDribble>
</SimpleScalarPropertiesRequest>
"
                                         :body-media-type "application/xml"
                                         :params
                                         (("floatValue" . "-Infinity")
                                          ("doubleValue" . "-Infinity"))
                                         :documentation
                                         "Supports handling -Infinity float values."))
                                       :response-tests
                                       ((:id "SimpleScalarProperties" :protocol
                                         "aws.protocols#restXml" :code 200
                                         :headers
                                         (("Content-Type" . "application/xml")
                                          ("X-Foo" . "Foo"))
                                         :body "<SimpleScalarPropertiesResponse>
    <stringValue>string</stringValue>
    <trueBooleanValue>true</trueBooleanValue>
    <falseBooleanValue>false</falseBooleanValue>
    <byteValue>1</byteValue>
    <shortValue>2</shortValue>
    <integerValue>3</integerValue>
    <longValue>4</longValue>
    <floatValue>5.5</floatValue>
    <DoubleDribble>6.5</DoubleDribble>
</SimpleScalarPropertiesResponse>
"
                                         :body-media-type "application/xml"
                                         :params
                                         (("foo" . "Foo")
                                          ("stringValue" . "string")
                                          ("trueBooleanValue" . common-lisp:t)
                                          ("falseBooleanValue")
                                          ("byteValue" . 1) ("shortValue" . 2)
                                          ("integerValue" . 3)
                                          ("longValue" . 4)
                                          ("floatValue" . 5.5d0)
                                          ("doubleValue" . 6.5d0))
                                         :documentation
                                         "Serializes simple scalar properties")
                                        (:id
                                         "SimpleScalarPropertiesComplexEscapes"
                                         :protocol "aws.protocols#restXml"
                                         :code 200 :headers
                                         (("Content-Type" . "application/xml")
                                          ("X-Foo" . "Foo"))
                                         :body "<SimpleScalarPropertiesResponse>
    <stringValue>escaped data: &amp;lt;&#xD;&#10;</stringValue>
</SimpleScalarPropertiesResponse>
"
                                         :body-media-type "application/xml"
                                         :params
                                         (("foo" . "Foo")
                                          ("stringValue" . "escaped data: &lt;
"))
                                         :documentation
                                         "Serializes string with escaping.

This validates the three escape types: literal, decimal and hexadecimal. It also validates that unescaping properly
handles the case where unescaping an & produces a newly formed escape sequence (this should not be re-unescaped).

Servers may produce different output, this test is designed different unescapes clients must handle
"
                                         :applies-to "client")
                                        (:id
                                         "SimpleScalarPropertiesWithEscapedCharacter"
                                         :protocol "aws.protocols#restXml"
                                         :code 200 :headers
                                         (("Content-Type" . "application/xml")
                                          ("X-Foo" . "Foo"))
                                         :body "<SimpleScalarPropertiesResponse>
    <stringValue>&lt;string&gt;</stringValue>
</SimpleScalarPropertiesResponse>
"
                                         :body-media-type "application/xml"
                                         :params
                                         (("foo" . "Foo")
                                          ("stringValue" . "<string>"))
                                         :documentation
                                         "Serializes string with escaping")
                                        (:id
                                         "SimpleScalarPropertiesWithXMLPreamble"
                                         :protocol "aws.protocols#restXml"
                                         :code 200 :headers
                                         (("Content-Type" . "application/xml")
                                          ("X-Foo" . "Foo"))
                                         :body
                                         "<?xml version = \"1.0\" encoding = \"UTF-8\"?>
<SimpleScalarPropertiesResponse>
    <![CDATA[characters representing CDATA]]>
    <stringValue>string</stringValue>
    <!--xml comment-->
</SimpleScalarPropertiesResponse>
"
                                         :body-media-type "application/xml"
                                         :params
                                         (("foo" . "Foo")
                                          ("stringValue" . "string"))
                                         :documentation
                                         "Serializes simple scalar properties with xml preamble, comments and CDATA")
                                        (:id
                                         "SimpleScalarPropertiesWithWhiteSpace"
                                         :protocol "aws.protocols#restXml"
                                         :code 200 :headers
                                         (("Content-Type" . "application/xml")
                                          ("X-Foo" . "Foo"))
                                         :body
                                         "<?xml version = \"1.0\" encoding = \"UTF-8\"?>
<SimpleScalarPropertiesResponse>
    <stringValue> string with white    space </stringValue>
</SimpleScalarPropertiesResponse>
"
                                         :body-media-type "application/xml"
                                         :params
                                         (("foo" . "Foo")
                                          ("stringValue"
                                           . " string with white    space "))
                                         :documentation
                                         "Serializes string containing white space")
                                        (:id
                                         "SimpleScalarPropertiesPureWhiteSpace"
                                         :protocol "aws.protocols#restXml"
                                         :code 200 :headers
                                         (("Content-Type" . "application/xml")
                                          ("X-Foo" . "Foo"))
                                         :body
                                         "<?xml version = \"1.0\" encoding = \"UTF-8\"?>
<SimpleScalarPropertiesResponse>
    <stringValue>  </stringValue>
</SimpleScalarPropertiesResponse>
"
                                         :body-media-type "application/xml"
                                         :params
                                         (("foo" . "Foo")
                                          ("stringValue" . "  "))
                                         :documentation
                                         "Serializes string containing white space")
                                        (:id "RestXmlSupportsNaNFloatOutputs"
                                         :protocol "aws.protocols#restXml"
                                         :code 200 :headers
                                         (("Content-Type" . "application/xml"))
                                         :body "<SimpleScalarPropertiesResponse>
    <floatValue>NaN</floatValue>
    <DoubleDribble>NaN</DoubleDribble>
</SimpleScalarPropertiesResponse>
"
                                         :body-media-type "application/xml"
                                         :params
                                         (("floatValue" . "NaN")
                                          ("doubleValue" . "NaN"))
                                         :documentation
                                         "Supports handling NaN float values.")
                                        (:id
                                         "RestXmlSupportsInfinityFloatOutputs"
                                         :protocol "aws.protocols#restXml"
                                         :code 200 :headers
                                         (("Content-Type" . "application/xml"))
                                         :body "<SimpleScalarPropertiesResponse>
    <floatValue>Infinity</floatValue>
    <DoubleDribble>Infinity</DoubleDribble>
</SimpleScalarPropertiesResponse>
"
                                         :body-media-type "application/xml"
                                         :params
                                         (("floatValue" . "Infinity")
                                          ("doubleValue" . "Infinity"))
                                         :documentation
                                         "Supports handling Infinity float values.")
                                        (:id
                                         "RestXmlSupportsNegativeInfinityFloatOutputs"
                                         :protocol "aws.protocols#restXml"
                                         :code 200 :headers
                                         (("Content-Type" . "application/xml"))
                                         :body "<SimpleScalarPropertiesResponse>
    <floatValue>-Infinity</floatValue>
    <DoubleDribble>-Infinity</DoubleDribble>
</SimpleScalarPropertiesResponse>
"
                                         :body-media-type "application/xml"
                                         :params
                                         (("floatValue" . "-Infinity")
                                          ("doubleValue" . "-Infinity"))
                                         :documentation
                                         "Supports handling -Infinity float values.")))

(smithy/sdk/operation:define-operation timestamp-format-headers :shape-name
                                       "TimestampFormatHeaders" :input
                                       timestamp-format-headers-io :output
                                       timestamp-format-headers-io :errors
                                       common-lisp:nil :method "POST" :uri
                                       "/TimestampFormatHeaders" :request-tests
                                       ((:id "TimestampFormatHeaders" :protocol
                                         "aws.protocols#restXml" :method "POST"
                                         :uri "/TimestampFormatHeaders"
                                         :headers
                                         (("X-memberEpochSeconds"
                                           . "1576540098")
                                          ("X-memberHttpDate"
                                           . "Mon, 16 Dec 2019 23:48:18 GMT")
                                          ("X-memberDateTime"
                                           . "2019-12-16T23:48:18Z")
                                          ("X-defaultFormat"
                                           . "Mon, 16 Dec 2019 23:48:18 GMT")
                                          ("X-targetEpochSeconds"
                                           . "1576540098")
                                          ("X-targetHttpDate"
                                           . "Mon, 16 Dec 2019 23:48:18 GMT")
                                          ("X-targetDateTime"
                                           . "2019-12-16T23:48:18Z"))
                                         :body "" :params
                                         (("memberEpochSeconds" . 1576540098)
                                          ("memberHttpDate" . 1576540098)
                                          ("memberDateTime" . 1576540098)
                                          ("defaultFormat" . 1576540098)
                                          ("targetEpochSeconds" . 1576540098)
                                          ("targetHttpDate" . 1576540098)
                                          ("targetDateTime" . 1576540098))
                                         :documentation
                                         "Tests how timestamp request headers are serialized"))
                                       :response-tests
                                       ((:id "TimestampFormatHeaders" :protocol
                                         "aws.protocols#restXml" :code 200
                                         :headers
                                         (("X-memberEpochSeconds"
                                           . "1576540098")
                                          ("X-memberHttpDate"
                                           . "Mon, 16 Dec 2019 23:48:18 GMT")
                                          ("X-memberDateTime"
                                           . "2019-12-16T23:48:18Z")
                                          ("X-defaultFormat"
                                           . "Mon, 16 Dec 2019 23:48:18 GMT")
                                          ("X-targetEpochSeconds"
                                           . "1576540098")
                                          ("X-targetHttpDate"
                                           . "Mon, 16 Dec 2019 23:48:18 GMT")
                                          ("X-targetDateTime"
                                           . "2019-12-16T23:48:18Z"))
                                         :body "" :params
                                         (("memberEpochSeconds" . 1576540098)
                                          ("memberHttpDate" . 1576540098)
                                          ("memberDateTime" . 1576540098)
                                          ("defaultFormat" . 1576540098)
                                          ("targetEpochSeconds" . 1576540098)
                                          ("targetHttpDate" . 1576540098)
                                          ("targetDateTime" . 1576540098))
                                         :documentation
                                         "Tests how timestamp response headers are serialized")))

(smithy/sdk/operation:define-operation xml-attributes :shape-name
                                       "XmlAttributes" :input
                                       xml-attributes-request :output
                                       xml-attributes-response :errors
                                       common-lisp:nil :method "PUT" :uri
                                       "/XmlAttributes" :request-tests
                                       ((:id "XmlAttributes" :protocol
                                         "aws.protocols#restXml" :method "PUT"
                                         :uri "/XmlAttributes" :headers
                                         (("Content-Type" . "application/xml"))
                                         :body
                                         "<XmlAttributesRequest test=\"test\">
    <foo>hi</foo>
</XmlAttributesRequest>
"
                                         :body-media-type "application/xml"
                                         :params
                                         (("foo" . "hi") ("attr" . "test"))
                                         :documentation
                                         "Serializes XML attributes on the synthesized document")
                                        (:id "XmlAttributesWithEscaping"
                                         :protocol "aws.protocols#restXml"
                                         :method "PUT" :uri "/XmlAttributes"
                                         :headers
                                         (("Content-Type" . "application/xml"))
                                         :body
                                         "<XmlAttributesRequest test=\"&lt;test&amp;mock&gt;\">
    <foo>hi</foo>
</XmlAttributesRequest>
"
                                         :body-media-type "application/xml"
                                         :params
                                         (("foo" . "hi")
                                          ("attr" . "<test&mock>"))
                                         :documentation
                                         "Serializes XML attributes with escaped characters on the synthesized document"))
                                       :response-tests
                                       ((:id "XmlAttributes" :protocol
                                         "aws.protocols#restXml" :code 200
                                         :headers
                                         (("Content-Type" . "application/xml"))
                                         :body
                                         "<XmlAttributesResponse test=\"test\">
    <foo>hi</foo>
</XmlAttributesResponse>
"
                                         :body-media-type "application/xml"
                                         :params
                                         (("foo" . "hi") ("attr" . "test"))
                                         :documentation
                                         "Serializes simple scalar properties")))

(smithy/sdk/operation:define-operation xml-attributes-on-payload :shape-name
                                       "XmlAttributesOnPayload" :input
                                       xml-attributes-on-payload-request
                                       :output
                                       xml-attributes-on-payload-response
                                       :errors common-lisp:nil :method "PUT"
                                       :uri "/XmlAttributesOnPayload"
                                       :request-tests
                                       ((:id "XmlAttributesOnPayload" :protocol
                                         "aws.protocols#restXml" :method "PUT"
                                         :uri "/XmlAttributesOnPayload"
                                         :headers
                                         (("Content-Type" . "application/xml"))
                                         :body
                                         "<XmlAttributesPayloadRequest test=\"test\">
    <foo>hi</foo>
</XmlAttributesPayloadRequest>
"
                                         :body-media-type "application/xml"
                                         :params
                                         (("payload" ("foo" . "hi")
                                           ("attr" . "test")))
                                         :documentation
                                         "Serializes XML attributes on the synthesized document"))
                                       :response-tests
                                       ((:id "XmlAttributesOnPayload" :protocol
                                         "aws.protocols#restXml" :code 200
                                         :headers
                                         (("Content-Type" . "application/xml"))
                                         :body
                                         "<XmlAttributesPayloadResponse test=\"test\">
    <foo>hi</foo>
</XmlAttributesPayloadResponse>
"
                                         :body-media-type "application/xml"
                                         :params
                                         (("payload" ("foo" . "hi")
                                           ("attr" . "test")))
                                         :documentation
                                         "Serializes simple scalar properties")))

(smithy/sdk/operation:define-operation xml-blobs :shape-name "XmlBlobs" :input
                                       xml-blobs-request :output
                                       xml-blobs-response :errors
                                       common-lisp:nil :method "POST" :uri
                                       "/XmlBlobs" :request-tests
                                       ((:id "XmlBlobs" :protocol
                                         "aws.protocols#restXml" :method "POST"
                                         :uri "/XmlBlobs" :headers
                                         (("Content-Type" . "application/xml"))
                                         :body "<XmlBlobsRequest>
    <data>dmFsdWU=</data>
</XmlBlobsRequest>
"
                                         :body-media-type "application/xml"
                                         :params (("data" . "value"))
                                         :documentation
                                         "Blobs are base64 encoded"))
                                       :response-tests
                                       ((:id "XmlBlobs" :protocol
                                         "aws.protocols#restXml" :code 200
                                         :headers
                                         (("Content-Type" . "application/xml"))
                                         :body "<XmlBlobsResponse>
    <data>dmFsdWU=</data>
</XmlBlobsResponse>
"
                                         :body-media-type "application/xml"
                                         :params (("data" . "value"))
                                         :documentation
                                         "Blobs are base64 encoded")))

(smithy/sdk/operation:define-operation xml-empty-blobs :shape-name
                                       "XmlEmptyBlobs" :input
                                       xml-empty-blobs-request :output
                                       xml-empty-blobs-response :errors
                                       common-lisp:nil :method "POST" :uri
                                       "/XmlEmptyBlobs" :response-tests
                                       ((:id "XmlEmptyBlobs" :protocol
                                         "aws.protocols#restXml" :code 200
                                         :headers
                                         (("Content-Type" . "application/xml"))
                                         :body "<XmlEmptyBlobsResponse>
    <data></data>
</XmlEmptyBlobsResponse>
"
                                         :body-media-type "application/xml"
                                         :params (("data" . "")) :documentation
                                         "Empty blobs are deserialized as empty string"
                                         :applies-to "client")
                                        (:id "XmlEmptySelfClosedBlobs"
                                         :protocol "aws.protocols#restXml"
                                         :code 200 :headers
                                         (("Content-Type" . "application/xml"))
                                         :body "<XmlEmptyBlobsResponse>
    <data/>
</XmlEmptyBlobsResponse>
"
                                         :body-media-type "application/xml"
                                         :params (("data" . "")) :documentation
                                         "Empty self closed blobs are deserialized as empty string"
                                         :applies-to "client")))

(smithy/sdk/operation:define-operation xml-empty-lists :shape-name
                                       "XmlEmptyLists" :input
                                       xml-empty-lists-request :output
                                       xml-empty-lists-response :errors
                                       common-lisp:nil :method "PUT" :uri
                                       "/XmlEmptyLists" :request-tests
                                       ((:id "XmlEmptyLists" :protocol
                                         "aws.protocols#restXml" :method "PUT"
                                         :uri "/XmlEmptyLists" :headers
                                         (("Content-Type" . "application/xml"))
                                         :body "<XmlEmptyListsRequest>
        <stringList></stringList>
        <stringSet></stringSet>
</XmlEmptyListsRequest>
"
                                         :body-media-type "application/xml"
                                         :params
                                         (("stringList" . #())
                                          ("stringSet" . #()))
                                         :documentation
                                         "Serializes Empty XML lists"
                                         :applies-to "client"))
                                       :response-tests
                                       ((:id "XmlEmptyLists" :protocol
                                         "aws.protocols#restXml" :code 200
                                         :headers
                                         (("Content-Type" . "application/xml"))
                                         :body "<XmlEmptyListsResponse>
        <stringList/>
        <stringSet></stringSet>
</XmlEmptyListsResponse>
"
                                         :body-media-type "application/xml"
                                         :params
                                         (("stringList" . #())
                                          ("stringSet" . #()))
                                         :documentation
                                         "Deserializes Empty XML lists"
                                         :applies-to "client")))

(smithy/sdk/operation:define-operation xml-empty-maps :shape-name
                                       "XmlEmptyMaps" :input
                                       xml-empty-maps-request :output
                                       xml-empty-maps-response :errors
                                       common-lisp:nil :method "POST" :uri
                                       "/XmlEmptyMaps" :request-tests
                                       ((:id "XmlEmptyMaps" :protocol
                                         "aws.protocols#restXml" :method "POST"
                                         :uri "/XmlEmptyMaps" :headers
                                         (("Content-Type" . "application/xml"))
                                         :body "<XmlEmptyMapsRequest>
    <myMap></myMap>
</XmlEmptyMapsRequest>
"
                                         :body-media-type "application/xml"
                                         :params (("myMap")) :documentation
                                         "Serializes Empty XML maps"
                                         :applies-to "client"))
                                       :response-tests
                                       ((:id "XmlEmptyMaps" :protocol
                                         "aws.protocols#restXml" :code 200
                                         :headers
                                         (("Content-Type" . "application/xml"))
                                         :body "<XmlEmptyMapsResponse>
    <myMap></myMap>
</XmlEmptyMapsResponse>
"
                                         :body-media-type "application/xml"
                                         :params (("myMap")) :documentation
                                         "Deserializes Empty XML maps"
                                         :applies-to "client")
                                        (:id "XmlEmptySelfClosedMaps" :protocol
                                         "aws.protocols#restXml" :code 200
                                         :headers
                                         (("Content-Type" . "application/xml"))
                                         :body "<XmlEmptyMapsResponse>
    <myMap/>
</XmlEmptyMapsResponse>
"
                                         :body-media-type "application/xml"
                                         :params (("myMap")) :documentation
                                         "Deserializes Empty Self-closed XML maps"
                                         :applies-to "client")))

(smithy/sdk/operation:define-operation xml-empty-strings :shape-name
                                       "XmlEmptyStrings" :input
                                       xml-empty-strings-request :output
                                       xml-empty-strings-response :errors
                                       common-lisp:nil :method "PUT" :uri
                                       "/XmlEmptyStrings" :request-tests
                                       ((:id "XmlEmptyStrings" :protocol
                                         "aws.protocols#restXml" :method "PUT"
                                         :uri "/XmlEmptyStrings" :headers
                                         (("Content-Type" . "application/xml"))
                                         :body "<XmlEmptyStringsRequest>
    <emptyString></emptyString>
</XmlEmptyStringsRequest>
"
                                         :body-media-type "application/xml"
                                         :params (("emptyString" . ""))
                                         :documentation
                                         "Serializes xml empty strings"
                                         :applies-to "client"))
                                       :response-tests
                                       ((:id "XmlEmptyStrings" :protocol
                                         "aws.protocols#restXml" :code 200
                                         :headers
                                         (("Content-Type" . "application/xml"))
                                         :body "<XmlEmptyStringsResponse>
    <emptyString></emptyString>
</XmlEmptyStringsResponse>
"
                                         :body-media-type "application/xml"
                                         :params (("emptyString" . ""))
                                         :documentation
                                         "Deserializes xml empty strings"
                                         :applies-to "client")
                                        (:id "XmlEmptySelfClosedStrings"
                                         :protocol "aws.protocols#restXml"
                                         :code 200 :headers
                                         (("Content-Type" . "application/xml"))
                                         :body "<XmlEmptyStringsResponse>
    <emptyString/>
</XmlEmptyStringsResponse>
"
                                         :body-media-type "application/xml"
                                         :params (("emptyString" . ""))
                                         :documentation
                                         "Empty self closed string are deserialized as empty string"
                                         :applies-to "client")))

(smithy/sdk/operation:define-operation xml-enums :shape-name "XmlEnums" :input
                                       xml-enums-request :output
                                       xml-enums-response :errors
                                       common-lisp:nil :method "PUT" :uri
                                       "/XmlEnums" :request-tests
                                       ((:id "XmlEnums" :protocol
                                         "aws.protocols#restXml" :method "PUT"
                                         :uri "/XmlEnums" :headers
                                         (("Content-Type" . "application/xml"))
                                         :body "<XmlEnumsRequest>
    <fooEnum1>Foo</fooEnum1>
    <fooEnum2>0</fooEnum2>
    <fooEnum3>1</fooEnum3>
    <fooEnumList>
        <member>Foo</member>
        <member>0</member>
    </fooEnumList>
    <fooEnumSet>
        <member>Foo</member>
        <member>0</member>
    </fooEnumSet>
    <fooEnumMap>
        <entry>
            <key>hi</key>
            <value>Foo</value>
        </entry>
        <entry>
            <key>zero</key>
            <value>0</value>
        </entry>
    </fooEnumMap>
</XmlEnumsRequest>
"
                                         :body-media-type "application/xml"
                                         :params
                                         (("fooEnum1" . "Foo")
                                          ("fooEnum2" . "0") ("fooEnum3" . "1")
                                          ("fooEnumList" . #("Foo" "0"))
                                          ("fooEnumSet" . #("Foo" "0"))
                                          ("fooEnumMap" ("hi" . "Foo")
                                           ("zero" . "0")))
                                         :documentation
                                         "Serializes simple scalar properties"))
                                       :response-tests
                                       ((:id "XmlEnums" :protocol
                                         "aws.protocols#restXml" :code 200
                                         :headers
                                         (("Content-Type" . "application/xml"))
                                         :body "<XmlEnumsResponse>
    <fooEnum1>Foo</fooEnum1>
    <fooEnum2>0</fooEnum2>
    <fooEnum3>1</fooEnum3>
    <fooEnumList>
        <member>Foo</member>
        <member>0</member>
    </fooEnumList>
    <fooEnumSet>
        <member>Foo</member>
        <member>0</member>
    </fooEnumSet>
    <fooEnumMap>
        <entry>
            <key>hi</key>
            <value>Foo</value>
        </entry>
        <entry>
            <key>zero</key>
            <value>0</value>
        </entry>
    </fooEnumMap>
</XmlEnumsResponse>
"
                                         :body-media-type "application/xml"
                                         :params
                                         (("fooEnum1" . "Foo")
                                          ("fooEnum2" . "0") ("fooEnum3" . "1")
                                          ("fooEnumList" . #("Foo" "0"))
                                          ("fooEnumSet" . #("Foo" "0"))
                                          ("fooEnumMap" ("hi" . "Foo")
                                           ("zero" . "0")))
                                         :documentation
                                         "Serializes simple scalar properties")))

(smithy/sdk/operation:define-operation xml-int-enums :shape-name "XmlIntEnums"
                                       :input xml-int-enums-request :output
                                       xml-int-enums-response :errors
                                       common-lisp:nil :method "PUT" :uri
                                       "/XmlIntEnums" :request-tests
                                       ((:id "XmlIntEnums" :protocol
                                         "aws.protocols#restXml" :method "PUT"
                                         :uri "/XmlIntEnums" :headers
                                         (("Content-Type" . "application/xml"))
                                         :body "<XmlIntEnumsRequest>
    <intEnum1>1</intEnum1>
    <intEnum2>2</intEnum2>
    <intEnum3>3</intEnum3>
    <intEnumList>
        <member>1</member>
        <member>2</member>
    </intEnumList>
    <intEnumSet>
        <member>1</member>
        <member>2</member>
    </intEnumSet>
    <intEnumMap>
        <entry>
            <key>a</key>
            <value>1</value>
        </entry>
        <entry>
            <key>b</key>
            <value>2</value>
        </entry>
    </intEnumMap>
</XmlIntEnumsRequest>
"
                                         :body-media-type "application/xml"
                                         :params
                                         (("intEnum1" . 1) ("intEnum2" . 2)
                                          ("intEnum3" . 3)
                                          ("intEnumList" . #(1 2))
                                          ("intEnumSet" . #(1 2))
                                          ("intEnumMap" ("a" . 1) ("b" . 2)))
                                         :documentation
                                         "Serializes simple scalar properties"))
                                       :response-tests
                                       ((:id "XmlIntEnums" :protocol
                                         "aws.protocols#restXml" :code 200
                                         :headers
                                         (("Content-Type" . "application/xml"))
                                         :body "<XmlIntEnumsResponse>
    <intEnum1>1</intEnum1>
    <intEnum2>2</intEnum2>
    <intEnum3>3</intEnum3>
    <intEnumList>
        <member>1</member>
        <member>2</member>
    </intEnumList>
    <intEnumSet>
        <member>1</member>
        <member>2</member>
    </intEnumSet>
    <intEnumMap>
        <entry>
            <key>a</key>
            <value>1</value>
        </entry>
        <entry>
            <key>b</key>
            <value>2</value>
        </entry>
    </intEnumMap>
</XmlIntEnumsResponse>
"
                                         :body-media-type "application/xml"
                                         :params
                                         (("intEnum1" . 1) ("intEnum2" . 2)
                                          ("intEnum3" . 3)
                                          ("intEnumList" . #(1 2))
                                          ("intEnumSet" . #(1 2))
                                          ("intEnumMap" ("a" . 1) ("b" . 2)))
                                         :documentation
                                         "Serializes simple scalar properties")))

(smithy/sdk/operation:define-operation xml-lists :shape-name "XmlLists" :input
                                       xml-lists-request :output
                                       xml-lists-response :errors
                                       common-lisp:nil :method "PUT" :uri
                                       "/XmlLists" :request-tests
                                       ((:id "XmlLists" :protocol
                                         "aws.protocols#restXml" :method "PUT"
                                         :uri "/XmlLists" :headers
                                         (("Content-Type" . "application/xml"))
                                         :body "<XmlListsRequest>
    <stringList>
        <member>foo</member>
        <member>bar</member>
    </stringList>
    <stringSet>
        <member>foo</member>
        <member>bar</member>
    </stringSet>
    <integerList>
        <member>1</member>
        <member>2</member>
    </integerList>
    <booleanList>
        <member>true</member>
        <member>false</member>
    </booleanList>
    <timestampList>
        <member>2014-04-29T18:30:38Z</member>
        <member>2014-04-29T18:30:38Z</member>
    </timestampList>
    <enumList>
        <member>Foo</member>
        <member>0</member>
    </enumList>
    <intEnumList>
        <member>1</member>
        <member>2</member>
    </intEnumList>
    <nestedStringList>
        <member>
            <member>foo</member>
            <member>bar</member>
        </member>
        <member>
            <member>baz</member>
            <member>qux</member>
        </member>
    </nestedStringList>
    <renamed>
        <item>foo</item>
        <item>bar</item>
    </renamed>
    <flattenedList>hi</flattenedList>
    <flattenedList>bye</flattenedList>
    <customName>yep</customName>
    <customName>nope</customName>
    <myStructureList>
        <item>
            <value>1</value>
            <other>2</other>
        </item>
        <item>
            <value>3</value>
            <other>4</other>
        </item>
    </myStructureList>
    <flattenedStructureList>
        <value>5</value>
        <other>6</other>
    </flattenedStructureList>
    <flattenedStructureList>
        <value>7</value>
        <other>8</other>
    </flattenedStructureList>
</XmlListsRequest>
"
                                         :body-media-type "application/xml"
                                         :params
                                         (("stringList" . #("foo" "bar"))
                                          ("stringSet" . #("foo" "bar"))
                                          ("integerList" . #(1 2))
                                          ("booleanList"
                                           . #(common-lisp:t common-lisp:nil))
                                          ("timestampList"
                                           . #(1398796238 1398796238))
                                          ("enumList" . #("Foo" "0"))
                                          ("intEnumList" . #(1 2))
                                          ("nestedStringList"
                                           . #(#("foo" "bar") #("baz" "qux")))
                                          ("renamedListMembers"
                                           . #("foo" "bar"))
                                          ("flattenedList" . #("hi" "bye"))
                                          ("flattenedList2" . #("yep" "nope"))
                                          ("structureList"
                                           . #((("a" . "1") ("b" . "2"))
                                               (("a" . "3") ("b" . "4"))))
                                          ("flattenedStructureList"
                                           . #((("a" . "5") ("b" . "6"))
                                               (("a" . "7") ("b" . "8")))))
                                         :documentation
                                         "Tests for XML list serialization"))
                                       :response-tests
                                       ((:id "XmlLists" :protocol
                                         "aws.protocols#restXml" :code 200
                                         :headers
                                         (("Content-Type" . "application/xml"))
                                         :body "<XmlListsResponse>
    <stringList>
        <member>foo</member>
        <member>bar</member>
    </stringList>
    <stringSet>
        <member>foo</member>
        <member>bar</member>
    </stringSet>
    <integerList>
        <member>1</member>
        <member>2</member>
    </integerList>
    <booleanList>
        <member>true</member>
        <member>false</member>
    </booleanList>
    <timestampList>
        <member>2014-04-29T18:30:38Z</member>
        <member>2014-04-29T18:30:38Z</member>
    </timestampList>
    <enumList>
        <member>Foo</member>
        <member>0</member>
    </enumList>
    <intEnumList>
        <member>1</member>
        <member>2</member>
    </intEnumList>
    <nestedStringList>
        <member>
            <member>foo</member>
            <member>bar</member>
        </member>
        <member>
            <member>baz</member>
            <member>qux</member>
        </member>
    </nestedStringList>
    <renamed>
        <item>foo</item>
        <item>bar</item>
    </renamed>
    <flattenedList>hi</flattenedList>
    <flattenedList>bye</flattenedList>
    <customName>yep</customName>
    <customName>nope</customName>
    <flattenedListWithMemberNamespace xmlns=\"https://xml-member.example.com\">a</flattenedListWithMemberNamespace>
    <flattenedListWithMemberNamespace xmlns=\"https://xml-member.example.com\">b</flattenedListWithMemberNamespace>
    <flattenedListWithNamespace>a</flattenedListWithNamespace>
    <flattenedListWithNamespace>b</flattenedListWithNamespace>
    <myStructureList>
        <item>
            <value>1</value>
            <other>2</other>
        </item>
        <item>
            <value>3</value>
            <other>4</other>
        </item>
    </myStructureList>
    <flattenedStructureList>
        <value>5</value>
        <other>6</other>
    </flattenedStructureList>
    <flattenedStructureList>
        <value>7</value>
        <other>8</other>
    </flattenedStructureList>
</XmlListsResponse>
"
                                         :body-media-type "application/xml"
                                         :params
                                         (("stringList" . #("foo" "bar"))
                                          ("stringSet" . #("foo" "bar"))
                                          ("integerList" . #(1 2))
                                          ("booleanList"
                                           . #(common-lisp:t common-lisp:nil))
                                          ("timestampList"
                                           . #(1398796238 1398796238))
                                          ("enumList" . #("Foo" "0"))
                                          ("intEnumList" . #(1 2))
                                          ("nestedStringList"
                                           . #(#("foo" "bar") #("baz" "qux")))
                                          ("renamedListMembers"
                                           . #("foo" "bar"))
                                          ("flattenedList" . #("hi" "bye"))
                                          ("flattenedList2" . #("yep" "nope"))
                                          ("flattenedListWithMemberNamespace"
                                           . #("a" "b"))
                                          ("flattenedListWithNamespace"
                                           . #("a" "b"))
                                          ("structureList"
                                           . #((("a" . "1") ("b" . "2"))
                                               (("a" . "3") ("b" . "4"))))
                                          ("flattenedStructureList"
                                           . #((("a" . "5") ("b" . "6"))
                                               (("a" . "7") ("b" . "8")))))
                                         :documentation
                                         "Tests for XML list serialization")))

(smithy/sdk/operation:define-operation xml-map-with-xml-namespace :shape-name
                                       "XmlMapWithXmlNamespace" :input
                                       xml-map-with-xml-namespace-request
                                       :output
                                       xml-map-with-xml-namespace-response
                                       :errors common-lisp:nil :method "POST"
                                       :uri "/XmlMapWithXmlNamespace"
                                       :request-tests
                                       ((:id "RestXmlXmlMapWithXmlNamespace"
                                         :protocol "aws.protocols#restXml"
                                         :method "POST" :uri
                                         "/XmlMapWithXmlNamespace" :headers
                                         (("Content-Type" . "application/xml"))
                                         :body "<XmlMapWithXmlNamespaceRequest>
    <KVP xmlns=\"https://the-member.example.com\">
        <entry>
            <K xmlns=\"https://the-key.example.com\">a</K>
            <V xmlns=\"https://the-value.example.com\">A</V>
        </entry>
        <entry>
            <K xmlns=\"https://the-key.example.com\">b</K>
            <V xmlns=\"https://the-value.example.com\">B</V>
        </entry>
    </KVP>
</XmlMapWithXmlNamespaceRequest>"
                                         :body-media-type "application/xml"
                                         :params
                                         (("myMap" ("a" . "A") ("b" . "B")))
                                         :documentation
                                         "Serializes XML maps in requests that have xmlNamespace and xmlName on members"))
                                       :response-tests
                                       ((:id "RestXmlXmlMapWithXmlNamespace"
                                         :protocol "aws.protocols#restXml"
                                         :code 200 :headers
                                         (("Content-Type" . "application/xml"))
                                         :body "<XmlMapWithXmlNamespaceResponse>
    <KVP xmlns=\"https://the-member.example.com\">
        <entry>
            <K xmlns=\"https://the-key.example.com\">a</K>
            <V xmlns=\"https://the-value.example.com\">A</V>
        </entry>
        <entry>
            <K xmlns=\"https://the-key.example.com\">b</K>
            <V xmlns=\"https://the-value.example.com\">B</V>
        </entry>
    </KVP>
</XmlMapWithXmlNamespaceResponse>"
                                         :body-media-type "application/xml"
                                         :params
                                         (("myMap" ("a" . "A") ("b" . "B")))
                                         :documentation
                                         "Serializes XML maps in responses that have xmlNamespace and xmlName on members")))

(smithy/sdk/operation:define-operation xml-maps :shape-name "XmlMaps" :input
                                       xml-maps-request :output
                                       xml-maps-response :errors
                                       common-lisp:nil :method "POST" :uri
                                       "/XmlMaps" :request-tests
                                       ((:id "XmlMaps" :protocol
                                         "aws.protocols#restXml" :method "POST"
                                         :uri "/XmlMaps" :headers
                                         (("Content-Type" . "application/xml"))
                                         :body "<XmlMapsRequest>
    <myMap>
        <entry>
            <key>foo</key>
            <value>
                <hi>there</hi>
            </value>
        </entry>
        <entry>
            <key>baz</key>
            <value>
                <hi>bye</hi>
            </value>
        </entry>
    </myMap>
</XmlMapsRequest>
"
                                         :body-media-type "application/xml"
                                         :params
                                         (("myMap" ("foo" ("hi" . "there"))
                                           ("baz" ("hi" . "bye"))))
                                         :documentation
                                         "Tests for XML map serialization"))
                                       :response-tests
                                       ((:id "XmlMaps" :protocol
                                         "aws.protocols#restXml" :code 200
                                         :headers
                                         (("Content-Type" . "application/xml"))
                                         :body "<XmlMapsResponse>
    <myMap>
        <entry>
            <key>foo</key>
            <value>
                <hi>there</hi>
            </value>
        </entry>
        <entry>
            <key>baz</key>
            <value>
                <hi>bye</hi>
            </value>
        </entry>
    </myMap>
</XmlMapsResponse>
"
                                         :body-media-type "application/xml"
                                         :params
                                         (("myMap" ("foo" ("hi" . "there"))
                                           ("baz" ("hi" . "bye"))))
                                         :documentation
                                         "Tests for XML map serialization")))

(smithy/sdk/operation:define-operation xml-maps-xml-name :shape-name
                                       "XmlMapsXmlName" :input
                                       xml-maps-xml-name-request :output
                                       xml-maps-xml-name-response :errors
                                       common-lisp:nil :method "POST" :uri
                                       "/XmlMapsXmlName" :request-tests
                                       ((:id "XmlMapsXmlName" :protocol
                                         "aws.protocols#restXml" :method "POST"
                                         :uri "/XmlMapsXmlName" :headers
                                         (("Content-Type" . "application/xml"))
                                         :body "<XmlMapsXmlNameRequest>
    <myMap>
        <entry>
            <Attribute>foo</Attribute>
            <Setting>
                <hi>there</hi>
            </Setting>
        </entry>
        <entry>
            <Attribute>baz</Attribute>
            <Setting>
                <hi>bye</hi>
            </Setting>
        </entry>
    </myMap>
</XmlMapsXmlNameRequest>
"
                                         :body-media-type "application/xml"
                                         :params
                                         (("myMap" ("foo" ("hi" . "there"))
                                           ("baz" ("hi" . "bye"))))
                                         :documentation
                                         "Serializes XML maps that have xmlName on members"))
                                       :response-tests
                                       ((:id "XmlMapsXmlName" :protocol
                                         "aws.protocols#restXml" :code 200
                                         :headers
                                         (("Content-Type" . "application/xml"))
                                         :body "<XmlMapsXmlNameResponse>
    <myMap>
        <entry>
            <Attribute>foo</Attribute>
            <Setting>
                <hi>there</hi>
            </Setting>
        </entry>
        <entry>
            <Attribute>baz</Attribute>
            <Setting>
                <hi>bye</hi>
            </Setting>
        </entry>
    </myMap>
</XmlMapsXmlNameResponse>
"
                                         :body-media-type "application/xml"
                                         :params
                                         (("myMap" ("foo" ("hi" . "there"))
                                           ("baz" ("hi" . "bye"))))
                                         :documentation
                                         "Serializes XML lists")))

(smithy/sdk/operation:define-operation xml-namespaces :shape-name
                                       "XmlNamespaces" :input
                                       xml-namespaces-request :output
                                       xml-namespaces-response :errors
                                       common-lisp:nil :method "POST" :uri
                                       "/XmlNamespaces" :request-tests
                                       ((:id "XmlNamespaces" :protocol
                                         "aws.protocols#restXml" :method "POST"
                                         :uri "/XmlNamespaces" :headers
                                         (("Content-Type" . "application/xml"))
                                         :body
                                         "<XmlNamespacesRequest xmlns=\"http://foo.com\">
    <nested>
        <foo xmlns:baz=\"http://baz.com\">Foo</foo>
        <values xmlns=\"http://qux.com\">
            <member xmlns=\"http://bux.com\">Bar</member>
            <member xmlns=\"http://bux.com\">Baz</member>
        </values>
    </nested>
</XmlNamespacesRequest>
"
                                         :body-media-type "application/xml"
                                         :params
                                         (("nested" ("foo" . "Foo")
                                           ("values" . #("Bar" "Baz"))))
                                         :documentation
                                         "Serializes XML namespaces"))
                                       :response-tests
                                       ((:id "XmlNamespaces" :protocol
                                         "aws.protocols#restXml" :code 200
                                         :headers
                                         (("Content-Type" . "application/xml"))
                                         :body
                                         "<XmlNamespacesResponse xmlns=\"http://foo.com\">
    <nested>
        <foo xmlns:baz=\"http://baz.com\">Foo</foo>
        <values xmlns=\"http://qux.com\">
            <member xmlns=\"http://bux.com\">Bar</member>
            <member xmlns=\"http://bux.com\">Baz</member>
        </values>
    </nested>
</XmlNamespacesResponse>
"
                                         :body-media-type "application/xml"
                                         :params
                                         (("nested" ("foo" . "Foo")
                                           ("values" . #("Bar" "Baz"))))
                                         :documentation
                                         "Serializes XML namespaces")))

(smithy/sdk/operation:define-operation xml-timestamps :shape-name
                                       "XmlTimestamps" :input
                                       xml-timestamps-request :output
                                       xml-timestamps-response :errors
                                       common-lisp:nil :method "POST" :uri
                                       "/XmlTimestamps" :request-tests
                                       ((:id "XmlTimestamps" :protocol
                                         "aws.protocols#restXml" :method "POST"
                                         :uri "/XmlTimestamps" :headers
                                         (("Content-Type" . "application/xml"))
                                         :body "<XmlTimestampsRequest>
    <normal>2014-04-29T18:30:38Z</normal>
</XmlTimestampsRequest>
"
                                         :body-media-type "application/xml"
                                         :params (("normal" . 1398796238))
                                         :documentation
                                         "Tests how normal timestamps are serialized")
                                        (:id "XmlTimestampsWithDateTimeFormat"
                                         :protocol "aws.protocols#restXml"
                                         :method "POST" :uri "/XmlTimestamps"
                                         :headers
                                         (("Content-Type" . "application/xml"))
                                         :body "<XmlTimestampsRequest>
    <dateTime>2014-04-29T18:30:38Z</dateTime>
</XmlTimestampsRequest>
"
                                         :body-media-type "application/xml"
                                         :params (("dateTime" . 1398796238))
                                         :documentation
                                         "Ensures that the timestampFormat of date-time works like normal timestamps")
                                        (:id
                                         "XmlTimestampsWithDateTimeOnTargetFormat"
                                         :protocol "aws.protocols#restXml"
                                         :method "POST" :uri "/XmlTimestamps"
                                         :headers
                                         (("Content-Type" . "application/xml"))
                                         :body "<XmlTimestampsRequest>
    <dateTimeOnTarget>2014-04-29T18:30:38Z</dateTimeOnTarget>
</XmlTimestampsRequest>
"
                                         :body-media-type "application/xml"
                                         :params
                                         (("dateTimeOnTarget" . 1398796238))
                                         :documentation
                                         "Ensures that the timestampFormat of date-time on the target shape works like normal timestamps")
                                        (:id
                                         "XmlTimestampsWithEpochSecondsFormat"
                                         :protocol "aws.protocols#restXml"
                                         :method "POST" :uri "/XmlTimestamps"
                                         :headers
                                         (("Content-Type" . "application/xml"))
                                         :body "<XmlTimestampsRequest>
    <epochSeconds>1398796238</epochSeconds>
</XmlTimestampsRequest>
"
                                         :body-media-type "application/xml"
                                         :params
                                         (("epochSeconds" . 1398796238))
                                         :documentation
                                         "Ensures that the timestampFormat of epoch-seconds works")
                                        (:id
                                         "XmlTimestampsWithEpochSecondsOnTargetFormat"
                                         :protocol "aws.protocols#restXml"
                                         :method "POST" :uri "/XmlTimestamps"
                                         :headers
                                         (("Content-Type" . "application/xml"))
                                         :body "<XmlTimestampsRequest>
    <epochSecondsOnTarget>1398796238</epochSecondsOnTarget>
</XmlTimestampsRequest>
"
                                         :body-media-type "application/xml"
                                         :params
                                         (("epochSecondsOnTarget"
                                           . 1398796238))
                                         :documentation
                                         "Ensures that the timestampFormat of epoch-seconds on the target shape works")
                                        (:id "XmlTimestampsWithHttpDateFormat"
                                         :protocol "aws.protocols#restXml"
                                         :method "POST" :uri "/XmlTimestamps"
                                         :headers
                                         (("Content-Type" . "application/xml"))
                                         :body "<XmlTimestampsRequest>
    <httpDate>Tue, 29 Apr 2014 18:30:38 GMT</httpDate>
</XmlTimestampsRequest>
"
                                         :body-media-type "application/xml"
                                         :params (("httpDate" . 1398796238))
                                         :documentation
                                         "Ensures that the timestampFormat of http-date works")
                                        (:id
                                         "XmlTimestampsWithHttpDateOnTargetFormat"
                                         :protocol "aws.protocols#restXml"
                                         :method "POST" :uri "/XmlTimestamps"
                                         :headers
                                         (("Content-Type" . "application/xml"))
                                         :body "<XmlTimestampsRequest>
    <httpDateOnTarget>Tue, 29 Apr 2014 18:30:38 GMT</httpDateOnTarget>
</XmlTimestampsRequest>
"
                                         :body-media-type "application/xml"
                                         :params
                                         (("httpDateOnTarget" . 1398796238))
                                         :documentation
                                         "Ensures that the timestampFormat of http-date on the target shape works"))
                                       :response-tests
                                       ((:id "XmlTimestamps" :protocol
                                         "aws.protocols#restXml" :code 200
                                         :headers
                                         (("Content-Type" . "application/xml"))
                                         :body "<XmlTimestampsResponse>
    <normal>2014-04-29T18:30:38Z</normal>
</XmlTimestampsResponse>
"
                                         :body-media-type "application/xml"
                                         :params (("normal" . 1398796238))
                                         :documentation
                                         "Tests how normal timestamps are serialized")
                                        (:id "XmlTimestampsWithDateTimeFormat"
                                         :protocol "aws.protocols#restXml"
                                         :code 200 :headers
                                         (("Content-Type" . "application/xml"))
                                         :body "<XmlTimestampsResponse>
    <dateTime>2014-04-29T18:30:38Z</dateTime>
</XmlTimestampsResponse>
"
                                         :body-media-type "application/xml"
                                         :params (("dateTime" . 1398796238))
                                         :documentation
                                         "Ensures that the timestampFormat of date-time works like normal timestamps")
                                        (:id
                                         "XmlTimestampsWithDateTimeOnTargetFormat"
                                         :protocol "aws.protocols#restXml"
                                         :code 200 :headers
                                         (("Content-Type" . "application/xml"))
                                         :body "<XmlTimestampsResponse>
    <dateTimeOnTarget>2014-04-29T18:30:38Z</dateTimeOnTarget>
</XmlTimestampsResponse>
"
                                         :body-media-type "application/xml"
                                         :params
                                         (("dateTimeOnTarget" . 1398796238))
                                         :documentation
                                         "Ensures that the timestampFormat of date-time on the target shape works like normal timestamps")
                                        (:id
                                         "XmlTimestampsWithEpochSecondsFormat"
                                         :protocol "aws.protocols#restXml"
                                         :code 200 :headers
                                         (("Content-Type" . "application/xml"))
                                         :body "<XmlTimestampsResponse>
    <epochSeconds>1398796238</epochSeconds>
</XmlTimestampsResponse>
"
                                         :body-media-type "application/xml"
                                         :params
                                         (("epochSeconds" . 1398796238))
                                         :documentation
                                         "Ensures that the timestampFormat of epoch-seconds works")
                                        (:id
                                         "XmlTimestampsWithEpochSecondsOnTargetFormat"
                                         :protocol "aws.protocols#restXml"
                                         :code 200 :headers
                                         (("Content-Type" . "application/xml"))
                                         :body "<XmlTimestampsResponse>
    <epochSecondsOnTarget>1398796238</epochSecondsOnTarget>
</XmlTimestampsResponse>
"
                                         :body-media-type "application/xml"
                                         :params
                                         (("epochSecondsOnTarget"
                                           . 1398796238))
                                         :documentation
                                         "Ensures that the timestampFormat of epoch-seconds on the target shape works")
                                        (:id "XmlTimestampsWithHttpDateFormat"
                                         :protocol "aws.protocols#restXml"
                                         :code 200 :headers
                                         (("Content-Type" . "application/xml"))
                                         :body "<XmlTimestampsResponse>
    <httpDate>Tue, 29 Apr 2014 18:30:38 GMT</httpDate>
</XmlTimestampsResponse>
"
                                         :body-media-type "application/xml"
                                         :params (("httpDate" . 1398796238))
                                         :documentation
                                         "Ensures that the timestampFormat of http-date works")
                                        (:id
                                         "XmlTimestampsWithHttpDateOnTargetFormat"
                                         :protocol "aws.protocols#restXml"
                                         :code 200 :headers
                                         (("Content-Type" . "application/xml"))
                                         :body "<XmlTimestampsResponse>
    <httpDateOnTarget>Tue, 29 Apr 2014 18:30:38 GMT</httpDateOnTarget>
</XmlTimestampsResponse>
"
                                         :body-media-type "application/xml"
                                         :params
                                         (("httpDateOnTarget" . 1398796238))
                                         :documentation
                                         "Ensures that the timestampFormat of http-date on the target shape works")))

(smithy/sdk/operation:define-operation xml-unions :shape-name "XmlUnions"
                                       :input xml-unions-request :output
                                       xml-unions-response :errors
                                       common-lisp:nil :method "PUT" :uri
                                       "/XmlUnions" :request-tests
                                       ((:id "XmlUnionsWithStructMember"
                                         :protocol "aws.protocols#restXml"
                                         :method "PUT" :uri "/XmlUnions"
                                         :headers
                                         (("Content-Type" . "application/xml"))
                                         :body "<XmlUnionsRequest>
    <unionValue>
       <structValue>
          <stringValue>string</stringValue>
          <booleanValue>true</booleanValue>
          <byteValue>1</byteValue>
          <shortValue>2</shortValue>
          <integerValue>3</integerValue>
          <longValue>4</longValue>
          <floatValue>5.5</floatValue>
          <doubleValue>6.5</doubleValue>
       </structValue>
    </unionValue>
</XmlUnionsRequest>
"
                                         :body-media-type "application/xml"
                                         :params
                                         (("unionValue"
                                           ("structValue"
                                            ("stringValue" . "string")
                                            ("booleanValue" . common-lisp:t)
                                            ("byteValue" . 1)
                                            ("shortValue" . 2)
                                            ("integerValue" . 3)
                                            ("longValue" . 4)
                                            ("floatValue" . 5.5d0)
                                            ("doubleValue" . 6.5d0))))
                                         :documentation
                                         "Serializes union struct member")
                                        (:id "XmlUnionsWithStringMember"
                                         :protocol "aws.protocols#restXml"
                                         :method "PUT" :uri "/XmlUnions"
                                         :headers
                                         (("Content-Type" . "application/xml"))
                                         :body "<XmlUnionsRequest>
   <unionValue>
      <stringValue>some string</stringValue>
   </unionValue>
</XmlUnionsRequest>
"
                                         :body-media-type "application/xml"
                                         :params
                                         (("unionValue"
                                           ("stringValue" . "some string")))
                                         :documentation
                                         "serialize union string member")
                                        (:id "XmlUnionsWithBooleanMember"
                                         :protocol "aws.protocols#restXml"
                                         :method "PUT" :uri "/XmlUnions"
                                         :headers
                                         (("Content-Type" . "application/xml"))
                                         :body "<XmlUnionsRequest>
   <unionValue>
      <booleanValue>true</booleanValue>
   </unionValue>
</XmlUnionsRequest>
"
                                         :body-media-type "application/xml"
                                         :params
                                         (("unionValue"
                                           ("booleanValue" . common-lisp:t)))
                                         :documentation
                                         "Serializes union boolean member")
                                        (:id "XmlUnionsWithUnionMember"
                                         :protocol "aws.protocols#restXml"
                                         :method "PUT" :uri "/XmlUnions"
                                         :headers
                                         (("Content-Type" . "application/xml"))
                                         :body "<XmlUnionsRequest>
   <unionValue>
      <unionValue>
         <booleanValue>true</booleanValue>
      </unionValue>
   </unionValue>
</XmlUnionsRequest>
"
                                         :body-media-type "application/xml"
                                         :params
                                         (("unionValue"
                                           ("unionValue"
                                            ("booleanValue" . common-lisp:t))))
                                         :documentation
                                         "Serializes union member"))
                                       :response-tests
                                       ((:id "XmlUnionsWithStructMember"
                                         :protocol "aws.protocols#restXml"
                                         :code 200 :headers
                                         (("Content-Type" . "application/xml"))
                                         :body "<XmlUnionsResponse>
    <unionValue>
       <structValue>
          <stringValue>string</stringValue>
          <booleanValue>true</booleanValue>
          <byteValue>1</byteValue>
          <shortValue>2</shortValue>
          <integerValue>3</integerValue>
          <longValue>4</longValue>
          <floatValue>5.5</floatValue>
          <doubleValue>6.5</doubleValue>
       </structValue>
    </unionValue>
</XmlUnionsResponse>
"
                                         :body-media-type "application/xml"
                                         :params
                                         (("unionValue"
                                           ("structValue"
                                            ("stringValue" . "string")
                                            ("booleanValue" . common-lisp:t)
                                            ("byteValue" . 1)
                                            ("shortValue" . 2)
                                            ("integerValue" . 3)
                                            ("longValue" . 4)
                                            ("floatValue" . 5.5d0)
                                            ("doubleValue" . 6.5d0))))
                                         :documentation
                                         "Serializes union struct member")
                                        (:id "XmlUnionsWithStringMember"
                                         :protocol "aws.protocols#restXml"
                                         :code 200 :headers
                                         (("Content-Type" . "application/xml"))
                                         :body "<XmlUnionsResponse>
   <unionValue>
      <stringValue>some string</stringValue>
   </unionValue>
</XmlUnionsResponse>
"
                                         :body-media-type "application/xml"
                                         :params
                                         (("unionValue"
                                           ("stringValue" . "some string")))
                                         :documentation
                                         "Serializes union string member")
                                        (:id "XmlUnionsWithBooleanMember"
                                         :protocol "aws.protocols#restXml"
                                         :code 200 :headers
                                         (("Content-Type" . "application/xml"))
                                         :body "<XmlUnionsResponse>
   <unionValue>
      <booleanValue>true</booleanValue>
   </unionValue>
</XmlUnionsResponse>
"
                                         :body-media-type "application/xml"
                                         :params
                                         (("unionValue"
                                           ("booleanValue" . common-lisp:t)))
                                         :documentation
                                         "Serializes union boolean member")
                                        (:id "XmlUnionsWithUnionMember"
                                         :protocol "aws.protocols#restXml"
                                         :code 200 :headers
                                         (("Content-Type" . "application/xml"))
                                         :body "<XmlUnionsResponse>
   <unionValue>
      <unionValue>
         <booleanValue>true</booleanValue>
      </unionValue>
   </unionValue>
</XmlUnionsResponse>
"
                                         :body-media-type "application/xml"
                                         :params
                                         (("unionValue"
                                           ("unionValue"
                                            ("booleanValue" . common-lisp:t))))
                                         :documentation
                                         "Serializes union member")))
